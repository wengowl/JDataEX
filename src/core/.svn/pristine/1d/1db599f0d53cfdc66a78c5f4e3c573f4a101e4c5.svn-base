package org.jdataex.flow.component.step.trigger;


import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wengxf on 14-4-23.
 * 触发器处理
 */
public class TriggerComponent {
    private List<String> serviceList = new ArrayList<>();
    private List<TriggerDataBean> triggerDataBeanList = new ArrayList<>();  //映射关系列表
    private List<String> table = new ArrayList<>();
    private int threadnum;
    private int initthreadnum;
    private String path="config/trigger/";
    private String datatype;
    private String poolname;

    public TriggerComponent( int threadnum, int initthreadnum, String datatype,String poolname) {
        this.threadnum = threadnum;
        this.initthreadnum = initthreadnum;
        this.datatype = datatype;
        this.poolname = poolname;
    }

    public boolean fileMove(String source, String dest) {
        File oldfile = new File(source);
        File newfile = new File(dest);
        return oldfile.renameTo(newfile);

    }


    /**
     * 删除单个文件
     *
     * @param sPath 被删除文件的文件名
     * @return 单个文件删除成功返回true，否则返回false
     */
    public boolean deleteFile(String sPath) {
        boolean flag = false;
        File file = new File(sPath);
        // 路径为文件且不为空则进行删除
        if (file.isFile() && file.exists()) {

            flag =  file.delete();
        }
        return flag;
    }

    /**
     * 触发器配置处理
     *
     *
     */
    public void configHandler() {
        String currentconfig = path + "/current/current.xls";
        String createconfig = path + "/update/create.xls";
        String updateconfig = path + "/update/update.xls";
        String deleteconfig = path + "/update/delete.xls";
        boolean flag = new File(currentconfig).exists(); //判断当前配置文件是否存在，已存在说明已有库表建立，反之则是初始
        //初始化创建触发器
        if (!flag && new File(createconfig).exists()) {
            ExcelConfigLoad load = new ExcelConfigLoad(serviceList, triggerDataBeanList, table);
            load.loadConfig(createconfig);//加载配置关系
            triggerDataBeanList = load.getTriggerDataBeanList();
            serviceList = load.getServiceList();
            table = load.getTable();
            //System.out.println("***" + triggerDataBeanList.get(0).getService());
            ThreadHandler threadHandler = new ThreadHandler(datatype,poolname);
            threadHandler.triggerThread(threadnum, triggerDataBeanList, serviceList);
            //TODO 不要忘了到时恢复
            //fileMove(createconfig, currentconfig);  //移动文件到当前配置目录

        }
        //修改
        if (flag && new File(updateconfig).exists()) {
            ExcelConfigLoad load = new ExcelConfigLoad();
            load.loadConfig(updateconfig);
            triggerDataBeanList = load.getTriggerDataBeanList();
            serviceList = load.getServiceList();
            table = load.getTable();
            /*如何处理，数据库重新处理还是改*/
            load.updateConfig(currentconfig, updateconfig);
            deleteFile(updateconfig);
            for (int i = 0; i < triggerDataBeanList.size(); i++) {
                if (datatype.equalsIgnoreCase("sybase")) {
                    TriggerSqlHandler_sybase triggerSqlHandler = new TriggerSqlHandler_sybase();
                    triggerDataBeanList.get(i).setPrimarykey();
                    String[] primarykeys = triggerDataBeanList.get(i).getPrimarykey().toArray(new String[ triggerDataBeanList.get(i).getPrimarykey().size()]);
                    if (primarykeys.length>0) {
                        triggerSqlHandler.updateTrigger(triggerDataBeanList.get(i).getTablename(), triggerDataBeanList.get(i).getService(), triggerDataBeanList.get(i).getService(),  primarykeys);
                    }
                } else {
                    TriggerSqlHandler triggerSqlHandler = new TriggerSqlHandler("SGY");
                    triggerDataBeanList.get(i).setPrimarykey();
                    String[] primarykeys =  triggerDataBeanList.get(i).getPrimarykey().toArray(new String[triggerDataBeanList.get(i).getPrimarykey().size()]);
                    if (primarykeys.length>0) {
                        triggerSqlHandler.updateTrigger(triggerDataBeanList.get(i).getTablename(), triggerDataBeanList.get(i).getService(), triggerDataBeanList.get(i).getService(), primarykeys);
                    }
                }
            }
        }
        //删除
        if (flag && new File(deleteconfig).exists()) {
            ExcelConfigLoad load = new ExcelConfigLoad();
            load.loadConfig(deleteconfig);
            triggerDataBeanList = load.getTriggerDataBeanList();
            serviceList = load.getServiceList();
            table = load.getTable();
            load.deleteConfig(currentconfig, deleteconfig);
            deleteFile(deleteconfig);


            for (int i = 0; i < triggerDataBeanList.size(); i++) {
                if (datatype.equalsIgnoreCase("sybase")) {
                    TriggerSqlHandler_sybase triggerSqlHandler = new TriggerSqlHandler_sybase();
                    String trigger = triggerDataBeanList.get(i).getService();
                    String action = triggerDataBeanList.get(i).getAction();
                    if (action.equals("1.0") || action.equals("0.0") || action.equals("4.0")) {
                        triggerSqlHandler.triggerDeleteSql(trigger + "_insert", table.get(i));
                    }
                    if (action.equals("2.0") || action.equals("0.0") || action.equals("4.0")) {
                        triggerSqlHandler.triggerDeleteSql(trigger + "_update", table.get(i));
                    }
                    if (action.equals("3.0") || action.equals("0.0")) {
                        triggerSqlHandler.triggerDeleteSql(trigger + "_delete", table.get(i));
                    }
                } else {
                    TriggerSqlHandler triggerSqlHandler = new TriggerSqlHandler("SGY");
                    String trigger = triggerDataBeanList.get(i).getService();
                    String action = triggerDataBeanList.get(i).getAction();
                    if (action.equals("1.0") || action.equals("0.0") || action.equals("4.0")) {
                        triggerSqlHandler.triggerDeleteSql(trigger + "_insert", table.get(i));
                    }
                    if (action.equals("2.0") || action.equals("0.0") || action.equals("4.0")) {
                        triggerSqlHandler.triggerDeleteSql(trigger + "_update", table.get(i));
                    }
                    if (action.equals("3.0") || action.equals("0.0")) {
                        triggerSqlHandler.triggerDeleteSql(trigger + "_delete", table.get(i));
                    }
                }
            }
        }
        //添加
        if (flag && new File(createconfig).exists()) {
            ExcelConfigLoad load = new ExcelConfigLoad();
            load.loadConfig(createconfig);
            triggerDataBeanList = load.getTriggerDataBeanList();
            serviceList = load.getServiceList();
            table = load.getTable();
            load.createConfig(currentconfig, createconfig);
           // deleteFile(createconfig);
            ThreadHandler threadHandler = new ThreadHandler(datatype,poolname);
            threadHandler.triggerThread(threadnum, triggerDataBeanList, serviceList);
        }
    }

    public void dataHandler() {
        ThreadHandler threadHandler = new ThreadHandler(datatype,poolname);
        threadHandler.dataThread(threadnum, initthreadnum);
    }
}
