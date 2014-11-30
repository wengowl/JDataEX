package org.jdataex.tlq;


import com.tongtech.tlq.base.*;
import org.jdataex.common.AssertUtil;
import org.jdataex.common.CommonUtil;
import org.jdataex.message.MessageAttrBean;
import org.jdataex.message.MessageExceptions;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * Created by wengxf on 2014/7/11 0011.
 */
public class PutTLQ extends BaseTLQ implements Runnable{
    private String hostName;
    private int hostPort;
    private Thread autoReConnectThread;
    private boolean autoReConnect;

    public PutTLQ(String qcuName, String queueName,boolean autoReConnect,String hostName,int hostPort){
        AssertUtil.assertNullOrBlank(qcuName);
        AssertUtil.assertNullOrBlank(queueName);
//        assertTLQMsgType(type);
//        setType(type);
        setTimes(6);
        setQcuName(qcuName);
        setQueueName(queueName);
        setAutoReConnect(autoReConnect);
        setHostName(hostName);
        setHostPort(hostPort);
        autoReConnectThread = new Thread(this);
    }
    public boolean isAutoReConnect() {
        return autoReConnect;
    }

    public void setAutoReConnect(boolean autoReConnect) {
        this.autoReConnect = autoReConnect;
    }
    public String getHostName() {
        return hostName;
    }

    public void setHostName(String hostName) {
        this.hostName = hostName;
    }

    public int getHostPort() {
        return hostPort;
    }

    public void setHostPort(int hostPort) {
        this.hostPort = hostPort;
    }
    /**
     * 连接本地的tlq或者远程的tlq,建议一般情况下连接本地的tlq 进行消息发送,如果是本地
     * 的tlq,hostName直接传入 null
     */
    public void connect() throws MessageExceptions {
        reConnect();
        if (isAutoReConnect()) {
            // 启动线程执行自动重连功能
            if(!autoReConnectThread.isAlive()&&!autoReConnectThread.isInterrupted())
                autoReConnectThread.start();
        }
    }
    private void connectOnce() throws MessageExceptions {
        try {
            if (CommonUtil.isBlank(hostName)) {
                setTlqConnection(new TlqConnection());
            }
            else{
                TlqConnContext context = new TlqConnContext();
                context.HostName =hostName;
                context.ListenPort = hostPort;
                setTlqConnection(new TlqConnection(context));
            }
            this.setQcu(getTlqConnection().openQCU(getQcuName()));
        }catch (UnsatisfiedLinkError error) {
            throw error;
        }
        catch (TlqException e){
            throw new MessageExceptions(e);

        }

    }
    /**
     * 错误不捕获,直接抛出,意味着如果TLQ环境本身就有问题将不会重试
     *
     *
     */
    private void reConnect() throws MessageExceptions {
        for (int i = 1; i <= getTimes(); i++) {

            try {
                connectOnce();
                break;
            } catch (MessageExceptions messageExceptions) {
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                if (i >= getTimes())
                    throw messageExceptions;
                continue;
            }



        }

    }
    public void close() throws MessageExceptions {
        try {

            AssertUtil.assertNull(
                    "tlq connecion is null maby not do connect() methrod!",
                    getTlqConnection());

            AssertUtil.assertNull(
                    "tlq qcu is null maby not do connect() methrod!", getQcu());

        } catch (Exception e) {
            throw new MessageExceptions(e);
        }
        try {
            getQcu().close();
        } catch (TlqException e) {
            e.printStackTrace();
        }
        try {
            getTlqConnection().close();
        } catch (TlqException e) {
            e.printStackTrace();
        }

    }

