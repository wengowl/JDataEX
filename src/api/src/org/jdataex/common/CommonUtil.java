package org.jdataex.common;

/**
 * Created by wengxf on 2014/7/14 0014.
 */
public class CommonUtil {
    /**
     * 判断字符串是否为空（包括字符串对象为空）。
     *
     * @param content
     *            需要判断的字符串。
     * @return 为空是返回true，否则返回false。
     */
    public static boolean isBlank(String content) {
        if (isNull(content) || "".equals(content.trim()))
            return true;
        return false;
    }

    /**
     * 判断字符串是否为不空（包括字符串对象为不空）。
     *
     * @param content
     *            需要判断的字符串。
     * @return 为不空是返回true，否则返回false。
     */
    public static boolean isNotBlank(String content) {
        return !isBlank(content);
    }

    /**
     * 判断实例是否为非空。
     *
     * @param obj
     *            需要判断的实例对象。
     * @return 为空是返回false，否则返回true。
     */
    public static boolean isNotNull(Object obj) {
        return !isNull(obj);
    }

    public static boolean isNotNullValue(Object obj) {
        return !isNullValue(obj);
    }

    /**
     * 判断实例是否为空。
     *
     * @param obj
     *            需要判断的实例对象。
     * @return 为空是返回true，否则返回false。
     */
    public static boolean isNull(Object obj) {
        return obj == null ? true : false;
    }

    /**
     * 判断字符串是否为空（包括字符串对象为空）。
     *
     * @param obj
     *            需要判断的字符串。
     * @return 为空是返回true，否则返回false。
     */
    public static boolean isNullOrBlank(Object obj) {
        if (isNull(obj)) {
            return true;
        } else {
            if (obj instanceof String) {
                return isBlank(obj.toString().trim());
            } else {
                return false;
            }
        }
    }

    /**
     * 判断目标实例对象是否是象征为空值。比如Null，空格，"NULL"字符串均为象征为空值。
     *
     * @param obj
     *            需要判断的实例对象。
     * @return 象征为空值返回true，否则返回false。
     */
    public static boolean isNullValue(Object obj) {
        if (isNull(obj) || isBlank(obj.toString())
                || "null".equalsIgnoreCase(obj.toString())) {
            return true;
        } else {
            return false;
        }
    }

}
