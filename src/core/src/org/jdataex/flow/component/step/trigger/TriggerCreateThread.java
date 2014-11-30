package org.jdataex.flow.component.step.trigger;

import org.jdataex.flow.component.DBOperation;
import org.jdataex.util.logger.LoggerFactory;

import java.util.List;

/**
 * 触发器创建线程
 * Created by wengxf on 14-4-28.
 */
public class TriggerCreateThread implements Runnable {
    private int start;
    private int end;
    private List<TriggerDataBean> triggerDataBeanList;
    private String datatype;
    private DBOperation dbOperation = new DBOperation();

    public TriggerCreateThread(int start, int end, List<TriggerDataBean> triggerDataBeanList, String datatype) {
        this.start = start;
        this.end = end;
        this.triggerDataBeanList = triggerDataBeanList;
        this.datatype = datatype;
    }


    @Override
    public void run() {
      /*  for(int i=start;i<end;i++){
            System.out.println(Thread.currentThread().getName()+" "+servicelist.get(i));
        }*/
        //System.out.println("start" + start);
        for (int i = start; i < end && i < triggerDataBeanList.size(); i++) {
            TriggerDataBean triggerDataBean = triggerDataBeanList.get(i);
             System.out.println("!^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^!");
            String[] primarykey = dbOperation.getTablePK(triggerDataBean.getTablename(),null);
           // System.out.println(primarykey.length);
            if (primarykey == null && triggerDataBean.getField().size()<=0) {
//               若全为空，报警告信息
                System.out.println(" 若全为空，报警告信息");
                LoggerFactory.getRootLogger().warn("表缺少主键！请添加！");
            }
            if (primarykey == null && triggerDataBean.getField().size()>0) {
                primarykey = new String[1];
                primarykey[0] = triggerDataBean.getField().get(0);

            }
            // 触发器创建
            if (primarykey != null) {
                if (datatype.equalsIgnoreCase("sybase")) {
                    TriggerSqlHandler_sybase triggerSqlHandler = new TriggerSqlHandler_sybase();
                    //triggerDataBean.setMsgparam(primarykey); //设置主键，写入文件

                    triggerSqlHandler.triggerCreateOrReplaceSql(triggerDataBean.getTablename(), triggerDataBean.getService(), triggerDataBean.getAction(), Thread.currentThread().getName(), primarykey);
                } else {
                    TriggerSqlHandler triggerSqlHandler = new TriggerSqlHandler("SGY");
                    //triggerDataBean.setMsgparam(primarykey); //设置主键，写入文件

                    triggerSqlHandler.triggerCreateOrReplaceSql(triggerDataBean.getTablename(), triggerDataBean.getService(), triggerDataBean.getAction(), Thread.currentThread().getName(), primarykey);

                }
            }

        }
    }
}
