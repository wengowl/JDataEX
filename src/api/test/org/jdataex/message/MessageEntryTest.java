package org.jdataex.message;

import org.junit.Assert;
import org.junit.Test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.UUID;

public class MessageEntryTest {

    @Test
    public void testSendBufferMessage() throws Exception {
             MessageAttrBean messageAttrBean=new MessageAttrBean("00100","00100","00101","00101",0);
             MessageEntry messageEntry = new MessageEntry();
             String msg = "hello world";
             messageEntry.sendBufferMessage(messageAttrBean,msg.getBytes());
    }

    @Test
    public void testSendBufferMessageMoreAttrs() throws Exception {
        MessageAttrBean messageAttrBean=new MessageAttrBean("00100","00100","00101","00101",0);
        messageAttrBean.setAttrs("String","111233");
        messageAttrBean.setAttrs("test","test");
        MessageEntry messageEntry = new MessageEntry();
        String msg = "hello world";
        messageEntry.sendBufferMessage(messageAttrBean,msg.getBytes());
    }

    @Test
    public void testSendFileMessage() throws Exception {
        MessageAttrBean messageAttrBean=new MessageAttrBean("00100","00100","00101","00101",1);
        MessageEntry messageEntry = new MessageEntry();

        messageEntry.sendFileMessage(messageAttrBean,"E:\\listen.txt");
    }

    @Test
    public void testCommit() throws Exception {
        MessageEntry messageEntry = new MessageEntry();
        String uu="945cbeb6-6e6b-4f21-bfd6-79d9e61c8cf5" ;
        messageEntry.commit(UUID.fromString(uu));//"1b79202a-b958-4d13-98cd-37c567071337"));
        String sql = "select * from messages where uuid=?";
        Connection connection = messageEntry.getConnection();
        PreparedStatement preparedStatement =  connection.prepareStatement(sql);
        preparedStatement.setString(1,uu);
        ResultSet resultSet=preparedStatement.executeQuery();
        Boolean flag = resultSet.next();
        preparedStatement.close();
        connection.close();
        Assert.assertEquals(flag,false);
    }

    @Test
    public void testGetMessage() throws Exception {
       MessageAttrBean  messageAttrBean = new MessageAttrBean("00100","00100","00101","00101",3);
        messageAttrBean.setAttrs("name","wengxf");
        messageAttrBean.setAttrs("age","23");
        MessageEntry messageEntry = new MessageEntry();
        String sql = "insert into messages(uuid, destappcode,destdeptcode,sourceappcode,sourcedeptcode,msgType,msgdata,filepath,attrs,inserttime)" +
                "values(?,?,?,?,?,?,?,?,?,sysdate) ";
        Connection connection = messageEntry.getConnection();
        PreparedStatement preparedStatement =  connection.prepareStatement(sql);
        preparedStatement.setString(1,UUID.randomUUID().toString());
       // preparedStatement.setString(1,"1b79202a-b958-4d13-98cd-37c567071337");
        preparedStatement.setString(2,"00100");
        preparedStatement.setString(3,"00100");
        preparedStatement.setString(4,"00101");
        preparedStatement.setString(5,"00101");
        preparedStatement.setInt(6,3);
        preparedStatement.setString(7, new String("hello world!".getBytes()));
        preparedStatement.setString(8,"E:\\a.txt");
        preparedStatement.setString(9,"name:wengxf;age:23");
       /* preparedStatement.execute();
        preparedStatement.close();
        connection.close();*/
       MessageBean messageBean = messageEntry.getMessage("00100","00100",-1);
        MessageBean except = new MessageBean();
        except.setMessageAttr(messageAttrBean);
       // UUID uuid =UUID.fromString("1b79202a-b958-4d13-98cd-37c567071337");
        UUID uuid =UUID.fromString("74a91396-e10d-4ae6-ba51-338a1fd8d68a");
        //System.out.println(uuid);
        except.setUuid(uuid);
        except.setMsgData("hello world!".getBytes());
        except.setMsgType(3);
        //System.out.println(new String(except.getMsgData()) +"----"+new String(messageBean.getMsgData()));

        Assert.assertEquals(except.getUuid(), messageBean.getUuid());
        Assert.assertEquals(except.getMessageAttr().getAttrs(),messageBean.getMessageAttr().getAttrs());
        Assert.assertEquals(except.getMessageAttr().getSourceAppCode(),messageBean.getMessageAttr().getSourceAppCode());
        Assert.assertEquals(except.getMessageAttr().getSourceDeptCode(),messageBean.getMessageAttr().getSourceDeptCode());
        Assert.assertEquals(except.getMessageAttr().getDestAppCode(),messageBean.getMessageAttr().getDestAppCode());
        Assert.assertEquals(except.getMessageAttr().getDestDeptCode(),messageBean.getMessageAttr().getDestDeptCode());
        Assert.assertEquals(except.getMessageAttr().getMsgType(),messageBean.getMessageAttr().getMsgType());
        Assert.assertEquals(except.getFilePath(),messageBean.getFilePath());
        Assert.assertEquals(except.getMsgType(),messageBean.getMsgType());
        Assert.assertEquals(new String(except.getMsgData()),new String(messageBean.getMsgData()));

    }

    @Test
    public void testGetConnection() throws Exception {
         MessageEntry messageEntry = new MessageEntry();
        Connection connection= messageEntry.getConnection();
        String sql = "select id from test where id=1 ";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        ResultSet resultSet=preparedStatement.executeQuery();
        int a=0;
        if (resultSet.next()){
               a=resultSet.getInt("id");
        }
        Assert.assertEquals(a,0);
        resultSet.close();


        preparedStatement.close();
        connection.close();
    }
}