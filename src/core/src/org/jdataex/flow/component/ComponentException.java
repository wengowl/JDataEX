package org.jdataex.flow.component;

import org.jdataex.core.JDataExException;

public class ComponentException extends JDataExException {

    /**
     *
     */
    private static final long serialVersionUID = -1304595523872564301L;

    public ComponentException() {
        super();
    }

    public ComponentException(String message, Throwable cause,
                              boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }

    public ComponentException(String message, Throwable cause) {
        super(message, cause);
    }

    public ComponentException(String message) {
        super(message);
    }

    public ComponentException(Throwable cause) {
        super(cause);
    }

}