    public void putBuffMsg(byte[] msgContent,MessageAttrBean messageAttrs) throws TlqException {

        TlqMessage msgInfo = new TlqMessage();
        TlqMsgOpt msgOpt = new TlqMsgOpt();
        msgOpt.QueName = getQueueName(); // 队列名
        msgInfo.MsgType = TlqMessage.BUF_MSG; // 消息类型
        msgInfo.MsgSize = msgContent.length; // 消息大小
        msgInfo.setMsgData(msgContent);  // 消息内容
        msgInfo.Persistence = TlqMessage.TLQPER_Y; // 持久性
        if (messageAttrs.getMsgType()==0) {
            msgInfo.Priority = TlqMessage.TLQPRI_NORMAL; // 优先级
        }  if (messageAttrs.getMsgType()==2) {
            msgInfo.Priority = TlqMessage.TLQPRI_HIGH; // 优先级
        }
        msgInfo.Expiry = -1; // 生命周期

        msgInfo.setStringProperty("DestAppCode",messageAttrs.getDestAppCode());
        msgInfo.setStringProperty("DestDeptCode",messageAttrs.getDestDeptCode());
        msgInfo.setStringProperty("SourceAppCode",messageAttrs.getSourceAppCode());
        msgInfo.setStringProperty("SourceDeptCode",messageAttrs.getSourceDeptCode());
        msgInfo.setIntProperty("MsgType",messageAttrs.getMsgType());

        Map<String,String> attrs =messageAttrs.getAttrs();
        Set<String> keySet =attrs.keySet();
        Iterator<String> names = keySet.iterator();

        while(names.hasNext()) {
            String name= names.next();
            msgInfo.setStringProperty(name,attrs.get(name));
        }
        System.out.println(getQcu());

        getQcu().putMessage(msgInfo, msgOpt);

    }

    public void putFileMsg(String file,MessageAttrBean messageAttrs) throws TlqException {

        AssertUtil.assertNullOrBlank(file);

        TlqMessage msgInfo = new TlqMessage();
        TlqMsgOpt msgOpt = new TlqMsgOpt();
        msgOpt.QueName = getQueueName();
        msgOpt.RemoveFileFlag = TlqMsgOpt.NOTREMOVEFILE; // 是否删除源文件标志,不删除

        msgInfo.MsgType = TlqMessage.FILE_MSG;
        msgInfo.MsgSize = file.getBytes().length;// 文件必须在本地
        msgInfo.setMsgData(file.getBytes());
        msgInfo.Persistence = TlqMessage.TLQPER_Y;// 持久
        if (messageAttrs.getMsgType()==1) {
            msgInfo.Priority = TlqMessage.TLQPRI_NORMAL; // 优先级
        }  if (messageAttrs.getMsgType()==3) {
            msgInfo.Priority = TlqMessage.TLQPRI_HIGH; // 优先级
        }
        msgInfo.Expiry = -1;

        msgInfo.setStringProperty("DestAppCode",messageAttrs.getDestAppCode());
        msgInfo.setStringProperty("DestDeptCode",messageAttrs.getDestDeptCode());
        msgInfo.setStringProperty("SourceAppCode",messageAttrs.getSourceAppCode());
        msgInfo.setStringProperty("SourceDeptCode",messageAttrs.getSourceDeptCode());
        msgInfo.setIntProperty("MsgType",messageAttrs.getMsgType());

        Map<String,String> attrs =messageAttrs.getAttrs();
        Set<String> keySet =attrs.keySet();
        Iterator<String> names = keySet.iterator();
        while(names.hasNext()) {
            String name= names.next();
            msgInfo.setStringProperty(name,attrs.get(name));
        }

        getQcu().putMessage(msgInfo, msgOpt);
    }
    private void testAutoReconnectMsg() throws TlqException {

        TlqMessage msgInfo = new TlqMessage();
        TlqMsgOpt msgOpt = new TlqMsgOpt();
        msgOpt.QueName = getQueueName(); // 队列名

        byte[] msgContent ="test".getBytes(); // 消息内容

        msgInfo.MsgType = TlqMessage.BUF_MSG; // 消息类型
        msgInfo.MsgSize = msgContent.length; // 消息大小
        msgInfo.setMsgData(msgContent);
        msgInfo.Persistence = TlqMessage.TLQPER_Y; // 持久性
        msgInfo.Priority = TlqMessage.TLQPRI_NORMAL; // 优先级
        msgInfo.Expiry = 10; // 生命周期

        getQcu().putMessage(msgInfo, msgOpt);

        TlqMessage msgInfo2 = new TlqMessage();
        TlqMsgOpt msgOpt2 = new TlqMsgOpt();

        msgOpt2.QueName = "channelevent";
        msgOpt2.WaitInterval = 10;

        getQcu().getMessage(msgInfo2, msgOpt2);


    }


    /**
     * 自动重连tlqConnect,如果遇到TLQ环境错误等类型的问题,直接关闭重试<br>
     * 首先判断连接是否正常是否能发生消息如果不能才重连;
     */
    public void run() {
        while (!autoReConnectThread.isInterrupted()) {

            try {
                Thread.sleep(2000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            try {
                testAutoReconnectMsg();
            } catch (TlqException e) {
                try {
                    reConnect();
                } catch (MessageExceptions messageExceptions) {
                    messageExceptions.printStackTrace();
                }
            }
        }
    }
}
