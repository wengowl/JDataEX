package org.jdataex.common;

import org.jdataex.message.MessageExceptions;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by wengxf on 2014/7/14 0014.
 */
public class AssertUtil {
    public static void assertNull(String message, Object object) {
        if (CommonUtil.isNull(object))
            throw new NullPointerException(message);
    }

    public static void assertNullSingleMessage(String partMessage, Object value) {
        assertNull(partMessage + " is null.", value);
    }

    public static void assertNull(Object object) {
        assertNull("", object);
    }

    public static void assertNullOrBlank(String message, String text) {
        if (CommonUtil.isNullOrBlank(text))
            throw new NullPointerException(message);
    }

    public static void assertNullOrBlank(String text) {
        assertNullOrBlank("", text);
    }

    public static void assertNullOrBlankSingleMessage(String partMessage,
                                                      String text) {
        assertNullOrBlank(partMessage + " is null or blank.", text);
    }

    public static void assertNegativeInt(String msg, int number) throws MessageExceptions {
        assertLessThanNumber(msg, number, 0);
    }

    public static void assertNegativeInt(int number) throws MessageExceptions {
        assertNegativeInt("Illegal number exception: number must > 0 but its "
                + number, number);
    }

    public static void assertLessThanNumber(String msg, int number, int consult) throws MessageExceptions {
        if (number <= consult)
            throw new MessageExceptions(msg);
    }

    public static void assertTrue(String msg, boolean value) throws MessageExceptions {
        assertFalse(msg, !value);
    }

    public static void assertFalse(String msg, boolean value) throws MessageExceptions {
        if (value == true)
            throw new MessageExceptions(msg);
    }

    public static void assertNotClass(Object obj,
                                      @SuppressWarnings("rawtypes") Class clasz) {
        assertNull(obj);
        assertNull(clasz);
        if (!clasz.isInstance(obj)) {
            throw new ClassCastException(obj.getClass() + "  is not " + clasz);
        }
    }

  /*  public static void assertData(List<Map<String, Object>> expectedList,
                                  List<Map<String, Object>> actualList) {
        assertEquals(expectedList.size(), actualList.size());
        for (int i = 0; i < expectedList.size(); i++) {
            Map<String, Object> actual = actualList.get(i);
            Map<String, Object> expected = expectedList.get(i);

            for (Iterator<Map.Entry<String, Object>> mi = actual.entrySet()
                    .iterator(); mi.hasNext();) {
                Map.Entry<String, Object> e = mi.next();

                assertEquals(e.getKey(), expected.get(e.getKey()), e.getValue()
                        .toString());
            }
        }
    }*/

}
