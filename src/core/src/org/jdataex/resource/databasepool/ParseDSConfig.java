package org.jdataex.resource.databasepool;

import org.jdataex.util.FileUtil;
import org.jdataex.util.logger.LoggerFactory;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

/**
 * 获取连接池配置信息
 * Created by wengxf on 2014/5/8 0008.
 */
public class ParseDSConfig {
    /**
     * 构造函数
     */
    public ParseDSConfig() {

    }
    /**
     * 读取xml配置文件
     * @param path
     * @return
     */
    public Vector readConfigInfo(String path)
    {
        String rpath=path;//this.getClass().getResource("").getPath().substring(1)+path;
        Vector dsConfig=null;
        FileInputStream fi = null;
        try
        {
            fi=new FileInputStream(rpath);//读取路径文件
            dsConfig=new Vector();
            SAXBuilder sb=new SAXBuilder();
            Document doc=sb.build(fi);
            Element root=doc.getRootElement();
            List pools=root.getChildren();
            //System.out.println("readConfigInfo get"+pools.size());
            Element pool=null;
            Iterator allPool=pools.iterator();
            while(allPool.hasNext())
            {
                pool=(Element)allPool.next();
                ConfigDatabasePoolBean dscBean=new ConfigDatabasePoolBean();
                dscBean.setDatabaseType(pool.getChild("databasetype").getText());
                dscBean.setPoolname(pool.getChild("poolname").getText());
                LoggerFactory.getRootLogger().info("读取连接池名"+dscBean.getPoolname());
                dscBean.setJdbcDriver(pool.getChild("jdbcdriver").getText());
                dscBean.setDbUrl(pool.getChild("dburl").getText());
                dscBean.setDbUsername(pool.getChild("dbusername").getText());
                dscBean.setDbPassword(pool.getChild("dbpassword").getText());
                dscBean.setMaxConnections(Integer.parseInt(pool.getChild("maxconnections").getText()));
                dscBean.setMinConnections(Integer.parseInt(pool.getChild("minconnections").getText()));

                //dscBean.setInitConnections(Integer.parseInt(pool.getChild("initconnections").getText()));
               // dscBean.setIncrConnections(Integer.parseInt(pool.getChild("incrconnections").getText()));
                dsConfig.add(dscBean);
            }

        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
           // e.printStackTrace();
            //LoggerFactory.getRootLogger().traceI18nc(ParseDSConfig.class,"FileNotFoundException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } catch (JDOMException e) {
            // TODO Auto-generated catch block
           // e.printStackTrace();
           // LoggerFactory.getRootLogger().traceI18nc(ParseDSConfig.class,"JDOMException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            //e.printStackTrace();
            //LoggerFactory.getRootLogger().traceI18nc(ParseDSConfig.class,"IOException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        }
        finally
        {
            FileUtil.closeQuietly(fi);
         /*   try {
                fi.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }*/
        }

        return dsConfig;
    }

    /**
     *增加配置文件
     *
     */
    public void addConfigInfo(String path,ConfigDatabasePoolBean dsb)
    {
        String rpath=this.getClass().getResource("").getPath().substring(1)+path;
        FileInputStream fi=null;
        FileOutputStream fo=null;
        try
        {
            fi=new FileInputStream(rpath);//读取xml流

            SAXBuilder sb=new SAXBuilder();

            Document doc=sb.build(fi); //得到xml
            Element root=doc.getRootElement();
            List pools=root.getChildren();//得到xml子树

            Element newpool=new Element("pool"); //创建新连接池

            Element pooltype=new Element("databasetype"); //设置连接池类型
            pooltype.setText(dsb.getDatabaseType());
            newpool.addContent(pooltype);

            Element poolname=new Element("poolname");//设置连接池名字
            poolname.setText(dsb.getPoolname());
            newpool.addContent(poolname);

            Element pooldriver=new Element("jdbcdriver"); //设置连接池驱动
            pooldriver.addContent(dsb.getJdbcDriver());
            newpool.addContent(pooldriver);

            Element poolurl=new Element("dburl");//设置连接池url
            poolurl.setText(dsb.getDbUrl());
            newpool.addContent(poolurl);

            Element poolusername=new Element("dbusername");//设置连接池用户名
            poolusername.setText(dsb.getDbUsername());
            newpool.addContent(poolusername);

            Element poolpassword=new Element("dbpassword");//设置连接池密码
            poolpassword.setText(dsb.getDbPassword());
            newpool.addContent(poolpassword);

            Element poolmaxconn=new Element("maxConnections");//设置连接池最大连接
            poolmaxconn.setText(String.valueOf(dsb.getMaxConnections()));
            newpool.addContent(poolmaxconn);

            pools.add(newpool);//将child添加到root
            Format format = Format.getPrettyFormat();
            format.setIndent("");
            format.setEncoding("utf-8");
            XMLOutputter outp = new XMLOutputter(format);
            fo = new FileOutputStream(rpath);
            outp.output(doc, fo);

        } catch (JDOMException e) {
            // TODO Auto-generated catch block
           // e.printStackTrace()
          //  LoggerFactory.getRootLogger().traceI18nc(ParseDSConfig.class,"JDOMException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } catch (IOException e) {
            // TODO Auto-generated catch block
           // e.printStackTrace();
           // LoggerFactory.getRootLogger().traceI18nc(ParseDSConfig.class,"IOException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        }
        finally
        {    FileUtil.closeQuietly(fo);
            FileUtil.closeQuietly(fi);

        }
    }
    /**
     *删除配置文件
     */
    public void delConfigInfo(String path,String name)
    {
        String rpath=this.getClass().getResource("").getPath().substring(1)+path;
        FileInputStream fi = null;
        FileOutputStream fo=null;
        try
        {
            fi=new FileInputStream(rpath);//读取路径文件
            SAXBuilder sb=new SAXBuilder();
            Document doc=sb.build(fi);
            Element root=doc.getRootElement();
            List pools=root.getChildren();
            Element pool=null;
            Iterator allPool=pools.iterator();
            while(allPool.hasNext())
            {
                pool=(Element)allPool.next();
                if(pool.getChild("name").getText().equals(name))
                {
                    pools.remove(pool);
                    break;
                }
            }
            Format format = Format.getPrettyFormat();
            format.setIndent("");
            format.setEncoding("utf-8");
            XMLOutputter outp = new XMLOutputter(format);
            fo = new FileOutputStream(rpath);
            outp.output(doc, fo);


        } catch (JDOMException e) {
            // TODO Auto-generated catch block
           // e.printStackTrace();
           // LoggerFactory.getRootLogger().traceI18nc(ParseDSConfig.class,"JDOMException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            //e.printStackTrace();
           // LoggerFactory.getRootLogger().traceI18nc(ParseDSConfig.class,"IOException",e);
            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        }

        finally
        {
            FileUtil.closeQuietly(fi);
            FileUtil.closeQuietly(fo);
            /*try {
                fi.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }*/
        }
    }
    /**
     * @param args
     * @throws Exception
     */
    public static void main(String[] args) throws Exception {
        // TODO Auto-generated method stub
        ParseDSConfig pd=new ParseDSConfig();
        String path="ds.config.xml";
        pd.readConfigInfo(path);
        //pd.delConfigInfo(path, "tj012006");
        ConfigDatabasePoolBean dsb=new ConfigDatabasePoolBean();

        pd.addConfigInfo(path, dsb);
        pd.delConfigInfo(path, "yyy001");
    }
}
