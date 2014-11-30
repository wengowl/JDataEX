package org.jdataex.flow.component.step.dataquery;

import org.jdataex.util.FileUtil;
import org.jdataex.util.logger.LoggerFactory;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.*;

/**
 * 数据查询，删除，写入xml与读取字段类型等相关数据配置的配置文件读取
 * Created by wengxf on 2014/6/4 0004.
 */
public class ReadDataConfig {
    private static ReadDataConfig readDataConfig;
    private String path="config/data";
    private Map<String, Map<String, String>> table_column = new HashMap<>();//表字段对应
    private  Map<String, List<String>> table_column__ch = new HashMap<>(); //表对应的获取字段
    private  Map<String, List<String>> table_column__condition = new HashMap<>();//表对应的条件判断字段
    //private   List<String> tables = new ArrayList<>();
    //private  List<String> yw= new ArrayList<>();
    //private  List<String> fspyw= new ArrayList<>();
    private Map<String, String> lx_bs = new HashMap<>();//类型标识对应
    private Map<String, List<String>> lx_tables = new HashMap<>();//类型表对应


    private ReadDataConfig() {
        load();
    }

    public static ReadDataConfig getInstance() {
        if (readDataConfig == null) {
            readDataConfig = new ReadDataConfig();
        }
        return readDataConfig;
    }

    /**
     * 迭代读取数据配置文件，加载表对应字段关系，类型对应的标识，类型对应的表
     */

    private void load() {
        LoggerFactory.getRootLogger().info("加载数据配置……");
        File directroy = new File(path);
        Collection<File> files = FileUtil.listAllFiles(directroy);
        Iterator<File> filelist = files.iterator();
        while (filelist.hasNext()) {
            FileInputStream fileInputStream=null;
            try {
                fileInputStream = new FileInputStream(filelist.next());
                SAXBuilder sb = new SAXBuilder();
                Document doc = sb.build(fileInputStream);
                Element yw = doc.getRootElement();
                List lxList = yw.getChildren();
                Iterator lxs = lxList.iterator();
                while (lxs.hasNext()) {
                    Element lx = (Element) lxs.next();
                    String lxname = lx.getAttributeValue("name");
                    String lxbz = lx.getAttributeValue("bz");
                    if (lxbz!=null) {
                        lx_bs.put(lxname, lxbz);
                    }
                    List tablelist = lx.getChildren();
                    Iterator tables = tablelist.iterator();
                    List<String> tablel = new ArrayList<>();
                    while (tables.hasNext()) {
                        Element table = (Element) tables.next();
                        String tablename = table.getAttributeValue("name").toUpperCase();
                        tablel.add(tablename);
                        List columnlist = table.getChildren();
                        Iterator columns = columnlist.iterator();
                        Map<String, String> column_type = new HashMap<>();//字段和类型映射
                       // Map<String,Map<String,String>> column_typelist = new HashMap<>();
//                        Map<String ,String> column_type_ch = new HashMap<>();
                        List< String> column_type_chlist = new ArrayList<>();
                        List<String> column_condition = new ArrayList<>();
                        while (columns.hasNext()) {
                            Element column = (Element) columns.next();
                            String columnname = column.getAttributeValue("name").toUpperCase();
                            String columntype = column.getAttributeValue("type");
                            column_type.put(columnname, columntype);
                            if (column.getAttributeValue("flag")!=null &&column.getAttributeValue("flag").equalsIgnoreCase("true")){
                                column_type_chlist.add(columnname);
                            }
                            if (column.getAttributeValue("condition")!=null&&column.getAttributeValue("condition").equalsIgnoreCase("true")){
                                column_condition.add(columnname);
                            }
                            //column_typelist.put(table,column_type);

                        }
                        table_column.put(tablename, column_type);//表和字段映射
                        table_column__ch.put(tablename,column_type_chlist);
                        table_column__condition.put(tablename,column_condition);
                    }
                    lx_tables.put(lxname, tablel);
                }
            } catch (FileNotFoundException e) {
               LoggerFactory.getRootLogger().error(e.getMessage(),e);
            } catch (JDOMException e) {
                LoggerFactory.getRootLogger().error(e.getMessage(), e);
            } catch (IOException e) {
                LoggerFactory.getRootLogger().error(e.getMessage(), e);
            }  finally
            {
                FileUtil.closeQuietly(fileInputStream);

            }

        }

    }
    /**
     *根据类型获取表名
     */
    public List<String> getTablesByLX(String lx){
        return lx_tables.get(lx);
    }
    /**
     *根据表名获取字段名和字段类型
     */
    public Map<String,String> getColumnAndTypesByTable(String tablename){
        return table_column.get(tablename.toUpperCase());
    }
    /**
     *根据表名获取要查询的字段名
     */
    public List<String>getColumnsByTable(String tablename){
        return table_column__ch.get(tablename.toUpperCase());
    }
    /**
     *根据类型获取标识
     */
    public String getBSByLX(String lx){
        return lx_bs.get(lx);
    }
     /**
      *根据表名获取条件字段
      */
    public List<String> getConditionColumnByTable(String tablename){
        return table_column__condition.get(tablename);
    }
}