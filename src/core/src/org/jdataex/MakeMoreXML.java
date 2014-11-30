package org.jdataex;

import org.dom4j.*;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import java.io.*;
import java.util.Iterator;
import java.util.List;

/**
 * Created by wengxf on 2014/7/22 0022.
 */
public class MakeMoreXML {
    public static void main(String[] args) throws Exception {
       int a = 1231212423;
        MakeMoreXML m = new MakeMoreXML();
//        m.rewriteXML(a);

//        String path ="F:\\公司\\四川高院\\testxml\\测试文件\\test\\all" ;
//        File file = new File(path);
//        String[] test = file.list();
//        for (int i = 0; i < test.length; i++) {
//           m.rewriteXMLnamespace("ACTION_TYPE","insert","F:\\公司\\四川高院\\testxml\\测试文件\\test\\all\\"+test[i]);
//        }
           String  str = "行政一审";
           for (int i=1;i<200;i++){
               str = str+",行政一审";
           }
          for (int i=0;i<200;i++){
              str = str +",行政二审";
          }
        for (int i=0;i<200;i++){
            str = str +",民事一审";
        }
        for (int i=0;i<200;i++){
            str = str +",民事二审";
        }
        for (int i=0;i<200;i++){
            str = str +",刑事一审";
        }
        for (int i=0;i<200;i++){
            str = str +",刑事二审";
        }

            m.writetxt(str,"F:\\公司\\四川高院\\testxml\\sp\\lx2.txt");
             int ajbs =1231212423;
        String as = ""+ajbs;
        for (int i=1;i<200;i++){
            as = as+","+(ajbs+i);
        }
        as = as+","+as+","+as+","+as+","+as+","+as;
        m.writetxt(as,"F:\\公司\\四川高院\\testxml\\sp\\ajbs2.txt");


    }
    public void rewriteXMLnamespace(String namespace,String re,String path) throws IOException, DocumentException {
        SAXReader sax = new SAXReader();

        File file = new File(path);
        System.out.println(path);
        Document doc = sax.read(new FileInputStream(file));
        Element root = doc.getRootElement();
        // root = root.element("行政二审");
        System.out.println(root.getName());
        Attribute attribute = root.attribute(namespace);
        attribute.setText(re);
       /* Iterator<Attribute> rootAttribute = root.attributeIterator();
        while(rootAttribute.hasNext()){
            Attribute attr = rootAttribute.next();
			*//*为了通用和生成XML时不好区分属性，每个属性都带上attr用于区分是否是元素的属性*//*

        }*/
       /* for(int i=0;i<els.size();i++){
            Namespace namespaces = els.get(i);
                 System.out.println("--"+namespaces.getPrefix());
            if (namespaces.getPrefix().equals(namespace)) {
               // e.
            }
        }*/
        //重新写入到文件
       // File fileto = new File("F:\\公司\\四川高院\\testxml\\测试文件\\test\\行政一审" + i + ".xml");
        XMLWriter output = new XMLWriter(new FileWriter(file));
        output.write(doc);
        output.close();

        System.out.println("edit file "+file);

    }

    public void rewriteXML(int a) throws IOException, DocumentException {
        for (int i = 0; i < 20000; i++) {
            int ajbs = a + i;
            String txt = ajbs + "";
            SAXReader sax = new SAXReader();
            //假设你的xml是放在D盘下的叫做a.xml的文件
            File file = new File("F:\\公司\\四川高院\\testxml\\测试文件\\test\\行政\\行政二审.xml");
            Document doc = sax.read(new FileInputStream(file));
            Element root = doc.getRootElement();
            // root = root.element("行政二审");
           Attribute attribute = root.attribute("ACTION_TYPE");
            attribute.setText("insert");
            List<Element> els = root.elements();
            for (Element e : els) {
                if (e.getName().equals("AJBS")) {
                    e.setText(txt);
                }
            }
            //重新写入到文件
            File fileto = new File("F:\\公司\\四川高院\\testxml\\测试文件\\test\\行政\\行政二审" + i + ".xml");
            XMLWriter output = new XMLWriter(new FileWriter(fileto));
            output.write(doc);
            output.close();
            System.out.println("create file "+i);

        }

    }

    public void writetxt(String str,String path){
        try {
            FileWriter writer = new FileWriter(path);
            writer.write(str);
            writer.flush();
            writer.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}

