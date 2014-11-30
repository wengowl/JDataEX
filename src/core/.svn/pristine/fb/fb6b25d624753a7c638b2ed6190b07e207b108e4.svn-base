package org.jdataex.flow.component.step.trigger;

import org.jdataex.util.logger.LoggerFactory;

/**
 * Created by wengxf on 14-4-25.
 * 相关配置的Bean
 */
public class ConfigBean {
    private static ConfigBean configBean;
    private String path="config/trigger/current/current.xls";
    private int threadnum;
    private int poolconnectionnum;
    private   ExcelConfigLoad load = new ExcelConfigLoad();
    private TriggerDataBean triggerDataBean = new TriggerDataBean();

    private ConfigBean(){
        load();
    }

    public static ConfigBean getInstance() {
        if (configBean == null) {
            configBean = new ConfigBean();
        }
        return configBean;
    }
    private void load(){
        LoggerFactory.getRootLogger().info("加载当前触发器配置信息");
        load.loadConfig(path);
    }

    public TriggerDataBean getTriggerDataBean(TriggerDataBean triggerDataBean) {

        return load.getServ_bean().get(triggerDataBean.getService());
    }


    public int getThreadnum() {
        return threadnum;
    }

    public void setThreadnum(int threadnum) {
        this.threadnum = threadnum;
    }

    public int getPoolconnectionnum() {
        return poolconnectionnum;
    }

    public void setPoolconnectionnum(int poolconnectionnum) {
        this.poolconnectionnum = poolconnectionnum;
    }

   /* public TriggerDataBean getTriggerDataBean() {
        return triggerDataBean;
    }

    public void setTriggerDataBean(TriggerDataBean triggerDataBean) {

        this.triggerDataBean = triggerDataBean;
    }*/
}
