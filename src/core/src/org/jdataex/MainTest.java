package org.jdataex;

import org.dom4j.DocumentException;
import org.jdataex.core.GlobalInitializer;
import org.jdataex.core.InitializationException;
import org.jdataex.engine.loader.FlowLoader;
import org.jdataex.engine.loader.IFlowLoader;
import org.jdataex.flow.IFlow;
import org.jdataex.flow.component.step.dataaccess.RowDataAccess;
import org.jdataex.flow.component.step.dataquery.DataQuery;
import org.jdataex.flow.component.step.xml.XMLConverter;
import org.jdataex.flow.controller.IComponentController;
import org.jdataex.flow.row.IRow;
import org.jdataex.flow.row.Row;
import org.jdataex.util.FileUtil;
import org.jdataex.util.logger.LoggerFactory;

import java.io.*;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by wengxf on 2014/7/21 0021.
 */
public class MainTest  {

  /*  public static void init(){
        try {
            GlobalInitializer.initialization();
        } catch (InitializationException e) {
            e.printStackTrace();
        }
    }*/
        public void xmlConvertertest(String path) throws InitializationException, DocumentException {
           /* init();
           // File basedir = FileUtil.findAbsoluteFile(MainTest.class);
            File file = new File( "config/xml2db-config.xml");
            IFlowLoader loader = new FlowLoader();

            IFlow flow = loader.load(file);

            IComponentController controller = flow.getFirstComponentController();
            controller.startAll();*/
            XMLConverter converter = new XMLConverter();
            RowDataAccess as=new RowDataAccess(null);
            File file = new File(path);
            String[] test = file.list();
            for (int i = 0; i < test.length; i++) {
                System.out.println("filenumber"+i+"  filename:"+test[i]);
//                System.out.println("时间："+new Time(System.currentTimeMillis())+"文件之前total："+Runtime.getRuntime().totalMemory()+"free:"+Runtime.getRuntime().freeMemory());
                Row row = converter.toRow(new File(path+"/"+test[i]));
//                System.out.println("时间："+new Time(System.currentTimeMillis())+"转换total："+Runtime.getRuntime().totalMemory()+"free:"+Runtime.getRuntime().freeMemory());
//                System.out.println("时间："+new Time(System.currentTimeMillis())+"入库前total："+Runtime.getRuntime().totalMemory()+"free:"+Runtime.getRuntime().freeMemory());
                as.doProcessRow(row);
//                System.out.println("时间："+new Time(System.currentTimeMillis())+"入库total："+Runtime.getRuntime().totalMemory()+"free:"+Runtime.getRuntime().freeMemory());

            }
        }

        public void sptoXML(String path) throws IOException {
            XMLConverter converter = new XMLConverter();
            DataQuery query = new DataQuery();
            String[] lxs =fileRead(path+"/sp/lx.txt").split(",");
            String[] ajbss = fileRead(path+"/sp/ajbs.txt").split(",");
            for (int i=0;i<lxs.length;i++) {
                String ajlx = lxs[i];
                int ajbs = Integer.parseInt(ajbss[i]);
                IRow actualrow = query.getAllSP(ajlx, ajbs);
                File file = new File(path+"/" + ajlx + i + ".xml");
                converter.fromRow(actualrow, file);
            }
        }

    public void fsptoXML(String path) throws IOException {
        XMLConverter converter = new XMLConverter();
        DataQuery query = new DataQuery();
        String[] lxs =fileRead(path+"/fsp/lx.txt").split(",");
        String[] colums = fileRead(path+"/fsp/colum.txt").split(",");
        String[] values = fileRead(path+"/fsp/values.txt").split(",");
        for (int i=0;i<lxs.length;i++) {
            String ajlx = lxs[i];
            Map<String, Object> tj = new HashMap<>();
            tj.put(colums[i],values[i]);
            IRow actualrow = query.getALLFSP(ajlx, tj);
            File file = new File(path+"\\" + ajlx +i+".xml");
            converter.fromRow(actualrow, file);
        }
    }
    public String fileRead(String filePath){
        StringBuffer stringBuffer = new StringBuffer();
        try {
            String encoding="UTF-8";
            File file=new File(filePath);
            if(file.isFile() && file.exists()){ //判断文件是否存在
                InputStreamReader read = new InputStreamReader(
                        new FileInputStream(file),encoding);//考虑到编码格式
                BufferedReader bufferedReader = new BufferedReader(read);
                String lineTxt = null;

                while((lineTxt = bufferedReader.readLine()) != null){
                    stringBuffer.append(lineTxt);
                }
                read.close();
            }else{
                System.out.println("找不到指定的文件");
            }
        } catch (Exception e) {
            System.out.println("读取文件内容出错");
            e.printStackTrace();
        }

       return  stringBuffer.toString();

    }

    public static void main(String args[]){
        long startTime=System.currentTimeMillis();
        MainTest test = new MainTest();
        System.out.println("input "+args[0]);
          if (args[0].equals("0")){

              try {
                  if (args[2]!=null){
                       for (int i=0;i<5000;i++){
                           test.xmlConvertertest(args[1]);
                       }
                  }else {
                  test.xmlConvertertest(args[1]);
                  }
              } catch (InitializationException e) {
                  e.printStackTrace();
              } catch (DocumentException e) {
                  e.printStackTrace();
              }

          }else if (args[0].equals("1")){
              try {
                  test.fsptoXML(args[1]);
              } catch (IOException e) {
                  e.printStackTrace();
              }
          }else {
              try {
                  test.sptoXML(args[1]);
              } catch (IOException e) {
                  e.printStackTrace();
              }
          }
        long endTime=System.currentTimeMillis();
        LoggerFactory.getRootLogger().error("Start time:" + new Time(startTime) + " end time " + new Time(endTime));
    }
}
