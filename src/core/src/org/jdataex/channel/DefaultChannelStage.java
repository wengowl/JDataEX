package org.jdataex.channel;

import static org.jdataex.util.AssertUtil.assertNull;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jdataex.channel.common.ChannelEventType;
import org.jdataex.channel.event.DefaultEvent;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.event.IListener;
import org.jdataex.channel.exception.BaseNestedException;
import org.jdataex.channel.exception.ChannelStageHasStartedException;
import org.jdataex.channel.exception.StageException;
import org.jdataex.channel.executor.ChannelOutputTask;
import org.jdataex.channel.executor.DefaultExecutor;
import org.jdataex.channel.executor.ExecutorTask;
import org.jdataex.channel.executor.IExecutor;
import org.jdataex.channel.executor.TLQOutputExecutor;
import org.jdataex.channel.future.IChannelFuture;
import org.jdataex.channel.handler.DefaultHandlerChain;
import org.jdataex.channel.handler.IHandler;
import org.jdataex.channel.handler.IHandlerChain;
import org.jdataex.channel.local.LocalChannelOutput;
import org.jdataex.channel.naming.LocalNamingContext;
import org.jdataex.channel.net.INetAddress;
import org.jdataex.channel.tlq.TLQChannelOutput;
import org.jdataex.util.logger.ILogger;
import org.jdataex.util.logger.LoggerFactory;

public class DefaultChannelStage<T> extends Thread implements IChannelStage<T> {

	private IExecutor<T> inputExecutor;

	private IExecutor<T> outputExecutor;

	private IStageContext<T> context;

	private IChannelContainer<T> container;

	private IHandlerChain<T> chain;

	private ILogger logger;

	public DefaultChannelStage(String name) {
		setName(name);
		this.initializeHandlerChain();
		logger = LoggerFactory.getLogger(getName());
	}

	@Override
	public IExecutor<T> getInputExecutor() {
		return this.inputExecutor;
	}

	@Override
	public IStageContext<T> getContext() {
		if (context == null) {
			context = new DefaultStageContext<T>(this);
		}
		return context;
	}

	@Override
	public IChannelStage<T> setChannelContainer(IChannelContainer<T> channel) {
		assertNull(channel);
		container = channel;
		container.registerStage(this);
		return this;
	}

	private void initializeHandlerChain() {
		chain = new DefaultHandlerChain<T>();
		getHandlerChain().setContext(this.getContext());
	}

	@Override
	public IChannelStage<T> addBefore(IHandler<T> handler) {
		getHandlerChain().addHead(handler);
		return this;
	}

	@Override
	public IChannelStage<T> addAfter(IHandler<T> handler) {
		getHandlerChain().addTail(handler);
		return this;
	}

	@Override
	public IChannelStage<T> setExecutor(IExecutor<T> inputExecutor,
			IExecutor<T> outputExecutor) {
		this.inputExecutor = inputExecutor;
		this.outputExecutor = outputExecutor;
		return this;
	}

	@Override
	public void shutdown() {
		if (getChannelContainer().getInput() != null) {
			logger.debug(this.getName() + "  close input read!");
			getChannelContainer().closeInputRead();
		}

		logger.debug(this.getName() + "  close outputs write!");
		getChannelContainer().closeAllOutputWrite();

		logger.debug(this.getName() + "  close executors!");
		this.shutdownExecutors();

		if (getChannelContainer().getInput() != null) {
			logger.debug(this.getName() + "  close channelInput!");
			getChannelContainer().closeInput();
		}

		logger.debug(this.getName() + "  close channelOutputs!");
		getChannelContainer().closeAllOutput();

		logger.debug(this.getName() + "  close stage!");
		// 设置关闭状态
		/*
		 * this.interrupt(); // 阻塞到关闭位置 while (!this.isInterrupted()) { try {
		 * Thread.sleep(300); } catch (InterruptedException e) { } }
		 */
	}

	@SuppressWarnings("unchecked")
	@Override
	public IChannelFuture<T>[] writeEvent(IEvent<T> event,
			String... channelOutputNames) {
		IChannelFuture<T>[] ifs = new IChannelFuture[channelOutputNames.length];
		// 老方式,单线程发送数据,性能较低

		/*
		 * for (int i = 0; i < channelOutputNames.length; i++) { // 执行handlers方法
		 * try { this.chain.executeHandlers(event); } catch (HandlerException e)
		 * { ifs[i] = (IChannelFuture<T>) ChannelClassUtil.getInstance(
		 * ChannelClassUtil.ERROR_CHANNEL_FUTURE, e); continue; } if (ifs[i] ==
		 * null) {// 说明执行没有遇到错误 // logger.debug(" channel output is  " +
		 * channelOutputNames[i] + "   " +
		 * this.container.getOutput(channelOutputNames[i])); ifs[i] =
		 * this.container.getOutput(channelOutputNames[i])
		 * .writeAndFlush(event); } }
		 */

		for (int i = 0; i < channelOutputNames.length; i++) {
			ifs[i] = this.getOutputExecutor().execute(
					new ChannelOutputTask<T>(getHandlerChain(), event,
							getContext(), channelOutputNames[i]));
		}

		return ifs;
	}

