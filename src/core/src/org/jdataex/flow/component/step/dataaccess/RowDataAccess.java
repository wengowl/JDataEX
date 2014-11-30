package org.jdataex.flow.component.step.dataaccess;

import org.jdataex.flow.row.*;
import org.jdataex.resource.databasepool.DBManager;
import org.jdataex.util.logger.LoggerFactory;

import java.sql.*;
import java.util.UUID;


/**
 * Created by wengxf on 2014/5/30 0030.
 */
public class RowDataAccess extends RowDataAccessProcess {
    DBManager dbManager = DBManager.getInstance();
    private String poolname ;

    public RowDataAccess() {
        this.poolname =null;
    }
    /**
     *@param poolname 连接池名
     */
    public RowDataAccess(String poolname) {
        this.poolname = poolname;
    }

    /**
     *批处理数据
     */
    public void doProcessRow(IRow row) {
        System.out.println("******************************************************************");
//        System.out.println("Start process "+row.getHeader().toString()+""+row.getHeader().containsValue("insert"));

        if (row.getHeader().get("ACTION_TYPE").equalsIgnoreCase("insert")) {
            LoggerFactory.getRootLogger().info("do ******** insert_update");
                doInsert_Update(row);
        }else if (row.getHeader().get("ACTION_TYPE").equalsIgnoreCase("delete"))
        {
            LoggerFactory.getRootLogger().info("do ******** delete");
            doDelete(row);
        }else{
            LoggerFactory.getRootLogger().info("do ******** update_insert");
            doUpdate_Insert(row);
        }


    }
    /**
     *批数据插入事务
     */
    public void doUpdate_Insert(IRow row) {

        Connection basePoolConnection = null;
        try {
            basePoolConnection = dbManager.getConnection(poolname);
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            basePoolConnection.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        int n = 0;
        boolean flag = true;
        PreparedStatement preparedStatement=null;
        String failtext = "0 rows has changed";
        try {
        for (int i = 0; i < row.getColumnsSize(); i++) {
//            System.out.println("row.getvalue:"+row.getColumn(i).getValue());
            if (row.getColumn(i).getType().equals(ColumnType.ComplexRow)) {
                IRow nrow = (IRow) row.getColumn(i).getValue();
                nrow.insertColumn("APP_CODE",row.getHeader().get("APP_CODE"));
                nrow.insertColumn("DEPT_CODE",row.getHeader().get("DEPT_CODE"));
                IColumn column1= new Column("UPDATE_TIME",new Timestamp(System.currentTimeMillis()),ColumnType.TIMESTAMP);
                nrow.insertColumn(column1);
//                nrow.insertColumn("REG_TIME",formatter.format(new Timestamp(System.currentTimeMillis())));
//                nrow.insertColumn("UPDATE_TIME",formatter.format(new Timestamp(System.currentTimeMillis())));
                Savepoint savepoint = null;
               try {
                   savepoint = basePoolConnection.setSavepoint();
                   n=updateProcess(basePoolConnection,nrow);
//                    System.out.println("update rows :"+n);
             } catch (SQLException e) {
                    //flag = false;
                   n=0;
                   LoggerFactory.getRootLogger().error(e.getMessage(),e);
                   // e.printStackTrace();
                    try {
                        System.out.println("roll back savepoint");
                        basePoolConnection.rollback(savepoint);
                       // basePoolConnection.commit();

                    } catch (SQLException e1) {
                        e1.printStackTrace();
                    }

                }
                if (n == 0) {
                    nrow.insertColumn("ID", UUID.randomUUID().toString());
                    IColumn column= new Column("REG_TIME",new Timestamp(System.currentTimeMillis()),ColumnType.TIMESTAMP);
                    nrow.insertColumn(column);
                    n = insertProcess(basePoolConnection, nrow);
                    System.out.println("insert rows: "+n);
                }
            } else if (row.getColumn(i).getType().equals(ColumnType.ComplexRowSet)) {
                IRowSet rowSet = (IRowSet) row.getColumn(i).getValue();
                while (rowSet.hasNextRow()) {
                    IRow row1 = rowSet.nextRow();
                  //  try {
                    row1.insertColumn("APP_CODE",row.getHeader().get("APP_CODE"));
                    row1.insertColumn("DEPT_CODE",row.getHeader().get("DEPT_CODE"));
                    IColumn column1= new Column("UPDATE_TIME",new Timestamp(System.currentTimeMillis()),ColumnType.TIMESTAMP);
                    row1.insertColumn(column1);
                    Savepoint savepoint = null;
                    try {
                      savepoint = basePoolConnection.setSavepoint();
                        n=updateProcess(basePoolConnection,row1);

                    } catch (SQLException e) {
                      //  flag = false;
                        n=0;
                        LoggerFactory.getRootLogger().error(e.getMessage(),e);
                       // e.printStackTrace();
                        try {
                            System.out.println("roll back savepoint");
                            basePoolConnection.rollback(savepoint);
                          //  basePoolConnection.commit();
                        } catch (SQLException e1) {
                            e1.printStackTrace();
                        }

                    }
                    if (n == 0) {
                        row1.insertColumn("ID", UUID.randomUUID().toString());
                        IColumn column= new Column("REG_TIME",new Timestamp(System.currentTimeMillis()),ColumnType.TIMESTAMP);
                        row1.insertColumn(column);
                        n = insertProcess(basePoolConnection,row1);
                    }
                }
            }
        }

            basePoolConnection.commit();
        } catch (SQLException e) {
            flag=false;
             failtext= e.getMessage();
            try {
                System.out.println("roll back all");
                basePoolConnection.rollback();
                //basePoolConnection.commit();

            } catch (SQLException e1) {
                //e1.printStackTrace();
                LoggerFactory.getRootLogger().error(e1.getMessage(),e1);
            }
           // e.printStackTrace();
//            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } finally {

            try {
                basePoolConnection.close();

            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        if (!flag&&basePoolConnection!=null) {
            if (n==0){
             failtext = "0 rows has  changed";
            }

        }
        try {

        } finally {
            try {
                if (basePoolConnection!=null) {
                    basePoolConnection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void doInsert_Update(IRow row) {

        Connection basePoolConnection = null;
        try {
            basePoolConnection = dbManager.getConnection(poolname);
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            basePoolConnection.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        int n = 0;
        boolean flag = true;
        PreparedStatement preparedStatement=null;
        String failtext = "0 rows has changed";
        try {
            for (int i = 0; i < row.getColumnsSize(); i++) {
//            System.out.println("row.getvalue:"+row.getColumn(i).getValue());
                if (row.getColumn(i).getType().equals(ColumnType.ComplexRow)) {
                    IRow nrow = (IRow) row.getColumn(i).getValue();
                    nrow.insertColumn("APP_CODE",row.getHeader().get("APP_CODE"));
                    nrow.insertColumn("DEPT_CODE",row.getHeader().get("DEPT_CODE"));
                    IColumn column1= new Column("UPDATE_TIME",new Timestamp(System.currentTimeMillis()),ColumnType.TIMESTAMP);
                    nrow.insertColumn(column1);
                    nrow.insertColumn("ID", UUID.randomUUID().toString());
                    IColumn column= new Column("REG_TIME",new Timestamp(System.currentTimeMillis()),ColumnType.TIMESTAMP);
                    nrow.insertColumn(column);
                    Savepoint savepoint = null;
                    try {
                        savepoint = basePoolConnection.setSavepoint();
                        n=insertProcess(basePoolConnection, nrow);
//                    System.out.println("insert rows :"+n);
                    } catch (SQLException e) {
                        //flag = false;
                        n=0;
                        LoggerFactory.getRootLogger().error(e.getMessage()+ "then try to update",e);
                        // e.printStackTrace();
                        try {
                            System.out.println("inserterror  roll back savepoint");
                            basePoolConnection.rollback(savepoint);
                            // basePoolConnection.commit();

                        } catch (SQLException e1) {
                            e1.printStackTrace();
                        }

                    }
                    if (n == 0) {
                         nrow.deleteColumn(column);
                        nrow.deleteColumn("ID");
                        n = updateProcess(basePoolConnection, nrow);
                       System.out.println("update rows: "+n);
                        if (n==0){
                            flag=false;
                            LoggerFactory.getRootLogger().error("update 0 rows,there's some errors, roll back all");
                            try {
                                basePoolConnection.rollback();
                                break;
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }

                    }
                } else if (row.getColumn(i).getType().equals(ColumnType.ComplexRowSet)) {
                    IRowSet rowSet = (IRowSet) row.getColumn(i).getValue();
                    while (rowSet.hasNextRow()) {
                        IRow row1 = rowSet.nextRow();
                        //  try {
                        row1.insertColumn("APP_CODE",row.getHeader().get("APP_CODE"));
                        row1.insertColumn("DEPT_CODE",row.getHeader().get("DEPT_CODE"));
                        IColumn column1= new Column("UPDATE_TIME",new Timestamp(System.currentTimeMillis()),ColumnType.TIMESTAMP);
                        row1.insertColumn(column1);
                        row1.insertColumn("ID", UUID.randomUUID().toString());
                        IColumn column= new Column("REG_TIME",new Timestamp(System.currentTimeMillis()),ColumnType.TIMESTAMP);
                        row1.insertColumn(column);
                        Savepoint savepoint = null;
                        try {
                            savepoint = basePoolConnection.setSavepoint();
                            n=insertProcess(basePoolConnection,row1);

                        } catch (SQLException e) {
                            //  flag = false;
                            n=0;
                            LoggerFactory.getRootLogger().error(e.getMessage()+"then try to update",e);
                            // e.printStackTrace();
                            try {
                                System.out.println("roll back savepoint");
                                basePoolConnection.rollback(savepoint);
                                //  basePoolConnection.commit();
                            } catch (SQLException e1) {
                                e1.printStackTrace();
                            }

                        }
                        if (n == 0) {
                            row1.deleteColumn(column);
                            row1.deleteColumn("ID");
                            n = updateProcess(basePoolConnection,row1);
                            if (n==0){
                                flag =false;
                                LoggerFactory.getRootLogger().error("update 0 rows,there's some errors, roll back all");
                                try {
                                    basePoolConnection.rollback();
                                    break;
                                } catch (SQLException e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                    }
                }
            }

            basePoolConnection.commit();
        } catch (SQLException e) {
            flag=false;
            failtext= e.getMessage();
            try {
                System.out.println("roll back all");
                basePoolConnection.rollback();
                //basePoolConnection.commit();

            } catch (SQLException e1) {
                //e1.printStackTrace();
                LoggerFactory.getRootLogger().error(e1.getMessage(),e1);
            }
            // e.printStackTrace();
//            LoggerFactory.getRootLogger().error(e.getMessage(),e);
        } finally {
                 /*if (!flag){
                     LoggerFactory.getRootLogger().error("have some errors, roll back all");
                     try {
                         basePoolConnection.rollback();
                     } catch (SQLException e) {
                         e.printStackTrace();
                     }
                 }*/

            try {
                basePoolConnection.close();

            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        if (!flag&&basePoolConnection!=null) {
            if (n==0){
                failtext = "0 rows has  changed";
            }

        }
        try {

        } finally {
            try {
                if (basePoolConnection!=null) {
                    basePoolConnection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     *批数据删除事务
     */

    public void doDelete(IRow row){
        Connection basePoolConnection = null;
        try {
            basePoolConnection = dbManager.getConnection(poolname);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            basePoolConnection.setAutoCommit(false);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        int n = 0;
        boolean flag = true;
        String failtext = "0 rows has changed";
        PreparedStatement preparedStatement=null;
        try {
            for (int i = 0; i < row.getColumnsSize(); i++) {
                if (row.getColumn(i).getType().equals(ColumnType.ComplexRow)) {
                    IRow nrow = (IRow) row.getColumn(i).getValue();
//                try {
                    n = deleteProcess(basePoolConnection, nrow);
                    if (n == 0) {
                        LoggerFactory.getRootLogger().warn("delete 0 rows from "+nrow.getHeader().get("tableName"));
                        flag = false;
                    }

                } else if (row.getColumn(i).getType().equals(ColumnType.ComplexRowSet)) {
                    IRowSet rowSet = (IRowSet) row.getColumn(i).getValue();
                    while (rowSet.hasNextRow()) {
                        IRow row1 = rowSet.nextRow();
                        //  try {
                        n = deleteProcess(basePoolConnection, row1);
                        if (n == 0) {
                            LoggerFactory.getRootLogger().warn("delete 0 rows from "+row1.getHeader().get("tableName"));
                            flag = false;
                        }

                    }
                }
            }

            basePoolConnection.commit();
        } catch (SQLException e) {
            flag=false;
            try {
                basePoolConnection.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            failtext=e.getMessage();
            e.printStackTrace();
        }
        finally {
            try {
                if(basePoolConnection!=null) {
                    basePoolConnection.close();
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

//        if (n==0){
//            LoggerFactory.getRootLogger().warn("delete 0 row!!!!");
//        }

        try {

        } finally {
            try {  if (basePoolConnection!= null) {
                basePoolConnection.close();
            }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}