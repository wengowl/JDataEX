package org.jdataex.message;

/**
 * Created by wengxf on 2014/7/14 0014.
 */
public class MessageExceptions extends Exception {
    public MessageExceptions() {
    }

    public MessageExceptions(String message) {
        super(message);
    }

    public MessageExceptions(String message, Throwable cause) {
        super(message, cause);
    }

    public MessageExceptions(Throwable cause) {
        super(cause);
    }

    public MessageExceptions(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
