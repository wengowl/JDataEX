package org.jdataex.flow.component.step.trigger;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.jdataex.util.logger.LoggerFactory;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wengxf on 14-4-25.
 * 读取excel配置文档中的映射关系
 */
public class ExcelConfigLoad {
    List<String> serviceList = new ArrayList<>();
    List<TriggerDataBean> triggerDataBeanList = new ArrayList<>();  //映射关系列表
    List<String> table = new ArrayList<>();
    List<Integer> location = new ArrayList<>();
    Map<String, TriggerDataBean> serv_bean = new HashMap<>();

    public ExcelConfigLoad() {
    }

    public ExcelConfigLoad(List<String> serviceList, List<TriggerDataBean> triggerDataBeanList, List<String> table) {
        this.serviceList = serviceList;
        this.triggerDataBeanList = triggerDataBeanList;
        this.table = table;
    }

    public Map<String, TriggerDataBean> getServ_bean() {
        return serv_bean;
    }

    public List<String> getTable() {
        return table;
    }

    public List<String> getServiceList() {
        return serviceList;
    }

    public List<TriggerDataBean> getTriggerDataBeanList() {
        return triggerDataBeanList;
    }

    public List<Integer> getLocation() {

        return location;
    }

    /**
     * 更改配置文件（更改触发器配置）
     *
     * @param currentpath   当前配置路径
     * @param configpath 更改的配置文件所在的路径
     *
     */
    public void updateConfig(String currentpath, String configpath) {
        deleteConfig(currentpath, configpath);
        createConfig(currentpath, configpath);
    }

