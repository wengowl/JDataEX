package org.jdataex.channel.naming;

import java.util.concurrent.atomic.AtomicBoolean;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import org.jdataex.channel.exception.BaseNestedException;
/**
 * 作为本地jndi资源库,所有能够通过jndi绑定和查找的对象必须能够序列化
 * @author chaos
 *
 */
public final class LocalJNDINamingContext implements NamingContext{

	private static LocalJNDINamingContext ln = new LocalJNDINamingContext();

	private static Context context;

	private AtomicBoolean isClose = new AtomicBoolean(false);

	private LocalJNDINamingContext() {
		try {
			context = new InitialContext();
		} catch (NamingException e) {
		}
	}

	public final static LocalJNDINamingContext getInstance() {
		if (ln.isClose.get()) {
			ln.rebuild();
		}
		return ln;
	}

	public void bind(String name, Object obj) throws NamingException {
		context.rebind(name, obj);
	}

	public Object lookUp(String name) throws NamingException {
		return context.lookup(name);
	}

	public void close() {
		try {
			context.close();
			isClose.getAndSet(true);
		} catch (NamingException e) {
			throw new BaseNestedException("", e);
		}
	}

	public void rebuild() {
		synchronized (LocalJNDINamingContext.class) {
			try {
				if (!isClose.get())
					close();
			} catch (Exception e) {
			}
			try {
				context = new InitialContext();
				isClose.getAndSet(false);
			} catch (NamingException e) {
			}
		}
	}
}
