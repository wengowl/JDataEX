package org.jdataex.channel.naming;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class LocalNamingContext implements NamingContext{

	private static LocalNamingContext ln = new LocalNamingContext();

	private Map<String, Object> context = new HashMap<String, Object>();

	private AtomicBoolean isClose = new AtomicBoolean(false);

	private LocalNamingContext() {
	}

	public final static LocalNamingContext getInstance() {
		if (ln.isClose.get()) {
			ln.rebuild();
		}
		return ln;
	}

	public void bind(String name, Object obj) {
		context.put(name, obj);
	}

	public Object lookUp(String name) {
		return context.get(name);
	}

	public void close() {
		synchronized (LocalNamingContext.class) {
			context.clear();
			context = null;
			isClose.getAndSet(true);
		}
	}

	public void rebuild() {
		synchronized (LocalNamingContext.class) {
			if (!isClose.get())
				close();
			context = new HashMap<String, Object>();
			isClose.getAndSet(false);

		}
	}
}