	@Override
	public IChannelFuture<T>[] writeMsg(T msg, String... channelOutputName) {
		return writeMsg(msg, null, channelOutputName);
	}

	@Override
	public IChannelFuture<T>[] writeMsg(T msg, String props,
			String[] channelOutputName) {
		return writeEvent(new DefaultEvent<T>(msg, this,
				ChannelEventType.ChannelWrite, props), channelOutputName);
	}

	@Override
	public IChannelFuture<T> triggerChannelInput(T msg) {
		return this.getInputExecutor()
				.execute(
						new ExecutorTask<T>(getHandlerChain(),
								new DefaultEvent<T>(msg, null,
										ChannelEventType.ChannelRead, null),
								getContext()));
	}

	@Override
	public IChannelContainer<T> getChannelContainer() {
		return this.container;
	}

	@Override
	public IHandlerChain<T> getHandlerChain() {
		return this.chain;
	}

	@Override
	public void start(INetAddress inputAddress,
			Map<String, INetAddress> outputAddress) {

		assertAll();

		assertExecutorAndOutputMatching();

		if (this.isAlive()) {
			throw new ChannelStageHasStartedException(
					"channelstage has started ,can not start again!");
		}
		if (getChannelContainer().getInput() != null)
			getChannelContainer().channelInputBind(inputAddress);

		getChannelContainer().channelOutputsConnect(outputAddress);
		// 注册
		try {
			LocalNamingContext.getInstance().bind(this.getName(), this);
		} catch (Exception e) {
			throw new BaseNestedException(e.getMessage(), e);
		}
		// 开始执行线程轮训消息
		super.start();
	}

	private void assertAll() {
		// assertNull(getInputExecutor());
		// assertNull(getOutputExecutor());
		assertHandlerIsNull();
		assertNull(getChannelContainer());
	}

	private void assertHandlerIsNull() {
		if (this.getHandlerChain().getAllHandlers().length == 0) {
			throw new StageException("you must add at least one handler!");
		}
	}

	/**
	 * 判断executor与channelOutput 是否匹配,意味着stage中channelOutput只能有 一种类型而且必须匹配
	 */
	private void assertExecutorAndOutputMatching() {
		List<IChannelOutput<T>> outputs = this.getChannelContainer()
				.getOutputs();
		StageMatching match = new StageMatching();
		for (IChannelOutput<T> output : outputs) {
			match.executorMatching(getOutputExecutor().getClass(),
					output.getClass());
		}
	}

	private void shutdownExecutors() {
		if (getInputExecutor() != null)
			getInputExecutor().shutdown();
		if (getOutputExecutor() != null)
			getOutputExecutor().shutdown();
	}

	/**
	 * 线程定时轮训,这个方法必须改造,不然采用轮训是方式消耗cpu太大
	 */
	public void run() {
		logger.debug(this.getName() + "  is running!");
		// 如果没有input 的话就不用轮询了.
		if (getChannelContainer().getInput() == null)
			return;
		// 读取消息
		while (!getChannelContainer().isInputClosed()
				&& !getInputExecutor().isShutdown()) {
			logger.debug(this.getName() + "  is do read msg!");
			getInputExecutor().select(this);
		}

		logger.debug(this.getName() + "  this time read is finish!");
		logger.debug(this.getName() + "  is stopped!");
	}

	@Override
	public void pauseInputRead() {
		getChannelContainer().getInput().setRead(false);
	}

	@Override
	public void runInputRead() {
		getChannelContainer().getInput().setRead(true);
	}

	@Override
	public void pauseAllOutputWrite() {
		for (IChannelOutput<T> out : getChannelContainer().getOutputs()) {
			out.setWrite(false);
		}
	}

	@Override
	public void runAllOutputWrite() {
		for (IChannelOutput<T> out : getChannelContainer().getOutputs()) {
			out.setWrite(true);
		}
	}

	@Override
	public void pauseStage() {
		pauseInputRead();
		pauseAllOutputWrite();
	}

	@Override
	public void runStage() {
		runInputRead();
		runAllOutputWrite();
	}

	@Override
	public void addListener(IListener<T> listener) {
		// TODO Auto-generated method stub

	}

	@Override
	public void removeListener(IListener<T> listener) {
		// TODO Auto-generated method stub
	}

	@Override
	public IExecutor<T> getOutputExecutor() {
		return this.outputExecutor;
	}

	class StageMatching {
		@SuppressWarnings("rawtypes")
		private Map<Class, Class> map = new HashMap<Class, Class>();

		// 类型加载,后续如果做成插件形式的化,必须要改为配置加载方式,目前将就这么搞
		StageMatching() {
			map.put(DefaultExecutor.class, LocalChannelOutput.class);
			map.put(TLQOutputExecutor.class, TLQChannelOutput.class);

		}

		@SuppressWarnings("rawtypes")
		public void executorMatching(Class executor, Class channeloutput) {
			Class rightOutput = map.get(executor);
			if (!rightOutput.getName().equals(channeloutput.getName())) {
				throw new BaseNestedException(
						"channelOutput type is not Matched or have more type channelOutput in "
								+ "this stage");
			}
		}
	}
}