    /**
     * 更改配置文件（新增触发器配置）
     *
     * @param currentpath   当前配置路径
     * @param configpath 更改的配置文件所在的路径
     *
     */
    public void createConfig(String currentpath, String configpath) {

        List<TriggerDataBean> bean = new ArrayList<>();
        List<Integer> locations = new ArrayList<>();
        ExcelConfigLoad excelConfigLoad = new ExcelConfigLoad();
        excelConfigLoad.loadConfig(configpath);
        bean = excelConfigLoad.getTriggerDataBeanList();
        locations = excelConfigLoad.getLocation();

        try {
            POIFSFileSystem fs = new POIFSFileSystem(new FileInputStream(currentpath));
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            HSSFSheet sheet = wb.getSheetAt(0);
            int rownum = sheet.getLastRowNum() + 1;
            for (int i = 0; i < bean.size(); i++) {
                //写入服务名
                //System.out.println(bean.get(i).getService());
                HSSFRow row = sheet.createRow(locations.get(i) + rownum);
                row.createCell(0).setCellValue(bean.get(i).getService());
                //写入源表名
                //  sheet.createRow(locations.get(i) + rownum);
                row.createCell(1).setCellValue(bean.get(i).getTablename());
                //写入触发动作
                //  sheet.createRow(locations.get(i) + rownum);
                row.createCell(2).setCellValue(bean.get(i).getAction());
                //写入源表字段
                for (int n = 0;bean.get(i).getField()!=null&& n < bean.get(i).getField().size(); n++) {
                    if (sheet.getRow(locations.get(i) + rownum + n) == null)
                        row = sheet.createRow(locations.get(i) + rownum + n);
                    row.createCell(3).setCellValue(bean.get(i).getField().get(n));
                    System.out.println("create sourcefield row"+bean.get(i).getField().get(n));
                }
                //写入目的表名
                //sheet.createRow(locations.get(i) + rownum);
                row.createCell(4).setCellValue(bean.get(i).getDesttablename());
                //写入目的动作
                // sheet.createRow(locations.get(i) + rownum);
                row.createCell(5).setCellValue(bean.get(i).getDestaction());
                //写入目的字段
                for (int n = 0; bean.get(i).getDestfield()!=null&&n < bean.get(i).getDestfield().size(); n++) {
                    if (sheet.getRow(locations.get(i) + rownum + n) == null)
                        row = sheet.createRow(locations.get(i) + rownum + n);
                    row.createCell(6).setCellValue(bean.get(i).getDestfield().get(n));
                }
                //目的字段类型
                for (int n = 0;bean.get(i).getDesttype()!=null&& n < bean.get(i).getDesttype().size(); n++) {
                    if (sheet.getRow(locations.get(i) + rownum + n) == null)
                        row = sheet.createRow(locations.get(i) + rownum + n);
                    row.createCell(7).setCellValue(bean.get(i).getDesttype().get(n));
                }
                //写入转换
                for (int n = 0;  bean.get(i).getExchanges()!=null&&n < bean.get(i).getExchanges().size(); n++) {
                    if (sheet.getRow(locations.get(i) + rownum + n) == null)
                        row = sheet.createRow(locations.get(i) + rownum + n);
                    row.createCell(8).setCellValue(bean.get(i).getExchanges().get(n));
                }


            }


            FileOutputStream fileOut = new FileOutputStream(currentpath);
            wb.write(fileOut);
            fileOut.close();
        } catch (IOException e) {
           //TODO e.printStackTrace();
            //LoggerFactory.getRootLogger().traceI18nc(ExcelConfigLoad.class,"IOException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        }


    }
    /**
     * 更改配置文件（删除触发器配置）
     *
     * @param currentpath   当前配置路径
     * @param configpath 更改的配置文件所在的路径
     *
     */
    public void deleteConfig(String currentpath, String configpath) {
        List<TriggerDataBean> oldbean = new ArrayList<>();
        List<Integer> oldlocation = new ArrayList<>();
        ExcelConfigLoad excelConfigLoad = new ExcelConfigLoad();
        excelConfigLoad.loadConfig(currentpath);
        oldbean = excelConfigLoad.getTriggerDataBeanList();
        oldlocation = excelConfigLoad.getLocation();
        List<TriggerDataBean> bean = new ArrayList<>();
        ExcelConfigLoad dd = new ExcelConfigLoad();
        dd.loadConfig(configpath);
        bean = dd.getTriggerDataBeanList();
        Map<String, Integer> lo_bean = new HashMap<>();
        Map<String, Integer> bean_row = new HashMap<>();
        for (int i = 0; i < oldlocation.size(); i++) {
            lo_bean.put(oldbean.get(i).getService(), oldlocation.get(i));
            if (i < oldlocation.size() - 1) {
                bean_row.put(oldbean.get(i).getService(), oldlocation.get(i + 1) - oldlocation.get(i));
            }
        }

        try {
            POIFSFileSystem fs = new POIFSFileSystem(new FileInputStream(currentpath));
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            HSSFSheet sheet = wb.getSheetAt(0);
            //System.out.println(bean.size());
            // System.out.println(oldbean.get(oldlocation.size() - 1).getService() + "     " + (sheet.getLastRowNum() + 1 - oldlocation.get(oldlocation.size() - 1)));
            if (oldlocation.size() > 0) {
                bean_row.put(oldbean.get(oldlocation.size() - 1).getService(), sheet.getLastRowNum() + 1 - oldlocation.get(oldlocation.size() - 1));
            }
            for (int i = 0; i < bean.size(); i++) {
                //System.out.println((bean.get(i).getService()));
                if (bean_row.get(bean.get(i).getService()) != null) {
                    //System.out.println(bean.get(i).getService() + " " + bean_row.get(bean.get(i).getService()));
                    for (int j = 0; j < bean_row.get(bean.get(i).getService()); j++)
                        if (sheet.getRow(lo_bean.get(bean.get(i).getService()) + j) != null) {
                            sheet.removeRow(sheet.getRow(lo_bean.get(bean.get(i).getService()) + j));
                        }
                }
            }
            FileOutputStream fileOut = new FileOutputStream(currentpath);
            wb.write(fileOut);
            fileOut.close();
        } catch (IOException e) {
            //TODO e.printStackTrace();
            //LoggerFactory.getRootLogger().traceI18nc(ExcelConfigLoad.class,"IOException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        }


    }
    /**
     * 加载配置文件
     *
     * @param path   当前配置路径
     *
     *
     */
    public void loadConfig(String path) {


        try {
            FileInputStream file = new FileInputStream(path);
            POIFSFileSystem fs = new POIFSFileSystem(file);
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            HSSFSheet sheet = wb.getSheetAt(0);
            location.clear();
            for (int rownum = 0; rownum <= sheet.getLastRowNum(); rownum++) {

                HSSFRow row = sheet.getRow(rownum);

                if (row != null) {

//                获取服务名
                    //  HSSFCell cell = row.getCell((short)0);
                    if (null == row.getCell(0) && row.getCell(1) != null) {
                        serviceList.add(row.getCell(1).toString());
                        row.createCell(0);
                        row.getCell(0).setCellValue(row.getCell(1).toString());
                    } else if (row.getCell(0) != null) {
                        serviceList.add(row.getCell(0).toString());

                    }

                    if (row.getCell(1) != null) {
                        table.add(row.getCell(1).toString());

                        location.add(rownum);
                    }

                }
                //  rownum++;
            }
//            根据源表名的位置，获取映射关系
            for (int i = 0; i < location.size(); i++) {
                TriggerDataBean triggerDataBean = new TriggerDataBean();
                triggerDataBean.setService(serviceList.get(i));

                triggerDataBean.setTablename(table.get(i));
//                获取触发类型
                triggerDataBean.setAction(sheet.getRow(location.get(i)).getCell(2).toString());
               // System.out.println("Action  " + sheet.getRow(location.get(i)).getCell(2).toString());
//                获取源字段，无则设为空
                if (sheet.getRow(location.get(i)).getCell(3) != null) {
                    List<String> field = new ArrayList<>();
                    for (int a = location.get(i); (i + 1) < location.size() && a < location.get(i + 1) && sheet.getRow(a) != null && sheet.getRow(a).getCell(3) != null; a++) {
                        field.add(sheet.getRow(a).getCell(3).toString());
                        System.out.println("sourcefield");
                    }
                    field.add(sheet.getRow(location.get(location.size()-1)).getCell(3).toString());
                    triggerDataBean.setField(field);

                }
                else{
                    triggerDataBean.setField(null);
                }
//                获取目的表名，若目的表名为空，则默认跟源表名一样
                if (sheet.getRow(location.get(i)).getCell(4) != null) {
                    triggerDataBean.setDesttablename(sheet.getRow(location.get(i)).getCell(4).toString());
                } else {
                    triggerDataBean.setDesttablename(triggerDataBean.getTablename());
                }
//             获取对应触发动作的目的表操作，若为空则默认为源表触发动作,此处设为空
                if (sheet.getRow(location.get(i)).getCell(5) != null) {
                    triggerDataBean.setDestaction(sheet.getRow(location.get(i)).getCell(5).toString());
                } else {
                    triggerDataBean.setDestaction(null);
                }
//                获取目的表字段，若为空，则表名与源表字段名相同
                if (sheet.getRow(location.get(i)).getCell(6) != null) {
                    List<String> field = new ArrayList<>();
                    for (int a = location.get(i); (i + 1) < location.size() && a < location.get(i + 1) && sheet.getRow(a) != null && sheet.getRow(a).getCell(6) != null; a++) {
                        field.add(sheet.getRow(a).getCell(6).toString());
                    }
                    field.add(sheet.getRow(location.get(location.size()-1)).getCell(6).toString());
                    triggerDataBean.setDestfield(field);

                } else {
                    triggerDataBean.setDestfield(triggerDataBean.getField());
                }
 //               获取目的表字段类型,若为空，则表示没有字段类型转换,此处设为空
                if (sheet.getRow(location.get(i)).getCell(7) != null) {
                    List<String> field = new ArrayList<>();
                    for (int a = location.get(i); (i + 1) < location.size() && a < location.get(i + 1) && sheet.getRow(a) != null && sheet.getRow(a).getCell(6) != null; a++) {
                        field.add(sheet.getRow(a).getCell(7).toString());
                    }
                    field.add(sheet.getRow(location.get(location.size()-1)).getCell(7).toString());
                    triggerDataBean.setDesttype(field);

                }else {
                    triggerDataBean.setDesttype(null);
                }
//                 获取转换关系
                if (sheet.getRow(location.get(i)).getCell(8) != null) {
                    List<String> field = new ArrayList<>();
                    for (int a = location.get(i); (i + 1) < location.size() && a < location.get(i + 1) && sheet.getRow(a) != null; a++) {
                        //if(sheet.getRow(a).getCell(7) = null)
                        field.add(sheet.getRow(location.get(i)).getCell(8).toString());
                    }
                    field.add(sheet.getRow(location.get(location.size()-1)).getCell(8).toString());
                    triggerDataBean.setExchanges(field);

                }else {
                    triggerDataBean.setExchanges(null);
                }
                serv_bean.put(triggerDataBean.getService(), triggerDataBean);
                triggerDataBeanList.add(triggerDataBean);
            }

            FileOutputStream fileOut = new FileOutputStream(path);
            wb.write(fileOut);
            fileOut.close();
        } catch (IOException e) {
           //TODO  e.printStackTrace();
            //LoggerFactory.getRootLogger().traceI18nc(ExcelConfigLoad.class,"IOException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        }



       /* this.serviceList=serviceList;
        this.triggerDataBeanList=triggerDataBeanList;
        this.table=table;*/
    }


}