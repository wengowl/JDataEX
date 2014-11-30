package org.jdataex.flow.component.step.trigger;


import java.util.List;

/**
 * Created by wengxf on 14-4-28.
 * 线程处理
 */
public class ThreadHandler {
    /* private int currentthreadnum;
     private List<String> serviceList = new ArrayList<>();
     private List<TriggerDataBean> triggerDataBeanList = new ArrayList<>();  //映射关系列表
     private List<String> table = new ArrayList<>();*/
    private String datatype;
    private String poolname=null;

    public ThreadHandler(String datatype,String poolname) {
        this.datatype = datatype;
        this.poolname = poolname;
    }

    /**
     * 线程处理
     */
    public void triggerThread(int threadnum, List<TriggerDataBean> triggerDataBeanList, List<String> serviceList) {  //触发器创建线程处理

        int count = (int) Math.ceil((double) serviceList.size() / (double) threadnum);
        //System.out.println("count" + count);
        for (int i = 0; i < threadnum; i++) {
            //根据线程数分段处理triggerDataBeanList,创建的Trigger对应的中间表为线程名
            //System.out.println("triggerthread" + threadnum + "   " + i);
            new Thread(new TriggerCreateThread(count * i, count * (i + 1), triggerDataBeanList, datatype), "Tr_Msg" + i).start();
        }


    }

    public void dataThread(int threadnum, int initthreadnum) { //数据处理线程


        for (int i = 0; i < threadnum; i++) {  //处理的中间表表名与线程名相同
            new Thread(new DataHandlerThread(poolname), "Tr_Msg" + i).start();
        }
        Thread thread = new Thread();
        if (threadnum < initthreadnum) {  //若线程数少于表，则另启一个线程用于处理剩余的表
            for (int i = threadnum; i < initthreadnum; i++) {
                if (!thread.isAlive()) {
                    thread = new Thread(new DataHandlerThread(poolname), "Tr_Msg" + i);
                    thread.start();
                }
            }
        }

    }


}