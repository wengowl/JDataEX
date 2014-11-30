package org.jdataex.message;

import com.tongtech.tlq.base.TlqException;
import org.jdataex.common.CommonUtil;
import org.jdataex.tlq.PutTLQ;

import java.sql.*;
import java.util.UUID;

/**
 * Created by wengxf on 2014/7/10 0010.
 */
public class MessageEntry {
    private String qcuName;
    private String queName;
    private String hostName;
    private int hostPort;
    private String url;
    private String password;
    private String username;
    private String driverClass;

    public MessageEntry() {
        findConfig();
    }

    /**
     *发送buffer消息
     *
     */
    public void sendBufferMessage(MessageAttrBean messageAttr,byte[] msgData) throws MessageExceptions{

       /* String qcuName = "sendqcu";
        String queName = "rq";
        String hostName ="10.10.22.20" ;
        int hostPort =10261;*/

        PutTLQ putTLQ = new PutTLQ(qcuName,queName,true,hostName,hostPort);
        System.out.println("-----"+putTLQ.getQcuName());
        putTLQ.connect();
        try {
            putTLQ.putBuffMsg(msgData,messageAttr);
            putTLQ.close();
        } catch (TlqException e) {
            throw new MessageExceptions(e);
        }
    }
    /**
     *发送文件消息
     *
     */

