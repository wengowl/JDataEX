package org.jdataex.flow.handler;

import java.util.List;

import org.jdataex.channel.IChannelOutput;
import org.jdataex.channel.IStageContext;
import org.jdataex.channel.event.IEvent;
import org.jdataex.channel.future.IChannelFuture;
import org.jdataex.channel.handler.IHandler;
import org.jdataex.core.InitializationException;
import org.jdataex.core.ReleaseException;
import org.jdataex.core.card.GUIC;
import org.jdataex.flow.component.ComponentException;
import org.jdataex.flow.component.IComponent;
import org.jdataex.flow.component.step.IStep;
import org.jdataex.flow.row.IRow;
import org.jdataex.flow.row.IRowSet;
import org.jdataex.flow.row.RowSet;
import org.jdataex.i18n.Messages;

public class ChannelStepHandler extends BaseComponentHandler implements
		IHandler<IRowSet> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6656825888253572492L;

	private IStep step;

	public ChannelStepHandler() {

	}

	public ChannelStepHandler(IStep step, GUIC guic) {
		super(step, guic);
		this.step = step;
	}

	@Override
	public IComponent getComponent() {
		return this.step;
	}

	public void setStep(IStep step) {
		this.step = step;
	}

	@Override
	public void execute() throws ComponentException {
		step.beforeTurnOn();

		try {
			doExecutingStep();
		} catch (Exception e) {
			throw new ComponentException(Messages.getMessage(getClass(),
					"Handler.ExecutingException"), e);
		} finally {
			step.afterTurnOff();
		}

	}

	private void doExecutingStep() throws ComponentException {
		step.beforeBatchProcessing();

		try {
			// TODO 调整取Row的时候，需要传输身份信息。
			// IRowSet set = this.stationInput.poll("");
			// while (null != set) {
			// doProcessing(set);

			// set = this.stationInput.poll("");
			// }

		} catch (Exception e) {
			throw new ComponentException(Messages.getMessage(getClass(),
					"Handler.ExecutingException"), e);
		} finally {
			step.afterBatchProcessing();
		}
	}

	public void doProcessing(IRowSet set, IStageContext<IRowSet> context)
			throws ComponentException {
		step.setRowSetInput(set);
		step.setRowSetOuput(new RowSet());

		step.beginRowSet();
		try {
			while (step.hasNextRow()) {
				IRow row = step.pullRow();

				// this.getLogger().debug("[Handler={}|Step={}]row summary={}",
				// this.getGUIC().getID(), step.getGUIC().getID(),
				// row.toSummary());

				doProcessingRow(row);
			}

			// TODO 添加判断RowSet大小的逻辑。目前暂时就是有就推送。
			// if (step.getRowSetOuput().size() != 0) {
			List<IChannelOutput<IRowSet>> outputs = context.getContainer()
					.getOutputs();

			// TODO 添加正确的业务处理。
			for (IChannelOutput<IRowSet> output : outputs) {
				IChannelFuture<IRowSet>[] cf = context.writeMsg(
						step.getRowSetOuput(), output.getName());
				this.getLogger().debug("{} output call result is {}",
						this.getGUIC().getName(), cf[0].isSuccess());

				if (cf[0].error() != null) {
					this.getLogger().warn(
							this.getGUIC().getName() + " write msg error.",
							cf[0].error());
				}
			}

			// }
		} catch (ComponentException e) {
			step.rollbackRowSet();
			throw e;
		} catch (Exception e) {
			step.rollbackRowSet();
			throw e;
		}

		step.commitRowSet();
	}

	private void doProcessingRow(IRow row) throws ComponentException {
		step.beginRow(row);

		try {

			step.processRow(row);

		} catch (Exception e) {

			this.getLogger().info("Failed.{}", e.getMessage());
			this.getLogger().debug("Processing row failed.", e);
			step.rollbackRow(row);
			throw e;
		}

		step.commitRow(row);
	}

	@Override
	public void init() throws InitializationException {
		step.init();
	}

	@Override
	public void release() throws ReleaseException {
		step.release();
	}

	@Override
	public void channelActive(IStageContext<IRowSet> context,
			IEvent<IRowSet> event) throws Exception {
	}

	@Override
	public void channelBind(IStageContext<IRowSet> context) throws Exception {
	}

	@Override
	public void channelRead(IStageContext<IRowSet> context,
			IEvent<IRowSet> event) throws Exception {
		this.getLogger().debug("{} channel read.", this.getGUIC().getName());
		IRowSet rowSet = event.getMsg();
		this.getLogger().debug("{} channel read.RowSet size is {}",
				this.getGUIC().getName(), rowSet.size());
		doProcessing(rowSet, context);
	}

	@Override
	public void channelWrite(IStageContext<IRowSet> context,
			IEvent<IRowSet> event) throws Exception {
		this.getLogger().debug("{} channel write.", this.getGUIC().getName());
	}

}