    public void  sendFileMessage(MessageAttrBean messageAttr,String fileName)throws  MessageExceptions{
       /* String qcuName = "sendqcu";
        String queName = "rq";
        String hostName ="10.10.22.20" ;
        int hostPort =10261;*/

        PutTLQ putTLQ = new PutTLQ(qcuName,queName,true,hostName,hostPort);
        putTLQ.connect();
        try {
            putTLQ.putFileMsg(fileName,messageAttr);
            putTLQ.close();
        } catch (TlqException e) {
            throw new MessageExceptions(e);
        }
    }
    /**
     *提交
     *
     */
    public void commit(UUID uuid)  throws MessageExceptions{
       String sql = "delete from MESSAGES where  UUID= ?";
        Connection connection=getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,uuid.toString());
            preparedStatement.execute();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new MessageExceptions(e);
        }
        finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw  new MessageExceptions(e);
            }
        }

    }
      /**
       *获取指定条件的消息
       *
       */
    public MessageBean getMessage(String destAppCode, String destDeptCode,int msgType) throws MessageExceptions {
        MessageBean message= new MessageBean();
        String sql = "select * from MESSAGES where destAppCode =? and destDeptCode=? and msgType=? order by inserttime asc";
        Connection connection=getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,destAppCode);
            preparedStatement.setString(2,destDeptCode);

            if (msgType!=-1){
                preparedStatement.setInt(3,msgType);
               ResultSet resultSet= preparedStatement.executeQuery();
                if (resultSet.next()){
                    MessageAttrBean messageAttr= new MessageAttrBean(destAppCode,destDeptCode,resultSet.getString("sourceAppcode".toUpperCase()),resultSet.getString("sourceDeptcode"),msgType);
                    //TODO messageAttr 的其他自定义属性如何获取？全部放在表messages的字段attrs中，存放形式为字符串name1:value1;name2:value2格式

                    String att =resultSet.getString("attrs");
                    if (CommonUtil.isNotBlank(att)) {
                        String attrs[] =att.split(";");
                        for (int i = 0; i < attrs.length; i++) {
                            String attr[] = attrs[i].split(":");
                            messageAttr.setAttrs(attr[0], attr[1]);
                        }
                    }
                    if (msgType==0||msgType==2) {
                        message.setMsgData(resultSet.getBytes("msgData"));
                        System.out.println(new String("hello world!".getBytes()));
                        System.out.println(new String(resultSet.getBytes("msgData")));
                    }else {
                        message.setFilePath(resultSet.getString("filePath"));
                    }
                    message.setMsgType(resultSet.getInt("msgType"));
                    message.setUuid(UUID.fromString(resultSet.getString("uuid")));
                    message.setMessageAttr(messageAttr);
                }
                resultSet.close();
            } else{
                preparedStatement.setInt(3,2);
                ResultSet resultSet= preparedStatement.executeQuery();
                if (resultSet.next()){
                    MessageAttrBean messageAttr= new MessageAttrBean(destAppCode,destDeptCode,resultSet.getString("sourceAppCode"),resultSet.getString("sourceDeptCode"),2);
                    //TODO messageAttr 的其他自定义属性如何获取？
                    String att =resultSet.getString("attrs");
                    if (CommonUtil.isNotBlank(att)) {
                        String attrs[] =att.split(";");
                        for (int i = 0; i < attrs.length; i++) {
                            String attr[] = attrs[i].split(":");
                            messageAttr.setAttrs(attr[0], attr[1]);
                        }
                    }
                    message.setMsgData(resultSet.getBytes("msgData"));
                    message.setMsgType(resultSet.getInt("msgType"));
                    message.setUuid(UUID.fromString(resultSet.getString("uuid")));
                    message.setMessageAttr(messageAttr);
                    resultSet.close();
                }else{
                    preparedStatement.setInt(3,3);
                    System.out.println("*******************");
                    ResultSet resultSet1= preparedStatement.executeQuery();
                    if (resultSet1.next()) {
                        MessageAttrBean messageAttr = new MessageAttrBean(destAppCode, destDeptCode, resultSet1.getString("sourceAppCode"), resultSet1.getString("sourceDeptCode"), 3);
                        //TODO messageAttr 的其他自定义属性如何获取？
                        String att =resultSet1.getString("attrs");
                        if (CommonUtil.isNotBlank(att)) {
                            String attrs[] =att.split(";");
                            for (int i = 0; i < attrs.length; i++) {
                                String attr[] = attrs[i].split(":");
                                messageAttr.setAttrs(attr[0], attr[1]);
                            }
                        }
                        message.setFilePath(resultSet1.getString("filePath"));
                        message.setMsgType(resultSet1.getInt("msgType"));
                        message.setUuid(UUID.fromString(resultSet1.getString("uuid")));
                        message.setMessageAttr(messageAttr);
                        resultSet1.close();
                    }else {
                        preparedStatement.setInt(3,0);
                        ResultSet resultSet2= preparedStatement.executeQuery();
                        if (resultSet2.next()) {
                            MessageAttrBean messageAttr = new MessageAttrBean(destAppCode, destDeptCode, resultSet2.getString("sourceAppCode"), resultSet2.getString("sourceDeptCode"), 0);
                         //TODO messageAttr 的其他自定义属性如何获取？
                            String att =resultSet2.getString("attrs");
                            if (CommonUtil.isNotBlank(att)) {
                                String attrs[] =att.split(";");
                                for (int i = 0; i < attrs.length; i++) {
                                    String attr[] = attrs[i].split(":");
                                    messageAttr.setAttrs(attr[0], attr[1]);
                                }
                            }
                            message.setMsgData(resultSet2.getBytes("msgData"));
                            message.setMsgType(resultSet2.getInt("msgType"));
                            message.setUuid(UUID.fromString(resultSet2.getString("uuid")));
                            message.setMessageAttr(messageAttr);
                            resultSet2.close();
                        }else {
                            preparedStatement.setInt(3,1);
                            ResultSet resultSet3= preparedStatement.executeQuery();
                            if (resultSet3.next()) {
                                MessageAttrBean messageAttr = new MessageAttrBean(destAppCode, destDeptCode, resultSet3.getString("sourceAppCode"), resultSet3.getString("sourceDeptCode"), 1);
                                //TODO messageAttr 的其他自定义属性如何获取？
                                String att =resultSet3.getString("attrs");
                                if (CommonUtil.isNotBlank(att)) {
                                    String attrs[] =att.split(";");
                                    for (int i = 0; i < attrs.length; i++) {
                                        String attr[] = attrs[i].split(":");
                                        messageAttr.setAttrs(attr[0], attr[1]);
                                    }
                                }
                                message.setFilePath(resultSet3.getString("filePath"));
                                message.setMsgType(resultSet3.getInt("msgType"));
                                message.setUuid(UUID.fromString(resultSet3.getString("uuid")));
                                message.setMessageAttr(messageAttr);
                                resultSet3.close();
                            }else{
                                message=null;
                            }

                        }
                    }
                }

            }

            preparedStatement.close();
        } catch (SQLException e) {
            throw new MessageExceptions(e);
        }
        finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw  new MessageExceptions(e);
            }
        }

        return message;
    }

    public Connection getConnection() throws MessageExceptions {
        try{
            //加载驱动类
            Class.forName(getDriverClass()) ;
        }catch(ClassNotFoundException e){
           throw new MessageExceptions("找不到驱动程序类 ，加载驱动失败！",e);

        }
         /*
        String url = "jdbc:oracle:thin:@10.10.22.12:1521:ORCL" ;
        String username = "sgy" ;
        String password = "sgy" ;*/
        Connection con=null;
        try{
            con = DriverManager.getConnection(url, username, password) ;
            System.out.println("connect to database !");
        }catch(SQLException se){
            throw  new MessageExceptions("数据库连接失败！",se);

        }
        return con;
    }
    //TODO 配置如何获取，主要是对应的队列名，qcu名，数据库名,设置为对应类的属性
    private void findConfig(){
        this.url = "jdbc:oracle:thin:@10.10.22.12:1521:ORCL";
        this.username ="sgy";
        this.password ="sgy";
        this.driverClass= "oracle.jdbc.driver.OracleDriver";
        this.qcuName = "sendqcu";
        this.queName = "rq";
        this.hostName ="10.10.22.20" ;
        this.hostPort =10261;

    }

    public String getQcuName() {
        return qcuName;
    }

    public String getUsername() {
        return username;
    }

    public String getQueName() {
        return queName;
    }

    public String getHostName() {
        return hostName;
    }

    public int getHostPort() {
        return hostPort;
    }

    public String getUrl() {
        return url;
    }

    public String getPassword() {
        return password;
    }

    public String getDriverClass() {
        return driverClass;
    }
}
