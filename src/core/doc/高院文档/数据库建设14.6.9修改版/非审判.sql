----------------------------------------------
-- Export file for user DBFSP               --
-- Created by lenovo on 2014/7/24, 11:45:55 --
----------------------------------------------

spool 非审判.log

prompt
prompt Creating table AJLCXT_AJKZRZ
prompt ============================
prompt
create table AJLCXT_AJKZRZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  PZBH        NUMBER,
  LCKZLB      VARCHAR2(20),
  AH          VARCHAR2(50),
  JCRQ        DATE,
  TSTS        NUMBER,
  TSNR        VARCHAR2(100),
  TSRBS       NUMBER,
  TSR         VARCHAR2(40),
  LDDBRBS     NUMBER,
  LDDBR       VARCHAR2(40),
  LDDBYJ      VARCHAR2(250),
  LDDBRQ      DATE,
  HFRBS       NUMBER,
  HFR         VARCHAR2(40),
  CBRHFRQ     VARCHAR2(250),
  CBRHFYJ     DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table AJLCXT_AJKZRZ
  is '案件控制日志';
comment on column AJLCXT_AJKZRZ.FYBM
  is '法院编码';
comment on column AJLCXT_AJKZRZ.BH
  is '编号';
comment on column AJLCXT_AJKZRZ.AJBS
  is '案件标识';
comment on column AJLCXT_AJKZRZ.PZBH
  is '配置标号';
comment on column AJLCXT_AJKZRZ.LCKZLB
  is '流程控制类别';
comment on column AJLCXT_AJKZRZ.AH
  is '案号';
comment on column AJLCXT_AJKZRZ.JCRQ
  is '检查日期';
comment on column AJLCXT_AJKZRZ.TSTS
  is '提示天数';
comment on column AJLCXT_AJKZRZ.TSNR
  is '提示内容';
comment on column AJLCXT_AJKZRZ.TSRBS
  is '提示人标识';
comment on column AJLCXT_AJKZRZ.TSR
  is '提示人';
comment on column AJLCXT_AJKZRZ.LDDBRBS
  is '领导督办人标识';
comment on column AJLCXT_AJKZRZ.LDDBR
  is '领导督办人';
comment on column AJLCXT_AJKZRZ.LDDBYJ
  is '领导督办意见';
comment on column AJLCXT_AJKZRZ.LDDBRQ
  is '领导督办日期';
comment on column AJLCXT_AJKZRZ.HFRBS
  is '回复人标识';
comment on column AJLCXT_AJKZRZ.HFR
  is '回复人';
comment on column AJLCXT_AJKZRZ.CBRHFRQ
  is '承办人回复日期';
comment on column AJLCXT_AJKZRZ.CBRHFYJ
  is '承办人回复意见';

prompt
prompt Creating table AJLCXT_AJLCPZXX
prompt ==============================
prompt
create table AJLCXT_AJLCPZXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  LCBH        NUMBER,
  TSFW        VARCHAR2(40),
  JCTJ        BLOB,
  TSTS        NUMBER,
  ZRRBS       NUMBER,
  ZRR         VARCHAR2(40),
  SFPC        NUMBER,
  CPWSMC      VARCHAR2(100),
  SHJB        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table AJLCXT_AJLCPZXX
  is '案件流程配置信息';
comment on column AJLCXT_AJLCPZXX.FYBM
  is '法院编码';
comment on column AJLCXT_AJLCPZXX.LCBH
  is '流程编号';
comment on column AJLCXT_AJLCPZXX.TSFW
  is '提示范围';
comment on column AJLCXT_AJLCPZXX.JCTJ
  is '检查条件';
comment on column AJLCXT_AJLCPZXX.TSTS
  is '提示天数';
comment on column AJLCXT_AJLCPZXX.ZRRBS
  is '责任人标识';
comment on column AJLCXT_AJLCPZXX.ZRR
  is '责任人';
comment on column AJLCXT_AJLCPZXX.SFPC
  is '是否排除';
comment on column AJLCXT_AJLCPZXX.CPWSMC
  is '裁判文书名称';
comment on column AJLCXT_AJLCPZXX.SHJB
  is '审核级别';

prompt
prompt Creating table AJZLPCXT_AJCWB
prompt =============================
prompt
create table AJZLPCXT_AJCWB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  AJCWBS      NUMBER,
  ZZRBS       NUMBER,
  ZZR         VARCHAR2(40),
  NF          NUMBER,
  CBBM        VARCHAR2(100),
  PCDL        VARCHAR2(20),
  PCXL        VARCHAR2(40),
  TJQJ        VARCHAR2(20),
  KSRQ        DATE,
  JSRQ        DATE,
  FSRQ        DATE,
  QSRBS       NUMBER,
  QSR         VARCHAR2(40),
  QSRQ        DATE,
  QSYJ        BLOB,
  FBRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table AJZLPCXT_AJCWB
  is '案件错误表';
comment on column AJZLPCXT_AJCWB.FYBM
  is '法院编码';
comment on column AJZLPCXT_AJCWB.AJCWBS
  is '案件错误标识';
comment on column AJZLPCXT_AJCWB.ZZRBS
  is '制作人标识';
comment on column AJZLPCXT_AJCWB.ZZR
  is '制作人';
comment on column AJZLPCXT_AJCWB.NF
  is '年份';
comment on column AJZLPCXT_AJCWB.CBBM
  is '承办部门';
comment on column AJZLPCXT_AJCWB.PCDL
  is '评查大类';
comment on column AJZLPCXT_AJCWB.PCXL
  is '评查小类';
comment on column AJZLPCXT_AJCWB.TJQJ
  is '统计期间';
comment on column AJZLPCXT_AJCWB.KSRQ
  is '开始日期';
comment on column AJZLPCXT_AJCWB.JSRQ
  is '结束日期';
comment on column AJZLPCXT_AJCWB.FSRQ
  is '发送日期';
comment on column AJZLPCXT_AJCWB.QSRBS
  is '签收人标识';
comment on column AJZLPCXT_AJCWB.QSR
  is '签收人';
comment on column AJZLPCXT_AJCWB.QSRQ
  is '签收日期';
comment on column AJZLPCXT_AJCWB.QSYJ
  is '签收意见';
comment on column AJZLPCXT_AJCWB.FBRQ
  is '发布日期';

prompt
prompt Creating table AJZLPCXT_ZLPCMXXX
prompt ================================
prompt
create table AJZLPCXT_ZLPCMXXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  ZLPCBS      NUMBER,
  XH          NUMBER,
  SXH         NUMBER,
  PCXM        VARCHAR2(250),
  BZF         FLOAT,
  SJDF        FLOAT,
  PCRBS       NUMBER,
  PCR         VARCHAR2(40),
  PCRQ        DATE,
  ZRRBS       NUMBER,
  ZRR         VARCHAR2(40),
  BZ          VARCHAR2(100),
  ZRBM        VARCHAR2(100),
  CWLX        VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table AJZLPCXT_ZLPCMXXX
  is '质量评查明细信息';
comment on column AJZLPCXT_ZLPCMXXX.FYBM
  is '法院编码';
comment on column AJZLPCXT_ZLPCMXXX.ZLPCBS
  is '质量评查标识';
comment on column AJZLPCXT_ZLPCMXXX.XH
  is '序号';
comment on column AJZLPCXT_ZLPCMXXX.SXH
  is '顺序号';
comment on column AJZLPCXT_ZLPCMXXX.PCXM
  is '评查项目';
comment on column AJZLPCXT_ZLPCMXXX.BZF
  is '标准分';
comment on column AJZLPCXT_ZLPCMXXX.SJDF
  is '实际得分';
comment on column AJZLPCXT_ZLPCMXXX.PCRBS
  is '评查人标识';
comment on column AJZLPCXT_ZLPCMXXX.PCR
  is '评查人';
comment on column AJZLPCXT_ZLPCMXXX.PCRQ
  is '评查日期';
comment on column AJZLPCXT_ZLPCMXXX.ZRRBS
  is '责任人标识';
comment on column AJZLPCXT_ZLPCMXXX.ZRR
  is '责任人';
comment on column AJZLPCXT_ZLPCMXXX.BZ
  is '备注';
comment on column AJZLPCXT_ZLPCMXXX.ZRBM
  is '责任部门';
comment on column AJZLPCXT_ZLPCMXXX.CWLX
  is '错误类型';

prompt
prompt Creating table AJZLPCXT_ZLPCST
prompt ==============================
prompt
create table AJZLPCXT_ZLPCST
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  ZLPCBS      NUMBER,
  XH          NUMBER,
  WJMC        VARCHAR2(255),
  STWJM       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table AJZLPCXT_ZLPCST
  is '质量评查实体';
comment on column AJZLPCXT_ZLPCST.FYBM
  is '法院编码';
comment on column AJZLPCXT_ZLPCST.ZLPCBS
  is '质量评查标识';
comment on column AJZLPCXT_ZLPCST.XH
  is '序号';
comment on column AJZLPCXT_ZLPCST.WJMC
  is '文件名称';
comment on column AJZLPCXT_ZLPCST.STWJM
  is '实体文件名';

prompt
prompt Creating table AJZLPCXT_ZLPCZTXX
prompt ================================
prompt
create table AJZLPCXT_ZLPCZTXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  ZLPCBS      NUMBER,
  AJBS        NUMBER,
  AJLB        VARCHAR2(40),
  AH          VARCHAR2(40),
  NH          NUMBER,
  FYJC        VARCHAR2(20),
  AZ          VARCHAR2(20),
  HS          NUMBER,
  JAAY        VARCHAR2(100),
  LARQ        DATE,
  JARQ        DATE,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  SJYBS       NUMBER,
  SJY         VARCHAR2(40),
  LARBS       NUMBER,
  LAR         VARCHAR2(40),
  CBBM        VARCHAR2(100),
  SXJSRQ      DATE,
  JABS        NUMBER,
  TQGDBZ      NUMBER,
  GDRQ        DATE,
  SPCBS       NUMBER,
  SPC         VARCHAR2(40),
  DSR         VARCHAR2(200),
  QTHYTCY     VARCHAR2(200),
  CQR         VARCHAR2(40),
  CQSJ        DATE,
  PCR1BS      NUMBER,
  PCR1        VARCHAR2(40),
  PCR2BS      NUMBER,
  PCR2        VARCHAR2(40),
  PCR3BS      NUMBER,
  PCR3        VARCHAR2(40),
  PCDL        VARCHAR2(20),
  PCXL        VARCHAR2(40),
  PCRQ        DATE,
  PCLY        BLOB,
  PCNR        VARCHAR2(100),
  PCJG        VARCHAR2(50),
  ZHDF        FLOAT,
  PCR1DF      FLOAT,
  PCR2DF      FLOAT,
  PCR3DF      FLOAT,
  PCR1CWS     FLOAT,
  PCR2CWS     FLOAT,
  PCR3CWS     FLOAT,
  PCLYS       VARCHAR2(250),
  ZPRBS       NUMBER,
  ZPR         VARCHAR2(40),
  ZPRSPRQ     DATE,
  ZPRYJ       VARCHAR2(100),
  ZPWSPRBS    NUMBER,
  ZPWSPR      VARCHAR2(40),
  ZPWSPRQ     DATE,
  ZPWSPYJ     VARCHAR2(100),
  SWHJD       BLOB,
  TBRQ        DATE,
  PCAJCWBBS   NUMBER,
  FSRQ        DATE,
  QSRBS       NUMBER,
  QSR         VARCHAR2(40),
  QSRQ        DATE,
  FBRQ        DATE,
  SFSQ        NUMBER,
  SYZRR       VARCHAR2(250),
  AJJCSS      BLOB,
  ZDPCYY      BLOB,
  ZDZYDWT     BLOB,
  ZPXZYJ      BLOB,
  GLAJBH      NUMBER,
  TJQJ        VARCHAR2(20),
  TJNF        NUMBER,
  SZWSDZT     NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table AJZLPCXT_ZLPCZTXX
  is '质量评查主体信息';
comment on column AJZLPCXT_ZLPCZTXX.FYBM
  is '法院编码';
comment on column AJZLPCXT_ZLPCZTXX.ZLPCBS
  is '质量评查标识';
comment on column AJZLPCXT_ZLPCZTXX.AJBS
  is '案件标识';
comment on column AJZLPCXT_ZLPCZTXX.AJLB
  is '案件类别';
comment on column AJZLPCXT_ZLPCZTXX.AH
  is '案号';
comment on column AJZLPCXT_ZLPCZTXX.NH
  is '年号';
comment on column AJZLPCXT_ZLPCZTXX.FYJC
  is '法院简称';
comment on column AJZLPCXT_ZLPCZTXX.AZ
  is '案字';
comment on column AJZLPCXT_ZLPCZTXX.HS
  is '号数';
comment on column AJZLPCXT_ZLPCZTXX.JAAY
  is '结案案由';
comment on column AJZLPCXT_ZLPCZTXX.LARQ
  is '立案日期';
comment on column AJZLPCXT_ZLPCZTXX.JARQ
  is '结案日期';
comment on column AJZLPCXT_ZLPCZTXX.CBRBS
  is '承办人标识';
comment on column AJZLPCXT_ZLPCZTXX.CBR
  is '承办人';
comment on column AJZLPCXT_ZLPCZTXX.SJYBS
  is '书记员标识';
comment on column AJZLPCXT_ZLPCZTXX.SJY
  is '书记员';
comment on column AJZLPCXT_ZLPCZTXX.LARBS
  is '立案人标识';
comment on column AJZLPCXT_ZLPCZTXX.LAR
  is '立案人';
comment on column AJZLPCXT_ZLPCZTXX.CBBM
  is '承办部门';
comment on column AJZLPCXT_ZLPCZTXX.SXJSRQ
  is '审限结束日期';
comment on column AJZLPCXT_ZLPCZTXX.JABS
  is '结案标识';
comment on column AJZLPCXT_ZLPCZTXX.TQGDBZ
  is '提请归档标志';
comment on column AJZLPCXT_ZLPCZTXX.GDRQ
  is '归档日期';
comment on column AJZLPCXT_ZLPCZTXX.SPCBS
  is '审判长标识';
comment on column AJZLPCXT_ZLPCZTXX.SPC
  is '审判长';
comment on column AJZLPCXT_ZLPCZTXX.DSR
  is '当事人';
comment on column AJZLPCXT_ZLPCZTXX.QTHYTCY
  is '其他合议庭成员';
comment on column AJZLPCXT_ZLPCZTXX.CQR
  is '抽取人';
comment on column AJZLPCXT_ZLPCZTXX.CQSJ
  is '抽取时间';
comment on column AJZLPCXT_ZLPCZTXX.PCR1BS
  is '评查人1标识';
comment on column AJZLPCXT_ZLPCZTXX.PCR1
  is '评查人1';
comment on column AJZLPCXT_ZLPCZTXX.PCR2BS
  is '评查人2标识';
comment on column AJZLPCXT_ZLPCZTXX.PCR2
  is '评查人2';
comment on column AJZLPCXT_ZLPCZTXX.PCR3BS
  is '评查人3标识';
comment on column AJZLPCXT_ZLPCZTXX.PCR3
  is '评查人3';
comment on column AJZLPCXT_ZLPCZTXX.PCDL
  is '评查大类';
comment on column AJZLPCXT_ZLPCZTXX.PCXL
  is '评查小类';
comment on column AJZLPCXT_ZLPCZTXX.PCRQ
  is '评查日期';
comment on column AJZLPCXT_ZLPCZTXX.PCLY
  is '评查理由';
comment on column AJZLPCXT_ZLPCZTXX.PCNR
  is '评查内容';
comment on column AJZLPCXT_ZLPCZTXX.PCJG
  is '评查结果';
comment on column AJZLPCXT_ZLPCZTXX.ZHDF
  is '最后得分';
comment on column AJZLPCXT_ZLPCZTXX.PCR1DF
  is '评查人1打分';
comment on column AJZLPCXT_ZLPCZTXX.PCR2DF
  is '评查人2打分';
comment on column AJZLPCXT_ZLPCZTXX.PCR3DF
  is '评查人3打分';
comment on column AJZLPCXT_ZLPCZTXX.PCR1CWS
  is '评查人1错误数';
comment on column AJZLPCXT_ZLPCZTXX.PCR2CWS
  is '评查人2错误数';
comment on column AJZLPCXT_ZLPCZTXX.PCR3CWS
  is '评查人3错误数';
comment on column AJZLPCXT_ZLPCZTXX.PCLYS
  is '评查理由s';
comment on column AJZLPCXT_ZLPCZTXX.ZPRBS
  is '质评人标识';
comment on column AJZLPCXT_ZLPCZTXX.ZPR
  is '质评人';
comment on column AJZLPCXT_ZLPCZTXX.ZPRSPRQ
  is '质评人审批日期';
comment on column AJZLPCXT_ZLPCZTXX.ZPRYJ
  is '质评人意见';
comment on column AJZLPCXT_ZLPCZTXX.ZPWSPRBS
  is '质评委审批人标识';
comment on column AJZLPCXT_ZLPCZTXX.ZPWSPR
  is '质评委审批人';
comment on column AJZLPCXT_ZLPCZTXX.ZPWSPRQ
  is '质评委审批日期';
comment on column AJZLPCXT_ZLPCZTXX.ZPWSPYJ
  is '质评委审批意见';
comment on column AJZLPCXT_ZLPCZTXX.SWHJD
  is '审委会决定';
comment on column AJZLPCXT_ZLPCZTXX.TBRQ
  is '通报日期';
comment on column AJZLPCXT_ZLPCZTXX.PCAJCWBBS
  is '评查案件错误表标识';
comment on column AJZLPCXT_ZLPCZTXX.FSRQ
  is '发送日期';
comment on column AJZLPCXT_ZLPCZTXX.QSRBS
  is '签收人标识';
comment on column AJZLPCXT_ZLPCZTXX.QSR
  is '签收人';
comment on column AJZLPCXT_ZLPCZTXX.QSRQ
  is '签收日期';
comment on column AJZLPCXT_ZLPCZTXX.FBRQ
  is '发布日期';
comment on column AJZLPCXT_ZLPCZTXX.SFSQ
  is '是否送签';
comment on column AJZLPCXT_ZLPCZTXX.SYZRR
  is '所有责任人';
comment on column AJZLPCXT_ZLPCZTXX.AJJCSS
  is '案件基础事实';
comment on column AJZLPCXT_ZLPCZTXX.ZDPCYY
  is '重点评查原因';
comment on column AJZLPCXT_ZLPCZTXX.ZDZYDWT
  is '值得注意的问题';
comment on column AJZLPCXT_ZLPCZTXX.ZPXZYJ
  is '质评小组意见';
comment on column AJZLPCXT_ZLPCZTXX.GLAJBH
  is '关联案件编号';
comment on column AJZLPCXT_ZLPCZTXX.TJQJ
  is '统计期间';
comment on column AJZLPCXT_ZLPCZTXX.TJNF
  is '统计年份';
comment on column AJZLPCXT_ZLPCZTXX.SZWSDZT
  is '设置为锁定状态';

prompt
prompt Creating table CLGLXT_CLBYDJXX
prompt ==============================
prompt
create table CLGLXT_CLBYDJXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  CLBS        NUMBER,
  CPH         VARCHAR2(40),
  BYSJ        DATE,
  BYRBS       NUMBER,
  BYR         VARCHAR2(40),
  BYFY        NUMBER,
  BYGDSJ      DATE,
  BZ          VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CLGLXT_CLBYDJXX
  is '车辆保养登记信息';
comment on column CLGLXT_CLBYDJXX.FYBM
  is '法院编码';
comment on column CLGLXT_CLBYDJXX.BH
  is '编号';
comment on column CLGLXT_CLBYDJXX.CLBS
  is '车辆标识';
comment on column CLGLXT_CLBYDJXX.CPH
  is '车牌号';
comment on column CLGLXT_CLBYDJXX.BYSJ
  is '保养时间';
comment on column CLGLXT_CLBYDJXX.BYRBS
  is '保养人标识';
comment on column CLGLXT_CLBYDJXX.BYR
  is '保养人';
comment on column CLGLXT_CLBYDJXX.BYFY
  is '保养费用';
comment on column CLGLXT_CLBYDJXX.BYGDSJ
  is '保养归队时间';
comment on column CLGLXT_CLBYDJXX.BZ
  is '备注';

prompt
prompt Creating table CLGLXT_CLDJXX
prompt ============================
prompt
create table CLGLXT_CLDJXX
(
  ID             VARCHAR2(36) not null,
  REG_TIME       DATE not null,
  UPDATE_TIME    DATE not null,
  DEPT_CODE      VARCHAR2(20) not null,
  APP_CODE       VARCHAR2(20) not null,
  FYBM           NUMBER,
  CLBS           NUMBER,
  CPH            VARCHAR2(40),
  SSDW           VARCHAR2(250),
  SYBM           VARCHAR2(250),
  CPLX           VARCHAR2(20),
  BFSJ           DATE,
  GRSJ           DATE,
  CLLX           VARCHAR2(40),
  FDJH           VARCHAR2(50),
  DPH            VARCHAR2(50),
  CK             VARCHAR2(100),
  BZ             VARCHAR2(200),
  SFJNCLGZFJF    NUMBER,
  SSDQ           VARCHAR2(50),
  BXJNQX         DATE,
  CPXH           VARCHAR2(50),
  GLYLF          NUMBER,
  NJSJ           DATE,
  CLTPCLZB       VARCHAR2(100),
  CLTPJDJBQFPTZD VARCHAR2(100),
  CLTPJBQSYZ     VARCHAR2(100),
  CLTPCLHGZ      VARCHAR2(100),
  CLTPXSFP       VARCHAR2(100),
  CLTPGZFJFJNPZ  VARCHAR2(100),
  CLTPXCZZ       VARCHAR2(100),
  CLTPCLZP       VARCHAR2(100),
  CLLY           VARCHAR2(50),
  GMJGWY         NUMBER,
  CLZL           VARCHAR2(20),
  ZBH            VARCHAR2(20),
  BZYH           VARCHAR2(50),
  CLZT           VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CLGLXT_CLDJXX
  is '车辆登记信息';
comment on column CLGLXT_CLDJXX.FYBM
  is '法院编码';
comment on column CLGLXT_CLDJXX.CLBS
  is '车辆标识';
comment on column CLGLXT_CLDJXX.CPH
  is '车牌号';
comment on column CLGLXT_CLDJXX.SSDW
  is '所属单位';
comment on column CLGLXT_CLDJXX.SYBM
  is '使用部门';
comment on column CLGLXT_CLDJXX.CPLX
  is '车牌类型';
comment on column CLGLXT_CLDJXX.BFSJ
  is '报废时间';
comment on column CLGLXT_CLDJXX.GRSJ
  is '购入时间';
comment on column CLGLXT_CLDJXX.CLLX
  is '车辆类型';
comment on column CLGLXT_CLDJXX.FDJH
  is '发动机号';
comment on column CLGLXT_CLDJXX.DPH
  is '低盘号';
comment on column CLGLXT_CLDJXX.CK
  is '车况';
comment on column CLGLXT_CLDJXX.BZ
  is '备注';
comment on column CLGLXT_CLDJXX.SFJNCLGZFJF
  is '是否缴纳车辆购置附加费';
comment on column CLGLXT_CLDJXX.SSDQ
  is '所属地区';
comment on column CLGLXT_CLDJXX.BXJNQX
  is '保险缴纳期限';
comment on column CLGLXT_CLDJXX.CPXH
  is '厂牌型号';
comment on column CLGLXT_CLDJXX.GLYLF
  is '公路养路费';
comment on column CLGLXT_CLDJXX.NJSJ
  is '年检时间';
comment on column CLGLXT_CLDJXX.CLTPCLZB
  is '材料图片-车辆指标';
comment on column CLGLXT_CLDJXX.CLTPJDJBQFPTZD
  is '材料图片-警灯警报器分配通知单';
comment on column CLGLXT_CLDJXX.CLTPJBQSYZ
  is '材料图片-警报器使用证';
comment on column CLGLXT_CLDJXX.CLTPCLHGZ
  is '材料图片-车辆合格证';
comment on column CLGLXT_CLDJXX.CLTPXSFP
  is '材料图片-销售发票';
comment on column CLGLXT_CLDJXX.CLTPGZFJFJNPZ
  is '材料图片-购置附加费缴纳凭证';
comment on column CLGLXT_CLDJXX.CLTPXCZZ
  is '材料图片-行车执照';
comment on column CLGLXT_CLDJXX.CLTPCLZP
  is '材料图片-车辆照片';
comment on column CLGLXT_CLDJXX.CLLY
  is '车辆来源';
comment on column CLGLXT_CLDJXX.GMJGWY
  is '购买价格（万元）';
comment on column CLGLXT_CLDJXX.CLZL
  is '车辆种类';
comment on column CLGLXT_CLDJXX.ZBH
  is '自编号';
comment on column CLGLXT_CLDJXX.BZYH
  is '标准油耗';
comment on column CLGLXT_CLDJXX.CLZT
  is '车辆状态';

prompt
prompt Creating table CLGLXT_CLJFDJXX
prompt ==============================
prompt
create table CLGLXT_CLJFDJXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  CLBS        NUMBER,
  JFLX        VARCHAR2(50),
  JFRQ        DATE,
  JFJE        NUMBER,
  JFRBS       NUMBER,
  JFR         VARCHAR2(40),
  DJRQ        DATE,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  BZ          VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CLGLXT_CLJFDJXX
  is '车辆缴费登记信息';
comment on column CLGLXT_CLJFDJXX.FYBM
  is '法院编码';
comment on column CLGLXT_CLJFDJXX.BH
  is '编号';
comment on column CLGLXT_CLJFDJXX.CLBS
  is '车辆标识';
comment on column CLGLXT_CLJFDJXX.JFLX
  is '缴费类型';
comment on column CLGLXT_CLJFDJXX.JFRQ
  is '缴费日期';
comment on column CLGLXT_CLJFDJXX.JFJE
  is '缴费金额';
comment on column CLGLXT_CLJFDJXX.JFRBS
  is '缴费人标识';
comment on column CLGLXT_CLJFDJXX.JFR
  is '缴费人';
comment on column CLGLXT_CLJFDJXX.DJRQ
  is '登记日期';
comment on column CLGLXT_CLJFDJXX.DJRBS
  is '登记人标识';
comment on column CLGLXT_CLJFDJXX.DJR
  is '登记人';
comment on column CLGLXT_CLJFDJXX.BZ
  is '备注';

prompt
prompt Creating table CLGLXT_CLJSYDJXX
prompt ===============================
prompt
create table CLGLXT_CLJSYDJXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JSYBS       NUMBER,
  XM          VARCHAR2(40),
  SFZHM       VARCHAR2(30),
  XB          VARCHAR2(10),
  NL          NUMBER,
  CSRQ        DATE,
  ZJCL        VARCHAR2(20),
  JSZH        VARCHAR2(20),
  CCLZSJ      DATE,
  JSCL        VARCHAR2(40),
  LXDH        VARCHAR2(20),
  SJ          VARCHAR2(20),
  JZJSY       NUMBER,
  JSYLB       VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CLGLXT_CLJSYDJXX
  is '车辆驾驶员登记信息';
comment on column CLGLXT_CLJSYDJXX.FYBM
  is '法院编码';
comment on column CLGLXT_CLJSYDJXX.JSYBS
  is '驾驶员标识';
comment on column CLGLXT_CLJSYDJXX.XM
  is '姓名';
comment on column CLGLXT_CLJSYDJXX.SFZHM
  is '身份证号码';
comment on column CLGLXT_CLJSYDJXX.XB
  is '性别';
comment on column CLGLXT_CLJSYDJXX.NL
  is '年龄';
comment on column CLGLXT_CLJSYDJXX.CSRQ
  is '出生日期';
comment on column CLGLXT_CLJSYDJXX.ZJCL
  is '准驾车类';
comment on column CLGLXT_CLJSYDJXX.JSZH
  is '驾驶证号';
comment on column CLGLXT_CLJSYDJXX.CCLZSJ
  is '初次领证时间';
comment on column CLGLXT_CLJSYDJXX.JSCL
  is '驾驶车辆';
comment on column CLGLXT_CLJSYDJXX.LXDH
  is '联系电话';
comment on column CLGLXT_CLJSYDJXX.SJ
  is '手机';
comment on column CLGLXT_CLJSYDJXX.JZJSY
  is '兼职驾驶员';
comment on column CLGLXT_CLJSYDJXX.JSYLB
  is '驾驶员类别';

prompt
prompt Creating table CLGLXT_CLLCDJXX
prompt ==============================
prompt
create table CLGLXT_CLLCDJXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  CLBS        NUMBER,
  JLND        NUMBER,
  TJQJ        VARCHAR2(20),
  LCS         NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  BZ          VARCHAR2(200),
  KSLC        NUMBER,
  JSLC        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CLGLXT_CLLCDJXX
  is '车辆里程登记信息';
comment on column CLGLXT_CLLCDJXX.FYBM
  is '法院编码';
comment on column CLGLXT_CLLCDJXX.BH
  is '编号';
comment on column CLGLXT_CLLCDJXX.CLBS
  is '车辆标识';
comment on column CLGLXT_CLLCDJXX.JLND
  is '记录年度';
comment on column CLGLXT_CLLCDJXX.TJQJ
  is '统计区间';
comment on column CLGLXT_CLLCDJXX.LCS
  is '里程数';
comment on column CLGLXT_CLLCDJXX.DJRBS
  is '登记人标识';
comment on column CLGLXT_CLLCDJXX.DJR
  is '登记人';
comment on column CLGLXT_CLLCDJXX.DJRQ
  is '登记日期';
comment on column CLGLXT_CLLCDJXX.BZ
  is '备注';
comment on column CLGLXT_CLLCDJXX.KSLC
  is '开始里程';
comment on column CLGLXT_CLLCDJXX.JSLC
  is '结束里程';

prompt
prompt Creating table CLGLXT_CLWXDJMX
prompt ==============================
prompt
create table CLGLXT_CLWXDJMX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  WXBS        NUMBER,
  WXXM        VARCHAR2(200),
  WXFY        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CLGLXT_CLWXDJMX
  is '车辆维修登记明细';
comment on column CLGLXT_CLWXDJMX.FYBM
  is '法院编码';
comment on column CLGLXT_CLWXDJMX.XH
  is '序号';
comment on column CLGLXT_CLWXDJMX.WXBS
  is '维修标识';
comment on column CLGLXT_CLWXDJMX.WXXM
  is '维修项目';
comment on column CLGLXT_CLWXDJMX.WXFY
  is '维修费用';

prompt
prompt Creating table CLGLXT_CLWXDJXX
prompt ==============================
prompt
create table CLGLXT_CLWXDJXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  CLBS        NUMBER,
  XCSJ        DATE,
  XCDD        VARCHAR2(100),
  XCJB        VARCHAR2(50),
  JSYBS       NUMBER,
  JSY         VARCHAR2(40),
  BZ          VARCHAR2(200),
  SFFHSQ      NUMBER,
  BMFZRSFTY   NUMBER,
  BMFZRQZRQ   DATE,
  BMFZRYJ     BLOB,
  BMFZRBS     NUMBER,
  BMFZR       VARCHAR2(40),
  YLDSFTY     NUMBER,
  YLDQZRQ     DATE,
  YLDYJ       BLOB,
  YLDBS       NUMBER,
  YLD         VARCHAR2(40),
  HJWXFY      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CLGLXT_CLWXDJXX
  is '车辆维修登记信息';
comment on column CLGLXT_CLWXDJXX.FYBM
  is '法院编码';
comment on column CLGLXT_CLWXDJXX.BH
  is '编号';
comment on column CLGLXT_CLWXDJXX.CLBS
  is '车辆标识';
comment on column CLGLXT_CLWXDJXX.XCSJ
  is '修车时间';
comment on column CLGLXT_CLWXDJXX.XCDD
  is '修车地点';
comment on column CLGLXT_CLWXDJXX.XCJB
  is '修车级别';
comment on column CLGLXT_CLWXDJXX.JSYBS
  is '驾驶员标识';
comment on column CLGLXT_CLWXDJXX.JSY
  is '驾驶员';
comment on column CLGLXT_CLWXDJXX.BZ
  is '备注';
comment on column CLGLXT_CLWXDJXX.SFFHSQ
  is '是否发回申请';
comment on column CLGLXT_CLWXDJXX.BMFZRSFTY
  is '部门负责人是否同意';
comment on column CLGLXT_CLWXDJXX.BMFZRQZRQ
  is '部门负责人签字日期';
comment on column CLGLXT_CLWXDJXX.BMFZRYJ
  is '部门负责人意见';
comment on column CLGLXT_CLWXDJXX.BMFZRBS
  is '部门负责人标识';
comment on column CLGLXT_CLWXDJXX.BMFZR
  is '部门负责人';
comment on column CLGLXT_CLWXDJXX.YLDSFTY
  is '院领导是否同意';
comment on column CLGLXT_CLWXDJXX.YLDQZRQ
  is '院领导签字日期';
comment on column CLGLXT_CLWXDJXX.YLDYJ
  is '院领导意见';
comment on column CLGLXT_CLWXDJXX.YLDBS
  is '院领导标识';
comment on column CLGLXT_CLWXDJXX.YLD
  is '院领导';
comment on column CLGLXT_CLWXDJXX.HJWXFY
  is '合计维修费用';

prompt
prompt Creating table CLGLXT_CLYHDJXX
prompt ==============================
prompt
create table CLGLXT_CLYHDJXX
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  BH           NUMBER,
  CLBS         NUMBER,
  JYSJ         DATE,
  JYDD         VARCHAR2(100),
  JSYBS        NUMBER,
  JSY          VARCHAR2(40),
  JYL          NUMBER,
  JSCJYHYXSGLS NUMBER,
  BZ           VARCHAR2(200),
  DJ           NUMBER,
  HJJE         NUMBER,
  BJK          NUMBER,
  JDK          NUMBER,
  WGY          NUMBER,
  BJKJE        NUMBER,
  JDKJE        NUMBER,
  WGYJE        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CLGLXT_CLYHDJXX
  is '车辆油耗登记信息';
comment on column CLGLXT_CLYHDJXX.FYBM
  is '法院编码';
comment on column CLGLXT_CLYHDJXX.BH
  is '编号';
comment on column CLGLXT_CLYHDJXX.CLBS
  is '车辆标识';
comment on column CLGLXT_CLYHDJXX.JYSJ
  is '加油时间';
comment on column CLGLXT_CLYHDJXX.JYDD
  is '加油地点';
comment on column CLGLXT_CLYHDJXX.JSYBS
  is '驾驶员标识';
comment on column CLGLXT_CLYHDJXX.JSY
  is '驾驶员';
comment on column CLGLXT_CLYHDJXX.JYL
  is '加油量(升)';
comment on column CLGLXT_CLYHDJXX.JSCJYHYXSGLS
  is '距上次加油后已行使公里数';
comment on column CLGLXT_CLYHDJXX.BZ
  is '备注';
comment on column CLGLXT_CLYHDJXX.DJ
  is '单价';
comment on column CLGLXT_CLYHDJXX.HJJE
  is '合计金额';
comment on column CLGLXT_CLYHDJXX.BJK
  is '本机卡';
comment on column CLGLXT_CLYHDJXX.JDK
  is '机动卡';
comment on column CLGLXT_CLYHDJXX.WGY
  is '外购油';
comment on column CLGLXT_CLYHDJXX.BJKJE
  is '本机卡金额';
comment on column CLGLXT_CLYHDJXX.JDKJE
  is '机动卡金额';
comment on column CLGLXT_CLYHDJXX.WGYJE
  is '外购油金额';

prompt
prompt Creating table CLGLXT_HZNSDJXX
prompt ==============================
prompt
create table CLGLXT_HZNSDJXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBS        NUMBER,
  XM          VARCHAR2(40),
  BM          VARCHAR2(100),
  DJRQ        DATE,
  SFZFYJ      NUMBER,
  HZHZSQB     NUMBER,
  HZSTTJZM    NUMBER,
  HZJSZYJ     NUMBER,
  HZYCBDMGZ3Z NUMBER,
  LB          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CLGLXT_HZNSDJXX
  is '换证年审登记信息';
comment on column CLGLXT_HZNSDJXX.FYBM
  is '法院编码';
comment on column CLGLXT_HZNSDJXX.BH
  is '编号';
comment on column CLGLXT_HZNSDJXX.RYBS
  is '人员标识';
comment on column CLGLXT_HZNSDJXX.XM
  is '姓名';
comment on column CLGLXT_HZNSDJXX.BM
  is '部门';
comment on column CLGLXT_HZNSDJXX.DJRQ
  is '登记日期';
comment on column CLGLXT_HZNSDJXX.SFZFYJ
  is '身份证复印件';
comment on column CLGLXT_HZNSDJXX.HZHZSQB
  is '换证-换证申请表(年审-身体体检证明)';
comment on column CLGLXT_HZNSDJXX.HZSTTJZM
  is '换证-身体体检证明(年审-驾驶证原件)';
comment on column CLGLXT_HZNSDJXX.HZJSZYJ
  is '换证-驾驶证原件';
comment on column CLGLXT_HZNSDJXX.HZYCBDMGZ3Z
  is '换证-一寸白底免冠照3张';
comment on column CLGLXT_HZNSDJXX.LB
  is '类别';

prompt
prompt Creating table CLGLXT_PCJL
prompt ==========================
prompt
create table CLGLXT_PCJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  JSYBS       NUMBER,
  JSY         VARCHAR2(40),
  CLBS        NUMBER,
  JSCL        VARCHAR2(20),
  CLLX        VARCHAR2(20),
  LXDH        VARCHAR2(20),
  SJHM        VARCHAR2(20),
  SFHBAPCC    NUMBER,
  ZLCS        NUMBER,
  GDSJ        DATE,
  SFFSZDXCSG  NUMBER,
  SGYY        BLOB,
  SFYPC       NUMBER,
  KSGL        NUMBER,
  JSGL        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CLGLXT_PCJL
  is '派车记录';
comment on column CLGLXT_PCJL.FYBM
  is '法院编码';
comment on column CLGLXT_PCJL.BH
  is '编号';
comment on column CLGLXT_PCJL.JSYBS
  is '驾驶员标识';
comment on column CLGLXT_PCJL.JSY
  is '驾驶员';
comment on column CLGLXT_PCJL.CLBS
  is '车辆标识';
comment on column CLGLXT_PCJL.JSCL
  is '驾驶车辆';
comment on column CLGLXT_PCJL.CLLX
  is '车辆类型';
comment on column CLGLXT_PCJL.LXDH
  is '联系电话';
comment on column CLGLXT_PCJL.SJHM
  is '手机号码';
comment on column CLGLXT_PCJL.SFHBAPCC
  is '是否合并安排出车';
comment on column CLGLXT_PCJL.ZLCS
  is '总里程数';
comment on column CLGLXT_PCJL.GDSJ
  is '归队时间';
comment on column CLGLXT_PCJL.SFFSZDXCSG
  is '是否发生重大行车事故';
comment on column CLGLXT_PCJL.SGYY
  is '事故原因';
comment on column CLGLXT_PCJL.SFYPC
  is '是否已派车';
comment on column CLGLXT_PCJL.KSGL
  is '开始公里';
comment on column CLGLXT_PCJL.JSGL
  is '结束公里';

prompt
prompt Creating table CLGLXT_YCSQ
prompt ==========================
prompt
create table CLGLXT_YCSQ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  YCBM        VARCHAR2(100),
  CCSJ        DATE,
  CFDD        VARCHAR2(100),
  DDDD        VARCHAR2(200),
  SFGY        NUMBER,
  CCRSL       NUMBER,
  YJGDSJ      DATE,
  YCLY        BLOB,
  SQRBS       NUMBER,
  SQR         VARCHAR2(40),
  SQSJ        DATE,
  TLDBS       NUMBER,
  TLD         VARCHAR2(40),
  TLDQZRQ     DATE,
  TLDYJ       BLOB,
  TLDSFPZ     NUMBER,
  YLDBS       NUMBER,
  YLD         VARCHAR2(40),
  YLDQZRQ     DATE,
  YLDYJ       BLOB,
  YLDSFPZ     NUMBER,
  PCRBS       NUMBER,
  PCR         VARCHAR2(40),
  PCRQZRQ     DATE,
  PCRYJ       BLOB,
  JSYBS       NUMBER,
  JSY         VARCHAR2(40),
  JSCL        VARCHAR2(40),
  LCS         NUMBER,
  BZ          VARCHAR2(200),
  CCLX        VARCHAR2(50),
  CCTS        NUMBER,
  GHSJ        DATE,
  JSYCLLX     VARCHAR2(40),
  JSYLXDH     VARCHAR2(20),
  YCR         VARCHAR2(40),
  JSYSJ       VARCHAR2(20),
  SQLB        VARCHAR2(20),
  AH          VARCHAR2(40),
  AJBS        NUMBER,
  XTAPJSY     VARCHAR2(40),
  XTAPCL      VARCHAR2(20),
  YCFS        VARCHAR2(20),
  QTR         VARCHAR2(40),
  QTRQZRQ     DATE,
  QTRYJ       BLOB,
  QTRSFPZ     NUMBER,
  FSPCRRQ     DATE,
  LXDH        VARCHAR2(20),
  YCXZ        VARCHAR2(20),
  KSGL        NUMBER,
  JSGL        NUMBER,
  SFLSAP      NUMBER,
  GDAP        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table CLGLXT_YCSQ
  is '用车申请';
comment on column CLGLXT_YCSQ.FYBM
  is '法院编码';
comment on column CLGLXT_YCSQ.BH
  is '编号';
comment on column CLGLXT_YCSQ.YCBM
  is '用车部门';
comment on column CLGLXT_YCSQ.CCSJ
  is '出车时间';
comment on column CLGLXT_YCSQ.CFDD
  is '出发地点';
comment on column CLGLXT_YCSQ.DDDD
  is '到达地点';
comment on column CLGLXT_YCSQ.SFGY
  is '是否公用';
comment on column CLGLXT_YCSQ.CCRSL
  is '乘车人数量';
comment on column CLGLXT_YCSQ.YJGDSJ
  is '预计归队时间';
comment on column CLGLXT_YCSQ.YCLY
  is '用车理由';
comment on column CLGLXT_YCSQ.SQRBS
  is '申请人标识';
comment on column CLGLXT_YCSQ.SQR
  is '申请人';
comment on column CLGLXT_YCSQ.SQSJ
  is '申请时间';
comment on column CLGLXT_YCSQ.TLDBS
  is '庭领导标识';
comment on column CLGLXT_YCSQ.TLD
  is '庭领导';
comment on column CLGLXT_YCSQ.TLDQZRQ
  is '庭领导签字日期';
comment on column CLGLXT_YCSQ.TLDYJ
  is '庭领导意见';
comment on column CLGLXT_YCSQ.TLDSFPZ
  is '庭领导是否批准';
comment on column CLGLXT_YCSQ.YLDBS
  is '院领导标识';
comment on column CLGLXT_YCSQ.YLD
  is '院领导';
comment on column CLGLXT_YCSQ.YLDQZRQ
  is '院领导签字日期';
comment on column CLGLXT_YCSQ.YLDYJ
  is '院领导意见';
comment on column CLGLXT_YCSQ.YLDSFPZ
  is '院领导是否批准';
comment on column CLGLXT_YCSQ.PCRBS
  is '派车人标识';
comment on column CLGLXT_YCSQ.PCR
  is '派车人';
comment on column CLGLXT_YCSQ.PCRQZRQ
  is '派车人签字日期';
comment on column CLGLXT_YCSQ.PCRYJ
  is '派车人意见';
comment on column CLGLXT_YCSQ.JSYBS
  is '驾驶员标识';
comment on column CLGLXT_YCSQ.JSY
  is '驾驶员';
comment on column CLGLXT_YCSQ.JSCL
  is '驾驶车辆';
comment on column CLGLXT_YCSQ.LCS
  is '里程数';
comment on column CLGLXT_YCSQ.BZ
  is '备注';
comment on column CLGLXT_YCSQ.CCLX
  is '出车类型';
comment on column CLGLXT_YCSQ.CCTS
  is '出车天数';
comment on column CLGLXT_YCSQ.GHSJ
  is '归还时间';
comment on column CLGLXT_YCSQ.JSYCLLX
  is '驾驶员车辆类型';
comment on column CLGLXT_YCSQ.JSYLXDH
  is '驾驶员联系电话';
comment on column CLGLXT_YCSQ.YCR
  is '用车人';
comment on column CLGLXT_YCSQ.JSYSJ
  is '驾驶员手机';
comment on column CLGLXT_YCSQ.SQLB
  is '申请类别';
comment on column CLGLXT_YCSQ.AH
  is '案号';
comment on column CLGLXT_YCSQ.AJBS
  is '案件标识';
comment on column CLGLXT_YCSQ.XTAPJSY
  is '系统安排驾驶员';
comment on column CLGLXT_YCSQ.XTAPCL
  is '系统安排车辆';
comment on column CLGLXT_YCSQ.YCFS
  is '用车方式';
comment on column CLGLXT_YCSQ.QTR
  is '其他人';
comment on column CLGLXT_YCSQ.QTRQZRQ
  is '其他人签字日期';
comment on column CLGLXT_YCSQ.QTRYJ
  is '其他人意见';
comment on column CLGLXT_YCSQ.QTRSFPZ
  is '其他人是否批准';
comment on column CLGLXT_YCSQ.FSPCRRQ
  is '发送派车人日期';
comment on column CLGLXT_YCSQ.LXDH
  is '联系电话';
comment on column CLGLXT_YCSQ.YCXZ
  is '用车性质';
comment on column CLGLXT_YCSQ.KSGL
  is '开始公里';
comment on column CLGLXT_YCSQ.JSGL
  is '结束公里';
comment on column CLGLXT_YCSQ.SFLSAP
  is '是否临时安排';
comment on column CLGLXT_YCSQ.GDAP
  is '更多安排';

prompt
prompt Creating table DBXT_DBLZJL2
prompt ===========================
prompt
create table DBXT_DBLZJL2
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  DBBS        NUMBER,
  GZMC        VARCHAR2(100),
  FSRBS       NUMBER,
  FSR         VARCHAR2(40),
  FSSJ        DATE,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40),
  JSSJ        DATE,
  FSBS        NUMBER,
  SFJJ        NUMBER,
  SFSC        NUMBER,
  SFCL        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table DBXT_DBLZJL2
  is '督办流转记录2';
comment on column DBXT_DBLZJL2.FYBM
  is '法院编码';
comment on column DBXT_DBLZJL2.XH
  is '序号';
comment on column DBXT_DBLZJL2.DBBS
  is '督办标识';
comment on column DBXT_DBLZJL2.GZMC
  is '工作名称';
comment on column DBXT_DBLZJL2.FSRBS
  is '发送人标识';
comment on column DBXT_DBLZJL2.FSR
  is '发送人';
comment on column DBXT_DBLZJL2.FSSJ
  is '发送时间';
comment on column DBXT_DBLZJL2.JSRBS
  is '接收人标识';
comment on column DBXT_DBLZJL2.JSR
  is '接收人';
comment on column DBXT_DBLZJL2.JSSJ
  is '接收时间';
comment on column DBXT_DBLZJL2.FSBS
  is '发送标识';
comment on column DBXT_DBLZJL2.SFJJ
  is '是否紧急';
comment on column DBXT_DBLZJL2.SFSC
  is '是否收藏';
comment on column DBXT_DBLZJL2.SFCL
  is '是否处理';

prompt
prompt Creating table DBXT_DBST
prompt ========================
prompt
create table DBXT_DBST
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  DBBS        NUMBER,
  XH          NUMBER,
  STLX        VARCHAR2(10),
  WJMC        VARCHAR2(255),
  STWJM       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table DBXT_DBST
  is '督办实体';
comment on column DBXT_DBST.FYBM
  is '法院编码';
comment on column DBXT_DBST.DBBS
  is '督办标识';
comment on column DBXT_DBST.XH
  is '序号';
comment on column DBXT_DBST.STLX
  is '实体类型';
comment on column DBXT_DBST.WJMC
  is '文件名称';
comment on column DBXT_DBST.STWJM
  is '实体文件名';

prompt
prompt Creating table DBXT_DBZTXX
prompt ==========================
prompt
create table DBXT_DBZTXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  DBBS        NUMBER,
  DBLB        VARCHAR2(20),
  SXJB        VARCHAR2(20),
  LWBT        VARCHAR2(250),
  BH          VARCHAR2(100),
  BHNF        NUMBER,
  FYJC        VARCHAR2(20),
  BHZH        VARCHAR2(20),
  HS          NUMBER,
  DJRQ        DATE,
  LWRQ        DATE,
  BZ          VARCHAR2(250),
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  WCQX        DATE,
  BLRBS       NUMBER,
  BLR         VARCHAR2(40),
  BLBM        VARCHAR2(100),
  LJBS        NUMBER,
  LJRQ        DATE,
  TQGDBS      NUMBER,
  TQGDRQ      DATE,
  GDBS        NUMBER,
  GDRQ        DATE,
  LWDW        VARCHAR2(100),
  LWBH        VARCHAR2(20),
  DBSX        BLOB,
  DBYQ        BLOB,
  YFGLDBS     NUMBER,
  YFGLD       VARCHAR2(40),
  ZBDW        VARCHAR2(100),
  XBDW        VARCHAR2(100),
  SJPSLD      VARCHAR2(40),
  SJPSDW      VARCHAR2(100),
  SJPSRQ      DATE,
  SJPSNR      BLOB,
  SJAJBH      NUMBER,
  LSDJBH      NUMBER,
  ZXDBBH      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table DBXT_DBZTXX
  is '督办主体信息';
comment on column DBXT_DBZTXX.FYBM
  is '法院编码';
comment on column DBXT_DBZTXX.DBBS
  is '督办标识';
comment on column DBXT_DBZTXX.DBLB
  is '督办类别';
comment on column DBXT_DBZTXX.SXJB
  is '事项级别';
comment on column DBXT_DBZTXX.LWBT
  is '来文标题';
comment on column DBXT_DBZTXX.BH
  is '编号';
comment on column DBXT_DBZTXX.BHNF
  is '编号年份';
comment on column DBXT_DBZTXX.FYJC
  is '法院简称';
comment on column DBXT_DBZTXX.BHZH
  is '编号字号';
comment on column DBXT_DBZTXX.HS
  is '号数';
comment on column DBXT_DBZTXX.DJRQ
  is '登记日期';
comment on column DBXT_DBZTXX.LWRQ
  is '来文日期';
comment on column DBXT_DBZTXX.BZ
  is '备注';
comment on column DBXT_DBZTXX.DJRBS
  is '登记人标识';
comment on column DBXT_DBZTXX.DJR
  is '登记人';
comment on column DBXT_DBZTXX.WCQX
  is '完成期限';
comment on column DBXT_DBZTXX.BLRBS
  is '办理人标识';
comment on column DBXT_DBZTXX.BLR
  is '办理人';
comment on column DBXT_DBZTXX.BLBM
  is '办理部门';
comment on column DBXT_DBZTXX.LJBS
  is '了结标识';
comment on column DBXT_DBZTXX.LJRQ
  is '了结日期';
comment on column DBXT_DBZTXX.TQGDBS
  is '提请归档标识';
comment on column DBXT_DBZTXX.TQGDRQ
  is '提请归档日期';
comment on column DBXT_DBZTXX.GDBS
  is '归档标识';
comment on column DBXT_DBZTXX.GDRQ
  is '归档日期';
comment on column DBXT_DBZTXX.LWDW
  is '来文单位';
comment on column DBXT_DBZTXX.LWBH
  is '来文编号';
comment on column DBXT_DBZTXX.DBSX
  is '督办事项';
comment on column DBXT_DBZTXX.DBYQ
  is '督办要求';
comment on column DBXT_DBZTXX.YFGLDBS
  is '院分管领导标识';
comment on column DBXT_DBZTXX.YFGLD
  is '院分管领导';
comment on column DBXT_DBZTXX.ZBDW
  is '主办单位';
comment on column DBXT_DBZTXX.XBDW
  is '协办单位';
comment on column DBXT_DBZTXX.SJPSLD
  is '上级批示领导';
comment on column DBXT_DBZTXX.SJPSDW
  is '上级批示单位';
comment on column DBXT_DBZTXX.SJPSRQ
  is '上级批示日期';
comment on column DBXT_DBZTXX.SJPSNR
  is '上级批示内容';
comment on column DBXT_DBZTXX.SJAJBH
  is '涉及案件编号';
comment on column DBXT_DBZTXX.LSDJBH
  is '落实登记编号';
comment on column DBXT_DBZTXX.ZXDBBH
  is '执行督办编号';

prompt
prompt Creating table DXXT_DXFSJLB
prompt ===========================
prompt
create table DXXT_DXFSJLB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  PZBS        NUMBER,
  DHHM        VARCHAR2(20),
  DXJSR       VARCHAR2(40),
  DXNR        VARCHAR2(200),
  FSSJ        DATE,
  SFFSZT      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table DXXT_DXFSJLB
  is '短信发送记录表';
comment on column DXXT_DXFSJLB.FYBM
  is '法院编码';
comment on column DXXT_DXFSJLB.BH
  is '编号';
comment on column DXXT_DXFSJLB.PZBS
  is '配置标识';
comment on column DXXT_DXFSJLB.DHHM
  is '电话号码';
comment on column DXXT_DXFSJLB.DXJSR
  is '短息接收人';
comment on column DXXT_DXFSJLB.DXNR
  is '短信内容';
comment on column DXXT_DXFSJLB.FSSJ
  is '发送时间';
comment on column DXXT_DXFSJLB.SFFSZT
  is '是否发送状态';

prompt
prompt Creating table DXXT_FSNRPZXX
prompt ============================
prompt
create table DXXT_FSNRPZXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  PZBS        NUMBER,
  DXNR        VARCHAR2(200),
  BLDY        BLOB,
  JSRLX       VARCHAR2(40),
  FSLB        NUMBER,
  SMCS        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table DXXT_FSNRPZXX
  is '发送内容配置信息';
comment on column DXXT_FSNRPZXX.FYBM
  is '法院编码';
comment on column DXXT_FSNRPZXX.PZBS
  is '配置标识';
comment on column DXXT_FSNRPZXX.DXNR
  is '短信内容';
comment on column DXXT_FSNRPZXX.BLDY
  is '变量定义';
comment on column DXXT_FSNRPZXX.JSRLX
  is '接收人类型';
comment on column DXXT_FSNRPZXX.FSLB
  is '发送类别';
comment on column DXXT_FSNRPZXX.SMCS
  is '扫描次数';

prompt
prompt Creating table DZDAJYXT_JSJXX
prompt =============================
prompt
create table DZDAJYXT_JSJXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JSJBH       NUMBER,
  YHLX        VARCHAR2(50),
  YHM         VARCHAR2(40),
  DLM         VARCHAR2(20),
  JS          VARCHAR2(40),
  CXM         VARCHAR2(40),
  YXCS        VARCHAR2(200),
  MC          VARCHAR2(100),
  DASMC       VARCHAR2(100),
  IPDZ        VARCHAR2(30),
  MACDZ       VARCHAR2(30),
  XZB         NUMBER,
  YZB         NUMBER,
  SFYX        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table DZDAJYXT_JSJXX
  is '计算机信息';
comment on column DZDAJYXT_JSJXX.FYBM
  is '法院编码';
comment on column DZDAJYXT_JSJXX.JSJBH
  is '计算机编号';
comment on column DZDAJYXT_JSJXX.YHLX
  is '用户类型';
comment on column DZDAJYXT_JSJXX.YHM
  is '用户名';
comment on column DZDAJYXT_JSJXX.DLM
  is '登录名';
comment on column DZDAJYXT_JSJXX.JS
  is '角色';
comment on column DZDAJYXT_JSJXX.CXM
  is '程序名';
comment on column DZDAJYXT_JSJXX.YXCS
  is '运行参数';
comment on column DZDAJYXT_JSJXX.MC
  is '名称';
comment on column DZDAJYXT_JSJXX.DASMC
  is '档案室名称';
comment on column DZDAJYXT_JSJXX.IPDZ
  is 'IP地址';
comment on column DZDAJYXT_JSJXX.MACDZ
  is 'Mac地址';
comment on column DZDAJYXT_JSJXX.XZB
  is 'X坐标';
comment on column DZDAJYXT_JSJXX.YZB
  is 'Y坐标';
comment on column DZDAJYXT_JSJXX.SFYX
  is '是否有效';

prompt
prompt Creating table DZDAJYXT_JYDJB
prompt =============================
prompt
create table DZDAJYXT_JYDJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  DJRQ        DATE,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  SYJSJBH     NUMBER,
  JYRLX       NUMBER,
  XM          VARCHAR2(40),
  XB          FLOAT,
  DWMC        VARCHAR2(20),
  ZJLX        VARCHAR2(20),
  ZJHM        VARCHAR2(100),
  JYMD        BLOB,
  JYAJAH      BLOB,
  JYAJBH      BLOB,
  DYXX        BLOB,
  YDLS        BLOB,
  JYKSRQ      DATE,
  JYJSRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table DZDAJYXT_JYDJB
  is '借阅登记表';
comment on column DZDAJYXT_JYDJB.FYBM
  is '法院编码';
comment on column DZDAJYXT_JYDJB.BH
  is '编号';
comment on column DZDAJYXT_JYDJB.DJRQ
  is '登记日期';
comment on column DZDAJYXT_JYDJB.DJRBS
  is '登记人标识';
comment on column DZDAJYXT_JYDJB.DJR
  is '登记人';
comment on column DZDAJYXT_JYDJB.SYJSJBH
  is '使用计算机编号';
comment on column DZDAJYXT_JYDJB.JYRLX
  is '借阅人类型';
comment on column DZDAJYXT_JYDJB.XM
  is '姓名';
comment on column DZDAJYXT_JYDJB.XB
  is '性别';
comment on column DZDAJYXT_JYDJB.DWMC
  is '单位名称';
comment on column DZDAJYXT_JYDJB.ZJLX
  is '证件类型';
comment on column DZDAJYXT_JYDJB.ZJHM
  is '证件号码';
comment on column DZDAJYXT_JYDJB.JYMD
  is '借阅目的';
comment on column DZDAJYXT_JYDJB.JYAJAH
  is '借阅案件案号';
comment on column DZDAJYXT_JYDJB.JYAJBH
  is '借阅案件编号';
comment on column DZDAJYXT_JYDJB.DYXX
  is '打印信息';
comment on column DZDAJYXT_JYDJB.YDLS
  is '阅读历史';
comment on column DZDAJYXT_JYDJB.JYKSRQ
  is '借阅开始日期';
comment on column DZDAJYXT_JYDJB.JYJSRQ
  is '借阅结束日期';

prompt
prompt Creating table FGGXKJ_BQSZ
prompt ==========================
prompt
create table FGGXKJ_BQSZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  CFLJ        VARCHAR2(20),
  MC          VARCHAR2(20),
  ZS          VARCHAR2(100),
  XSSX        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_BQSZ
  is '表情设置';
comment on column FGGXKJ_BQSZ.FYBM
  is '法院编码';
comment on column FGGXKJ_BQSZ.BH
  is '编号';
comment on column FGGXKJ_BQSZ.CFLJ
  is '存放路径';
comment on column FGGXKJ_BQSZ.MC
  is '名称';
comment on column FGGXKJ_BQSZ.ZS
  is '注释';
comment on column FGGXKJ_BQSZ.XSSX
  is '显示顺序';

prompt
prompt Creating table FGGXKJ_DXX
prompt =========================
prompt
create table FGGXKJ_DXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XXBS        NUMBER,
  SJYH        NUMBER,
  FJYH        NUMBER,
  FJXM        VARCHAR2(40),
  LX          VARCHAR2(10),
  SFYD        NUMBER,
  BT          VARCHAR2(250),
  FSRQ        DATE,
  NR          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_DXX
  is '短消息';
comment on column FGGXKJ_DXX.FYBM
  is '法院编码';
comment on column FGGXKJ_DXX.XXBS
  is '消息标识';
comment on column FGGXKJ_DXX.SJYH
  is '收件用户';
comment on column FGGXKJ_DXX.FJYH
  is '发件用户';
comment on column FGGXKJ_DXX.FJXM
  is '发件姓名';
comment on column FGGXKJ_DXX.LX
  is '类型';
comment on column FGGXKJ_DXX.SFYD
  is '是否阅读';
comment on column FGGXKJ_DXX.BT
  is '标题';
comment on column FGGXKJ_DXX.FSRQ
  is '发送日期';
comment on column FGGXKJ_DXX.NR
  is '内容';

prompt
prompt Creating table FGGXKJ_FYIPFP
prompt ============================
prompt
create table FGGXKJ_FYIPFP
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  FYMC        VARCHAR2(100),
  FYJC        VARCHAR2(50),
  IPD         VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_FYIPFP
  is '法院IP分配';
comment on column FGGXKJ_FYIPFP.FYBM
  is '法院编码';
comment on column FGGXKJ_FYIPFP.BH
  is '编号';
comment on column FGGXKJ_FYIPFP.FYMC
  is '法院名称';
comment on column FGGXKJ_FYIPFP.FYJC
  is '法院简称';
comment on column FGGXKJ_FYIPFP.IPD
  is 'IP段';

prompt
prompt Creating table FGGXKJ_GRDT
prompt ==========================
prompt
create table FGGXKJ_GRDT
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBS        NUMBER,
  XX          VARCHAR2(200),
  SJ          DATE,
  LX          VARCHAR2(20),
  BZ          VARCHAR2(200),
  DXBS        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_GRDT
  is '个人动态';
comment on column FGGXKJ_GRDT.FYBM
  is '法院编码';
comment on column FGGXKJ_GRDT.BH
  is '编号';
comment on column FGGXKJ_GRDT.RYBS
  is '人员标识';
comment on column FGGXKJ_GRDT.XX
  is '信息';
comment on column FGGXKJ_GRDT.SJ
  is '时间';
comment on column FGGXKJ_GRDT.LX
  is '类型';
comment on column FGGXKJ_GRDT.BZ
  is '备注';
comment on column FGGXKJ_GRDT.DXBS
  is '对象标识';

prompt
prompt Creating table FGGXKJ_GRFG
prompt ==========================
prompt
create table FGGXKJ_GRFG
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBS        NUMBER,
  FGBS        VARCHAR2(20),
  FGMC        VARCHAR2(20),
  YLTP        VARCHAR2(100),
  YS          BLOB,
  ZDYYS       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_GRFG
  is '个人风格';
comment on column FGGXKJ_GRFG.FYBM
  is '法院编码';
comment on column FGGXKJ_GRFG.BH
  is '编号';
comment on column FGGXKJ_GRFG.RYBS
  is '人员标识';
comment on column FGGXKJ_GRFG.FGBS
  is '风格标识';
comment on column FGGXKJ_GRFG.FGMC
  is '风格名称';
comment on column FGGXKJ_GRFG.YLTP
  is '预览图片';
comment on column FGGXKJ_GRFG.YS
  is '样式';
comment on column FGGXKJ_GRFG.ZDYYS
  is '自定义样式';

prompt
prompt Creating table FGGXKJ_GRFL
prompt ==========================
prompt
create table FGGXKJ_GRFL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  FLBH        NUMBER,
  RYBS        NUMBER,
  LB          VARCHAR2(10),
  FLMC        VARCHAR2(50),
  XSXH        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_GRFL
  is '个人分类';
comment on column FGGXKJ_GRFL.FYBM
  is '法院编码';
comment on column FGGXKJ_GRFL.FLBH
  is '分类编号';
comment on column FGGXKJ_GRFL.RYBS
  is '人员标识';
comment on column FGGXKJ_GRFL.LB
  is '类别';
comment on column FGGXKJ_GRFL.FLMC
  is '分类名称';
comment on column FGGXKJ_GRFL.XSXH
  is '显示序号';

prompt
prompt Creating table FGGXKJ_GRXX
prompt ==========================
prompt
create table FGGXKJ_GRXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  RYBS        NUMBER,
  XM          VARCHAR2(40),
  DLM         VARCHAR2(20),
  DLMM        VARCHAR2(40),
  S           VARCHAR2(50),
  SS          VARCHAR2(50),
  CSNY        DATE,
  BM          VARCHAR2(50),
  KJBT        VARCHAR2(100),
  GXZPMCLJ    VARCHAR2(250),
  ZPYSCCG     NUMBER,
  ZPYSCCK     NUMBER,
  GXQM        VARCHAR2(200),
  KJSFYXLY    NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_GRXX
  is '个人信息';
comment on column FGGXKJ_GRXX.FYBM
  is '法院编码';
comment on column FGGXKJ_GRXX.RYBS
  is '人员标识';
comment on column FGGXKJ_GRXX.XM
  is '姓名';
comment on column FGGXKJ_GRXX.DLM
  is '登录名';
comment on column FGGXKJ_GRXX.DLMM
  is '登录密码';
comment on column FGGXKJ_GRXX.S
  is '省';
comment on column FGGXKJ_GRXX.SS
  is '市s';
comment on column FGGXKJ_GRXX.CSNY
  is '出生年月';
comment on column FGGXKJ_GRXX.BM
  is '部门';
comment on column FGGXKJ_GRXX.KJBT
  is '空间标题';
comment on column FGGXKJ_GRXX.GXZPMCLJ
  is '个性照片名称路径';
comment on column FGGXKJ_GRXX.ZPYSCCG
  is '照片原始尺寸高';
comment on column FGGXKJ_GRXX.ZPYSCCK
  is '照片原始尺寸宽';
comment on column FGGXKJ_GRXX.GXQM
  is '个性签名';
comment on column FGGXKJ_GRXX.KJSFYXLY
  is '空间是否允许留言';

prompt
prompt Creating table FGGXKJ_HY
prompt ========================
prompt
create table FGGXKJ_HY
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  FZBS        NUMBER,
  RYBS        NUMBER,
  HYBS        NUMBER,
  TJSJ        DATE,
  SFSH        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_HY
  is '好友';
comment on column FGGXKJ_HY.FYBM
  is '法院编码';
comment on column FGGXKJ_HY.BH
  is '编号';
comment on column FGGXKJ_HY.FZBS
  is '分组标识';
comment on column FGGXKJ_HY.RYBS
  is '人员标识';
comment on column FGGXKJ_HY.HYBS
  is '好友标识';
comment on column FGGXKJ_HY.TJSJ
  is '添加时间';
comment on column FGGXKJ_HY.SFSH
  is '是否审核';

prompt
prompt Creating table FGGXKJ_HYFZ
prompt ==========================
prompt
create table FGGXKJ_HYFZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  FZBS        NUMBER,
  RYBS        NUMBER,
  MC          VARCHAR2(100),
  SX          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_HYFZ
  is '好友分组';
comment on column FGGXKJ_HYFZ.FYBM
  is '法院编码';
comment on column FGGXKJ_HYFZ.FZBS
  is '分组标识';
comment on column FGGXKJ_HYFZ.RYBS
  is '人员标识';
comment on column FGGXKJ_HYFZ.MC
  is '名称';
comment on column FGGXKJ_HYFZ.SX
  is '顺序';

prompt
prompt Creating table FGGXKJ_JY
prompt ========================
prompt
create table FGGXKJ_JY
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  DXBS        NUMBER,
  LX          VARCHAR2(10),
  RYBS        NUMBER,
  SJ          DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_JY
  is '脚印';
comment on column FGGXKJ_JY.FYBM
  is '法院编码';
comment on column FGGXKJ_JY.BH
  is '编号';
comment on column FGGXKJ_JY.DXBS
  is '对象标识';
comment on column FGGXKJ_JY.LX
  is '类型';
comment on column FGGXKJ_JY.RYBS
  is '人员标识';
comment on column FGGXKJ_JY.SJ
  is '时间';

prompt
prompt Creating table FGGXKJ_KJFWJL
prompt ============================
prompt
create table FGGXKJ_KJFWJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  KJSYZBS     NUMBER,
  FWZBS       NUMBER,
  FWSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_KJFWJL
  is '空间访问记录';
comment on column FGGXKJ_KJFWJL.FYBM
  is '法院编码';
comment on column FGGXKJ_KJFWJL.BH
  is '编号';
comment on column FGGXKJ_KJFWJL.KJSYZBS
  is '空间所有者标识';
comment on column FGGXKJ_KJFWJL.FWZBS
  is '访问者标识';
comment on column FGGXKJ_KJFWJL.FWSJ
  is '访问时间';

prompt
prompt Creating table FGGXKJ_KJLY
prompt ==========================
prompt
create table FGGXKJ_KJLY
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBS        NUMBER,
  LYRBS       NUMBER,
  LYRXM       VARCHAR2(40),
  LYRTX       VARCHAR2(100),
  LYSJ        DATE,
  LYIP        VARCHAR2(15),
  LYNR        BLOB,
  HFSJ        DATE,
  HFNR        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_KJLY
  is '空间留言';
comment on column FGGXKJ_KJLY.FYBM
  is '法院编码';
comment on column FGGXKJ_KJLY.BH
  is '编号';
comment on column FGGXKJ_KJLY.RYBS
  is '人员标识';
comment on column FGGXKJ_KJLY.LYRBS
  is '留言人标识';
comment on column FGGXKJ_KJLY.LYRXM
  is '留言人姓名';
comment on column FGGXKJ_KJLY.LYRTX
  is '留言人头像';
comment on column FGGXKJ_KJLY.LYSJ
  is '留言时间';
comment on column FGGXKJ_KJLY.LYIP
  is '留言IP';
comment on column FGGXKJ_KJLY.LYNR
  is '留言内容';
comment on column FGGXKJ_KJLY.HFSJ
  is '回复时间';
comment on column FGGXKJ_KJLY.HFNR
  is '回复内容';

prompt
prompt Creating table FGGXKJ_LJL
prompt =========================
prompt
create table FGGXKJ_LJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  DXBS        NUMBER,
  LX          VARCHAR2(10),
  LSJ         DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_LJL
  is '浏览记录';
comment on column FGGXKJ_LJL.FYBM
  is '法院编码';
comment on column FGGXKJ_LJL.BH
  is '编号';
comment on column FGGXKJ_LJL.DXBS
  is '对象标识';
comment on column FGGXKJ_LJL.LX
  is '类型';
comment on column FGGXKJ_LJL.LSJ
  is '浏览时间';

prompt
prompt Creating table FGGXKJ_PLXX
prompt ==========================
prompt
create table FGGXKJ_PLXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  LX          VARCHAR2(10),
  RYBS        NUMBER,
  FLBS        NUMBER,
  PLR         VARCHAR2(40),
  PLRBS       NUMBER,
  PLSJ        DATE,
  BT          VARCHAR2(130),
  PLRIP       VARCHAR2(15),
  IPLY        VARCHAR2(30),
  SFSH        NUMBER,
  PLNR        BLOB,
  HFSJ        DATE,
  HFNR        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_PLXX
  is '评论信息';
comment on column FGGXKJ_PLXX.FYBM
  is '法院编码';
comment on column FGGXKJ_PLXX.BH
  is '编号';
comment on column FGGXKJ_PLXX.LX
  is '类型';
comment on column FGGXKJ_PLXX.RYBS
  is '人员标识';
comment on column FGGXKJ_PLXX.FLBS
  is '分类标识';
comment on column FGGXKJ_PLXX.PLR
  is '评论人';
comment on column FGGXKJ_PLXX.PLRBS
  is '评论人标识';
comment on column FGGXKJ_PLXX.PLSJ
  is '评论时间';
comment on column FGGXKJ_PLXX.BT
  is '标题';
comment on column FGGXKJ_PLXX.PLRIP
  is '评论人IP';
comment on column FGGXKJ_PLXX.IPLY
  is 'IP来源';
comment on column FGGXKJ_PLXX.SFSH
  is '是否审核';
comment on column FGGXKJ_PLXX.PLNR
  is '评论内容';
comment on column FGGXKJ_PLXX.HFSJ
  is '回复时间';
comment on column FGGXKJ_PLXX.HFNR
  is '回复内容';

prompt
prompt Creating table FGGXKJ_SBNR
prompt ==========================
prompt
create table FGGXKJ_SBNR
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SBBS        NUMBER,
  BQ          BLOB,
  YHIP        VARCHAR2(15),
  IPLY        VARCHAR2(80),
  NR          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_SBNR
  is '随笔内容';
comment on column FGGXKJ_SBNR.FYBM
  is '法院编码';
comment on column FGGXKJ_SBNR.SBBS
  is '随笔标识';
comment on column FGGXKJ_SBNR.BQ
  is '标签';
comment on column FGGXKJ_SBNR.YHIP
  is '用户IP';
comment on column FGGXKJ_SBNR.IPLY
  is 'IP来源';
comment on column FGGXKJ_SBNR.NR
  is '内容';

prompt
prompt Creating table FGGXKJ_SBXX
prompt ==========================
prompt
create table FGGXKJ_SBXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SBBS        NUMBER,
  GRFLBS      NUMBER,
  RYBS        NUMBER,
  XTFLBS      NUMBER,
  XJMC        VARCHAR2(30),
  XM          VARCHAR2(20),
  LX          VARCHAR2(10),
  XQTQBS      VARCHAR2(20),
  BT          VARCHAR2(150),
  TJSJ        DATE,
  ZHTJSJ      DATE,
  ZHHFSJ      DATE,
  LSL         NUMBER,
  HFSL        NUMBER,
  SFYXPL      NUMBER,
  SFSH        NUMBER,
  SFYXL       NUMBER,
  JYSL        NUMBER,
  FJLB        BLOB,
  LIPLB       BLOB,
  LSJLB       BLOB,
  TJSL        NUMBER,
  TJYHLB      BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_SBXX
  is '随笔信息';
comment on column FGGXKJ_SBXX.FYBM
  is '法院编码';
comment on column FGGXKJ_SBXX.SBBS
  is '随笔标识';
comment on column FGGXKJ_SBXX.GRFLBS
  is '个人分类标识';
comment on column FGGXKJ_SBXX.RYBS
  is '人员标识';
comment on column FGGXKJ_SBXX.XTFLBS
  is '系统分类标识';
comment on column FGGXKJ_SBXX.XJMC
  is '信笺名称';
comment on column FGGXKJ_SBXX.XM
  is '姓名';
comment on column FGGXKJ_SBXX.LX
  is '类型';
comment on column FGGXKJ_SBXX.XQTQBS
  is '心情、天气标识';
comment on column FGGXKJ_SBXX.BT
  is '标题';
comment on column FGGXKJ_SBXX.TJSJ
  is '提交时间';
comment on column FGGXKJ_SBXX.ZHTJSJ
  is '最后提交时间';
comment on column FGGXKJ_SBXX.ZHHFSJ
  is '最后回复时间';
comment on column FGGXKJ_SBXX.LSL
  is '浏览数量';
comment on column FGGXKJ_SBXX.HFSL
  is '回复数量';
comment on column FGGXKJ_SBXX.SFYXPL
  is '是否允许评论';
comment on column FGGXKJ_SBXX.SFSH
  is '是否审核';
comment on column FGGXKJ_SBXX.SFYXL
  is '是否允许浏览';
comment on column FGGXKJ_SBXX.JYSL
  is '脚印数量';
comment on column FGGXKJ_SBXX.FJLB
  is '附件列表';
comment on column FGGXKJ_SBXX.LIPLB
  is '浏览IP列表';
comment on column FGGXKJ_SBXX.LSJLB
  is '浏览时间列表';
comment on column FGGXKJ_SBXX.TJSL
  is '推荐数量';
comment on column FGGXKJ_SBXX.TJYHLB
  is '推荐用户列表';

prompt
prompt Creating table FGGXKJ_SC
prompt ========================
prompt
create table FGGXKJ_SC
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SCDXBS      NUMBER,
  RYBS        NUMBER,
  LX          VARCHAR2(10),
  SCSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_SC
  is '收藏';
comment on column FGGXKJ_SC.FYBM
  is '法院编码';
comment on column FGGXKJ_SC.BH
  is '编号';
comment on column FGGXKJ_SC.SCDXBS
  is '收藏对象标识';
comment on column FGGXKJ_SC.RYBS
  is '人员标识';
comment on column FGGXKJ_SC.LX
  is '类型';
comment on column FGGXKJ_SC.SCSJ
  is '收藏时间';

prompt
prompt Creating table FGGXKJ_SPXX
prompt ==========================
prompt
create table FGGXKJ_SPXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SPBS        NUMBER,
  ZJBH        NUMBER,
  SCRQ        DATE,
  SPMC        VARCHAR2(100),
  SPWJM       VARCHAR2(250),
  SPFBLK      NUMBER,
  SPFBLG      NUMBER,
  SFSH        NUMBER,
  FWSL        NUMBER,
  HFSL        NUMBER,
  TJSL        NUMBER,
  TJRYBHLB    BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_SPXX
  is '视频信息';
comment on column FGGXKJ_SPXX.FYBM
  is '法院编码';
comment on column FGGXKJ_SPXX.SPBS
  is '视频标识';
comment on column FGGXKJ_SPXX.ZJBH
  is '专辑编号';
comment on column FGGXKJ_SPXX.SCRQ
  is '上传日期';
comment on column FGGXKJ_SPXX.SPMC
  is '视频名称';
comment on column FGGXKJ_SPXX.SPWJM
  is '视频文件名';
comment on column FGGXKJ_SPXX.SPFBLK
  is '视频分辨率宽';
comment on column FGGXKJ_SPXX.SPFBLG
  is '视频分辨率高';
comment on column FGGXKJ_SPXX.SFSH
  is '是否审核';
comment on column FGGXKJ_SPXX.FWSL
  is '访问数量';
comment on column FGGXKJ_SPXX.HFSL
  is '回复数量';
comment on column FGGXKJ_SPXX.TJSL
  is '推荐数量';
comment on column FGGXKJ_SPXX.TJRYBHLB
  is '推荐人员编号列表';

prompt
prompt Creating table FGGXKJ_SPZJXX
prompt ============================
prompt
create table FGGXKJ_SPZJXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  RYBS        NUMBER,
  ZJBH        NUMBER,
  ZJMC        VARCHAR2(100),
  CJRQ        DATE,
  XGRQ        DATE,
  SFGKFW      NUMBER,
  FWMM        VARCHAR2(50),
  ZJLX        VARCHAR2(10),
  ZJSM        VARCHAR2(200),
  SFYXPL      NUMBER,
  SFSH        NUMBER,
  FWS         NUMBER,
  HFS         NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_SPZJXX
  is '视频专辑信息';
comment on column FGGXKJ_SPZJXX.FYBM
  is '法院编码';
comment on column FGGXKJ_SPZJXX.RYBS
  is '人员标识';
comment on column FGGXKJ_SPZJXX.ZJBH
  is '专辑编号';
comment on column FGGXKJ_SPZJXX.ZJMC
  is '专辑名称';
comment on column FGGXKJ_SPZJXX.CJRQ
  is '创建日期';
comment on column FGGXKJ_SPZJXX.XGRQ
  is '修改日期';
comment on column FGGXKJ_SPZJXX.SFGKFW
  is '是否公开访问';
comment on column FGGXKJ_SPZJXX.FWMM
  is '访问密码';
comment on column FGGXKJ_SPZJXX.ZJLX
  is '专辑类型';
comment on column FGGXKJ_SPZJXX.ZJSM
  is '专辑说明';
comment on column FGGXKJ_SPZJXX.SFYXPL
  is '是否允许评论';
comment on column FGGXKJ_SPZJXX.SFSH
  is '是否审核';
comment on column FGGXKJ_SPZJXX.FWS
  is '访问数';
comment on column FGGXKJ_SPZJXX.HFS
  is '回复数';

prompt
prompt Creating table FGGXKJ_SQ
prompt ========================
prompt
create table FGGXKJ_SQ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SQBH        NUMBER,
  RYBS        NUMBER,
  YHIP        VARCHAR2(15),
  IPLY        VARCHAR2(80),
  SQDZ        VARCHAR2(250),
  SM          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_SQ
  is '书签';
comment on column FGGXKJ_SQ.FYBM
  is '法院编码';
comment on column FGGXKJ_SQ.SQBH
  is '书签编号';
comment on column FGGXKJ_SQ.RYBS
  is '人员标识';
comment on column FGGXKJ_SQ.YHIP
  is '用户IP';
comment on column FGGXKJ_SQ.IPLY
  is 'IP来源';
comment on column FGGXKJ_SQ.SQDZ
  is '书签地址';
comment on column FGGXKJ_SQ.SM
  is '说明';

prompt
prompt Creating table FGGXKJ_XCZPB
prompt ===========================
prompt
create table FGGXKJ_XCZPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  ZPBS        NUMBER,
  RYBS        NUMBER,
  FLBS        NUMBER,
  XCBS        NUMBER,
  ZPMC        VARCHAR2(80),
  LJURL       VARCHAR2(80),
  SCSJ        DATE,
  BQ          BLOB,
  LS          NUMBER,
  HFS         NUMBER,
  JYS         NUMBER,
  PLS         NUMBER,
  ZPSM        BLOB,
  SFYXPL      NUMBER,
  ZPKD        NUMBER,
  ZPGD        NUMBER,
  LIPLB       BLOB,
  ZPSXH       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_XCZPB
  is '相册照片表';
comment on column FGGXKJ_XCZPB.FYBM
  is '法院编码';
comment on column FGGXKJ_XCZPB.ZPBS
  is '照片标识';
comment on column FGGXKJ_XCZPB.RYBS
  is '人员标识';
comment on column FGGXKJ_XCZPB.FLBS
  is '分类标识';
comment on column FGGXKJ_XCZPB.XCBS
  is '相册标识';
comment on column FGGXKJ_XCZPB.ZPMC
  is '照片名称';
comment on column FGGXKJ_XCZPB.LJURL
  is '连接URL';
comment on column FGGXKJ_XCZPB.SCSJ
  is '上传时间';
comment on column FGGXKJ_XCZPB.BQ
  is '标签';
comment on column FGGXKJ_XCZPB.LS
  is '浏览数';
comment on column FGGXKJ_XCZPB.HFS
  is '回复数';
comment on column FGGXKJ_XCZPB.JYS
  is '脚印数';
comment on column FGGXKJ_XCZPB.PLS
  is '评论数';
comment on column FGGXKJ_XCZPB.ZPSM
  is '照片说明';
comment on column FGGXKJ_XCZPB.SFYXPL
  is '是否允许评论';
comment on column FGGXKJ_XCZPB.ZPKD
  is '照片宽度';
comment on column FGGXKJ_XCZPB.ZPGD
  is '照片高度';
comment on column FGGXKJ_XCZPB.LIPLB
  is '浏览IP列表';
comment on column FGGXKJ_XCZPB.ZPSXH
  is '照片顺序号';

prompt
prompt Creating table FGGXKJ_XTFL
prompt ==========================
prompt
create table FGGXKJ_XTFL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  FLBS        NUMBER,
  FLBSFLBS    NUMBER,
  LX          VARCHAR2(20),
  MC          VARCHAR2(50),
  SM          VARCHAR2(200),
  FLSM        VARCHAR2(200),
  XSSX        NUMBER,
  SFXS        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_XTFL
  is '系统分类';
comment on column FGGXKJ_XTFL.FYBM
  is '法院编码';
comment on column FGGXKJ_XTFL.FLBS
  is '分类标识';
comment on column FGGXKJ_XTFL.FLBSFLBS
  is '父类标识flbs';
comment on column FGGXKJ_XTFL.LX
  is '类型';
comment on column FGGXKJ_XTFL.MC
  is '名称';
comment on column FGGXKJ_XTFL.SM
  is '说明';
comment on column FGGXKJ_XTFL.FLSM
  is '父类说明';
comment on column FGGXKJ_XTFL.XSSX
  is '显示顺序';
comment on column FGGXKJ_XTFL.SFXS
  is '是否显示';

prompt
prompt Creating table FGGXKJ_XTGG
prompt ==========================
prompt
create table FGGXKJ_XTGG
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XSSX        NUMBER,
  FBR         VARCHAR2(40),
  KSSJ        DATE,
  LJ          VARCHAR2(80),
  BT          VARCHAR2(130),
  NR          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_XTGG
  is '系统公告';
comment on column FGGXKJ_XTGG.FYBM
  is '法院编码';
comment on column FGGXKJ_XTGG.BH
  is '编号';
comment on column FGGXKJ_XTGG.XSSX
  is '显示顺序';
comment on column FGGXKJ_XTGG.FBR
  is '发布人';
comment on column FGGXKJ_XTGG.KSSJ
  is '开始时间';
comment on column FGGXKJ_XTGG.LJ
  is '链接';
comment on column FGGXKJ_XTGG.BT
  is '标题';
comment on column FGGXKJ_XTGG.NR
  is '内容';

prompt
prompt Creating table FGGXKJ_YHCLSZ
prompt ============================
prompt
create table FGGXKJ_YHCLSZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  CLBS        NUMBER,
  RYBS        NUMBER,
  SFXS        NUMBER,
  XSSX        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_YHCLSZ
  is '用户侧栏设置';
comment on column FGGXKJ_YHCLSZ.FYBM
  is '法院编码';
comment on column FGGXKJ_YHCLSZ.BH
  is '编号';
comment on column FGGXKJ_YHCLSZ.CLBS
  is '侧栏标识';
comment on column FGGXKJ_YHCLSZ.RYBS
  is '人员标识';
comment on column FGGXKJ_YHCLSZ.SFXS
  is '是否显示';
comment on column FGGXKJ_YHCLSZ.XSSX
  is '显示顺序';

prompt
prompt Creating table FGGXKJ_YHXCB
prompt ===========================
prompt
create table FGGXKJ_YHXCB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XCBS        NUMBER,
  RYBS        NUMBER,
  FLBS        NUMBER,
  YHM         VARCHAR2(20),
  FWMM        VARCHAR2(40),
  XCMC        VARCHAR2(50),
  JLSJ        DATE,
  ZHXGSJ      DATE,
  ZHPLSJ      DATE,
  ZPSL        NUMBER,
  LCS         NUMBER,
  PLCS        NUMBER,
  SFYXPL      NUMBER,
  SFSH        NUMBER,
  SFYXL       NUMBER,
  JYS         NUMBER,
  XCSM        BLOB,
  FWIPLB      BLOB,
  TJCS        NUMBER,
  TJYHLB      BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGGXKJ_YHXCB
  is '用户相册表';
comment on column FGGXKJ_YHXCB.FYBM
  is '法院编码';
comment on column FGGXKJ_YHXCB.XCBS
  is '相册标识';
comment on column FGGXKJ_YHXCB.RYBS
  is '人员标识';
comment on column FGGXKJ_YHXCB.FLBS
  is '分类标识';
comment on column FGGXKJ_YHXCB.YHM
  is '用户名';
comment on column FGGXKJ_YHXCB.FWMM
  is '访问密码';
comment on column FGGXKJ_YHXCB.XCMC
  is '相册名称';
comment on column FGGXKJ_YHXCB.JLSJ
  is '建立时间';
comment on column FGGXKJ_YHXCB.ZHXGSJ
  is '最后修改时间';
comment on column FGGXKJ_YHXCB.ZHPLSJ
  is '最后评论时间';
comment on column FGGXKJ_YHXCB.ZPSL
  is '照片数量';
comment on column FGGXKJ_YHXCB.LCS
  is '浏览次数';
comment on column FGGXKJ_YHXCB.PLCS
  is '评论次数';
comment on column FGGXKJ_YHXCB.SFYXPL
  is '是否允许评论';
comment on column FGGXKJ_YHXCB.SFSH
  is '是否审核';
comment on column FGGXKJ_YHXCB.SFYXL
  is '是否允许浏览';
comment on column FGGXKJ_YHXCB.JYS
  is '脚印数';
comment on column FGGXKJ_YHXCB.XCSM
  is '相册说明';
comment on column FGGXKJ_YHXCB.FWIPLB
  is '访问IP列表';
comment on column FGGXKJ_YHXCB.TJCS
  is '推荐次数';
comment on column FGGXKJ_YHXCB.TJYHLB
  is '推荐用户列表';

prompt
prompt Creating table FGYJPJXT_BMJJF
prompt =============================
prompt
create table FGYJPJXT_BMJJF
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  ND          NUMBER,
  BM          VARCHAR2(50),
  RYBS        NUMBER,
  XM          VARCHAR2(50),
  JF          FLOAT,
  JFJF        FLOAT,
  JFLY        VARCHAR2(200),
  JFLYJF      VARCHAR2(200),
  LB          VARCHAR2(500)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_BMJJF
  is '部门加减分';
comment on column FGYJPJXT_BMJJF.FYBM
  is '法院编码';
comment on column FGYJPJXT_BMJJF.BH
  is '编号';
comment on column FGYJPJXT_BMJJF.ND
  is '年度';
comment on column FGYJPJXT_BMJJF.BM
  is '部门';
comment on column FGYJPJXT_BMJJF.RYBS
  is '人员标识';
comment on column FGYJPJXT_BMJJF.XM
  is '姓名';
comment on column FGYJPJXT_BMJJF.JF
  is '加分';
comment on column FGYJPJXT_BMJJF.JFJF
  is '减分jf';
comment on column FGYJPJXT_BMJJF.JFLY
  is '加分理由';
comment on column FGYJPJXT_BMJJF.JFLYJF
  is '减分理由jf';
comment on column FGYJPJXT_BMJJF.LB
  is '类别';

prompt
prompt Creating table FGYJPJXT_BMNDYJ
prompt ==============================
prompt
create table FGYJPJXT_BMNDYJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  ND          NUMBER,
  BM          VARCHAR2(20),
  DF          FLOAT,
  XLPM        NUMBER,
  QYPM        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_BMNDYJ
  is '部门年度业绩';
comment on column FGYJPJXT_BMNDYJ.FYBM
  is '法院编码';
comment on column FGYJPJXT_BMNDYJ.BH
  is '编号';
comment on column FGYJPJXT_BMNDYJ.ND
  is '年度';
comment on column FGYJPJXT_BMNDYJ.BM
  is '部门';
comment on column FGYJPJXT_BMNDYJ.DF
  is '得分';
comment on column FGYJPJXT_BMNDYJ.XLPM
  is '序列排名';
comment on column FGYJPJXT_BMNDYJ.QYPM
  is '全院排名';

prompt
prompt Creating table FGYJPJXT_CFXX
prompt ============================
prompt
create table FGYJPJXT_CFXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBH        NUMBER,
  RSXTRYBH    VARCHAR2(100),
  BCFRBH      NUMBER,
  XM          VARCHAR2(40),
  CFMC        VARCHAR2(100),
  CFSJ        DATE,
  LB          VARCHAR2(50),
  FS          FLOAT,
  BM          VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_CFXX
  is '处分信息';
comment on column FGYJPJXT_CFXX.FYBM
  is '法院编码';
comment on column FGYJPJXT_CFXX.BH
  is '编号';
comment on column FGYJPJXT_CFXX.RYBH
  is '人员编号';
comment on column FGYJPJXT_CFXX.RSXTRYBH
  is '人事系统人员编号';
comment on column FGYJPJXT_CFXX.BCFRBH
  is '被处分人编号';
comment on column FGYJPJXT_CFXX.XM
  is '姓名';
comment on column FGYJPJXT_CFXX.CFMC
  is '处分名称';
comment on column FGYJPJXT_CFXX.CFSJ
  is '处分时间';
comment on column FGYJPJXT_CFXX.LB
  is '类别';
comment on column FGYJPJXT_CFXX.FS
  is '分数';
comment on column FGYJPJXT_CFXX.BM
  is '部门';

prompt
prompt Creating table FGYJPJXT_CXJSMX
prompt ==============================
prompt
create table FGYJPJXT_CXJSMX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  ZBBH        NUMBER,
  XH          NUMBER,
  XMBH        NUMBER,
  XMNR        VARCHAR2(2000),
  XMLX        VARCHAR2(50),
  XMZL        VARCHAR2(50),
  TJLB        VARCHAR2(50),
  FS          FLOAT,
  JSJG        FLOAT,
  JSGSJCSJG   VARCHAR2(2000),
  XJG         VARCHAR2(2000),
  YJG         VARCHAR2(2000),
  ZJG         VARCHAR2(2000),
  BZ          BLOB,
  RYXM        VARCHAR2(20),
  JLRQ        DATE,
  JSMB        VARCHAR2(2000),
  ZXGJZ       VARCHAR2(2000),
  BMPM        NUMBER,
  XLPM        NUMBER,
  ZGF         FLOAT,
  BMPJF       FLOAT,
  BMXLPM      NUMBER,
  QYPM        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_CXJSMX
  is '程序计算明细';
comment on column FGYJPJXT_CXJSMX.FYBM
  is '法院编码';
comment on column FGYJPJXT_CXJSMX.BH
  is '编号';
comment on column FGYJPJXT_CXJSMX.ZBBH
  is '主表编号';
comment on column FGYJPJXT_CXJSMX.XH
  is '序号';
comment on column FGYJPJXT_CXJSMX.XMBH
  is '项目编号';
comment on column FGYJPJXT_CXJSMX.XMNR
  is '项目内容';
comment on column FGYJPJXT_CXJSMX.XMLX
  is '项目类型';
comment on column FGYJPJXT_CXJSMX.XMZL
  is '项目子类';
comment on column FGYJPJXT_CXJSMX.TJLB
  is '统计类别';
comment on column FGYJPJXT_CXJSMX.FS
  is '分数';
comment on column FGYJPJXT_CXJSMX.JSJG
  is '计算结果';
comment on column FGYJPJXT_CXJSMX.JSGSJCSJG
  is '计算公式及参数结果';
comment on column FGYJPJXT_CXJSMX.XJG
  is 'x结果';
comment on column FGYJPJXT_CXJSMX.YJG
  is 'y结果';
comment on column FGYJPJXT_CXJSMX.ZJG
  is 'z结果';
comment on column FGYJPJXT_CXJSMX.BZ
  is '备注';
comment on column FGYJPJXT_CXJSMX.RYXM
  is '人员姓名';
comment on column FGYJPJXT_CXJSMX.JLRQ
  is '记录日期';
comment on column FGYJPJXT_CXJSMX.JSMB
  is '计算模板';
comment on column FGYJPJXT_CXJSMX.ZXGJZ
  is '质效关键值';
comment on column FGYJPJXT_CXJSMX.BMPM
  is '部门排名';
comment on column FGYJPJXT_CXJSMX.XLPM
  is '序列排名';
comment on column FGYJPJXT_CXJSMX.ZGF
  is '最高分';
comment on column FGYJPJXT_CXJSMX.BMPJF
  is '部门平均分';
comment on column FGYJPJXT_CXJSMX.BMXLPM
  is '部门序列排名';
comment on column FGYJPJXT_CXJSMX.QYPM
  is '全院排名';

prompt
prompt Creating table FGYJPJXT_CXJSXMB
prompt ===============================
prompt
create table FGYJPJXT_CXJSXMB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XMBH        FLOAT,
  ZBLB        VARCHAR2(20),
  ZBMC        VARCHAR2(250),
  ZBMS        BLOB,
  ZBFZ        FLOAT,
  JZZFX       FLOAT,
  JZZZF       FLOAT,
  JSGS        BLOB,
  XSQL        BLOB,
  YSQL        BLOB,
  ZSQL        BLOB,
  XHY         VARCHAR2(50),
  YHY         VARCHAR2(50),
  ZHY         VARCHAR2(50),
  ZXZ         FLOAT,
  ZDZ         FLOAT,
  JSFS        VARCHAR2(20),
  BZ          BLOB,
  ZBLX        VARCHAR2(50),
  TJLB        VARCHAR2(50),
  KHBM        VARCHAR2(50),
  QSFZ        VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_CXJSXMB
  is '程序计算项目表';
comment on column FGYJPJXT_CXJSXMB.FYBM
  is '法院编码';
comment on column FGYJPJXT_CXJSXMB.XMBH
  is '项目编号';
comment on column FGYJPJXT_CXJSXMB.ZBLB
  is '指标类别';
comment on column FGYJPJXT_CXJSXMB.ZBMC
  is '指标名称';
comment on column FGYJPJXT_CXJSXMB.ZBMS
  is '指标描述';
comment on column FGYJPJXT_CXJSXMB.ZBFZ
  is '指标分值';
comment on column FGYJPJXT_CXJSXMB.JZZFX
  is '基准值分项';
comment on column FGYJPJXT_CXJSXMB.JZZZF
  is '基准值总分';
comment on column FGYJPJXT_CXJSXMB.JSGS
  is '计算公式';
comment on column FGYJPJXT_CXJSXMB.XSQL
  is 'xSql';
comment on column FGYJPJXT_CXJSXMB.YSQL
  is 'ySql';
comment on column FGYJPJXT_CXJSXMB.ZSQL
  is 'zSql';
comment on column FGYJPJXT_CXJSXMB.XHY
  is 'x含义';
comment on column FGYJPJXT_CXJSXMB.YHY
  is 'y含义';
comment on column FGYJPJXT_CXJSXMB.ZHY
  is 'z含义';
comment on column FGYJPJXT_CXJSXMB.ZXZ
  is '最小值';
comment on column FGYJPJXT_CXJSXMB.ZDZ
  is '最大值';
comment on column FGYJPJXT_CXJSXMB.JSFS
  is '计算方式';
comment on column FGYJPJXT_CXJSXMB.BZ
  is '备注';
comment on column FGYJPJXT_CXJSXMB.ZBLX
  is '指标类型';
comment on column FGYJPJXT_CXJSXMB.TJLB
  is '统计类别';
comment on column FGYJPJXT_CXJSXMB.KHBM
  is '考核部门';
comment on column FGYJPJXT_CXJSXMB.QSFZ
  is '缺省分值';

prompt
prompt Creating table FGYJPJXT_CXJSZB
prompt ==============================
prompt
create table FGYJPJXT_CXJSZB
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  BH           NUMBER,
  JSND         NUMBER,
  JSQJ         VARCHAR2(50),
  RYXM         VARCHAR2(50),
  BM           VARCHAR2(50),
  KSRQ         DATE,
  JSRQ         DATE,
  MBLB         VARCHAR2(50),
  ZF           FLOAT,
  QYPM         NUMBER,
  BMPM         NUMBER,
  JSR          VARCHAR2(20),
  JSRQJSRQ     DATE,
  ZFD          FLOAT,
  ZFQ          FLOAT,
  ZFL          FLOAT,
  ZFQJF        FLOAT,
  ZFQJFQJF     FLOAT,
  ZFJ          FLOAT,
  ZFJJBF       FLOAT,
  ZFJJF        FLOAT,
  ZFJJFJJF     FLOAT,
  ZFN          FLOAT,
  ZFNJBF       FLOAT,
  ZFNJF        FLOAT,
  ZFNJFNJF     FLOAT,
  XS           FLOAT,
  JSXS         FLOAT,
  YSZF         FLOAT,
  ZW           VARCHAR2(250),
  ZW1          VARCHAR2(250),
  XLPM         NUMBER,
  BMXLZGF      FLOAT,
  BMXLPM       NUMBER,
  ZFFMPJ       FLOAT,
  GZYJQYPM     NUMBER,
  GZYJXLPM     NUMBER,
  GZYJBMPM     NUMBER,
  GZYJBMXLPM   NUMBER,
  ZZSZQYPM     NUMBER,
  ZZSZXLPM     NUMBER,
  ZZSZBMPM     NUMBER,
  ZZSZBMXLNPM  NUMBER,
  NQYPM        NUMBER,
  NXLPM        NUMBER,
  NBMNPMNBMPM  NUMBER,
  NBMNXLPM     NUMBER,
  QQYPM        NUMBER,
  QXLPM        NUMBER,
  JQYPM        NUMBER,
  JXLPM        NUMBER,
  LQYPM        NUMBER,
  LXLPM        NUMBER,
  FMPJQYPM     NUMBER,
  FMPJXLPM     NUMBER,
  NBMNPM       NUMBER,
  NBMXLNPM     NUMBER,
  QBMNPM       NUMBER,
  QBMXLNPM     NUMBER,
  JBMNPM       NUMBER,
  JBMXLNPM     NUMBER,
  DQYPM        NUMBER,
  DXLPM        NUMBER,
  DBMNPM       NUMBER,
  DBMXLNPM     NUMBER,
  LBMNPM       NUMBER,
  LBMXLNPM     NUMBER,
  FMPJBMNPM    NUMBER,
  FMPJBMXLNPM  NUMBER,
  SYMB         VARCHAR2(250),
  RYBH         NUMBER,
  ZJF          FLOAT,
  JFQYPM       NUMBER,
  JFBPM        NUMBER,
  JFXLPM       NUMBER,
  JFBMNXLPM    NUMBER,
  ZCGBXLPM     NUMBER,
  ZCGBQYPM     NUMBER,
  ZCGBZZPM     NUMBER,
  ZCGBFZPM     NUMBER,
  ZCGBZZXZBMPM NUMBER,
  ZCGBFZXZBMPM NUMBER,
  ZCGBZZYWBMPM NUMBER,
  ZCGBFZYWBMPM NUMBER,
  GZGW         VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_CXJSZB
  is '程序计算主表';
comment on column FGYJPJXT_CXJSZB.FYBM
  is '法院编码';
comment on column FGYJPJXT_CXJSZB.BH
  is '编号';
comment on column FGYJPJXT_CXJSZB.JSND
  is '计算年度';
comment on column FGYJPJXT_CXJSZB.JSQJ
  is '计算区间';
comment on column FGYJPJXT_CXJSZB.RYXM
  is '人员姓名';
comment on column FGYJPJXT_CXJSZB.BM
  is '部门';
comment on column FGYJPJXT_CXJSZB.KSRQ
  is '开始日期';
comment on column FGYJPJXT_CXJSZB.JSRQ
  is '结束日期';
comment on column FGYJPJXT_CXJSZB.MBLB
  is '模板类别';
comment on column FGYJPJXT_CXJSZB.ZF
  is '总分';
comment on column FGYJPJXT_CXJSZB.QYPM
  is '全院排名';
comment on column FGYJPJXT_CXJSZB.BMPM
  is '部门排名';
comment on column FGYJPJXT_CXJSZB.JSR
  is '计算人';
comment on column FGYJPJXT_CXJSZB.JSRQJSRQ
  is '计算日期jsrq';
comment on column FGYJPJXT_CXJSZB.ZFD
  is '总分-德';
comment on column FGYJPJXT_CXJSZB.ZFQ
  is '总分-勤';
comment on column FGYJPJXT_CXJSZB.ZFL
  is '总分-廉';
comment on column FGYJPJXT_CXJSZB.ZFQJF
  is '总分-勤加分';
comment on column FGYJPJXT_CXJSZB.ZFQJFQJF
  is '总分-勤减分qjf';
comment on column FGYJPJXT_CXJSZB.ZFJ
  is '总分-绩';
comment on column FGYJPJXT_CXJSZB.ZFJJBF
  is '总分-绩基本分';
comment on column FGYJPJXT_CXJSZB.ZFJJF
  is '总分-绩加分';
comment on column FGYJPJXT_CXJSZB.ZFJJFJJF
  is '总分-绩减分jjf';
comment on column FGYJPJXT_CXJSZB.ZFN
  is '总分-能';
comment on column FGYJPJXT_CXJSZB.ZFNJBF
  is '总分-能基本分';
comment on column FGYJPJXT_CXJSZB.ZFNJF
  is '总分-能加分';
comment on column FGYJPJXT_CXJSZB.ZFNJFNJF
  is '总分-能减分njf';
comment on column FGYJPJXT_CXJSZB.XS
  is '系数';
comment on column FGYJPJXT_CXJSZB.JSXS
  is '计算系数';
comment on column FGYJPJXT_CXJSZB.YSZF
  is '原始总分';
comment on column FGYJPJXT_CXJSZB.ZW
  is '职务';
comment on column FGYJPJXT_CXJSZB.ZW1
  is '职务1';
comment on column FGYJPJXT_CXJSZB.XLPM
  is '序列排名';
comment on column FGYJPJXT_CXJSZB.BMXLZGF
  is '部门序列最高分';
comment on column FGYJPJXT_CXJSZB.BMXLPM
  is '部门序列排名';
comment on column FGYJPJXT_CXJSZB.ZFFMPJ
  is '总分-负面评价';
comment on column FGYJPJXT_CXJSZB.GZYJQYPM
  is '工作业绩全院排名';
comment on column FGYJPJXT_CXJSZB.GZYJXLPM
  is '工作业绩序列排名';
comment on column FGYJPJXT_CXJSZB.GZYJBMPM
  is '工作业绩部门排名';
comment on column FGYJPJXT_CXJSZB.GZYJBMXLPM
  is '工作业绩部门序列排名';
comment on column FGYJPJXT_CXJSZB.ZZSZQYPM
  is '政治素质全院排名';
comment on column FGYJPJXT_CXJSZB.ZZSZXLPM
  is '政治素质序列排名';
comment on column FGYJPJXT_CXJSZB.ZZSZBMPM
  is '政治素质部门排名';
comment on column FGYJPJXT_CXJSZB.ZZSZBMXLNPM
  is '政治素质部门序列内排名';
comment on column FGYJPJXT_CXJSZB.NQYPM
  is '能全院排名';
comment on column FGYJPJXT_CXJSZB.NXLPM
  is '能序列排名';
comment on column FGYJPJXT_CXJSZB.NBMNPMNBMPM
  is '能部门内排名nbmpm';
comment on column FGYJPJXT_CXJSZB.NBMNXLPM
  is '能部门内序列排名';
comment on column FGYJPJXT_CXJSZB.QQYPM
  is '勤全院排名';
comment on column FGYJPJXT_CXJSZB.QXLPM
  is '勤序列排名';
comment on column FGYJPJXT_CXJSZB.JQYPM
  is '绩全院排名';
comment on column FGYJPJXT_CXJSZB.JXLPM
  is '绩序列排名';
comment on column FGYJPJXT_CXJSZB.LQYPM
  is '廉全院排名';
comment on column FGYJPJXT_CXJSZB.LXLPM
  is '廉序列排名';
comment on column FGYJPJXT_CXJSZB.FMPJQYPM
  is '负面评价全院排名';
comment on column FGYJPJXT_CXJSZB.FMPJXLPM
  is '负面评价序列排名';
comment on column FGYJPJXT_CXJSZB.NBMNPM
  is '能部门内排名';
comment on column FGYJPJXT_CXJSZB.NBMXLNPM
  is '能部门序列内排名';
comment on column FGYJPJXT_CXJSZB.QBMNPM
  is '勤部门内排名';
comment on column FGYJPJXT_CXJSZB.QBMXLNPM
  is '勤部门序列内排名';
comment on column FGYJPJXT_CXJSZB.JBMNPM
  is '绩部门内排名';
comment on column FGYJPJXT_CXJSZB.JBMXLNPM
  is '绩部门序列内排名';
comment on column FGYJPJXT_CXJSZB.DQYPM
  is '德全院排名';
comment on column FGYJPJXT_CXJSZB.DXLPM
  is '德序列排名';
comment on column FGYJPJXT_CXJSZB.DBMNPM
  is '德部门内排名';
comment on column FGYJPJXT_CXJSZB.DBMXLNPM
  is '德部门序列内排名';
comment on column FGYJPJXT_CXJSZB.LBMNPM
  is '廉部门内排名';
comment on column FGYJPJXT_CXJSZB.LBMXLNPM
  is '廉部门序列内排名';
comment on column FGYJPJXT_CXJSZB.FMPJBMNPM
  is '负面评价部门内排名';
comment on column FGYJPJXT_CXJSZB.FMPJBMXLNPM
  is '负面评价部门序列内排名';
comment on column FGYJPJXT_CXJSZB.SYMB
  is '适用模板';
comment on column FGYJPJXT_CXJSZB.RYBH
  is '人员编号';
comment on column FGYJPJXT_CXJSZB.ZJF
  is '总加分';
comment on column FGYJPJXT_CXJSZB.JFQYPM
  is '减分全院排名';
comment on column FGYJPJXT_CXJSZB.JFBPM
  is '减分部排名';
comment on column FGYJPJXT_CXJSZB.JFXLPM
  is '减分序列排名';
comment on column FGYJPJXT_CXJSZB.JFBMNXLPM
  is '减分部门内序列排名';
comment on column FGYJPJXT_CXJSZB.ZCGBXLPM
  is '中层干部序列排名';
comment on column FGYJPJXT_CXJSZB.ZCGBQYPM
  is '中层干部全院排名';
comment on column FGYJPJXT_CXJSZB.ZCGBZZPM
  is '中层干部正职排名';
comment on column FGYJPJXT_CXJSZB.ZCGBFZPM
  is '中层干部副职排名';
comment on column FGYJPJXT_CXJSZB.ZCGBZZXZBMPM
  is '中层干部正职-行政部门排名';
comment on column FGYJPJXT_CXJSZB.ZCGBFZXZBMPM
  is '中层干部副职-行政部门排名';
comment on column FGYJPJXT_CXJSZB.ZCGBZZYWBMPM
  is '中层干部正职-业务部门排名';
comment on column FGYJPJXT_CXJSZB.ZCGBFZYWBMPM
  is '中层干部副职-业务部门排名';
comment on column FGYJPJXT_CXJSZB.GZGW
  is '工作岗位';

prompt
prompt Creating table FGYJPJXT_DBXX
prompt ============================
prompt
create table FGYJPJXT_DBXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  DBBH        NUMBER,
  SXMC        VARCHAR2(50),
  DBNR        VARCHAR2(200),
  DBRBH       NUMBER,
  DBR         VARCHAR2(40),
  DBRBM       VARCHAR2(100),
  DBSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_DBXX
  is '督办信息';
comment on column FGYJPJXT_DBXX.FYBM
  is '法院编码';
comment on column FGYJPJXT_DBXX.DBBH
  is '督办编号';
comment on column FGYJPJXT_DBXX.SXMC
  is '事项名称';
comment on column FGYJPJXT_DBXX.DBNR
  is '督办内容';
comment on column FGYJPJXT_DBXX.DBRBH
  is '督办人编号';
comment on column FGYJPJXT_DBXX.DBR
  is '督办人';
comment on column FGYJPJXT_DBXX.DBRBM
  is '督办人部门';
comment on column FGYJPJXT_DBXX.DBSJ
  is '督办时间';

prompt
prompt Creating table FGYJPJXT_DYXX
prompt ============================
prompt
create table FGYJPJXT_DYXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBH        NUMBER,
  BM          VARCHAR2(50),
  ZZ          VARCHAR2(30),
  BT          VARCHAR2(250),
  LX          VARCHAR2(30),
  CYFS        VARCHAR2(50),
  CYJB        VARCHAR2(30),
  FS          FLOAT,
  DJR         VARCHAR2(30),
  DJRQ        DATE,
  DYRQ        DATE,
  GWBH        NUMBER,
  CLFJ        VARCHAR2(250),
  GRZPM       NUMBER,
  GRFXPM      NUMBER,
  BMGRZPM     NUMBER,
  BMGRFXPM    NUMBER,
  BMZPM       NUMBER,
  BMFXPM      NUMBER,
  XZ          VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_DYXX
  is '调研信息';
comment on column FGYJPJXT_DYXX.FYBM
  is '法院编码';
comment on column FGYJPJXT_DYXX.BH
  is '编号';
comment on column FGYJPJXT_DYXX.RYBH
  is '人员编号';
comment on column FGYJPJXT_DYXX.BM
  is '部门';
comment on column FGYJPJXT_DYXX.ZZ
  is '作者';
comment on column FGYJPJXT_DYXX.BT
  is '标题';
comment on column FGYJPJXT_DYXX.LX
  is '类型';
comment on column FGYJPJXT_DYXX.CYFS
  is '采用方式';
comment on column FGYJPJXT_DYXX.CYJB
  is '采用级别';
comment on column FGYJPJXT_DYXX.FS
  is '分数';
comment on column FGYJPJXT_DYXX.DJR
  is '登记人';
comment on column FGYJPJXT_DYXX.DJRQ
  is '登记日期';
comment on column FGYJPJXT_DYXX.DYRQ
  is '调研日期';
comment on column FGYJPJXT_DYXX.GWBH
  is '公文编号';
comment on column FGYJPJXT_DYXX.CLFJ
  is '材料附件';
comment on column FGYJPJXT_DYXX.GRZPM
  is '个人总排名';
comment on column FGYJPJXT_DYXX.GRFXPM
  is '个人分项排名';
comment on column FGYJPJXT_DYXX.BMGRZPM
  is '部门个人总排名';
comment on column FGYJPJXT_DYXX.BMGRFXPM
  is '部门个人分项排名';
comment on column FGYJPJXT_DYXX.BMZPM
  is '部门总排名';
comment on column FGYJPJXT_DYXX.BMFXPM
  is '部门分项排名';
comment on column FGYJPJXT_DYXX.XZ
  is '性质';

prompt
prompt Creating table FGYJPJXT_DYXXSBB
prompt ===============================
prompt
create table FGYJPJXT_DYXXSBB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBH        NUMBER,
  BM          VARCHAR2(30),
  XM          VARCHAR2(30),
  BT          VARCHAR2(250),
  LX          VARCHAR2(20),
  XZ          VARCHAR2(20),
  JB          VARCHAR2(20),
  CYFS        VARCHAR2(50),
  DF          FLOAT,
  FJ          VARCHAR2(250),
  CYSJ        DATE,
  CBSPR       VARCHAR2(20),
  CBSPYJ      VARCHAR2(200),
  CBSPSJ      DATE,
  CBSPPZ      VARCHAR2(10),
  FZRSPR      VARCHAR2(20),
  FZRSPPZ     VARCHAR2(10),
  FZRSPYJ     VARCHAR2(100),
  FZRSPSJ     DATE,
  YJSSPR      VARCHAR2(20),
  YJSSPPZ     VARCHAR2(10),
  YJSSPYJ     VARCHAR2(100),
  YJSSPSJ     DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_DYXXSBB
  is '调研信息申报表';
comment on column FGYJPJXT_DYXXSBB.FYBM
  is '法院编码';
comment on column FGYJPJXT_DYXXSBB.BH
  is '编号';
comment on column FGYJPJXT_DYXXSBB.RYBH
  is '人员编号';
comment on column FGYJPJXT_DYXXSBB.BM
  is '部门';
comment on column FGYJPJXT_DYXXSBB.XM
  is '姓名';
comment on column FGYJPJXT_DYXXSBB.BT
  is '标题';
comment on column FGYJPJXT_DYXXSBB.LX
  is '类型';
comment on column FGYJPJXT_DYXXSBB.XZ
  is '性质';
comment on column FGYJPJXT_DYXXSBB.JB
  is '级别';
comment on column FGYJPJXT_DYXXSBB.CYFS
  is '采用方式';
comment on column FGYJPJXT_DYXXSBB.DF
  is '得分';
comment on column FGYJPJXT_DYXXSBB.FJ
  is '附件';
comment on column FGYJPJXT_DYXXSBB.CYSJ
  is '采用时间';
comment on column FGYJPJXT_DYXXSBB.CBSPR
  is '承办审批人';
comment on column FGYJPJXT_DYXXSBB.CBSPYJ
  is '承办审批意见';
comment on column FGYJPJXT_DYXXSBB.CBSPSJ
  is '承办审批时间';
comment on column FGYJPJXT_DYXXSBB.CBSPPZ
  is '承办审批批准';
comment on column FGYJPJXT_DYXXSBB.FZRSPR
  is '副主任审批人';
comment on column FGYJPJXT_DYXXSBB.FZRSPPZ
  is '副主任审批批准';
comment on column FGYJPJXT_DYXXSBB.FZRSPYJ
  is '副主任审批意见';
comment on column FGYJPJXT_DYXXSBB.FZRSPSJ
  is '副主任审批时间';
comment on column FGYJPJXT_DYXXSBB.YJSSPR
  is '研究室审批人';
comment on column FGYJPJXT_DYXXSBB.YJSSPPZ
  is '研究室审批批准';
comment on column FGYJPJXT_DYXXSBB.YJSSPYJ
  is '研究室审批意见';
comment on column FGYJPJXT_DYXXSBB.YJSSPSJ
  is '研究室审批时间';

prompt
prompt Creating table FGYJPJXT_GWPMSXB
prompt ===============================
prompt
create table FGYJPJXT_GWPMSXB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  LB          VARCHAR2(50),
  MC          VARCHAR2(100),
  SX          NUMBER,
  BZ          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_GWPMSXB
  is '（岗位）排名顺序表';
comment on column FGYJPJXT_GWPMSXB.FYBM
  is '法院编码';
comment on column FGYJPJXT_GWPMSXB.BH
  is '编号';
comment on column FGYJPJXT_GWPMSXB.LB
  is '类别';
comment on column FGYJPJXT_GWPMSXB.MC
  is '名称';
comment on column FGYJPJXT_GWPMSXB.SX
  is '顺序';
comment on column FGYJPJXT_GWPMSXB.BZ
  is '标志';

prompt
prompt Creating table FGYJPJXT_GYWYHDDJSB
prompt ==================================
prompt
create table FGYJPJXT_GYWYHDDJSB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBH        NUMBER,
  CJXM        VARCHAR2(100),
  BM          VARCHAR2(100),
  XM          VARCHAR2(40),
  CJSJ        DATE,
  CJDD        VARCHAR2(100),
  HDMC        VARCHAR2(100),
  CJCS        NUMBER,
  BYXG        VARCHAR2(10),
  HJQK        VARCHAR2(100),
  DDQK        VARCHAR2(100),
  ZYQK        VARCHAR2(100),
  HJLX        VARCHAR2(20),
  BSGM        VARCHAR2(20),
  BZ          VARCHAR2(250),
  DJRBH       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  FLBS        NUMBER,
  FS          FLOAT,
  FJCL        VARCHAR2(250),
  SPRBH       NUMBER,
  SPR         VARCHAR2(40),
  SPYJ        VARCHAR2(250),
  SPSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_GYWYHDDJSB
  is '公益文艺活动登记（申报）';
comment on column FGYJPJXT_GYWYHDDJSB.FYBM
  is '法院编码';
comment on column FGYJPJXT_GYWYHDDJSB.BH
  is '编号';
comment on column FGYJPJXT_GYWYHDDJSB.RYBH
  is '人员编号';
comment on column FGYJPJXT_GYWYHDDJSB.CJXM
  is '参加项目';
comment on column FGYJPJXT_GYWYHDDJSB.BM
  is '部门';
comment on column FGYJPJXT_GYWYHDDJSB.XM
  is '姓名';
comment on column FGYJPJXT_GYWYHDDJSB.CJSJ
  is '参加时间';
comment on column FGYJPJXT_GYWYHDDJSB.CJDD
  is '参加地点';
comment on column FGYJPJXT_GYWYHDDJSB.HDMC
  is '活动名称';
comment on column FGYJPJXT_GYWYHDDJSB.CJCS
  is '参加次数';
comment on column FGYJPJXT_GYWYHDDJSB.BYXG
  is '表演效果';
comment on column FGYJPJXT_GYWYHDDJSB.HJQK
  is '获奖情况';
comment on column FGYJPJXT_GYWYHDDJSB.DDQK
  is '到达情况';
comment on column FGYJPJXT_GYWYHDDJSB.ZYQK
  is '专业情况';
comment on column FGYJPJXT_GYWYHDDJSB.HJLX
  is '获奖类型';
comment on column FGYJPJXT_GYWYHDDJSB.BSGM
  is '比赛规模';
comment on column FGYJPJXT_GYWYHDDJSB.BZ
  is '备注';
comment on column FGYJPJXT_GYWYHDDJSB.DJRBH
  is '登记人编号';
comment on column FGYJPJXT_GYWYHDDJSB.DJR
  is '登记人';
comment on column FGYJPJXT_GYWYHDDJSB.DJRQ
  is '登记日期';
comment on column FGYJPJXT_GYWYHDDJSB.FLBS
  is '分类标识';
comment on column FGYJPJXT_GYWYHDDJSB.FS
  is '分数';
comment on column FGYJPJXT_GYWYHDDJSB.FJCL
  is '附件材料';
comment on column FGYJPJXT_GYWYHDDJSB.SPRBH
  is '审批人编号';
comment on column FGYJPJXT_GYWYHDDJSB.SPR
  is '审批人';
comment on column FGYJPJXT_GYWYHDDJSB.SPYJ
  is '审批意见';
comment on column FGYJPJXT_GYWYHDDJSB.SPSJ
  is '审批时间';

prompt
prompt Creating table FGYJPJXT_JLXX
prompt ============================
prompt
create table FGYJPJXT_JLXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBH        NUMBER,
  RSXTRYBH    VARCHAR2(50),
  XM          VARCHAR2(40),
  DWDM        VARCHAR2(50),
  JLFL        VARCHAR2(20),
  JLMC        VARCHAR2(200),
  HJSJ        DATE,
  HJND        NUMBER,
  JLWH        VARCHAR2(50),
  PZDW        VARCHAR2(100),
  SJDXM       VARCHAR2(400),
  JB          VARCHAR2(50),
  FS          FLOAT,
  BM          VARCHAR2(100),
  SFBLDJ      NUMBER,
  BZ          VARCHAR2(250),
  DJRBH       NUMBER,
  DJR         VARCHAR2(250),
  DJSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_JLXX
  is '奖励信息';
comment on column FGYJPJXT_JLXX.FYBM
  is '法院编码';
comment on column FGYJPJXT_JLXX.BH
  is '编号';
comment on column FGYJPJXT_JLXX.RYBH
  is '人员编号';
comment on column FGYJPJXT_JLXX.RSXTRYBH
  is '人事系统人员编号';
comment on column FGYJPJXT_JLXX.XM
  is '姓名';
comment on column FGYJPJXT_JLXX.DWDM
  is '单位代码';
comment on column FGYJPJXT_JLXX.JLFL
  is '奖励分类';
comment on column FGYJPJXT_JLXX.JLMC
  is '奖励名称';
comment on column FGYJPJXT_JLXX.HJSJ
  is '获奖时间';
comment on column FGYJPJXT_JLXX.HJND
  is '获奖年度';
comment on column FGYJPJXT_JLXX.JLWH
  is '奖励文号';
comment on column FGYJPJXT_JLXX.PZDW
  is '批准单位';
comment on column FGYJPJXT_JLXX.SJDXM
  is '受奖对象名';
comment on column FGYJPJXT_JLXX.JB
  is '级别';
comment on column FGYJPJXT_JLXX.FS
  is '分数';
comment on column FGYJPJXT_JLXX.BM
  is '部门';
comment on column FGYJPJXT_JLXX.SFBLDJ
  is '是否补录登记';
comment on column FGYJPJXT_JLXX.BZ
  is '备注';
comment on column FGYJPJXT_JLXX.DJRBH
  is '登记人编号';
comment on column FGYJPJXT_JLXX.DJR
  is '登记人';
comment on column FGYJPJXT_JLXX.DJSJ
  is '登记时间';

prompt
prompt Creating table FGYJPJXT_JSCLGL
prompt ==============================
prompt
create table FGYJPJXT_JSCLGL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  CLDM        VARCHAR2(250),
  CLSJ        VARCHAR2(2000),
  MS          VARCHAR2(250),
  LX          VARCHAR2(250),
  SJY         VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_JSCLGL
  is '计算常量管理';
comment on column FGYJPJXT_JSCLGL.FYBM
  is '法院编码';
comment on column FGYJPJXT_JSCLGL.BH
  is '编号';
comment on column FGYJPJXT_JSCLGL.CLDM
  is '常量代码';
comment on column FGYJPJXT_JSCLGL.CLSJ
  is '常量数据';
comment on column FGYJPJXT_JSCLGL.MS
  is '描述';
comment on column FGYJPJXT_JSCLGL.LX
  is '类型';
comment on column FGYJPJXT_JSCLGL.SJY
  is '数据源';

prompt
prompt Creating table FGYJPJXT_JSJCRZ
prompt ==============================
prompt
create table FGYJPJXT_JSJCRZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  CJSJ        DATE,
  CJR         VARCHAR2(20),
  BT          VARCHAR2(250),
  CWLX        VARCHAR2(20),
  CWZL        VARCHAR2(50),
  SM          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_JSJCRZ
  is '计算检查日志';
comment on column FGYJPJXT_JSJCRZ.FYBM
  is '法院编码';
comment on column FGYJPJXT_JSJCRZ.BH
  is '编号';
comment on column FGYJPJXT_JSJCRZ.CJSJ
  is '创建时间';
comment on column FGYJPJXT_JSJCRZ.CJR
  is '创建人';
comment on column FGYJPJXT_JSJCRZ.BT
  is '标题';
comment on column FGYJPJXT_JSJCRZ.CWLX
  is '错误类型';
comment on column FGYJPJXT_JSJCRZ.CWZL
  is '错误子类';
comment on column FGYJPJXT_JSJCRZ.SM
  is '说明';

prompt
prompt Creating table FGYJPJXT_JSMB
prompt ============================
prompt
create table FGYJPJXT_JSMB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  MBLX        VARCHAR2(20),
  MBMC        VARCHAR2(250),
  XH          NUMBER,
  BHXMBH      FLOAT,
  SYFWID      VARCHAR2(50),
  SYFW        VARCHAR2(250),
  BZ          BLOB,
  SYLX        VARCHAR2(20),
  SYRYLB      BLOB,
  SYBMLB      BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_JSMB
  is '计算模板';
comment on column FGYJPJXT_JSMB.FYBM
  is '法院编码';
comment on column FGYJPJXT_JSMB.BH
  is '编号';
comment on column FGYJPJXT_JSMB.MBLX
  is '模板类型';
comment on column FGYJPJXT_JSMB.MBMC
  is '模板名称';
comment on column FGYJPJXT_JSMB.XH
  is '序号';
comment on column FGYJPJXT_JSMB.BHXMBH
  is '包含项目编号';
comment on column FGYJPJXT_JSMB.SYFWID
  is '适用范围id';
comment on column FGYJPJXT_JSMB.SYFW
  is '适用范围';
comment on column FGYJPJXT_JSMB.BZ
  is '备注';
comment on column FGYJPJXT_JSMB.SYLX
  is '适用类型';
comment on column FGYJPJXT_JSMB.SYRYLB
  is '适用人员列表';
comment on column FGYJPJXT_JSMB.SYBMLB
  is '适用部门列表';

prompt
prompt Creating table FGYJPJXT_JSXYGL
prompt ==============================
prompt
create table FGYJPJXT_JSXYGL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  GZMZ        VARCHAR2(250),
  GZSM        BLOB,
  XYSQL       BLOB,
  CJR         BLOB,
  SFYX        NUMBER,
  CJSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_JSXYGL
  is '计算校验管理';
comment on column FGYJPJXT_JSXYGL.FYBM
  is '法院编码';
comment on column FGYJPJXT_JSXYGL.BH
  is '编号';
comment on column FGYJPJXT_JSXYGL.GZMZ
  is '规则名字';
comment on column FGYJPJXT_JSXYGL.GZSM
  is '规则说明';
comment on column FGYJPJXT_JSXYGL.XYSQL
  is '校验SQL';
comment on column FGYJPJXT_JSXYGL.CJR
  is '创建人';
comment on column FGYJPJXT_JSXYGL.SFYX
  is '是否有效';
comment on column FGYJPJXT_JSXYGL.CJSJ
  is '创建时间';

prompt
prompt Creating table FGYJPJXT_LZJCDXXBLB
prompt ==================================
prompt
create table FGYJPJXT_LZJCDXXBLB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  FLMC        VARCHAR2(100),
  BM          VARCHAR2(100),
  RYBH        NUMBER,
  XM          VARCHAR2(40),
  XMXM        VARCHAR2(100),
  SJ          DATE,
  FS          FLOAT,
  WFWJLX      VARCHAR2(100),
  BZ          VARCHAR2(200),
  DJSJ        DATE,
  DJRBH       NUMBER,
  DJR         VARCHAR2(40),
  FL          VARCHAR2(100),
  FTH         VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_LZJCDXXBLB
  is '廉政监察等信息补录表';
comment on column FGYJPJXT_LZJCDXXBLB.FYBM
  is '法院编码';
comment on column FGYJPJXT_LZJCDXXBLB.BH
  is '编号';
comment on column FGYJPJXT_LZJCDXXBLB.FLMC
  is '分类名称';
comment on column FGYJPJXT_LZJCDXXBLB.BM
  is '部门';
comment on column FGYJPJXT_LZJCDXXBLB.RYBH
  is '人员编号';
comment on column FGYJPJXT_LZJCDXXBLB.XM
  is '姓名';
comment on column FGYJPJXT_LZJCDXXBLB.XMXM
  is '项目xm';
comment on column FGYJPJXT_LZJCDXXBLB.SJ
  is '时间';
comment on column FGYJPJXT_LZJCDXXBLB.FS
  is '分数';
comment on column FGYJPJXT_LZJCDXXBLB.WFWJLX
  is '违法违纪类型';
comment on column FGYJPJXT_LZJCDXXBLB.BZ
  is '备注';
comment on column FGYJPJXT_LZJCDXXBLB.DJSJ
  is '登记时间';
comment on column FGYJPJXT_LZJCDXXBLB.DJRBH
  is '登记人编号';
comment on column FGYJPJXT_LZJCDXXBLB.DJR
  is '登记人';
comment on column FGYJPJXT_LZJCDXXBLB.FL
  is '分类';
comment on column FGYJPJXT_LZJCDXXBLB.FTH
  is '法庭号';

prompt
prompt Creating table FGYJPJXT_NDKH
prompt ============================
prompt
create table FGYJPJXT_NDKH
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBH        NUMBER,
  RSXTRYBH    VARCHAR2(100),
  KHSJ        DATE,
  KHJG        VARCHAR2(200),
  KHSM        VARCHAR2(50),
  BHBH        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_NDKH
  is '年度考核';
comment on column FGYJPJXT_NDKH.FYBM
  is '法院编码';
comment on column FGYJPJXT_NDKH.BH
  is '编号';
comment on column FGYJPJXT_NDKH.RYBH
  is '人员编号';
comment on column FGYJPJXT_NDKH.RSXTRYBH
  is '人事系统人员编号';
comment on column FGYJPJXT_NDKH.KHSJ
  is '考核时间';
comment on column FGYJPJXT_NDKH.KHJG
  is '考核结果';
comment on column FGYJPJXT_NDKH.KHSM
  is '考核说明';
comment on column FGYJPJXT_NDKH.BHBH
  is '编号bh';

prompt
prompt Creating table FGYJPJXT_PJJGZX
prompt ==============================
prompt
create table FGYJPJXT_PJJGZX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SQRBH       NUMBER,
  SQR         VARCHAR2(40),
  ZXSJ        DATE,
  ZXNR        BLOB,
  FYRBS       NUMBER,
  FYR         VARCHAR2(40),
  FYJG        BLOB,
  FYSJ        DATE,
  SFFY        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_PJJGZX
  is '评价结果咨询';
comment on column FGYJPJXT_PJJGZX.FYBM
  is '法院编码';
comment on column FGYJPJXT_PJJGZX.BH
  is '编号';
comment on column FGYJPJXT_PJJGZX.SQRBH
  is '申请人编号';
comment on column FGYJPJXT_PJJGZX.SQR
  is '申请人';
comment on column FGYJPJXT_PJJGZX.ZXSJ
  is '咨询时间';
comment on column FGYJPJXT_PJJGZX.ZXNR
  is '咨询内容';
comment on column FGYJPJXT_PJJGZX.FYRBS
  is '复议人标识';
comment on column FGYJPJXT_PJJGZX.FYR
  is '复议人';
comment on column FGYJPJXT_PJJGZX.FYJG
  is '复议结果';
comment on column FGYJPJXT_PJJGZX.FYSJ
  is '复议时间';
comment on column FGYJPJXT_PJJGZX.SFFY
  is '是否复议';

prompt
prompt Creating table FGYJPJXT_PJJGZXMX
prompt ================================
prompt
create table FGYJPJXT_PJJGZXMX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  ZXXM        VARCHAR2(20),
  ZXSX        VARCHAR2(200),
  ZXLY        VARCHAR2(200),
  FYJG        VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_PJJGZXMX
  is '评价结果咨询明细';
comment on column FGYJPJXT_PJJGZXMX.FYBM
  is '法院编码';
comment on column FGYJPJXT_PJJGZXMX.BH
  is '编号';
comment on column FGYJPJXT_PJJGZXMX.XH
  is '序号';
comment on column FGYJPJXT_PJJGZXMX.ZXXM
  is '咨询项目';
comment on column FGYJPJXT_PJJGZXMX.ZXSX
  is '咨询事项';
comment on column FGYJPJXT_PJJGZXMX.ZXLY
  is '咨询理由';
comment on column FGYJPJXT_PJJGZXMX.FYJG
  is '复议结果';

prompt
prompt Creating table FGYJPJXT_PPJL
prompt ============================
prompt
create table FGYJPJXT_PPJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBH        NUMBER,
  RSXTRYBH    VARCHAR2(50),
  PPLB        VARCHAR2(50),
  PPSJ        DATE,
  BZ          VARCHAR2(100),
  FS          FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_PPJL
  is '批判记录';
comment on column FGYJPJXT_PPJL.FYBM
  is '法院编码';
comment on column FGYJPJXT_PPJL.BH
  is '编号';
comment on column FGYJPJXT_PPJL.RYBH
  is '人员编号';
comment on column FGYJPJXT_PPJL.RSXTRYBH
  is '人事系统人员编号';
comment on column FGYJPJXT_PPJL.PPLB
  is '批评类别';
comment on column FGYJPJXT_PPJL.PPSJ
  is '批评时间';
comment on column FGYJPJXT_PPJL.BZ
  is '备注';
comment on column FGYJPJXT_PPJL.FS
  is '分数';

prompt
prompt Creating table FGYJPJXT_PXXX
prompt ============================
prompt
create table FGYJPJXT_PXXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBH        NUMBER,
  RSXTRYBH    VARCHAR2(100),
  PXMC        VARCHAR2(100),
  PXNR        VARCHAR2(2000),
  KSSJ        VARCHAR2(50),
  JSSJ        VARCHAR2(50),
  KQ          VARCHAR2(50),
  KSJG        VARCHAR2(50),
  SFTG        NUMBER,
  PXDD        VARCHAR2(100),
  PXTS        FLOAT,
  SX          NUMBER,
  FJCL        VARCHAR2(50),
  BM          VARCHAR2(100),
  XM          VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_PXXX
  is '培训信息';
comment on column FGYJPJXT_PXXX.FYBM
  is '法院编码';
comment on column FGYJPJXT_PXXX.BH
  is '编号';
comment on column FGYJPJXT_PXXX.RYBH
  is '人员编号';
comment on column FGYJPJXT_PXXX.RSXTRYBH
  is '人事系统人员编号';
comment on column FGYJPJXT_PXXX.PXMC
  is '培训名称';
comment on column FGYJPJXT_PXXX.PXNR
  is '培训内容';
comment on column FGYJPJXT_PXXX.KSSJ
  is '开始时间';
comment on column FGYJPJXT_PXXX.JSSJ
  is '结束时间';
comment on column FGYJPJXT_PXXX.KQ
  is '考勤';
comment on column FGYJPJXT_PXXX.KSJG
  is '考试结果';
comment on column FGYJPJXT_PXXX.SFTG
  is '是否通过';
comment on column FGYJPJXT_PXXX.PXDD
  is '培训地点';
comment on column FGYJPJXT_PXXX.PXTS
  is '培训天数';
comment on column FGYJPJXT_PXXX.SX
  is '顺序';
comment on column FGYJPJXT_PXXX.FJCL
  is '附件材料';
comment on column FGYJPJXT_PXXX.BM
  is '部门';
comment on column FGYJPJXT_PXXX.XM
  is '姓名';

prompt
prompt Creating table FGYJPJXT_RYJBXXB
prompt ===============================
prompt
create table FGYJPJXT_RYJBXXB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  RYBH        NUMBER,
  RSXTBH      VARCHAR2(50),
  FYMC        VARCHAR2(100),
  XM          VARCHAR2(40),
  BM          VARCHAR2(100),
  XB          VARCHAR2(10),
  MZ          VARCHAR2(50),
  CSNY        DATE,
  ZZMM        VARCHAR2(50),
  RDSJ        DATE,
  CJGZSJ      DATE,
  XZZJ        VARCHAR2(20),
  CRZJSJ      DATE,
  XRZW        VARCHAR2(100),
  RXZWSJ      DATE,
  BZQK        VARCHAR2(20),
  SPZC        VARCHAR2(50),
  FGDJ        VARCHAR2(50),
  JG          VARCHAR2(100),
  CSD         VARCHAR2(100),
  ZGXL        VARCHAR2(20),
  BYXX        VARCHAR2(100),
  ZY          VARCHAR2(100),
  ZGXW        VARCHAR2(20),
  PXQK        BLOB,
  JTCY        BLOB,
  GZJL        BLOB,
  GBRMQK      BLOB,
  GWXZ        VARCHAR2(50),
  GZGW        VARCHAR2(100),
  NDKH        BLOB,
  JSZW        VARCHAR2(50),
  SPZW        VARCHAR2(50),
  RSPZWSJ     DATE,
  XZZW        VARCHAR2(100),
  RXZZWSJ     DATE,
  NRZW        VARCHAR2(50),
  NMZW        VARCHAR2(50),
  RXZCSJ      DATE,
  QRZXL       VARCHAR2(50),
  QRZBYYX     VARCHAR2(100),
  QRZXW       VARCHAR2(50),
  QRZZY       VARCHAR2(50),
  ZZXL        VARCHAR2(50),
  ZZYX        VARCHAR2(50),
  ZZXW        VARCHAR2(50),
  ZZZY        VARCHAR2(50),
  ZGXLLX      VARCHAR2(50),
  ZGXLXJZY    VARCHAR2(100),
  FGDJQSSJ    DATE,
  FGDJPZWH    VARCHAR2(50),
  FGDJPZJG    VARCHAR2(50),
  SFZH        VARCHAR2(50),
  GBFL        VARCHAR2(50),
  SFYX        NUMBER,
  RSXTBM      VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_RYJBXXB
  is '人员基本信息表';
comment on column FGYJPJXT_RYJBXXB.FYBM
  is '法院编码';
comment on column FGYJPJXT_RYJBXXB.RYBH
  is '人员编号';
comment on column FGYJPJXT_RYJBXXB.RSXTBH
  is '人事系统编号';
comment on column FGYJPJXT_RYJBXXB.FYMC
  is '法院名称';
comment on column FGYJPJXT_RYJBXXB.XM
  is '姓名';
comment on column FGYJPJXT_RYJBXXB.BM
  is '部门';
comment on column FGYJPJXT_RYJBXXB.XB
  is '性别';
comment on column FGYJPJXT_RYJBXXB.MZ
  is '民族';
comment on column FGYJPJXT_RYJBXXB.CSNY
  is '出生年月';
comment on column FGYJPJXT_RYJBXXB.ZZMM
  is '政治面貌';
comment on column FGYJPJXT_RYJBXXB.RDSJ
  is '入党时间';
comment on column FGYJPJXT_RYJBXXB.CJGZSJ
  is '参加工作时间';
comment on column FGYJPJXT_RYJBXXB.XZZJ
  is '行政职级';
comment on column FGYJPJXT_RYJBXXB.CRZJSJ
  is '出任职级时间';
comment on column FGYJPJXT_RYJBXXB.XRZW
  is '现任职务';
comment on column FGYJPJXT_RYJBXXB.RXZWSJ
  is '任现职务时间';
comment on column FGYJPJXT_RYJBXXB.BZQK
  is '编制情况';
comment on column FGYJPJXT_RYJBXXB.SPZC
  is '审判职称';
comment on column FGYJPJXT_RYJBXXB.FGDJ
  is '法官等级';
comment on column FGYJPJXT_RYJBXXB.JG
  is '籍贯';
comment on column FGYJPJXT_RYJBXXB.CSD
  is '出生地';
comment on column FGYJPJXT_RYJBXXB.ZGXL
  is '最高学历';
comment on column FGYJPJXT_RYJBXXB.BYXX
  is '毕业学校';
comment on column FGYJPJXT_RYJBXXB.ZY
  is '专业';
comment on column FGYJPJXT_RYJBXXB.ZGXW
  is '最高学位';
comment on column FGYJPJXT_RYJBXXB.PXQK
  is '培训情况';
comment on column FGYJPJXT_RYJBXXB.JTCY
  is '家庭成员';
comment on column FGYJPJXT_RYJBXXB.GZJL
  is '工作简历';
comment on column FGYJPJXT_RYJBXXB.GBRMQK
  is '干部任免情况';
comment on column FGYJPJXT_RYJBXXB.GWXZ
  is '岗位性质';
comment on column FGYJPJXT_RYJBXXB.GZGW
  is '工作岗位';
comment on column FGYJPJXT_RYJBXXB.NDKH
  is '年度考核';
comment on column FGYJPJXT_RYJBXXB.JSZW
  is '技术职务';
comment on column FGYJPJXT_RYJBXXB.SPZW
  is '审判职务';
comment on column FGYJPJXT_RYJBXXB.RSPZWSJ
  is '任审判职务时间';
comment on column FGYJPJXT_RYJBXXB.XZZW
  is '行政职务';
comment on column FGYJPJXT_RYJBXXB.RXZZWSJ
  is '任行政职务时间';
comment on column FGYJPJXT_RYJBXXB.NRZW
  is '拟任职务';
comment on column FGYJPJXT_RYJBXXB.NMZW
  is '拟免职务';
comment on column FGYJPJXT_RYJBXXB.RXZCSJ
  is '任现职称时间';
comment on column FGYJPJXT_RYJBXXB.QRZXL
  is '全日制学历';
comment on column FGYJPJXT_RYJBXXB.QRZBYYX
  is '全日制毕业院校';
comment on column FGYJPJXT_RYJBXXB.QRZXW
  is '全日制学位';
comment on column FGYJPJXT_RYJBXXB.QRZZY
  is '全日制专业';
comment on column FGYJPJXT_RYJBXXB.ZZXL
  is '在职学历';
comment on column FGYJPJXT_RYJBXXB.ZZYX
  is '在职院校';
comment on column FGYJPJXT_RYJBXXB.ZZXW
  is '在职学位';
comment on column FGYJPJXT_RYJBXXB.ZZZY
  is '在职专业';
comment on column FGYJPJXT_RYJBXXB.ZGXLLX
  is '最高学历类型';
comment on column FGYJPJXT_RYJBXXB.ZGXLXJZY
  is '最高学历系及专业';
comment on column FGYJPJXT_RYJBXXB.FGDJQSSJ
  is '法官等级起算时间';
comment on column FGYJPJXT_RYJBXXB.FGDJPZWH
  is '法官等级批准文号';
comment on column FGYJPJXT_RYJBXXB.FGDJPZJG
  is '法官等级批准机关';
comment on column FGYJPJXT_RYJBXXB.SFZH
  is '身份证号';
comment on column FGYJPJXT_RYJBXXB.GBFL
  is '干部分类';
comment on column FGYJPJXT_RYJBXXB.SFYX
  is '是否有效';
comment on column FGYJPJXT_RYJBXXB.RSXTBM
  is '人事系统部门';

prompt
prompt Creating table FGYJPJXT_SJYBLPF
prompt ===============================
prompt
create table FGYJPJXT_SJYBLPF
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  PFBH        NUMBER,
  RYBH        NUMBER,
  XM          VARCHAR2(40),
  BM          VARCHAR2(50),
  PFQJ        VARCHAR2(50),
  DF          FLOAT,
  BZ          VARCHAR2(100),
  DJRBH       NUMBER,
  DJR         VARCHAR2(40),
  DJSJ        DATE,
  ND          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_SJYBLPF
  is '书记员笔录评分';
comment on column FGYJPJXT_SJYBLPF.FYBM
  is '法院编码';
comment on column FGYJPJXT_SJYBLPF.PFBH
  is '评分编号';
comment on column FGYJPJXT_SJYBLPF.RYBH
  is '人员编号';
comment on column FGYJPJXT_SJYBLPF.XM
  is '姓名';
comment on column FGYJPJXT_SJYBLPF.BM
  is '部门';
comment on column FGYJPJXT_SJYBLPF.PFQJ
  is '评分区间';
comment on column FGYJPJXT_SJYBLPF.DF
  is '得分';
comment on column FGYJPJXT_SJYBLPF.BZ
  is '备注';
comment on column FGYJPJXT_SJYBLPF.DJRBH
  is '登记人编号';
comment on column FGYJPJXT_SJYBLPF.DJR
  is '登记人';
comment on column FGYJPJXT_SJYBLPF.DJSJ
  is '登记时间';
comment on column FGYJPJXT_SJYBLPF.ND
  is '年度';

prompt
prompt Creating table FGYJPJXT_SJYBLPFBZ
prompt =================================
prompt
create table FGYJPJXT_SJYBLPFBZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  LX          VARCHAR2(500),
  PFBZ        VARCHAR2(50),
  SCBZ        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_SJYBLPFBZ
  is '书记员笔录评分标准';
comment on column FGYJPJXT_SJYBLPFBZ.FYBM
  is '法院编码';
comment on column FGYJPJXT_SJYBLPFBZ.XH
  is '序号';
comment on column FGYJPJXT_SJYBLPFBZ.LX
  is '类型';
comment on column FGYJPJXT_SJYBLPFBZ.PFBZ
  is '评分标准';
comment on column FGYJPJXT_SJYBLPFBZ.SCBZ
  is '删除标志';

prompt
prompt Creating table FGYJPJXT_SJYBLPFMX
prompt =================================
prompt
create table FGYJPJXT_SJYBLPFMX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  PFBH        NUMBER,
  XH          NUMBER,
  LX          VARCHAR2(500),
  BZ          VARCHAR2(50),
  DF          FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_SJYBLPFMX
  is '书记员笔录评分明细';
comment on column FGYJPJXT_SJYBLPFMX.FYBM
  is '法院编码';
comment on column FGYJPJXT_SJYBLPFMX.BH
  is '编号';
comment on column FGYJPJXT_SJYBLPFMX.PFBH
  is '评分编号';
comment on column FGYJPJXT_SJYBLPFMX.XH
  is '序号';
comment on column FGYJPJXT_SJYBLPFMX.LX
  is '类型';
comment on column FGYJPJXT_SJYBLPFMX.BZ
  is '标准';
comment on column FGYJPJXT_SJYBLPFMX.DF
  is '得分';

prompt
prompt Creating table FGYJPJXT_SJYJNPF
prompt ===============================
prompt
create table FGYJPJXT_SJYJNPF
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBH        NUMBER,
  XM          VARCHAR2(40),
  BM          VARCHAR2(50),
  ND          NUMBER,
  PDDJ        VARCHAR2(20),
  FS          FLOAT,
  JSMC        VARCHAR2(20),
  JF          FLOAT,
  ZDF         FLOAT,
  DJRBH       NUMBER,
  DJR         VARCHAR2(40),
  DJSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_SJYJNPF
  is '书记员技能评分';
comment on column FGYJPJXT_SJYJNPF.FYBM
  is '法院编码';
comment on column FGYJPJXT_SJYJNPF.BH
  is '编号';
comment on column FGYJPJXT_SJYJNPF.RYBH
  is '人员编号';
comment on column FGYJPJXT_SJYJNPF.XM
  is '姓名';
comment on column FGYJPJXT_SJYJNPF.BM
  is '部门';
comment on column FGYJPJXT_SJYJNPF.ND
  is '年度';
comment on column FGYJPJXT_SJYJNPF.PDDJ
  is '评定等级';
comment on column FGYJPJXT_SJYJNPF.FS
  is '分数';
comment on column FGYJPJXT_SJYJNPF.JSMC
  is '技术名次';
comment on column FGYJPJXT_SJYJNPF.JF
  is '加分';
comment on column FGYJPJXT_SJYJNPF.ZDF
  is '总得分';
comment on column FGYJPJXT_SJYJNPF.DJRBH
  is '登记人编号';
comment on column FGYJPJXT_SJYJNPF.DJR
  is '登记人';
comment on column FGYJPJXT_SJYJNPF.DJSJ
  is '登记时间';

prompt
prompt Creating table FGYJPJXT_SJYZHCPMX
prompt =================================
prompt
create table FGYJPJXT_SJYZHCPMX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  BCPRBH      NUMBER,
  BCPR        VARCHAR2(40),
  CPRBH       NUMBER,
  CPR         VARCHAR2(40),
  CPJG        FLOAT,
  CPRQ        DATE,
  TJRQ        DATE,
  ZSDF        FLOAT,
  SFTLD       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_SJYZHCPMX
  is '书记员综合测评明细';
comment on column FGYJPJXT_SJYZHCPMX.FYBM
  is '法院编码';
comment on column FGYJPJXT_SJYZHCPMX.BH
  is '编号';
comment on column FGYJPJXT_SJYZHCPMX.BCPRBH
  is '被测评人编号';
comment on column FGYJPJXT_SJYZHCPMX.BCPR
  is '被测评人';
comment on column FGYJPJXT_SJYZHCPMX.CPRBH
  is '测评人编号';
comment on column FGYJPJXT_SJYZHCPMX.CPR
  is '测评人';
comment on column FGYJPJXT_SJYZHCPMX.CPJG
  is '测评结果';
comment on column FGYJPJXT_SJYZHCPMX.CPRQ
  is '测评日期';
comment on column FGYJPJXT_SJYZHCPMX.TJRQ
  is '提交日期';
comment on column FGYJPJXT_SJYZHCPMX.ZSDF
  is '折算得分';
comment on column FGYJPJXT_SJYZHCPMX.SFTLD
  is '是否庭领导';

prompt
prompt Creating table FGYJPJXT_SPZFJC
prompt ==============================
prompt
create table FGYJPJXT_SPZFJC
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBH        NUMBER,
  RSXTRYBH    VARCHAR2(50),
  JCXM        VARCHAR2(50),
  JCSJ        DATE,
  BZ          VARCHAR2(100),
  FS          FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_SPZFJC
  is '审判作风检查';
comment on column FGYJPJXT_SPZFJC.FYBM
  is '法院编码';
comment on column FGYJPJXT_SPZFJC.BH
  is '编号';
comment on column FGYJPJXT_SPZFJC.RYBH
  is '人员编号';
comment on column FGYJPJXT_SPZFJC.RSXTRYBH
  is '人事系统人员编号';
comment on column FGYJPJXT_SPZFJC.JCXM
  is '检查项目';
comment on column FGYJPJXT_SPZFJC.JCSJ
  is '检查时间';
comment on column FGYJPJXT_SPZFJC.BZ
  is '备注';
comment on column FGYJPJXT_SPZFJC.FS
  is '分数';

prompt
prompt Creating table FGYJPJXT_TSWSJLFS
prompt ================================
prompt
create table FGYJPJXT_TSWSJLFS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  LB          VARCHAR2(50),
  BM          VARCHAR2(100),
  XM          VARCHAR2(50),
  SPZW        VARCHAR2(50),
  XZZW        VARCHAR2(50),
  JCF         FLOAT,
  ZHDF        FLOAT,
  ND          NUMBER,
  QJ          VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_TSWSJLFS
  is '庭审、文书记录分数';
comment on column FGYJPJXT_TSWSJLFS.FYBM
  is '法院编码';
comment on column FGYJPJXT_TSWSJLFS.BH
  is '编号';
comment on column FGYJPJXT_TSWSJLFS.LB
  is '类别';
comment on column FGYJPJXT_TSWSJLFS.BM
  is '部门';
comment on column FGYJPJXT_TSWSJLFS.XM
  is '项目';
comment on column FGYJPJXT_TSWSJLFS.SPZW
  is '审判职务';
comment on column FGYJPJXT_TSWSJLFS.XZZW
  is '行政职务';
comment on column FGYJPJXT_TSWSJLFS.JCF
  is '基础分';
comment on column FGYJPJXT_TSWSJLFS.ZHDF
  is '最后得分';
comment on column FGYJPJXT_TSWSJLFS.ND
  is '年度';
comment on column FGYJPJXT_TSWSJLFS.QJ
  is '区间';

prompt
prompt Creating table FGYJPJXT_WMXXDJ
prompt ==============================
prompt
create table FGYJPJXT_WMXXDJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBH        NUMBER,
  CYXZ        VARCHAR2(30),
  BM          VARCHAR2(100),
  ZZBH        NUMBER,
  ZZ          VARCHAR2(40),
  BT          VARCHAR2(250),
  KWMC        VARCHAR2(100),
  CYFS        VARCHAR2(20),
  CYJB        VARCHAR2(30),
  FS          FLOAT,
  DJRBH       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  GWBH        NUMBER,
  CYRQ        DATE,
  FJCL        VARCHAR2(250),
  LDPS        NUMBER,
  GRZPM       NUMBER,
  GRFXPM      NUMBER,
  GRBMPM      NUMBER,
  GRBMFXPM    NUMBER,
  BMZPM       NUMBER,
  FXPM        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_WMXXDJ
  is '文秘信息登记';
comment on column FGYJPJXT_WMXXDJ.FYBM
  is '法院编码';
comment on column FGYJPJXT_WMXXDJ.BH
  is '编号';
comment on column FGYJPJXT_WMXXDJ.RYBH
  is '人员编号';
comment on column FGYJPJXT_WMXXDJ.CYXZ
  is '采用性质';
comment on column FGYJPJXT_WMXXDJ.BM
  is '部门';
comment on column FGYJPJXT_WMXXDJ.ZZBH
  is '作者编号';
comment on column FGYJPJXT_WMXXDJ.ZZ
  is '作者';
comment on column FGYJPJXT_WMXXDJ.BT
  is '标题';
comment on column FGYJPJXT_WMXXDJ.KWMC
  is '刊物名称';
comment on column FGYJPJXT_WMXXDJ.CYFS
  is '采用方式';
comment on column FGYJPJXT_WMXXDJ.CYJB
  is '采用级别';
comment on column FGYJPJXT_WMXXDJ.FS
  is '分数';
comment on column FGYJPJXT_WMXXDJ.DJRBH
  is '登记人编号';
comment on column FGYJPJXT_WMXXDJ.DJR
  is '登记人';
comment on column FGYJPJXT_WMXXDJ.DJRQ
  is '登记日期';
comment on column FGYJPJXT_WMXXDJ.GWBH
  is '公文编号';
comment on column FGYJPJXT_WMXXDJ.CYRQ
  is '采用日期';
comment on column FGYJPJXT_WMXXDJ.FJCL
  is '附件材料';
comment on column FGYJPJXT_WMXXDJ.LDPS
  is '领导批示';
comment on column FGYJPJXT_WMXXDJ.GRZPM
  is '个人总排名';
comment on column FGYJPJXT_WMXXDJ.GRFXPM
  is '个人分项排名';
comment on column FGYJPJXT_WMXXDJ.GRBMPM
  is '个人部门排名';
comment on column FGYJPJXT_WMXXDJ.GRBMFXPM
  is '个人部门分项排名';
comment on column FGYJPJXT_WMXXDJ.BMZPM
  is '部门总排名';
comment on column FGYJPJXT_WMXXDJ.FXPM
  is '分项排名';

prompt
prompt Creating table FGYJPJXT_WSDYDJ
prompt ==============================
prompt
create table FGYJPJXT_WSDYDJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  DYRQ        DATE,
  DYRBH       NUMBER,
  DYR         VARCHAR2(40),
  BM          VARCHAR2(100),
  DYSL        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_WSDYDJ
  is '网上答疑登记';
comment on column FGYJPJXT_WSDYDJ.FYBM
  is '法院编码';
comment on column FGYJPJXT_WSDYDJ.BH
  is '编号';
comment on column FGYJPJXT_WSDYDJ.DYRQ
  is '答疑日期';
comment on column FGYJPJXT_WSDYDJ.DYRBH
  is '答疑人编号';
comment on column FGYJPJXT_WSDYDJ.DYR
  is '答疑人';
comment on column FGYJPJXT_WSDYDJ.BM
  is '部门';
comment on column FGYJPJXT_WSDYDJ.DYSL
  is '答疑数量';

prompt
prompt Creating table FGYJPJXT_WSYYDJ
prompt ==============================
prompt
create table FGYJPJXT_WSYYDJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  YYLARQ      DATE,
  YYLARBH     NUMBER,
  YYLAR       VARCHAR2(40),
  YYLARBM     VARCHAR2(100),
  YYLASL      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_WSYYDJ
  is '网上预约登记';
comment on column FGYJPJXT_WSYYDJ.FYBM
  is '法院编码';
comment on column FGYJPJXT_WSYYDJ.BH
  is '编号';
comment on column FGYJPJXT_WSYYDJ.YYLARQ
  is '预约立案日期';
comment on column FGYJPJXT_WSYYDJ.YYLARBH
  is '预约立案人编号';
comment on column FGYJPJXT_WSYYDJ.YYLAR
  is '预约立案人';
comment on column FGYJPJXT_WSYYDJ.YYLARBM
  is '预约立案人部门';
comment on column FGYJPJXT_WSYYDJ.YYLASL
  is '预约立案数量';

prompt
prompt Creating table FGYJPJXT_YXTSWS
prompt ==============================
prompt
create table FGYJPJXT_YXTSWS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  LB          VARCHAR2(50),
  BM          VARCHAR2(100),
  RYBH        NUMBER,
  XM          VARCHAR2(40),
  SPZW        VARCHAR2(50),
  XZZW        VARCHAR2(50),
  AH          VARCHAR2(100),
  PCND        NUMBER,
  PCQJ        VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_YXTSWS
  is '优秀庭审、文书';
comment on column FGYJPJXT_YXTSWS.FYBM
  is '法院编码';
comment on column FGYJPJXT_YXTSWS.BH
  is '编号';
comment on column FGYJPJXT_YXTSWS.LB
  is '类别';
comment on column FGYJPJXT_YXTSWS.BM
  is '部门';
comment on column FGYJPJXT_YXTSWS.RYBH
  is '人员编号';
comment on column FGYJPJXT_YXTSWS.XM
  is '姓名';
comment on column FGYJPJXT_YXTSWS.SPZW
  is '审判职务';
comment on column FGYJPJXT_YXTSWS.XZZW
  is '行政职务';
comment on column FGYJPJXT_YXTSWS.AH
  is '案号';
comment on column FGYJPJXT_YXTSWS.PCND
  is '评测年度';
comment on column FGYJPJXT_YXTSWS.PCQJ
  is '评测区间';

prompt
prompt Creating table FGYJPJXT_ZHCPMX
prompt ==============================
prompt
create table FGYJPJXT_ZHCPMX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  BCPRBH      NUMBER,
  BCPR        VARCHAR2(40),
  CPRBH       NUMBER,
  CPR         VARCHAR2(40),
  CPJG        VARCHAR2(4),
  CPRQ        DATE,
  TJRQ        DATE,
  ZZPZDF      FLOAT,
  DJYSDF      FLOAT,
  SXPZDF      FLOAT,
  TJXZDF      FLOAT,
  ZCGBDDF     FLOAT,
  ZCGBNDF     FLOAT,
  ZCGBQDF     FLOAT,
  RYBH        VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_ZHCPMX
  is '综合测评明细';
comment on column FGYJPJXT_ZHCPMX.FYBM
  is '法院编码';
comment on column FGYJPJXT_ZHCPMX.BH
  is '编号';
comment on column FGYJPJXT_ZHCPMX.BCPRBH
  is '被测评人编号';
comment on column FGYJPJXT_ZHCPMX.BCPR
  is '被测评人';
comment on column FGYJPJXT_ZHCPMX.CPRBH
  is '测评人编号';
comment on column FGYJPJXT_ZHCPMX.CPR
  is '测评人';
comment on column FGYJPJXT_ZHCPMX.CPJG
  is '测评结果';
comment on column FGYJPJXT_ZHCPMX.CPRQ
  is '测评日期';
comment on column FGYJPJXT_ZHCPMX.TJRQ
  is '提交日期';
comment on column FGYJPJXT_ZHCPMX.ZZPZDF
  is '政治品质得分';
comment on column FGYJPJXT_ZHCPMX.DJYSDF
  is '大局意识得分';
comment on column FGYJPJXT_ZHCPMX.SXPZDF
  is '思想品质得分';
comment on column FGYJPJXT_ZHCPMX.TJXZDF
  is '团结协作得分';
comment on column FGYJPJXT_ZHCPMX.ZCGBDDF
  is '中层干部德得分';
comment on column FGYJPJXT_ZHCPMX.ZCGBNDF
  is '中层干部能得分';
comment on column FGYJPJXT_ZHCPMX.ZCGBQDF
  is '中层干部勤得分';
comment on column FGYJPJXT_ZHCPMX.RYBH
  is '人员变化';

prompt
prompt Creating table FGYJPJXT_ZHCPZB
prompt ==============================
prompt
create table FGYJPJXT_ZHCPZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  BM          VARCHAR2(100),
  BCPRBH      NUMBER,
  BCPR        BLOB,
  CPND        NUMBER,
  CPQJ        VARCHAR2(20),
  CPRQ        BLOB,
  CPNR        BLOB,
  ZSFS        VARCHAR2(50),
  CPFS        VARCHAR2(50),
  CPRY        BLOB,
  CPJG        BLOB,
  CPDF        FLOAT,
  XFRQ        DATE,
  CPJSRQ      DATE,
  BZ          VARCHAR2(100),
  DJRBH       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  APRQ        DATE,
  SFZCGB      NUMBER,
  ZZTDDF      FLOAT,
  DJYSDF      FLOAT,
  SXPZDF      FLOAT,
  TJXZDF      FLOAT,
  ZCGBDDF     FLOAT,
  ZCGBNDF     FLOAT,
  ZCGBQDF     FLOAT,
  DNQBLBZ     NUMBER,
  CPRYBH      BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_ZHCPZB
  is '综合测评主表';
comment on column FGYJPJXT_ZHCPZB.FYBM
  is '法院编码';
comment on column FGYJPJXT_ZHCPZB.BH
  is '编号';
comment on column FGYJPJXT_ZHCPZB.BM
  is '部门';
comment on column FGYJPJXT_ZHCPZB.BCPRBH
  is '被测评人编号';
comment on column FGYJPJXT_ZHCPZB.BCPR
  is '被测评人';
comment on column FGYJPJXT_ZHCPZB.CPND
  is '测评年度';
comment on column FGYJPJXT_ZHCPZB.CPQJ
  is '测评区间';
comment on column FGYJPJXT_ZHCPZB.CPRQ
  is '测评日期';
comment on column FGYJPJXT_ZHCPZB.CPNR
  is '测评内容';
comment on column FGYJPJXT_ZHCPZB.ZSFS
  is '折算方式';
comment on column FGYJPJXT_ZHCPZB.CPFS
  is '测评方式';
comment on column FGYJPJXT_ZHCPZB.CPRY
  is '测评人员';
comment on column FGYJPJXT_ZHCPZB.CPJG
  is '测评结果';
comment on column FGYJPJXT_ZHCPZB.CPDF
  is '测评得分';
comment on column FGYJPJXT_ZHCPZB.XFRQ
  is '下发日期';
comment on column FGYJPJXT_ZHCPZB.CPJSRQ
  is '测评结束日期';
comment on column FGYJPJXT_ZHCPZB.BZ
  is '备注';
comment on column FGYJPJXT_ZHCPZB.DJRBH
  is '登记人编号';
comment on column FGYJPJXT_ZHCPZB.DJR
  is '登记人';
comment on column FGYJPJXT_ZHCPZB.DJRQ
  is '登记日期';
comment on column FGYJPJXT_ZHCPZB.APRQ
  is '安排日期';
comment on column FGYJPJXT_ZHCPZB.SFZCGB
  is '是否中层干部';
comment on column FGYJPJXT_ZHCPZB.ZZTDDF
  is '政治态度得分';
comment on column FGYJPJXT_ZHCPZB.DJYSDF
  is '大局意识得分';
comment on column FGYJPJXT_ZHCPZB.SXPZDF
  is '思想品质得分';
comment on column FGYJPJXT_ZHCPZB.TJXZDF
  is '团结协作得分';
comment on column FGYJPJXT_ZHCPZB.ZCGBDDF
  is '中层干部德得分';
comment on column FGYJPJXT_ZHCPZB.ZCGBNDF
  is '中层干部能得分';
comment on column FGYJPJXT_ZHCPZB.ZCGBQDF
  is '中层干部勤得分';
comment on column FGYJPJXT_ZHCPZB.DNQBLBZ
  is '德能勤补录标志';
comment on column FGYJPJXT_ZHCPZB.CPRYBH
  is '测评人员编号';

prompt
prompt Creating table FGYJPJXT_ZXJBANLSJJL
prompt ===================================
prompt
create table FGYJPJXT_ZXJBANLSJJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  LB          VARCHAR2(100),
  JB          VARCHAR2(100),
  BM          VARCHAR2(100),
  RYBH        NUMBER,
  XM          VARCHAR2(40),
  RQ          DATE,
  FS          FLOAT,
  BZ          VARCHAR2(200),
  DJSJ        DATE,
  DJRBH       NUMBER,
  DJR         VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FGYJPJXT_ZXJBANLSJJL
  is '执行局办案能力数据记录';
comment on column FGYJPJXT_ZXJBANLSJJL.FYBM
  is '法院编码';
comment on column FGYJPJXT_ZXJBANLSJJL.BH
  is '编号';
comment on column FGYJPJXT_ZXJBANLSJJL.LB
  is '类别';
comment on column FGYJPJXT_ZXJBANLSJJL.JB
  is '级别';
comment on column FGYJPJXT_ZXJBANLSJJL.BM
  is '部门';
comment on column FGYJPJXT_ZXJBANLSJJL.RYBH
  is '人员编号';
comment on column FGYJPJXT_ZXJBANLSJJL.XM
  is '姓名';
comment on column FGYJPJXT_ZXJBANLSJJL.RQ
  is '日期';
comment on column FGYJPJXT_ZXJBANLSJJL.FS
  is '分数';
comment on column FGYJPJXT_ZXJBANLSJJL.BZ
  is '备注';
comment on column FGYJPJXT_ZXJBANLSJJL.DJSJ
  is '登记时间';
comment on column FGYJPJXT_ZXJBANLSJJL.DJRBH
  is '登记人编号';
comment on column FGYJPJXT_ZXJBANLSJJL.DJR
  is '登记人';

prompt
prompt Creating table GWXT_GWLZJL
prompt ==========================
prompt
create table GWXT_GWLZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  GWBS        NUMBER,
  LZMC        VARCHAR2(100),
  FSRBS       NUMBER,
  FSR         VARCHAR2(40),
  FSSJ        DATE,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40),
  JSSJ        DATE,
  PSNR        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table GWXT_GWLZJL
  is '公文流转记录';
comment on column GWXT_GWLZJL.FYBM
  is '法院编码';
comment on column GWXT_GWLZJL.XH
  is '序号';
comment on column GWXT_GWLZJL.GWBS
  is '公文标识';
comment on column GWXT_GWLZJL.LZMC
  is '流转名称';
comment on column GWXT_GWLZJL.FSRBS
  is '发送人标识';
comment on column GWXT_GWLZJL.FSR
  is '发送人';
comment on column GWXT_GWLZJL.FSSJ
  is '发送时间';
comment on column GWXT_GWLZJL.JSRBS
  is '接收人标识';
comment on column GWXT_GWLZJL.JSR
  is '接收人';
comment on column GWXT_GWLZJL.JSSJ
  is '接收时间';
comment on column GWXT_GWLZJL.PSNR
  is '批示内容';

prompt
prompt Creating table GWXT_GWST
prompt ========================
prompt
create table GWXT_GWST
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  GWBS        NUMBER,
  XH          NUMBER,
  STLX        VARCHAR2(20),
  WJMC        VARCHAR2(255),
  STWJM       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table GWXT_GWST
  is '公文实体';
comment on column GWXT_GWST.FYBM
  is '法院编码';
comment on column GWXT_GWST.GWBS
  is '公文标识';
comment on column GWXT_GWST.XH
  is '序号';
comment on column GWXT_GWST.STLX
  is '实体类型';
comment on column GWXT_GWST.WJMC
  is '文件名称';
comment on column GWXT_GWST.STWJM
  is '实体文件名';

prompt
prompt Creating table GWXT_GWZTXX
prompt ==========================
prompt
create table GWXT_GWZTXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  GWBS        NUMBER,
  GWDL        VARCHAR2(20),
  GWXL        VARCHAR2(20),
  BT          VARCHAR2(250),
  WH          VARCHAR2(80),
  BHNF        NUMBER,
  FYJC        VARCHAR2(20),
  ZH          VARCHAR2(20),
  HS          NUMBER,
  NGRBS       NUMBER,
  NGR         VARCHAR2(40),
  NGRQ        DATE,
  BHRQ        DATE,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  CBBM        VARCHAR2(100),
  LJBS        NUMBER,
  LJRQ        DATE,
  TQGDBS      NUMBER,
  TQGDRQ      DATE,
  GDBS        NUMBER,
  GDRQ        DATE,
  DJSY        VARCHAR2(250),
  FSJG        BLOB,
  SJLWJSRQ    DATE,
  SFFBDNWWZ   NUMBER,
  BJAPRBS     NUMBER,
  BJAPR       VARCHAR2(40),
  BJRBS       NUMBER,
  BJR         VARCHAR2(40),
  SQBJRQ      DATE,
  BJRBJSJ     DATE,
  PZBS        NUMBER,
  SQXXBSSJ    DATE,
  XXBSSJ      DATE,
  XXBSRBS     NUMBER,
  XXBSR       VARCHAR2(40),
  GLGWID      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table GWXT_GWZTXX
  is '公文主体信息';
comment on column GWXT_GWZTXX.FYBM
  is '法院编码';
comment on column GWXT_GWZTXX.GWBS
  is '公文标识';
comment on column GWXT_GWZTXX.GWDL
  is '公文大类';
comment on column GWXT_GWZTXX.GWXL
  is '公文小类';
comment on column GWXT_GWZTXX.BT
  is '标题';
comment on column GWXT_GWZTXX.WH
  is '文号';
comment on column GWXT_GWZTXX.BHNF
  is '编号年份';
comment on column GWXT_GWZTXX.FYJC
  is '法院简称';
comment on column GWXT_GWZTXX.ZH
  is '字号';
comment on column GWXT_GWZTXX.HS
  is '号数';
comment on column GWXT_GWZTXX.NGRBS
  is '拟稿人标识';
comment on column GWXT_GWZTXX.NGR
  is '拟稿人';
comment on column GWXT_GWZTXX.NGRQ
  is '拟稿日期';
comment on column GWXT_GWZTXX.BHRQ
  is '编号日期';
comment on column GWXT_GWZTXX.CBRBS
  is '承办人标识';
comment on column GWXT_GWZTXX.CBR
  is '承办人';
comment on column GWXT_GWZTXX.CBBM
  is '承办部门';
comment on column GWXT_GWZTXX.LJBS
  is '了结标识';
comment on column GWXT_GWZTXX.LJRQ
  is '了结日期';
comment on column GWXT_GWZTXX.TQGDBS
  is '提请归档标识';
comment on column GWXT_GWZTXX.TQGDRQ
  is '提请归档日期';
comment on column GWXT_GWZTXX.GDBS
  is '归档标识';
comment on column GWXT_GWZTXX.GDRQ
  is '归档日期';
comment on column GWXT_GWZTXX.DJSY
  is '登记事由';
comment on column GWXT_GWZTXX.FSJG
  is '发送机关';
comment on column GWXT_GWZTXX.SJLWJSRQ
  is '上级来文接收日期';
comment on column GWXT_GWZTXX.SFFBDNWWZ
  is '是否发布到内网网站';
comment on column GWXT_GWZTXX.BJAPRBS
  is '编辑安排人标识';
comment on column GWXT_GWZTXX.BJAPR
  is '编辑安排人';
comment on column GWXT_GWZTXX.BJRBS
  is '编辑人标识';
comment on column GWXT_GWZTXX.BJR
  is '编辑人';
comment on column GWXT_GWZTXX.SQBJRQ
  is '申请编辑日期';
comment on column GWXT_GWZTXX.BJRBJSJ
  is '编辑人编辑时间';
comment on column GWXT_GWZTXX.PZBS
  is '批注标识';
comment on column GWXT_GWZTXX.SQXXBSSJ
  is '申请信息报送时间';
comment on column GWXT_GWZTXX.XXBSSJ
  is '信息报送时间';
comment on column GWXT_GWZTXX.XXBSRBS
  is '信息报送人标识';
comment on column GWXT_GWZTXX.XXBSR
  is '信息报送人';
comment on column GWXT_GWZTXX.GLGWID
  is '关联公文ID';

prompt
prompt Creating table HDJLXT_ZXHFXX
prompt ============================
prompt
create table HDJLXT_ZXHFXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  HFBH        NUMBER,
  ZXBS        NUMBER,
  HFSJ        DATE,
  HFNR        BLOB,
  HFRBS       NUMBER,
  HFR         VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table HDJLXT_ZXHFXX
  is '咨询回复信息';
comment on column HDJLXT_ZXHFXX.FYBM
  is '法院编码';
comment on column HDJLXT_ZXHFXX.HFBH
  is '回复编号';
comment on column HDJLXT_ZXHFXX.ZXBS
  is '咨询标识';
comment on column HDJLXT_ZXHFXX.HFSJ
  is '回复时间';
comment on column HDJLXT_ZXHFXX.HFNR
  is '回复内容';
comment on column HDJLXT_ZXHFXX.HFRBS
  is '回复人标识';
comment on column HDJLXT_ZXHFXX.HFR
  is '回复人';

prompt
prompt Creating table HDJLXT_ZXXX
prompt ==========================
prompt
create table HDJLXT_ZXXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  ZXBS        NUMBER,
  ZXRBS       NUMBER,
  ZXR         VARCHAR2(40),
  ZXSJ        DATE,
  BT          VARCHAR2(250),
  WTLB        VARCHAR2(50),
  WTNR        BLOB,
  LXDH        VARCHAR2(20),
  JJYF        NUMBER,
  FSSJ        DATE,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40),
  SFJS        NUMBER,
  JSSJ        DATE,
  BJSYY       BLOB,
  SFFB        NUMBER,
  FBSJ        DATE,
  SFSC        NUMBER,
  YFSJSR      NUMBER,
  SFFF        NUMBER,
  XZFRY       VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table HDJLXT_ZXXX
  is '咨询信息';
comment on column HDJLXT_ZXXX.FYBM
  is '法院编码';
comment on column HDJLXT_ZXXX.ZXBS
  is '咨询标识';
comment on column HDJLXT_ZXXX.ZXRBS
  is '咨询人标识';
comment on column HDJLXT_ZXXX.ZXR
  is '咨询人';
comment on column HDJLXT_ZXXX.ZXSJ
  is '咨询时间';
comment on column HDJLXT_ZXXX.BT
  is '标题';
comment on column HDJLXT_ZXXX.WTLB
  is '问题类别';
comment on column HDJLXT_ZXXX.WTNR
  is '问题内容';
comment on column HDJLXT_ZXXX.LXDH
  is '联系电话';
comment on column HDJLXT_ZXXX.JJYF
  is '紧急与否';
comment on column HDJLXT_ZXXX.FSSJ
  is '发送时间';
comment on column HDJLXT_ZXXX.JSRBS
  is '接收人标识';
comment on column HDJLXT_ZXXX.JSR
  is '接收人';
comment on column HDJLXT_ZXXX.SFJS
  is '是否接收';
comment on column HDJLXT_ZXXX.JSSJ
  is '接收时间';
comment on column HDJLXT_ZXXX.BJSYY
  is '不接收原因';
comment on column HDJLXT_ZXXX.SFFB
  is '是否发布';
comment on column HDJLXT_ZXXX.FBSJ
  is '发布时间';
comment on column HDJLXT_ZXXX.SFSC
  is '是否删除';
comment on column HDJLXT_ZXXX.YFSJSR
  is '已发送接收人';
comment on column HDJLXT_ZXXX.SFFF
  is '是否发放';
comment on column HDJLXT_ZXXX.XZFRY
  is '需转发人员';

prompt
prompt Creating table HYGLXT_HYFBJL
prompt ============================
prompt
create table HYGLXT_HYFBJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  FBBS        NUMBER,
  HYBS        NUMBER,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40),
  JSRQ        DATE,
  FBRBS       NUMBER,
  FBR         VARCHAR2(40),
  FBRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table HYGLXT_HYFBJL
  is '会议发布记录';
comment on column HYGLXT_HYFBJL.FYBM
  is '法院编码';
comment on column HYGLXT_HYFBJL.FBBS
  is '发布标识';
comment on column HYGLXT_HYFBJL.HYBS
  is '会议标识';
comment on column HYGLXT_HYFBJL.JSRBS
  is '接收人标识';
comment on column HYGLXT_HYFBJL.JSR
  is '接收人';
comment on column HYGLXT_HYFBJL.JSRQ
  is '接收日期';
comment on column HYGLXT_HYFBJL.FBRBS
  is '发布人标识';
comment on column HYGLXT_HYFBJL.FBR
  is '发布人';
comment on column HYGLXT_HYFBJL.FBRQ
  is '发布日期';

prompt
prompt Creating table HYGLXT_HYSXX
prompt ===========================
prompt
create table HYGLXT_HYSXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  HYSBS       NUMBER,
  HYSMC       VARCHAR2(100),
  FJH         VARCHAR2(20),
  RNRS        NUMBER,
  MJ          NUMBER,
  HYSLB       VARCHAR2(20),
  SFYYJXSQ    NUMBER,
  SFZYKYYD    NUMBER,
  SFYSWZT     NUMBER,
  SFTYY       NUMBER,
  SFYWLXXD    NUMBER,
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table HYGLXT_HYSXX
  is '会议室信息';
comment on column HYGLXT_HYSXX.FYBM
  is '法院编码';
comment on column HYGLXT_HYSXX.HYSBS
  is '会议室标识';
comment on column HYGLXT_HYSXX.HYSMC
  is '会议室名称';
comment on column HYGLXT_HYSXX.FJH
  is '房间号';
comment on column HYGLXT_HYSXX.RNRS
  is '容纳人数';
comment on column HYGLXT_HYSXX.MJ
  is '面积';
comment on column HYGLXT_HYSXX.HYSLB
  is '会议室类别';
comment on column HYGLXT_HYSXX.SFYYJXSQ
  is '是否有液晶显示器';
comment on column HYGLXT_HYSXX.SFZYKYYD
  is '是否桌椅可以移动';
comment on column HYGLXT_HYSXX.SFYSWZT
  is '是否有实物展台';
comment on column HYGLXT_HYSXX.SFTYY
  is '是否投影仪';
comment on column HYGLXT_HYSXX.SFYWLXXD
  is '是否有网络信息点';
comment on column HYGLXT_HYSXX.BZ
  is '备注';

prompt
prompt Creating table HYGLXT_HYXX
prompt ==========================
prompt
create table HYGLXT_HYXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  HYBS        NUMBER,
  SQRQ        DATE,
  ZCRBS       NUMBER,
  ZCR         VARCHAR2(40),
  XBRBS       NUMBER,
  XBR         VARCHAR2(40),
  CBDW        VARCHAR2(100),
  ZBDW        VARCHAR2(100),
  CJRY        BLOB,
  CJRS        NUMBER,
  KSSJ        DATE,
  JSSJ        DATE,
  HYSBS       NUMBER,
  HYDD        VARCHAR2(200),
  HYMC        VARCHAR2(200),
  JC          VARCHAR2(50),
  GJC         VARCHAR2(50),
  ZTC         VARCHAR2(50),
  ZYNR        BLOB,
  HYYQ        VARCHAR2(200),
  SFXYHB      NUMBER,
  HBNR        VARCHAR2(200),
  SFXYZQ      NUMBER,
  ZQNR        VARCHAR2(200),
  SFXYSG      NUMBER,
  SFXYCH      NUMBER,
  SFXYTY      NUMBER,
  SFXYFWRY    NUMBER,
  SPRBS       NUMBER,
  SPR         VARCHAR2(40),
  SPYJ        VARCHAR2(200),
  SPRQ        DATE,
  SPSFPZ      NUMBER,
  SFFB        NUMBER,
  FBRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table HYGLXT_HYXX
  is '会议信息';
comment on column HYGLXT_HYXX.FYBM
  is '法院编码';
comment on column HYGLXT_HYXX.HYBS
  is '会议标识';
comment on column HYGLXT_HYXX.SQRQ
  is '申请日期';
comment on column HYGLXT_HYXX.ZCRBS
  is '主持人标识';
comment on column HYGLXT_HYXX.ZCR
  is '主持人';
comment on column HYGLXT_HYXX.XBRBS
  is '协办人标识';
comment on column HYGLXT_HYXX.XBR
  is '协办人';
comment on column HYGLXT_HYXX.CBDW
  is '承办单位';
comment on column HYGLXT_HYXX.ZBDW
  is '主办单位';
comment on column HYGLXT_HYXX.CJRY
  is '参加人员';
comment on column HYGLXT_HYXX.CJRS
  is '参加人数';
comment on column HYGLXT_HYXX.KSSJ
  is '开始时间';
comment on column HYGLXT_HYXX.JSSJ
  is '结束时间';
comment on column HYGLXT_HYXX.HYSBS
  is '会议室标识';
comment on column HYGLXT_HYXX.HYDD
  is '会议地点';
comment on column HYGLXT_HYXX.HYMC
  is '会议名称';
comment on column HYGLXT_HYXX.JC
  is '简称';
comment on column HYGLXT_HYXX.GJC
  is '关键词';
comment on column HYGLXT_HYXX.ZTC
  is '主题词';
comment on column HYGLXT_HYXX.ZYNR
  is '主要内容';
comment on column HYGLXT_HYXX.HYYQ
  is '会议要求';
comment on column HYGLXT_HYXX.SFXYHB
  is '是否需要会标';
comment on column HYGLXT_HYXX.HBNR
  is '会标内容';
comment on column HYGLXT_HYXX.SFXYZQ
  is '是否需要坐签';
comment on column HYGLXT_HYXX.ZQNR
  is '坐签内容';
comment on column HYGLXT_HYXX.SFXYSG
  is '是否需要水果';
comment on column HYGLXT_HYXX.SFXYCH
  is '是否需要插花';
comment on column HYGLXT_HYXX.SFXYTY
  is '是否需要投影';
comment on column HYGLXT_HYXX.SFXYFWRY
  is '是否需要服务人员';
comment on column HYGLXT_HYXX.SPRBS
  is '审批人标识';
comment on column HYGLXT_HYXX.SPR
  is '审批人';
comment on column HYGLXT_HYXX.SPYJ
  is '审批意见';
comment on column HYGLXT_HYXX.SPRQ
  is '审批日期';
comment on column HYGLXT_HYXX.SPSFPZ
  is '审批是否批准';
comment on column HYGLXT_HYXX.SFFB
  is '是否发布';
comment on column HYGLXT_HYXX.FBRQ
  is '发布日期';

prompt
prompt Creating table JDGLXT_JDBLJL
prompt ============================
prompt
create table JDGLXT_JDBLJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  JDBS        NUMBER,
  GZMC        VARCHAR2(100),
  FSRBS       NUMBER,
  FSR         VARCHAR2(40),
  FSSJ        DATE,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40),
  JSSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDGLXT_JDBLJL
  is '接待办理记录';
comment on column JDGLXT_JDBLJL.FYBM
  is '法院编码';
comment on column JDGLXT_JDBLJL.XH
  is '序号';
comment on column JDGLXT_JDBLJL.JDBS
  is '接待标识';
comment on column JDGLXT_JDBLJL.GZMC
  is '工作名称';
comment on column JDGLXT_JDBLJL.FSRBS
  is '发送人标识';
comment on column JDGLXT_JDBLJL.FSR
  is '发送人';
comment on column JDGLXT_JDBLJL.FSSJ
  is '发送时间';
comment on column JDGLXT_JDBLJL.JSRBS
  is '接收人标识';
comment on column JDGLXT_JDBLJL.JSR
  is '接收人';
comment on column JDGLXT_JDBLJL.JSSJ
  is '接收时间';

prompt
prompt Creating table JDGLXT_JDJH
prompt ==========================
prompt
create table JDGLXT_JDJH
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  XH          NUMBER,
  JDBS        NUMBER,
  JDKSSJ      DATE,
  JDJSSJ      DATE,
  CJRY        VARCHAR2(250),
  APSX        BLOB,
  SFZT        NUMBER,
  ZTDD        VARCHAR2(50),
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDGLXT_JDJH
  is '接待计划';
comment on column JDGLXT_JDJH.XH
  is '序号';
comment on column JDGLXT_JDJH.JDBS
  is '接待标识';
comment on column JDGLXT_JDJH.JDKSSJ
  is '接待开始时间';
comment on column JDGLXT_JDJH.JDJSSJ
  is '接待结束时间';
comment on column JDGLXT_JDJH.CJRY
  is '参加人员';
comment on column JDGLXT_JDJH.APSX
  is '安排事项';
comment on column JDGLXT_JDJH.SFZT
  is '是否座谈';
comment on column JDGLXT_JDJH.ZTDD
  is '座谈地点';
comment on column JDGLXT_JDJH.BZ
  is '备注';

prompt
prompt Creating table JDGLXT_JDST
prompt ==========================
prompt
create table JDGLXT_JDST
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDBS        NUMBER,
  XH          NUMBER,
  STLX        VARCHAR2(10),
  WJMC        VARCHAR2(255),
  STWJM       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDGLXT_JDST
  is '接待实体';
comment on column JDGLXT_JDST.FYBM
  is '法院编码';
comment on column JDGLXT_JDST.JDBS
  is '接待标识';
comment on column JDGLXT_JDST.XH
  is '序号';
comment on column JDGLXT_JDST.STLX
  is '实体类型';
comment on column JDGLXT_JDST.WJMC
  is '文件名称';
comment on column JDGLXT_JDST.STWJM
  is '实体文件名';

prompt
prompt Creating table JDGLXT_JDZTXX
prompt ============================
prompt
create table JDGLXT_JDZTXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDBS        NUMBER,
  JDBH        VARCHAR2(100),
  BHNF        NUMBER,
  FYJC        VARCHAR2(20),
  BHZH        VARCHAR2(20),
  HS          NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  LFJB        VARCHAR2(40),
  DWXZ        VARCHAR2(40),
  ZYX         VARCHAR2(20),
  LFS         VARCHAR2(40),
  LFZ         VARCHAR2(40),
  LFQ         VARCHAR2(40),
  LFDW        VARCHAR2(250),
  LFRQ        DATE,
  DDLD        VARCHAR2(40),
  DDLDZW      VARCHAR2(40),
  DDLDLXFS    VARCHAR2(100),
  LFLXR       VARCHAR2(40),
  LXRLXFS     VARCHAR2(100),
  QTLFRY      BLOB,
  LFCS        NUMBER,
  JDBM        VARCHAR2(100),
  LFMD        BLOB,
  JLNR        BLOB,
  JDFS        VARCHAR2(250),
  JDYJ        VARCHAR2(40),
  JDYJPS      NUMBER,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  CBBM        VARCHAR2(100),
  LJBS        NUMBER,
  LJRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDGLXT_JDZTXX
  is '接待主体信息';
comment on column JDGLXT_JDZTXX.FYBM
  is '法院编码';
comment on column JDGLXT_JDZTXX.JDBS
  is '接待标识';
comment on column JDGLXT_JDZTXX.JDBH
  is '接待编号';
comment on column JDGLXT_JDZTXX.BHNF
  is '编号年份';
comment on column JDGLXT_JDZTXX.FYJC
  is '法院简称';
comment on column JDGLXT_JDZTXX.BHZH
  is '编号字号';
comment on column JDGLXT_JDZTXX.HS
  is '号数';
comment on column JDGLXT_JDZTXX.DJRBS
  is '登记人标识';
comment on column JDGLXT_JDZTXX.DJR
  is '登记人';
comment on column JDGLXT_JDZTXX.DJRQ
  is '登记日期';
comment on column JDGLXT_JDZTXX.LFJB
  is '来访级别';
comment on column JDGLXT_JDZTXX.DWXZ
  is '单位性质';
comment on column JDGLXT_JDZTXX.ZYX
  is '重要性';
comment on column JDGLXT_JDZTXX.LFS
  is '来访省';
comment on column JDGLXT_JDZTXX.LFZ
  is '来访州';
comment on column JDGLXT_JDZTXX.LFQ
  is '来访区';
comment on column JDGLXT_JDZTXX.LFDW
  is '来访单位';
comment on column JDGLXT_JDZTXX.LFRQ
  is '来访日期';
comment on column JDGLXT_JDZTXX.DDLD
  is '带队领导';
comment on column JDGLXT_JDZTXX.DDLDZW
  is '带队领导职务';
comment on column JDGLXT_JDZTXX.DDLDLXFS
  is '带队领导联系方式';
comment on column JDGLXT_JDZTXX.LFLXR
  is '来访联系人';
comment on column JDGLXT_JDZTXX.LXRLXFS
  is '联系人联系方式';
comment on column JDGLXT_JDZTXX.QTLFRY
  is '其他来访人员';
comment on column JDGLXT_JDZTXX.LFCS
  is '来访次数';
comment on column JDGLXT_JDZTXX.JDBM
  is '接待部门';
comment on column JDGLXT_JDZTXX.LFMD
  is '来访目的';
comment on column JDGLXT_JDZTXX.JLNR
  is '交流内容';
comment on column JDGLXT_JDZTXX.JDFS
  is '接待方式';
comment on column JDGLXT_JDZTXX.JDYJ
  is '接待用酒';
comment on column JDGLXT_JDZTXX.JDYJPS
  is '接待用酒瓶数';
comment on column JDGLXT_JDZTXX.CBRBS
  is '承办人标识';
comment on column JDGLXT_JDZTXX.CBR
  is '承办人';
comment on column JDGLXT_JDZTXX.CBBM
  is '承办部门';
comment on column JDGLXT_JDZTXX.LJBS
  is '了结标识';
comment on column JDGLXT_JDZTXX.LJRQ
  is '了结日期';

prompt
prompt Creating table JDPGXT_DWWTSFJDSJPGJGQDS
prompt =======================================
prompt
create table JDPGXT_DWWTSFJDSJPGJGQDS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDSJPGPMBS  NUMBER,
  XH          NUMBER,
  WDBH        VARCHAR2(100),
  JDSX        BLOB,
  QDSJ        DATE,
  QDJG        VARCHAR2(200),
  QDFS        VARCHAR2(20),
  JSSRY       VARCHAR2(40),
  JJRY        VARCHAR2(40),
  DQSJ        DATE,
  JGDH        VARCHAR2(100),
  BGDH        VARCHAR2(100),
  BZ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_DWWTSFJDSJPGJGQDS
  is '对外委托司法鉴定、审计、评估机构确定书';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.FYBM
  is '法院编码';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.XH
  is '序号';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.WDBH
  is '文档编号';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.JDSX
  is '鉴定事项';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.QDSJ
  is '确定时间';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.QDJG
  is '确定机构';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.QDFS
  is '确定方式';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.JSSRY
  is '技术室人员';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.JJRY
  is '纪检人员';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.DQSJ
  is '到期时间';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.JGDH
  is '机构电话';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.BGDH
  is '办公电话';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.BZ
  is '备注';

prompt
prompt Creating table JDPGXT_JDFYJMHSPB
prompt ================================
prompt
create table JDPGXT_JDFYJMHSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDSJPGPMBS  NUMBER,
  XH          NUMBER,
  WDBH        VARCHAR2(100),
  SX          VARCHAR2(250),
  FY          NUMBER,
  SQSJ        DATE,
  LY          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_JDFYJMHSPB
  is '鉴定费用减、免、缓审批表';
comment on column JDPGXT_JDFYJMHSPB.FYBM
  is '法院编码';
comment on column JDPGXT_JDFYJMHSPB.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_JDFYJMHSPB.XH
  is '序号';
comment on column JDPGXT_JDFYJMHSPB.WDBH
  is '文档编号';
comment on column JDPGXT_JDFYJMHSPB.SX
  is '事项';
comment on column JDPGXT_JDFYJMHSPB.FY
  is '费用';
comment on column JDPGXT_JDFYJMHSPB.SQSJ
  is '申请时间';
comment on column JDPGXT_JDFYJMHSPB.LY
  is '理由';

prompt
prompt Creating table JDPGXT_JDPGSTWJXX
prompt ================================
prompt
create table JDPGXT_JDPGSTWJXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDSJPGPMBS  NUMBER,
  XH          NUMBER,
  STLX        VARCHAR2(10),
  WJMC        VARCHAR2(255),
  STWJM       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_JDPGSTWJXX
  is '鉴定评估实体文件信息';
comment on column JDPGXT_JDPGSTWJXX.FYBM
  is '法院编码';
comment on column JDPGXT_JDPGSTWJXX.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_JDPGSTWJXX.XH
  is '序号';
comment on column JDPGXT_JDPGSTWJXX.STLX
  is '实体类型';
comment on column JDPGXT_JDPGSTWJXX.WJMC
  is '文件名称';
comment on column JDPGXT_JDPGSTWJXX.STWJM
  is '实体文件名';

prompt
prompt Creating table JDPGXT_JDPGZTXX
prompt ==============================
prompt
create table JDPGXT_JDPGZTXX
(
  ID            VARCHAR2(36) not null,
  REG_TIME      DATE not null,
  UPDATE_TIME   DATE not null,
  DEPT_CODE     VARCHAR2(20) not null,
  APP_CODE      VARCHAR2(20) not null,
  FYBM          NUMBER,
  JDSJPGPMBS    NUMBER,
  WTLB          VARCHAR2(20),
  WTXL          VARCHAR2(20),
  JDPGBH        VARCHAR2(100),
  BHN           NUMBER,
  FYJC          VARCHAR2(20),
  BHAZ          VARCHAR2(20),
  BHHS          NUMBER,
  YSRQ          DATE,
  YSBM          VARCHAR2(100),
  SJAJBH        VARCHAR2(100),
  AJYSCBRBS     NUMBER,
  AJYSCBR       VARCHAR2(40),
  YSCBRLXDH     VARCHAR2(100),
  YSAH          NUMBER,
  YSAY          VARCHAR2(100),
  YSCBT         VARCHAR2(100),
  YSYS          VARCHAR2(40),
  SQR           VARCHAR2(40),
  SQRLXDH       VARCHAR2(100),
  BSQR          VARCHAR2(40),
  BSQRLXDH      VARCHAR2(100),
  WTSY          BLOB,
  SQFZR         VARCHAR2(40),
  BSQFZR        VARCHAR2(40),
  AQZY          BLOB,
  JDBDJBDW      VARCHAR2(250),
  GFDSRHDLRLXFS VARCHAR2(250),
  YJJDFYF       VARCHAR2(250),
  SFYXGK        NUMBER,
  SFYGK         NUMBER,
  DJRBS         NUMBER,
  DJR           VARCHAR2(40),
  DJRQ          DATE,
  SPRYBS        NUMBER,
  SPRY          VARCHAR2(40),
  SPRYSPRQ      DATE,
  SPRYSFPZ      NUMBER,
  SPRYSPYJ      VARCHAR2(100),
  SPREBS        NUMBER,
  SPRE          VARCHAR2(40),
  SPRESPRQ      DATE,
  SPRESFPZ      NUMBER,
  SPRESPYJ      VARCHAR2(100),
  SPRSBS        NUMBER,
  SPRS          VARCHAR2(40),
  SPRSSPRQ      DATE,
  SPRSSFPZ      NUMBER,
  SPRSSPYJ      VARCHAR2(100),
  SXJSRQ        DATE,
  CBRBS         NUMBER,
  CBR           VARCHAR2(40),
  CBSPT         VARCHAR2(100),
  JABZ          NUMBER,
  JARQ          DATE,
  SFTQGD        NUMBER,
  TQGDRQ        DATE,
  SCGDRQ        DATE,
  GDH           VARCHAR2(40),
  GDRQ          DATE,
  FARQ          DATE,
  SFDJ          NUMBER,
  YQTS          NUMBER,
  SFYQ          NUMBER,
  KCTS          NUMBER,
  YWTCBRYJ      VARCHAR2(200),
  BMFZRBS       NUMBER,
  BMFZR         VARCHAR2(40),
  BMFZRSFPZ     NUMBER,
  BMFZRSPYJ     VARCHAR2(200),
  BMFZRSPRQ     DATE,
  TZZT          NUMBER,
  SFFHXZGZTZS   NUMBER,
  YJGZJSRQ      DATE,
  SFYY          NUMBER,
  SFYYYCL       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_JDPGZTXX
  is '鉴定评估主体信息';
comment on column JDPGXT_JDPGZTXX.FYBM
  is '法院编码';
comment on column JDPGXT_JDPGZTXX.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_JDPGZTXX.WTLB
  is '委托类别';
comment on column JDPGXT_JDPGZTXX.WTXL
  is '委托小类';
comment on column JDPGXT_JDPGZTXX.JDPGBH
  is '鉴定评估编号';
comment on column JDPGXT_JDPGZTXX.BHN
  is '编号年';
comment on column JDPGXT_JDPGZTXX.FYJC
  is '法院简称';
comment on column JDPGXT_JDPGZTXX.BHAZ
  is '编号案字';
comment on column JDPGXT_JDPGZTXX.BHHS
  is '编号号数';
comment on column JDPGXT_JDPGZTXX.YSRQ
  is '移送日期';
comment on column JDPGXT_JDPGZTXX.YSBM
  is '移送部门';
comment on column JDPGXT_JDPGZTXX.SJAJBH
  is '涉及案件编号';
comment on column JDPGXT_JDPGZTXX.AJYSCBRBS
  is '案件原审承办人标识';
comment on column JDPGXT_JDPGZTXX.AJYSCBR
  is '案件原审承办人';
comment on column JDPGXT_JDPGZTXX.YSCBRLXDH
  is '原审承办人联系电话';
comment on column JDPGXT_JDPGZTXX.YSAH
  is '原审案号';
comment on column JDPGXT_JDPGZTXX.YSAY
  is '原审案由';
comment on column JDPGXT_JDPGZTXX.YSCBT
  is '原审承办庭';
comment on column JDPGXT_JDPGZTXX.YSYS
  is '移送原审';
comment on column JDPGXT_JDPGZTXX.SQR
  is '申请人';
comment on column JDPGXT_JDPGZTXX.SQRLXDH
  is '申请人联系电话';
comment on column JDPGXT_JDPGZTXX.BSQR
  is '被申请人';
comment on column JDPGXT_JDPGZTXX.BSQRLXDH
  is '被申请人联系电话';
comment on column JDPGXT_JDPGZTXX.WTSY
  is '委托事由';
comment on column JDPGXT_JDPGZTXX.SQFZR
  is '申请负责人';
comment on column JDPGXT_JDPGZTXX.BSQFZR
  is '被申请负责人';
comment on column JDPGXT_JDPGZTXX.AQZY
  is '案情摘要';
comment on column JDPGXT_JDPGZTXX.JDBDJBDW
  is '鉴定标的及标的物';
comment on column JDPGXT_JDPGZTXX.GFDSRHDLRLXFS
  is '各方当事人或代理人联系方式';
comment on column JDPGXT_JDPGZTXX.YJJDFYF
  is '预缴鉴定费用方';
comment on column JDPGXT_JDPGZTXX.SFYXGK
  is '是否允许公开';
comment on column JDPGXT_JDPGZTXX.SFYGK
  is '是否已公开';
comment on column JDPGXT_JDPGZTXX.DJRBS
  is '登记人标识';
comment on column JDPGXT_JDPGZTXX.DJR
  is '登记人';
comment on column JDPGXT_JDPGZTXX.DJRQ
  is '登记日期';
comment on column JDPGXT_JDPGZTXX.SPRYBS
  is '审批人一标识';
comment on column JDPGXT_JDPGZTXX.SPRY
  is '审批人一';
comment on column JDPGXT_JDPGZTXX.SPRYSPRQ
  is '审批人一审批日期';
comment on column JDPGXT_JDPGZTXX.SPRYSFPZ
  is '审批人一是否批准';
comment on column JDPGXT_JDPGZTXX.SPRYSPYJ
  is '审批人一审批意见';
comment on column JDPGXT_JDPGZTXX.SPREBS
  is '审批人二标识';
comment on column JDPGXT_JDPGZTXX.SPRE
  is '审批人二';
comment on column JDPGXT_JDPGZTXX.SPRESPRQ
  is '审批人二审批日期';
comment on column JDPGXT_JDPGZTXX.SPRESFPZ
  is '审批人二是否批准';
comment on column JDPGXT_JDPGZTXX.SPRESPYJ
  is '审批人二审批意见';
comment on column JDPGXT_JDPGZTXX.SPRSBS
  is '审批人三标识';
comment on column JDPGXT_JDPGZTXX.SPRS
  is '审批人三';
comment on column JDPGXT_JDPGZTXX.SPRSSPRQ
  is '审批人三审批日期';
comment on column JDPGXT_JDPGZTXX.SPRSSFPZ
  is '审批人三是否批准';
comment on column JDPGXT_JDPGZTXX.SPRSSPYJ
  is '审批人三审批意见';
comment on column JDPGXT_JDPGZTXX.SXJSRQ
  is '审限结束日期';
comment on column JDPGXT_JDPGZTXX.CBRBS
  is '承办人标识';
comment on column JDPGXT_JDPGZTXX.CBR
  is '承办人';
comment on column JDPGXT_JDPGZTXX.CBSPT
  is '承办审判庭';
comment on column JDPGXT_JDPGZTXX.JABZ
  is '结案标志';
comment on column JDPGXT_JDPGZTXX.JARQ
  is '结案日期';
comment on column JDPGXT_JDPGZTXX.SFTQGD
  is '是否提请归档';
comment on column JDPGXT_JDPGZTXX.TQGDRQ
  is '提请归档日期';
comment on column JDPGXT_JDPGZTXX.SCGDRQ
  is '审查归档日期';
comment on column JDPGXT_JDPGZTXX.GDH
  is '归档号';
comment on column JDPGXT_JDPGZTXX.GDRQ
  is '归档日期';
comment on column JDPGXT_JDPGZTXX.FARQ
  is '分案日期';
comment on column JDPGXT_JDPGZTXX.SFDJ
  is '是否冻结';
comment on column JDPGXT_JDPGZTXX.YQTS
  is '延期天数';
comment on column JDPGXT_JDPGZTXX.SFYQ
  is '是否延期';
comment on column JDPGXT_JDPGZTXX.KCTS
  is '扣除天数';
comment on column JDPGXT_JDPGZTXX.YWTCBRYJ
  is '业务庭承办人意见';
comment on column JDPGXT_JDPGZTXX.BMFZRBS
  is '部门负责人标识';
comment on column JDPGXT_JDPGZTXX.BMFZR
  is '部门负责人';
comment on column JDPGXT_JDPGZTXX.BMFZRSFPZ
  is '部门负责人是否批准';
comment on column JDPGXT_JDPGZTXX.BMFZRSPYJ
  is '部门负责人审批意见';
comment on column JDPGXT_JDPGZTXX.BMFZRSPRQ
  is '部门负责人审批日期';
comment on column JDPGXT_JDPGZTXX.TZZT
  is '停止状态';
comment on column JDPGXT_JDPGZTXX.SFFHXZGZTZS
  is '是否发回协助工作通知书';
comment on column JDPGXT_JDPGZTXX.YJGZJSRQ
  is '移交工作结束日期';
comment on column JDPGXT_JDPGZTXX.SFYY
  is '是否异议';
comment on column JDPGXT_JDPGZTXX.SFYYYCL
  is '是否异议已处理';

prompt
prompt Creating table JDPGXT_JDSJPGGZZZBG
prompt ==================================
prompt
create table JDPGXT_JDSJPGGZZZBG
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  JDSJPGPMBS   NUMBER,
  XH           NUMBER,
  WDBH         VARCHAR2(100),
  SQRBS        NUMBER,
  SQR          VARCHAR2(200),
  ZZGZSY       VARCHAR2(250),
  SFZGDSJNBJFY NUMBER,
  SFRQJX       NUMBER,
  SFDJJA       NUMBER,
  YFDSRSFDC    NUMBER,
  QT           VARCHAR2(200),
  CBRYJ        VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_JDSJPGGZZZBG
  is '鉴定、审计、评估工作终止报告';
comment on column JDPGXT_JDSJPGGZZZBG.FYBM
  is '法院编码';
comment on column JDPGXT_JDSJPGGZZZBG.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_JDSJPGGZZZBG.XH
  is '序号';
comment on column JDPGXT_JDSJPGGZZZBG.WDBH
  is '文档编号';
comment on column JDPGXT_JDSJPGGZZZBG.SQRBS
  is '申请人标识';
comment on column JDPGXT_JDSJPGGZZZBG.SQR
  is '申请人';
comment on column JDPGXT_JDSJPGGZZZBG.ZZGZSY
  is '终止工作事由';
comment on column JDPGXT_JDSJPGGZZZBG.SFZGDSJNBJFY
  is '是否在规定时间内不交费用';
comment on column JDPGXT_JDSJPGGZZZBG.SFRQJX
  is '是否如期进行';
comment on column JDPGXT_JDSJPGGZZZBG.SFDJJA
  is '是否调解结案';
comment on column JDPGXT_JDSJPGGZZZBG.YFDSRSFDC
  is '一方当事人是否到场';
comment on column JDPGXT_JDSJPGGZZZBG.QT
  is '其他';
comment on column JDPGXT_JDSJPGGZZZBG.CBRYJ
  is '承办人意见';

prompt
prompt Creating table JDPGXT_JDSJPGJGBGSPB
prompt ===================================
prompt
create table JDPGXT_JDSJPGJGBGSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDSJPGPMBS  NUMBER,
  XH          NUMBER,
  WDBH        VARCHAR2(100),
  SQRBS       NUMBER,
  SQR         VARCHAR2(40),
  SY          VARCHAR2(250),
  CBRYJ       VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_JDSJPGJGBGSPB
  is '鉴定、审计、评估机构变更审批表';
comment on column JDPGXT_JDSJPGJGBGSPB.FYBM
  is '法院编码';
comment on column JDPGXT_JDSJPGJGBGSPB.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_JDSJPGJGBGSPB.XH
  is '序号';
comment on column JDPGXT_JDSJPGJGBGSPB.WDBH
  is '文档编号';
comment on column JDPGXT_JDSJPGJGBGSPB.SQRBS
  is '申请人标识';
comment on column JDPGXT_JDSJPGJGBGSPB.SQR
  is '申请人';
comment on column JDPGXT_JDSJPGJGBGSPB.SY
  is '事由';
comment on column JDPGXT_JDSJPGJGBGSPB.CBRYJ
  is '承办人意见';

prompt
prompt Creating table JDPGXT_JDSJPGPMLCKZB
prompt ===================================
prompt
create table JDPGXT_JDSJPGPMLCKZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  TSFW        VARCHAR2(40),
  TSJB        VARCHAR2(20),
  LCMC        VARCHAR2(100),
  JCTJ        BLOB,
  TSTS        NUMBER,
  SFPC        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_JDSJPGPMLCKZB
  is '鉴定审计评估拍卖流程控制表';
comment on column JDPGXT_JDSJPGPMLCKZB.FYBM
  is '法院编码';
comment on column JDPGXT_JDSJPGPMLCKZB.XH
  is '序号';
comment on column JDPGXT_JDSJPGPMLCKZB.TSFW
  is '提示范围';
comment on column JDPGXT_JDSJPGPMLCKZB.TSJB
  is '提示级别';
comment on column JDPGXT_JDSJPGPMLCKZB.LCMC
  is '流程名称';
comment on column JDPGXT_JDSJPGPMLCKZB.JCTJ
  is '检查条件';
comment on column JDPGXT_JDSJPGPMLCKZB.TSTS
  is '提示天数';
comment on column JDPGXT_JDSJPGPMLCKZB.SFPC
  is '是否排除';

prompt
prompt Creating table JDPGXT_JDSJPGPMLCKZJL
prompt ====================================
prompt
create table JDPGXT_JDSJPGPMLCKZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDSJPGPMBS  NUMBER,
  XH          NUMBER,
  LCBH        NUMBER,
  JCRQ        DATE,
  TSTS        NUMBER,
  TSNR        VARCHAR2(100),
  BM          VARCHAR2(100),
  TSRBS       NUMBER,
  TSR         VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_JDSJPGPMLCKZJL
  is '鉴定审计评估拍卖流程控制记录';
comment on column JDPGXT_JDSJPGPMLCKZJL.FYBM
  is '法院编码';
comment on column JDPGXT_JDSJPGPMLCKZJL.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_JDSJPGPMLCKZJL.XH
  is '序号';
comment on column JDPGXT_JDSJPGPMLCKZJL.LCBH
  is '流程编号';
comment on column JDPGXT_JDSJPGPMLCKZJL.JCRQ
  is '检查日期';
comment on column JDPGXT_JDSJPGPMLCKZJL.TSTS
  is '提示天数';
comment on column JDPGXT_JDSJPGPMLCKZJL.TSNR
  is '提示内容';
comment on column JDPGXT_JDSJPGPMLCKZJL.BM
  is '部门';
comment on column JDPGXT_JDSJPGPMLCKZJL.TSRBS
  is '提示人标识';
comment on column JDPGXT_JDSJPGPMLCKZJL.TSR
  is '提示人';

prompt
prompt Creating table JDPGXT_JDSJPGQXHFSPB
prompt ===================================
prompt
create table JDPGXT_JDSJPGQXHFSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDSJPGPMBS  NUMBER,
  XH          NUMBER,
  WDBH        VARCHAR2(100),
  SQRQ        DATE,
  SQJG        VARCHAR2(250),
  LY          BLOB,
  TCSPRBS     NUMBER,
  TCSPR       VARCHAR2(40),
  TCSFPZ      NUMBER,
  TCSPYJ      VARCHAR2(200),
  TCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(40),
  YCSFPZ      NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_JDSJPGQXHFSPB
  is '鉴定、审计、评估期限恢复审批表';
comment on column JDPGXT_JDSJPGQXHFSPB.FYBM
  is '法院编码';
comment on column JDPGXT_JDSJPGQXHFSPB.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_JDSJPGQXHFSPB.XH
  is '序号';
comment on column JDPGXT_JDSJPGQXHFSPB.WDBH
  is '文档编号';
comment on column JDPGXT_JDSJPGQXHFSPB.SQRQ
  is '申请日期';
comment on column JDPGXT_JDSJPGQXHFSPB.SQJG
  is '申请结果';
comment on column JDPGXT_JDSJPGQXHFSPB.LY
  is '理由';
comment on column JDPGXT_JDSJPGQXHFSPB.TCSPRBS
  is '庭长审批人标识';
comment on column JDPGXT_JDSJPGQXHFSPB.TCSPR
  is '庭长审批人';
comment on column JDPGXT_JDSJPGQXHFSPB.TCSFPZ
  is '庭长是否批准';
comment on column JDPGXT_JDSJPGQXHFSPB.TCSPYJ
  is '庭长审批意见';
comment on column JDPGXT_JDSJPGQXHFSPB.TCSPRQ
  is '庭长审批日期';
comment on column JDPGXT_JDSJPGQXHFSPB.YCSPRBS
  is '院长审批人标识';
comment on column JDPGXT_JDSJPGQXHFSPB.YCSPR
  is '院长审批人';
comment on column JDPGXT_JDSJPGQXHFSPB.YCSFPZ
  is '院长是否批准';
comment on column JDPGXT_JDSJPGQXHFSPB.YCSPYJ
  is '院长审批意见';
comment on column JDPGXT_JDSJPGQXHFSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table JDPGXT_JDSJPGQXYQSPB
prompt ===================================
prompt
create table JDPGXT_JDSJPGQXYQSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDSJPGPMBS  NUMBER,
  XH          NUMBER,
  WDBH        VARCHAR2(100),
  SQJG        VARCHAR2(200),
  LY          BLOB,
  YQTS        NUMBER,
  TCSPRBS     NUMBER,
  TCSPR       VARCHAR2(40),
  TCSFPZ      NUMBER,
  TCSPYJ      VARCHAR2(200),
  TCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(40),
  YCSFPZ      NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_JDSJPGQXYQSPB
  is '鉴定、审计、评估期限延期审批表';
comment on column JDPGXT_JDSJPGQXYQSPB.FYBM
  is '法院编码';
comment on column JDPGXT_JDSJPGQXYQSPB.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_JDSJPGQXYQSPB.XH
  is '序号';
comment on column JDPGXT_JDSJPGQXYQSPB.WDBH
  is '文档编号';
comment on column JDPGXT_JDSJPGQXYQSPB.SQJG
  is '申请机关';
comment on column JDPGXT_JDSJPGQXYQSPB.LY
  is '理由';
comment on column JDPGXT_JDSJPGQXYQSPB.YQTS
  is '延期天数';
comment on column JDPGXT_JDSJPGQXYQSPB.TCSPRBS
  is '庭长审批人标识';
comment on column JDPGXT_JDSJPGQXYQSPB.TCSPR
  is '庭长审批人';
comment on column JDPGXT_JDSJPGQXYQSPB.TCSFPZ
  is '庭长是否批准';
comment on column JDPGXT_JDSJPGQXYQSPB.TCSPYJ
  is '庭长审批意见';
comment on column JDPGXT_JDSJPGQXYQSPB.TCSPRQ
  is '庭长审批日期';
comment on column JDPGXT_JDSJPGQXYQSPB.YCSPRBS
  is '院长审批人标识';
comment on column JDPGXT_JDSJPGQXYQSPB.YCSPR
  is '院长审批人';
comment on column JDPGXT_JDSJPGQXYQSPB.YCSFPZ
  is '院长是否批准';
comment on column JDPGXT_JDSJPGQXYQSPB.YCSPYJ
  is '院长审批意见';
comment on column JDPGXT_JDSJPGQXYQSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table JDPGXT_JDSJPGSXKCB
prompt =================================
prompt
create table JDPGXT_JDSJPGSXKCB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDSJPGPMBS  NUMBER,
  XH          NUMBER,
  LX          VARCHAR2(20),
  LY          BLOB,
  KSSJ        DATE,
  JSSJ        DATE,
  YHMC        VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_JDSJPGSXKCB
  is '鉴定、审计、评估审限扣除表';
comment on column JDPGXT_JDSJPGSXKCB.FYBM
  is '法院编码';
comment on column JDPGXT_JDSJPGSXKCB.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_JDSJPGSXKCB.XH
  is '序号';
comment on column JDPGXT_JDSJPGSXKCB.LX
  is '类型';
comment on column JDPGXT_JDSJPGSXKCB.LY
  is '理由';
comment on column JDPGXT_JDSJPGSXKCB.KSSJ
  is '开始时间';
comment on column JDPGXT_JDSJPGSXKCB.JSSJ
  is '结束时间';
comment on column JDPGXT_JDSJPGSXKCB.YHMC
  is '用户名称';

prompt
prompt Creating table JDPGXT_JFDJB
prompt ===========================
prompt
create table JDPGXT_JFDJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDSJPGPMBS  NUMBER,
  XH          NUMBER,
  YJFFDSR     VARCHAR2(200),
  YJFSJ       DATE,
  YJFJE       NUMBER,
  JFSDRQ      DATE,
  CJWTSSJ     DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_JFDJB
  is '缴费登记表';
comment on column JDPGXT_JFDJB.FYBM
  is '法院编码';
comment on column JDPGXT_JFDJB.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_JFDJB.XH
  is '序号';
comment on column JDPGXT_JFDJB.YJFFDSR
  is '预缴费方当事人';
comment on column JDPGXT_JFDJB.YJFSJ
  is '预缴费时间';
comment on column JDPGXT_JFDJB.YJFJE
  is '预缴费金额';
comment on column JDPGXT_JFDJB.JFSDRQ
  is '缴费收到日期';
comment on column JDPGXT_JFDJB.CJWTSSJ
  is '出具委托书时间';

prompt
prompt Creating table JDPGXT_JKTZS
prompt ===========================
prompt
create table JDPGXT_JKTZS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDSJPGPMBS  NUMBER,
  XH          NUMBER,
  WDBH        VARCHAR2(100),
  SQR         VARCHAR2(250),
  KHX         VARCHAR2(250),
  JNJE        NUMBER,
  SDRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_JKTZS
  is '缴款通知书';
comment on column JDPGXT_JKTZS.FYBM
  is '法院编码';
comment on column JDPGXT_JKTZS.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_JKTZS.XH
  is '序号';
comment on column JDPGXT_JKTZS.WDBH
  is '文档编号';
comment on column JDPGXT_JKTZS.SQR
  is '申请人';
comment on column JDPGXT_JKTZS.KHX
  is '开户行';
comment on column JDPGXT_JKTZS.JNJE
  is '缴纳金额';
comment on column JDPGXT_JKTZS.SDRQ
  is '送达日期';

prompt
prompt Creating table JDPGXT_SQHBSPB
prompt =============================
prompt
create table JDPGXT_SQHBSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDSJPGPMBS  NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(200),
  SQRQ        DATE,
  SQLY        BLOB,
  YSSJ        DATE,
  JSSPYJSSJ   DATE,
  TZDSRSJ     DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_SQHBSPB
  is '申请回避审批表';
comment on column JDPGXT_SQHBSPB.FYBM
  is '法院编码';
comment on column JDPGXT_SQHBSPB.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_SQHBSPB.XH
  is '序号';
comment on column JDPGXT_SQHBSPB.BH
  is '编号';
comment on column JDPGXT_SQHBSPB.SQR
  is '申请人';
comment on column JDPGXT_SQHBSPB.SQRQ
  is '申请日期';
comment on column JDPGXT_SQHBSPB.SQLY
  is '申请理由';
comment on column JDPGXT_SQHBSPB.YSSJ
  is '移送时间';
comment on column JDPGXT_SQHBSPB.JSSPYJSSJ
  is '接收审批意见书时间';
comment on column JDPGXT_SQHBSPB.TZDSRSJ
  is '通知当事人时间';

prompt
prompt Creating table JDPGXT_YJCLYQSPB
prompt ===============================
prompt
create table JDPGXT_YJCLYQSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDSJPGPMBS  NUMBER,
  XH          NUMBER,
  WDBH        VARCHAR2(100),
  SQJG        VARCHAR2(200),
  LY          BLOB,
  YQTS        NUMBER,
  TCSPRBS     NUMBER,
  TCSPR       VARCHAR2(40),
  TCSFPZ      NUMBER,
  TCSPYJ      VARCHAR2(200),
  TCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(40),
  YCSFPZ      NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table JDPGXT_YJCLYQSPB
  is '移交材料延期审批表';
comment on column JDPGXT_YJCLYQSPB.FYBM
  is '法院编码';
comment on column JDPGXT_YJCLYQSPB.JDSJPGPMBS
  is '鉴定审计评估拍卖标识';
comment on column JDPGXT_YJCLYQSPB.XH
  is '序号';
comment on column JDPGXT_YJCLYQSPB.WDBH
  is '文档编号';
comment on column JDPGXT_YJCLYQSPB.SQJG
  is '申请机关';
comment on column JDPGXT_YJCLYQSPB.LY
  is '理由';
comment on column JDPGXT_YJCLYQSPB.YQTS
  is '延期天数';
comment on column JDPGXT_YJCLYQSPB.TCSPRBS
  is '庭长审批人标识';
comment on column JDPGXT_YJCLYQSPB.TCSPR
  is '庭长审批人';
comment on column JDPGXT_YJCLYQSPB.TCSFPZ
  is '庭长是否批准';
comment on column JDPGXT_YJCLYQSPB.TCSPYJ
  is '庭长审批意见';
comment on column JDPGXT_YJCLYQSPB.TCSPRQ
  is '庭长审批日期';
comment on column JDPGXT_YJCLYQSPB.YCSPRBS
  is '院长审批人标识';
comment on column JDPGXT_YJCLYQSPB.YCSPR
  is '院长审批人';
comment on column JDPGXT_YJCLYQSPB.YCSFPZ
  is '院长是否批准';
comment on column JDPGXT_YJCLYQSPB.YCSPYJ
  is '院长审批意见';
comment on column JDPGXT_YJCLYQSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table KJFTXT_KJFTPQXX
prompt ==============================
prompt
create table KJFTXT_KJFTPQXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  TSBH        NUMBER,
  AJBS        NUMBER,
  SPTMC       VARCHAR2(40),
  YJKTSJ      DATE,
  YJJSSJ      DATE,
  APRBS       NUMBER,
  APR         VARCHAR2(40),
  RQ          DATE,
  BZ          BLOB,
  XH          NUMBER,
  SFFSDWZ     NUMBER,
  SJYBS       NUMBER,
  SJY         VARCHAR2(40),
  SFGKSL      NUMBER,
  RS          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table KJFTXT_KJFTPQXX
  is '科技法庭排期信息';
comment on column KJFTXT_KJFTPQXX.FYBM
  is '法院编码';
comment on column KJFTXT_KJFTPQXX.BH
  is '编号';
comment on column KJFTXT_KJFTPQXX.TSBH
  is '庭审编号';
comment on column KJFTXT_KJFTPQXX.AJBS
  is '案件标识';
comment on column KJFTXT_KJFTPQXX.SPTMC
  is '审判庭名称';
comment on column KJFTXT_KJFTPQXX.YJKTSJ
  is '预计开庭时间';
comment on column KJFTXT_KJFTPQXX.YJJSSJ
  is '预计结束时间';
comment on column KJFTXT_KJFTPQXX.APRBS
  is '安排人标识';
comment on column KJFTXT_KJFTPQXX.APR
  is '安排人';
comment on column KJFTXT_KJFTPQXX.RQ
  is '日期';
comment on column KJFTXT_KJFTPQXX.BZ
  is '备注';
comment on column KJFTXT_KJFTPQXX.XH
  is '序号';
comment on column KJFTXT_KJFTPQXX.SFFSDWZ
  is '是否发送到网站';
comment on column KJFTXT_KJFTPQXX.SJYBS
  is '书记员标识';
comment on column KJFTXT_KJFTPQXX.SJY
  is '书记员';
comment on column KJFTXT_KJFTPQXX.SFGKSL
  is '是否公开审理';
comment on column KJFTXT_KJFTPQXX.RS
  is '人数';

prompt
prompt Creating table KJFTXT_KJFTSPTDXX
prompt ================================
prompt
create table KJFTXT_KJFTSPTDXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SPTBH       NUMBER,
  SPTMC       VARCHAR2(50),
  IPDZ        VARCHAR2(30),
  DKH         VARCHAR2(10),
  YHM         VARCHAR2(50),
  MM          VARCHAR2(20),
  SPLX        VARCHAR2(20),
  RJLX        VARCHAR2(50),
  TDHZS       NUMBER,
  FGTDH       NUMBER,
  YGTDH       NUMBER,
  BGTDH       NUMBER,
  BHRTD       NUMBER,
  QJTD        NUMBER,
  SFDYTKZ     NUMBER,
  ZHKTAJSXH   NUMBER,
  ZHKTSJYIP   VARCHAR2(30),
  LXJSJIP     VARCHAR2(30),
  LXWJKZM     VARCHAR2(20),
  SPCCLJ      VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table KJFTXT_KJFTSPTDXX
  is '科技法庭视频通道信息';
comment on column KJFTXT_KJFTSPTDXX.FYBM
  is '法院编码';
comment on column KJFTXT_KJFTSPTDXX.BH
  is '编号';
comment on column KJFTXT_KJFTSPTDXX.SPTBH
  is '审判庭编号';
comment on column KJFTXT_KJFTSPTDXX.SPTMC
  is '审判庭名称';
comment on column KJFTXT_KJFTSPTDXX.IPDZ
  is 'IP地址';
comment on column KJFTXT_KJFTSPTDXX.DKH
  is '端口号';
comment on column KJFTXT_KJFTSPTDXX.YHM
  is '用户名';
comment on column KJFTXT_KJFTSPTDXX.MM
  is '密码';
comment on column KJFTXT_KJFTSPTDXX.SPLX
  is '视频类型';
comment on column KJFTXT_KJFTSPTDXX.RJLX
  is '软件类型';
comment on column KJFTXT_KJFTSPTDXX.TDHZS
  is '通道号总数';
comment on column KJFTXT_KJFTSPTDXX.FGTDH
  is '法官通道号';
comment on column KJFTXT_KJFTSPTDXX.YGTDH
  is '原告通道号';
comment on column KJFTXT_KJFTSPTDXX.BGTDH
  is '被告通道号';
comment on column KJFTXT_KJFTSPTDXX.BHRTD
  is '辩护人通道';
comment on column KJFTXT_KJFTSPTDXX.QJTD
  is '全景通道';
comment on column KJFTXT_KJFTSPTDXX.SFDYTKZ
  is '是否带云台控制';
comment on column KJFTXT_KJFTSPTDXX.ZHKTAJSXH
  is '最后开庭案件顺序号';
comment on column KJFTXT_KJFTSPTDXX.ZHKTSJYIP
  is '最后开庭书记员ip';
comment on column KJFTXT_KJFTSPTDXX.LXJSJIP
  is '录像计算机ip';
comment on column KJFTXT_KJFTSPTDXX.LXWJKZM
  is '录像文件扩展名';
comment on column KJFTXT_KJFTSPTDXX.SPCCLJ
  is '视频存储路径';

prompt
prompt Creating table KJFTXT_TSMX
prompt ==========================
prompt
create table KJFTXT_TSMX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  TSBH        NUMBER,
  CS          NUMBER,
  SM          BLOB,
  JLRBS       NUMBER,
  JLR         VARCHAR2(40),
  YCM         VARCHAR2(200),
  JLSJ        DATE,
  KSSJ        DATE,
  JSSJ        DATE,
  TDH         NUMBER,
  DJRBS       NUMBER,
  DJRQ        VARCHAR2(40),
  KTCS        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table KJFTXT_TSMX
  is '庭审明细';
comment on column KJFTXT_TSMX.FYBM
  is '法院编码';
comment on column KJFTXT_TSMX.BH
  is '编号';
comment on column KJFTXT_TSMX.TSBH
  is '庭审编号';
comment on column KJFTXT_TSMX.CS
  is '次数';
comment on column KJFTXT_TSMX.SM
  is '说明';
comment on column KJFTXT_TSMX.JLRBS
  is '记录人标识';
comment on column KJFTXT_TSMX.JLR
  is '记录人';
comment on column KJFTXT_TSMX.YCM
  is '远程名';
comment on column KJFTXT_TSMX.JLSJ
  is '记录时间';
comment on column KJFTXT_TSMX.KSSJ
  is '开始时间';
comment on column KJFTXT_TSMX.JSSJ
  is '结束时间';
comment on column KJFTXT_TSMX.TDH
  is '通道号';
comment on column KJFTXT_TSMX.DJRBS
  is '登记人标识';
comment on column KJFTXT_TSMX.DJRQ
  is '登记日期';

prompt
prompt Creating table KJFTXT_TSXX
prompt ==========================
prompt
create table KJFTXT_TSXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  TSBH        NUMBER,
  AJBS        NUMBER,
  AH          VARCHAR2(40),
  TSCS        NUMBER,
  JHKTRQ      DATE,
  BLNR        BLOB,
  BM          VARCHAR2(50),
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  JSRQ        DATE,
  SPFT        VARCHAR2(50),
  SPWJLJ      VARCHAR2(250),
  TYWJLB      BLOB,
  RQ          DATE,
  HBAJLB      BLOB,
  ZDGLBZ      NUMBER,
  KTRQ        DATE,
  PQBH        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table KJFTXT_TSXX
  is '庭审信息';
comment on column KJFTXT_TSXX.FYBM
  is '法院编码';
comment on column KJFTXT_TSXX.TSBH
  is '庭审编号';
comment on column KJFTXT_TSXX.AJBS
  is '案件标识';
comment on column KJFTXT_TSXX.AH
  is '案号';
comment on column KJFTXT_TSXX.TSCS
  is '庭审次数';
comment on column KJFTXT_TSXX.JHKTRQ
  is '计划开庭日期';
comment on column KJFTXT_TSXX.BLNR
  is '笔录内容';
comment on column KJFTXT_TSXX.BM
  is '部门';
comment on column KJFTXT_TSXX.DJRBS
  is '登记人标识';
comment on column KJFTXT_TSXX.DJR
  is '登记人';
comment on column KJFTXT_TSXX.DJRQ
  is '登记日期';
comment on column KJFTXT_TSXX.JSRQ
  is '结束日期';
comment on column KJFTXT_TSXX.SPFT
  is '审判法庭';
comment on column KJFTXT_TSXX.SPWJLJ
  is '视频文件路径';
comment on column KJFTXT_TSXX.TYWJLB
  is '投影文件列表';
comment on column KJFTXT_TSXX.RQ
  is '日期';
comment on column KJFTXT_TSXX.HBAJLB
  is '合并案件列表';
comment on column KJFTXT_TSXX.ZDGLBZ
  is '自动管理标志';
comment on column KJFTXT_TSXX.KTRQ
  is '开庭日期';
comment on column KJFTXT_TSXX.PQBH
  is '排期编号';

prompt
prompt Creating table MSSPJH_QZJL
prompt ==========================
prompt
create table MSSPJH_QZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  WSBS        NUMBER,
  QZNR        BLOB,
  CJRQ        DATE,
  XGRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table MSSPJH_QZJL
  is '签字记录';
comment on column MSSPJH_QZJL.FYBM
  is '法院编码';
comment on column MSSPJH_QZJL.BH
  is '编号';
comment on column MSSPJH_QZJL.WSBS
  is '文书标识';
comment on column MSSPJH_QZJL.QZNR
  is '签字内容';
comment on column MSSPJH_QZJL.CJRQ
  is '创建日期';
comment on column MSSPJH_QZJL.XGRQ
  is '修改日期';

prompt
prompt Creating table MSSPJH_ZDYWS
prompt ===========================
prompt
create table MSSPJH_ZDYWS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  WSBH        VARCHAR2(200),
  WSMC        VARCHAR2(200),
  SJ          BLOB,
  WJJLRBS     NUMBER,
  WJJLR       VARCHAR2(50),
  JLRQ        DATE,
  AJBS        NUMBER,
  ZDYYA       VARCHAR2(255),
  ZDYEB       VARCHAR2(255),
  ZDYSC       VARCHAR2(255),
  ZDYSD       VARCHAR2(255),
  ZDYWE       VARCHAR2(255),
  ZDYLF       VARCHAR2(255),
  ZDYQG       VARCHAR2(255),
  ZDYBH       VARCHAR2(255),
  ZDYJI       VARCHAR2(255),
  ZDYSJ       VARCHAR2(255),
  ZDYSYK      VARCHAR2(255),
  ZDYSEM      VARCHAR2(255),
  ZDYSSL      VARCHAR2(255),
  ZDYSSN      VARCHAR2(255),
  ZDYSWA      VARCHAR2(255),
  ZDYSLB      VARCHAR2(255),
  ZDYSQC      VARCHAR2(255),
  ZDYSBD      VARCHAR2(255),
  ZDYSJE      VARCHAR2(255),
  ZDYESF      VARCHAR2(255),
  ZDYESYG     VARCHAR2(255),
  ZDYESEH     VARCHAR2(255),
  ZDYESSI     VARCHAR2(255),
  ZDYESSIJ    VARCHAR2(255),
  ZDYESWJ     VARCHAR2(255),
  ZDYESLK     VARCHAR2(255),
  ZDYESQL     VARCHAR2(255),
  ZDYESBM     VARCHAR2(255),
  ZDYESJN     VARCHAR2(255),
  ZDYSSA      VARCHAR2(255),
  ZDYSSYB     VARCHAR2(255),
  ZDYSSEC     VARCHAR2(255),
  ZDYSSSD     VARCHAR2(255),
  ZDYSSSE     VARCHAR2(255),
  ZDYSSWF     VARCHAR2(255),
  ZDYSSLG     VARCHAR2(255),
  ZDYSSQH     VARCHAR2(255),
  ZDYSSBI     VARCHAR2(255),
  ZDYSSJJ     VARCHAR2(255),
  ZDYSSK      VARCHAR2(255),
  ZDYSSYL     VARCHAR2(255),
  ZDYSSEM     VARCHAR2(255),
  ZDYSSSN     VARCHAR2(255),
  ZDYSSSA     VARCHAR2(255),
  ZDYSSWB     VARCHAR2(255),
  ZDYSSLC     VARCHAR2(255),
  ZDYSSQD     VARCHAR2(255),
  ZDYSSBE     VARCHAR2(255),
  ZDYSSJF     VARCHAR2(255),
  ZDYWSG      VARCHAR2(255),
  ZDYWSYH     BLOB,
  CLBS        VARCHAR2(255),
  TSBS        VARCHAR2(150)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table MSSPJH_ZDYWS
  is '自定义文书';
comment on column MSSPJH_ZDYWS.FYBM
  is '法院编码';
comment on column MSSPJH_ZDYWS.BH
  is '编号';
comment on column MSSPJH_ZDYWS.WSBH
  is '文书编号';
comment on column MSSPJH_ZDYWS.WSMC
  is '文书名称';
comment on column MSSPJH_ZDYWS.SJ
  is '数据';
comment on column MSSPJH_ZDYWS.WJJLRBS
  is '文件建立人标识';
comment on column MSSPJH_ZDYWS.WJJLR
  is '文件建立人';
comment on column MSSPJH_ZDYWS.JLRQ
  is '建立日期';
comment on column MSSPJH_ZDYWS.AJBS
  is '案件标识';
comment on column MSSPJH_ZDYWS.ZDYYA
  is '自定义一a';
comment on column MSSPJH_ZDYWS.ZDYEB
  is '自定义二b';
comment on column MSSPJH_ZDYWS.ZDYSC
  is '自定义三c';
comment on column MSSPJH_ZDYWS.ZDYSD
  is '自定义四d';
comment on column MSSPJH_ZDYWS.ZDYWE
  is '自定义五e';
comment on column MSSPJH_ZDYWS.ZDYLF
  is '自定义六f';
comment on column MSSPJH_ZDYWS.ZDYQG
  is '自定义七g';
comment on column MSSPJH_ZDYWS.ZDYBH
  is '自定义八h';
comment on column MSSPJH_ZDYWS.ZDYJI
  is '自定义九i';
comment on column MSSPJH_ZDYWS.ZDYSJ
  is '自定义十j';
comment on column MSSPJH_ZDYWS.ZDYSYK
  is '自定义十一k';
comment on column MSSPJH_ZDYWS.ZDYSEM
  is '自定义十二m';
comment on column MSSPJH_ZDYWS.ZDYSSL
  is '自定义十三l';
comment on column MSSPJH_ZDYWS.ZDYSSN
  is '自定义十四n';
comment on column MSSPJH_ZDYWS.ZDYSWA
  is '自定义十五a';
comment on column MSSPJH_ZDYWS.ZDYSLB
  is '自定义十六b';
comment on column MSSPJH_ZDYWS.ZDYSQC
  is '自定义十七c';
comment on column MSSPJH_ZDYWS.ZDYSBD
  is '自定义十八d';
comment on column MSSPJH_ZDYWS.ZDYSJE
  is '自定义十九e';
comment on column MSSPJH_ZDYWS.ZDYESF
  is '自定义二十f';
comment on column MSSPJH_ZDYWS.ZDYESYG
  is '自定义二十一g';
comment on column MSSPJH_ZDYWS.ZDYESEH
  is '自定义二十二h';
comment on column MSSPJH_ZDYWS.ZDYESSI
  is '自定义二十三i';
comment on column MSSPJH_ZDYWS.ZDYESSIJ
  is '自定义二十四ij';
comment on column MSSPJH_ZDYWS.ZDYESWJ
  is '自定义二十五j';
comment on column MSSPJH_ZDYWS.ZDYESLK
  is '自定义二十六k';
comment on column MSSPJH_ZDYWS.ZDYESQL
  is '自定义二十七l';
comment on column MSSPJH_ZDYWS.ZDYESBM
  is '自定义二十八m';
comment on column MSSPJH_ZDYWS.ZDYESJN
  is '自定义二十九n';
comment on column MSSPJH_ZDYWS.ZDYSSA
  is '自定义三十a';
comment on column MSSPJH_ZDYWS.ZDYSSYB
  is '自定义三十一b';
comment on column MSSPJH_ZDYWS.ZDYSSEC
  is '自定义三十二c';
comment on column MSSPJH_ZDYWS.ZDYSSSD
  is '自定义三十三d';
comment on column MSSPJH_ZDYWS.ZDYSSSE
  is '自定义三十四e';
comment on column MSSPJH_ZDYWS.ZDYSSWF
  is '自定义三十五f';
comment on column MSSPJH_ZDYWS.ZDYSSLG
  is '自定义三十六g';
comment on column MSSPJH_ZDYWS.ZDYSSQH
  is '自定义三十七h';
comment on column MSSPJH_ZDYWS.ZDYSSBI
  is '自定义三十八i';
comment on column MSSPJH_ZDYWS.ZDYSSJJ
  is '自定义三十九j';
comment on column MSSPJH_ZDYWS.ZDYSSK
  is '自定义四十k';
comment on column MSSPJH_ZDYWS.ZDYSSYL
  is '自定义四十一l';
comment on column MSSPJH_ZDYWS.ZDYSSEM
  is '自定义四十二m';
comment on column MSSPJH_ZDYWS.ZDYSSSN
  is '自定义四十三n';
comment on column MSSPJH_ZDYWS.ZDYSSSA
  is '自定义四十四a';
comment on column MSSPJH_ZDYWS.ZDYSSWB
  is '自定义四十五b';
comment on column MSSPJH_ZDYWS.ZDYSSLC
  is '自定义四十六c';
comment on column MSSPJH_ZDYWS.ZDYSSQD
  is '自定义四十七d';
comment on column MSSPJH_ZDYWS.ZDYSSBE
  is '自定义四十八e';
comment on column MSSPJH_ZDYWS.ZDYSSJF
  is '自定义四十九f';
comment on column MSSPJH_ZDYWS.ZDYWSG
  is '自定义五十g';
comment on column MSSPJH_ZDYWS.ZDYWSYH
  is '自定义五十一h';
comment on column MSSPJH_ZDYWS.CLBS
  is '处理标识';
comment on column MSSPJH_ZDYWS.TSBS
  is '特殊标识';

prompt
prompt Creating table PBSXLSQK_PBBLQKDJXX
prompt ==================================
prompt
create table PBSXLSQK_PBBLQKDJXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  LSSXBS      NUMBER,
  LSSXBH      VARCHAR2(100),
  XH          NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  LSSJ        DATE,
  LSQK        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table PBSXLSQK_PBBLQKDJXX
  is '批办办理情况登记信息';
comment on column PBSXLSQK_PBBLQKDJXX.FYBM
  is '法院编码';
comment on column PBSXLSQK_PBBLQKDJXX.BH
  is '编号';
comment on column PBSXLSQK_PBBLQKDJXX.LSSXBS
  is '落实事项标识';
comment on column PBSXLSQK_PBBLQKDJXX.LSSXBH
  is '落实事项编号';
comment on column PBSXLSQK_PBBLQKDJXX.XH
  is '序号';
comment on column PBSXLSQK_PBBLQKDJXX.DJRBS
  is '登记人标识';
comment on column PBSXLSQK_PBBLQKDJXX.DJR
  is '登记人';
comment on column PBSXLSQK_PBBLQKDJXX.LSSJ
  is '落实时间';
comment on column PBSXLSQK_PBBLQKDJXX.LSQK
  is '落实情况';

prompt
prompt Creating table PBSXLSQK_PBSPJLXX
prompt ================================
prompt
create table PBSXLSQK_PBSPJLXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  LSSXBS      NUMBER,
  LSSXBH      VARCHAR2(100),
  QZNR        BLOB,
  QZSJ        DATE,
  XGSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table PBSXLSQK_PBSPJLXX
  is '批办审批记录信息';
comment on column PBSXLSQK_PBSPJLXX.FYBM
  is '法院编码';
comment on column PBSXLSQK_PBSPJLXX.BH
  is '编号';
comment on column PBSXLSQK_PBSPJLXX.LSSXBS
  is '落实事项标识';
comment on column PBSXLSQK_PBSPJLXX.LSSXBH
  is '落实事项编号';
comment on column PBSXLSQK_PBSPJLXX.QZNR
  is '签字内容';
comment on column PBSXLSQK_PBSPJLXX.QZSJ
  is '签字时间';
comment on column PBSXLSQK_PBSPJLXX.XGSJ
  is '修改时间';

prompt
prompt Creating table PBSXLSQK_PBST
prompt ============================
prompt
create table PBSXLSQK_PBST
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  PBBS        NUMBER,
  XH          NUMBER,
  WJMC        VARCHAR2(255),
  STWJM       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table PBSXLSQK_PBST
  is '批办实体';
comment on column PBSXLSQK_PBST.FYBM
  is '法院编码';
comment on column PBSXLSQK_PBST.PBBS
  is '批办标识';
comment on column PBSXLSQK_PBST.XH
  is '序号';
comment on column PBSXLSQK_PBST.WJMC
  is '文件名称';
comment on column PBSXLSQK_PBST.STWJM
  is '实体文件名';

prompt
prompt Creating table PBSXLSQK_PBSXXX
prompt ==============================
prompt
create table PBSXLSQK_PBSXXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  LSSXBS      NUMBER,
  LSSXBH      VARCHAR2(100),
  DJR         NUMBER,
  LWRQ        VARCHAR2(40),
  LWDW        VARCHAR2(50),
  LWNRZY      BLOB,
  LWLB        VARCHAR2(40),
  PBRQ        DATE,
  PBSX        BLOB,
  LSQK        BLOB,
  PSYJ        BLOB,
  BZ          BLOB,
  LJBZ        NUMBER,
  LJSJ        DATE,
  GLDBBH      NUMBER,
  GLDBBT      VARCHAR2(200),
  GLSGKBT     VARCHAR2(200),
  GLSGKBH     NUMBER,
  ZBDW        VARCHAR2(200),
  WCQX        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table PBSXLSQK_PBSXXX
  is '批办事项信息';
comment on column PBSXLSQK_PBSXXX.FYBM
  is '法院编码';
comment on column PBSXLSQK_PBSXXX.LSSXBS
  is '落实事项标识';
comment on column PBSXLSQK_PBSXXX.LSSXBH
  is '落实事项编号';
comment on column PBSXLSQK_PBSXXX.DJR
  is '登记人';
comment on column PBSXLSQK_PBSXXX.LWRQ
  is '来文日期';
comment on column PBSXLSQK_PBSXXX.LWDW
  is '来文单位';
comment on column PBSXLSQK_PBSXXX.LWNRZY
  is '来文内容摘要';
comment on column PBSXLSQK_PBSXXX.LWLB
  is '来文类别';
comment on column PBSXLSQK_PBSXXX.PBRQ
  is '批办日期';
comment on column PBSXLSQK_PBSXXX.PBSX
  is '批办事项';
comment on column PBSXLSQK_PBSXXX.LSQK
  is '落实情况';
comment on column PBSXLSQK_PBSXXX.PSYJ
  is '批示意见';
comment on column PBSXLSQK_PBSXXX.BZ
  is '备注';
comment on column PBSXLSQK_PBSXXX.LJBZ
  is '了结标志';
comment on column PBSXLSQK_PBSXXX.LJSJ
  is '了结时间';
comment on column PBSXLSQK_PBSXXX.GLDBBH
  is '关联督办编号';
comment on column PBSXLSQK_PBSXXX.GLDBBT
  is '关联督办标题';
comment on column PBSXLSQK_PBSXXX.GLSGKBT
  is '关联四公开标题';
comment on column PBSXLSQK_PBSXXX.GLSGKBH
  is '关联四公开编号';
comment on column PBSXLSQK_PBSXXX.ZBDW
  is '主办单位';
comment on column PBSXLSQK_PBSXXX.WCQX
  is '完成期限';

prompt
prompt Creating table QJGLXT_FDJJR
prompt ===========================
prompt
create table QJGLXT_FDJJR
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  JJRMC       VARCHAR2(100),
  KSRQ        DATE,
  JSRQ        DATE,
  BZ          VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table QJGLXT_FDJJR
  is '法定节假日';
comment on column QJGLXT_FDJJR.FYBM
  is '法院编码';
comment on column QJGLXT_FDJJR.BH
  is '编号';
comment on column QJGLXT_FDJJR.JJRMC
  is '节假日名称';
comment on column QJGLXT_FDJJR.KSRQ
  is '开始日期';
comment on column QJGLXT_FDJJR.JSRQ
  is '结束日期';
comment on column QJGLXT_FDJJR.BZ
  is '备注';

prompt
prompt Creating table QJGLXT_NGZR
prompt ==========================
prompt
create table QJGLXT_NGZR
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  TS          NUMBER,
  ND          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table QJGLXT_NGZR
  is '年工作日';
comment on column QJGLXT_NGZR.FYBM
  is '法院编码';
comment on column QJGLXT_NGZR.BH
  is '编号';
comment on column QJGLXT_NGZR.TS
  is '天数';
comment on column QJGLXT_NGZR.ND
  is '年度';

prompt
prompt Creating table QJGLXT_QJQKB
prompt ===========================
prompt
create table QJGLXT_QJQKB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  LX          VARCHAR2(20),
  SZFY        VARCHAR2(100),
  SZBM        VARCHAR2(50),
  RYBS        NUMBER,
  RYXM        VARCHAR2(40),
  YXTS        NUMBER,
  SXTS        NUMBER,
  SYTS        NUMBER,
  ND          NUMBER,
  DJSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table QJGLXT_QJQKB
  is '请假情况表';
comment on column QJGLXT_QJQKB.FYBM
  is '法院编码';
comment on column QJGLXT_QJQKB.BH
  is '编号';
comment on column QJGLXT_QJQKB.LX
  is '类型';
comment on column QJGLXT_QJQKB.SZFY
  is '所在法院';
comment on column QJGLXT_QJQKB.SZBM
  is '所在部门';
comment on column QJGLXT_QJQKB.RYBS
  is '人员标识';
comment on column QJGLXT_QJQKB.RYXM
  is '人员姓名';
comment on column QJGLXT_QJQKB.YXTS
  is '应休天数';
comment on column QJGLXT_QJQKB.SXTS
  is '实休天数';
comment on column QJGLXT_QJQKB.SYTS
  is '剩余天数';
comment on column QJGLXT_QJQKB.ND
  is '年度';
comment on column QJGLXT_QJQKB.DJSJ
  is '登记时间';

prompt
prompt Creating table QJGLXT_QJSQB
prompt ===========================
prompt
create table QJGLXT_QJSQB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SQBS        NUMBER,
  LX          VARCHAR2(20),
  SQRBS       NUMBER,
  SQR         VARCHAR2(40),
  SZBM        VARCHAR2(50),
  SZFY        VARCHAR2(100),
  SQSJ        DATE,
  QJLX        VARCHAR2(20),
  XJFS        VARCHAR2(40),
  CMBY        NUMBER,
  SYES        NUMBER,
  LCTS        NUMBER,
  KXTS        NUMBER,
  XJKSSJ      DATE,
  XJJSSJ      DATE,
  SXTS        NUMBER,
  DZBS        NUMBER,
  DZXM        VARCHAR2(40),
  DZZW        VARCHAR2(50),
  DZDH        VARCHAR2(20),
  QJQYY       BLOB,
  QTJQQK      BLOB,
  BZ          BLOB,
  SPR1BS      NUMBER,
  SPR1        VARCHAR2(40),
  SPYJ1       VARCHAR2(40),
  SPYJBZ1     VARCHAR2(200),
  SPSJ1       DATE,
  SPQJKSSJ1   DATE,
  SPQJJSSJ1   DATE,
  SPQJTS1     NUMBER,
  SPR2BS      NUMBER,
  SPR2        VARCHAR2(40),
  SPYJ2       VARCHAR2(40),
  SPYJBZ2     VARCHAR2(200),
  SPSJ2       DATE,
  SPQJKSSJ2   DATE,
  SPQJJSSJ2   DATE,
  SPQJTS2     NUMBER,
  SPR3BS      NUMBER,
  SPR3        VARCHAR2(40),
  SPYJ3       VARCHAR2(40),
  SPYJBZ3     VARCHAR2(200),
  SPSJ3       DATE,
  SPQJKSSJ3   DATE,
  SPQJJSSJ3   DATE,
  SPQJTS3     NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  BXKSSJ      DATE,
  BXJSSJ      DATE,
  BXSPRBS     NUMBER,
  BXSPR       VARCHAR2(40),
  BXSPYJBZ    VARCHAR2(200),
  BXSPYJ      VARCHAR2(40),
  BXSPSJ      DATE,
  SPBXKSSJ    DATE,
  SPBXJSSJ    DATE,
  BXTS        NUMBER,
  SJQJKSSJ    DATE,
  SJQJJSSJ    DATE,
  SJQJTS      NUMBER,
  XJQK        VARCHAR2(20),
  XJYY        VARCHAR2(100),
  CCLX        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table QJGLXT_QJSQB
  is '请假申请表';
comment on column QJGLXT_QJSQB.FYBM
  is '法院编码';
comment on column QJGLXT_QJSQB.SQBS
  is '申请标识';
comment on column QJGLXT_QJSQB.LX
  is '类型';
comment on column QJGLXT_QJSQB.SQRBS
  is '申请人标识';
comment on column QJGLXT_QJSQB.SQR
  is '申请人';
comment on column QJGLXT_QJSQB.SZBM
  is '所在部门';
comment on column QJGLXT_QJSQB.SZFY
  is '所在法院';
comment on column QJGLXT_QJSQB.SQSJ
  is '申请时间';
comment on column QJGLXT_QJSQB.QJLX
  is '请假类型';
comment on column QJGLXT_QJSQB.XJFS
  is '休假方式';
comment on column QJGLXT_QJSQB.CMBY
  is '纯母郛哺养';
comment on column QJGLXT_QJSQB.SYES
  is '生育儿数';
comment on column QJGLXT_QJSQB.LCTS
  is '路程天数';
comment on column QJGLXT_QJSQB.KXTS
  is '可休天数';
comment on column QJGLXT_QJSQB.XJKSSJ
  is '休假开始时间';
comment on column QJGLXT_QJSQB.XJJSSJ
  is '休假结束时间';
comment on column QJGLXT_QJSQB.SXTS
  is '实休天数';
comment on column QJGLXT_QJSQB.DZBS
  is '代职标识';
comment on column QJGLXT_QJSQB.DZXM
  is '代职姓名';
comment on column QJGLXT_QJSQB.DZZW
  is '代职职务';
comment on column QJGLXT_QJSQB.DZDH
  is '代职电话';
comment on column QJGLXT_QJSQB.QJQYY
  is '请假期原因';
comment on column QJGLXT_QJSQB.QTJQQK
  is '其他假期情况';
comment on column QJGLXT_QJSQB.BZ
  is '备注';
comment on column QJGLXT_QJSQB.SPR1BS
  is '审批人1标识';
comment on column QJGLXT_QJSQB.SPR1
  is '审批人1';
comment on column QJGLXT_QJSQB.SPYJ1
  is '审批意见1';
comment on column QJGLXT_QJSQB.SPYJBZ1
  is '审批意见备注1';
comment on column QJGLXT_QJSQB.SPSJ1
  is '审批时间1';
comment on column QJGLXT_QJSQB.SPQJKSSJ1
  is '审批请假开始时间1';
comment on column QJGLXT_QJSQB.SPQJJSSJ1
  is '审批请假结束时间1';
comment on column QJGLXT_QJSQB.SPQJTS1
  is '审批请假天数1';
comment on column QJGLXT_QJSQB.SPR2BS
  is '审批人2标识';
comment on column QJGLXT_QJSQB.SPR2
  is '审批人2';
comment on column QJGLXT_QJSQB.SPYJ2
  is '审批意见2';
comment on column QJGLXT_QJSQB.SPYJBZ2
  is '审批意见备注2';
comment on column QJGLXT_QJSQB.SPSJ2
  is '审批时间2';
comment on column QJGLXT_QJSQB.SPQJKSSJ2
  is '审批请假开始时间2';
comment on column QJGLXT_QJSQB.SPQJJSSJ2
  is '审批请假结束时间2';
comment on column QJGLXT_QJSQB.SPQJTS2
  is '审批请假天数2';
comment on column QJGLXT_QJSQB.SPR3BS
  is '审批人3标识';
comment on column QJGLXT_QJSQB.SPR3
  is '审批人3';
comment on column QJGLXT_QJSQB.SPYJ3
  is '审批意见3';
comment on column QJGLXT_QJSQB.SPYJBZ3
  is '审批意见备注3';
comment on column QJGLXT_QJSQB.SPSJ3
  is '审批时间3';
comment on column QJGLXT_QJSQB.SPQJKSSJ3
  is '审批请假开始时间3';
comment on column QJGLXT_QJSQB.SPQJJSSJ3
  is '审批请假结束时间3';
comment on column QJGLXT_QJSQB.SPQJTS3
  is '审批请假天数3';
comment on column QJGLXT_QJSQB.DJRBS
  is '登记人标识';
comment on column QJGLXT_QJSQB.DJR
  is '登记人';
comment on column QJGLXT_QJSQB.DJRQ
  is '登记日期';
comment on column QJGLXT_QJSQB.BXKSSJ
  is '补休开始时间';
comment on column QJGLXT_QJSQB.BXJSSJ
  is '补休结束时间';
comment on column QJGLXT_QJSQB.BXSPRBS
  is '补休审批人标识';
comment on column QJGLXT_QJSQB.BXSPR
  is '补休审批人';
comment on column QJGLXT_QJSQB.BXSPYJBZ
  is '补休审批意见备注';
comment on column QJGLXT_QJSQB.BXSPYJ
  is '补休审批意见';
comment on column QJGLXT_QJSQB.BXSPSJ
  is '补休审批时间';
comment on column QJGLXT_QJSQB.SPBXKSSJ
  is '审批补休开始时间';
comment on column QJGLXT_QJSQB.SPBXJSSJ
  is '审批补休结束时间';
comment on column QJGLXT_QJSQB.BXTS
  is '补休天数';
comment on column QJGLXT_QJSQB.SJQJKSSJ
  is '实际请假开始时间';
comment on column QJGLXT_QJSQB.SJQJJSSJ
  is '实际请假结束时间';
comment on column QJGLXT_QJSQB.SJQJTS
  is '实际请假天数';
comment on column QJGLXT_QJSQB.XJQK
  is '休假情况';
comment on column QJGLXT_QJSQB.XJYY
  is '休假原因';
comment on column QJGLXT_QJSQB.CCLX
  is '出差类型';

prompt
prompt Creating table QJGLXT_ZGQKB
prompt ===========================
prompt
create table QJGLXT_ZGQKB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SZBM        VARCHAR2(50),
  RYBS        NUMBER,
  RYXM        VARCHAR2(40),
  SJ          DATE,
  ZGZT        NUMBER,
  BZ          BLOB,
  DJSJ        DATE,
  DZZW        VARCHAR2(50),
  DZDH        VARCHAR2(20),
  QJQYY       VARCHAR2(200),
  QTJQQK      VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table QJGLXT_ZGQKB
  is '在岗情况表';
comment on column QJGLXT_ZGQKB.FYBM
  is '法院编码';
comment on column QJGLXT_ZGQKB.BH
  is '编号';
comment on column QJGLXT_ZGQKB.SZBM
  is '所在部门';
comment on column QJGLXT_ZGQKB.RYBS
  is '人员标识';
comment on column QJGLXT_ZGQKB.RYXM
  is '人员姓名';
comment on column QJGLXT_ZGQKB.SJ
  is '时间';
comment on column QJGLXT_ZGQKB.ZGZT
  is '在岗状态';
comment on column QJGLXT_ZGQKB.BZ
  is '备注';
comment on column QJGLXT_ZGQKB.DJSJ
  is '登记时间';
comment on column QJGLXT_ZGQKB.DZZW
  is '代职职务';
comment on column QJGLXT_ZGQKB.DZDH
  is '代职电话';
comment on column QJGLXT_ZGQKB.QJQYY
  is '请假期原因';
comment on column QJGLXT_ZGQKB.QTJQQK
  is '其他假期情况';

prompt
prompt Creating table RDDBYDYLLXT_LLFJ
prompt ===============================
prompt
create table RDDBYDYLLXT_LLFJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  FJBS        NUMBER,
  LLBS        NUMBER,
  LLRBS       NUMBER,
  RDDBBS      NUMBER,
  XH          NUMBER,
  LJJWJM      VARCHAR2(250),
  SM          VARCHAR2(250),
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table RDDBYDYLLXT_LLFJ
  is '联络附件';
comment on column RDDBYDYLLXT_LLFJ.FYBM
  is '法院编码';
comment on column RDDBYDYLLXT_LLFJ.FJBS
  is '附件标识';
comment on column RDDBYDYLLXT_LLFJ.LLBS
  is '联络标识';
comment on column RDDBYDYLLXT_LLFJ.LLRBS
  is '联络人标识';
comment on column RDDBYDYLLXT_LLFJ.RDDBBS
  is '人大代表标识';
comment on column RDDBYDYLLXT_LLFJ.XH
  is '序号';
comment on column RDDBYDYLLXT_LLFJ.LJJWJM
  is '路径及文件名';
comment on column RDDBYDYLLXT_LLFJ.SM
  is '说明';
comment on column RDDBYDYLLXT_LLFJ.BZ
  is '备注';

prompt
prompt Creating table RDDBYDYLLXT_LLQKJL
prompt =================================
prompt
create table RDDBYDYLLXT_LLQKJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  LLBS        NUMBER,
  LLRBS       NUMBER,
  LLRXM       VARCHAR2(40),
  RDDBBS      NUMBER,
  RDDBXM      VARCHAR2(40),
  LLSJ        DATE,
  LLFS        VARCHAR2(40),
  SFYJB       NUMBER,
  WTLBBS      VARCHAR2(50),
  FYWTLB      VARCHAR2(100),
  SJAH        VARCHAR2(50),
  FYWTSZDW    VARCHAR2(200),
  FYWTQK      BLOB,
  FJSL        NUMBER,
  CLQK        VARCHAR2(50),
  CLJG        BLOB,
  CLSJ        DATE,
  DJSJ        DATE,
  DBMYD       VARCHAR2(40),
  BZ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table RDDBYDYLLXT_LLQKJL
  is '联络情况记录';
comment on column RDDBYDYLLXT_LLQKJL.FYBM
  is '法院编码';
comment on column RDDBYDYLLXT_LLQKJL.LLBS
  is '联络标识';
comment on column RDDBYDYLLXT_LLQKJL.LLRBS
  is '联络人标识';
comment on column RDDBYDYLLXT_LLQKJL.LLRXM
  is '联络人姓名';
comment on column RDDBYDYLLXT_LLQKJL.RDDBBS
  is '人大代表标识';
comment on column RDDBYDYLLXT_LLQKJL.RDDBXM
  is '人大代表姓名';
comment on column RDDBYDYLLXT_LLQKJL.LLSJ
  is '联络时间';
comment on column RDDBYDYLLXT_LLQKJL.LLFS
  is '联络方式';
comment on column RDDBYDYLLXT_LLQKJL.SFYJB
  is '省法院交办';
comment on column RDDBYDYLLXT_LLQKJL.WTLBBS
  is '问题类别标识';
comment on column RDDBYDYLLXT_LLQKJL.FYWTLB
  is '反映问题类别';
comment on column RDDBYDYLLXT_LLQKJL.SJAH
  is '涉及案号';
comment on column RDDBYDYLLXT_LLQKJL.FYWTSZDW
  is '反映问题所在单位';
comment on column RDDBYDYLLXT_LLQKJL.FYWTQK
  is '反映问题情况';
comment on column RDDBYDYLLXT_LLQKJL.FJSL
  is '附件数量';
comment on column RDDBYDYLLXT_LLQKJL.CLQK
  is '处理情况';
comment on column RDDBYDYLLXT_LLQKJL.CLJG
  is '处理结果';
comment on column RDDBYDYLLXT_LLQKJL.CLSJ
  is '处理时间';
comment on column RDDBYDYLLXT_LLQKJL.DJSJ
  is '登记时间';
comment on column RDDBYDYLLXT_LLQKJL.DBMYD
  is '代表满意度';
comment on column RDDBYDYLLXT_LLQKJL.BZ
  is '备注';

prompt
prompt Creating table RDDBYDYLLXT_LLYXX
prompt ================================
prompt
create table RDDBYDYLLXT_LLYXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  RDDBBS      NUMBER,
  RYBS        NUMBER,
  RYXM        VARCHAR2(40),
  LLYBM       VARCHAR2(50),
  LLCS        NUMBER,
  BZ          BLOB,
  FPBZ        BLOB,
  LLYBZ       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table RDDBYDYLLXT_LLYXX
  is '联络员信息';
comment on column RDDBYDYLLXT_LLYXX.FYBM
  is '法院编码';
comment on column RDDBYDYLLXT_LLYXX.RDDBBS
  is '人大代表标识';
comment on column RDDBYDYLLXT_LLYXX.RYBS
  is '人员标识';
comment on column RDDBYDYLLXT_LLYXX.RYXM
  is '人员姓名';
comment on column RDDBYDYLLXT_LLYXX.LLYBM
  is '联络员部门';
comment on column RDDBYDYLLXT_LLYXX.LLCS
  is '联络次数';
comment on column RDDBYDYLLXT_LLYXX.BZ
  is '备注';
comment on column RDDBYDYLLXT_LLYXX.FPBZ
  is '分配备注';
comment on column RDDBYDYLLXT_LLYXX.LLYBZ
  is '联络员标志';

prompt
prompt Creating table RDDBYDYLLXT_RDDBXX
prompt =================================
prompt
create table RDDBYDYLLXT_RDDBXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  RDDBBS      NUMBER,
  XM          VARCHAR2(40),
  XB          VARCHAR2(10),
  MZ          VARCHAR2(50),
  CSRQ        DATE,
  SSDBT       VARCHAR2(40),
  JC          NUMBER,
  DBJB        VARCHAR2(50),
  GZDW        VARCHAR2(100),
  ZW          VARCHAR2(100),
  ZC          VARCHAR2(100),
  DP          VARCHAR2(40),
  ZXWY        NUMBER,
  SFYWT       NUMBER,
  TXDZ        VARCHAR2(200),
  LXFS        VARCHAR2(200),
  DHHM1       VARCHAR2(20),
  DHHM2       VARCHAR2(20),
  DHHM3       VARCHAR2(20),
  DHHM4       VARCHAR2(20),
  CZHM        VARCHAR2(20),
  EMAILE      VARCHAR2(40),
  YB          VARCHAR2(20),
  RQQS        DATE,
  RQZ         DATE,
  TQJSRQ      DATE,
  LXR         VARCHAR2(40),
  LXRLXFS     VARCHAR2(200),
  BZ          BLOB,
  DQYDYLLY    NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table RDDBYDYLLXT_RDDBXX
  is '人大代表信息';
comment on column RDDBYDYLLXT_RDDBXX.FYBM
  is '法院编码';
comment on column RDDBYDYLLXT_RDDBXX.RDDBBS
  is '人大代表标识';
comment on column RDDBYDYLLXT_RDDBXX.XM
  is '姓名';
comment on column RDDBYDYLLXT_RDDBXX.XB
  is '性别';
comment on column RDDBYDYLLXT_RDDBXX.MZ
  is '民族';
comment on column RDDBYDYLLXT_RDDBXX.CSRQ
  is '出生日期';
comment on column RDDBYDYLLXT_RDDBXX.SSDBT
  is '所属代表团';
comment on column RDDBYDYLLXT_RDDBXX.JC
  is '届次';
comment on column RDDBYDYLLXT_RDDBXX.DBJB
  is '代表级别';
comment on column RDDBYDYLLXT_RDDBXX.GZDW
  is '工作单位';
comment on column RDDBYDYLLXT_RDDBXX.ZW
  is '职务';
comment on column RDDBYDYLLXT_RDDBXX.ZC
  is '职称';
comment on column RDDBYDYLLXT_RDDBXX.DP
  is '党派';
comment on column RDDBYDYLLXT_RDDBXX.ZXWY
  is '政协委员';
comment on column RDDBYDYLLXT_RDDBXX.SFYWT
  is '省法院委托';
comment on column RDDBYDYLLXT_RDDBXX.TXDZ
  is '通讯地址';
comment on column RDDBYDYLLXT_RDDBXX.LXFS
  is '联系方式';
comment on column RDDBYDYLLXT_RDDBXX.DHHM1
  is '电话号码1';
comment on column RDDBYDYLLXT_RDDBXX.DHHM2
  is '电话号码2';
comment on column RDDBYDYLLXT_RDDBXX.DHHM3
  is '电话号码3';
comment on column RDDBYDYLLXT_RDDBXX.DHHM4
  is '电话号码4';
comment on column RDDBYDYLLXT_RDDBXX.CZHM
  is '传真号码';
comment on column RDDBYDYLLXT_RDDBXX.EMAILE
  is 'EMaile';
comment on column RDDBYDYLLXT_RDDBXX.YB
  is '邮编';
comment on column RDDBYDYLLXT_RDDBXX.RQQS
  is '任期起始';
comment on column RDDBYDYLLXT_RDDBXX.RQZ
  is '任期止';
comment on column RDDBYDYLLXT_RDDBXX.TQJSRQ
  is '提前结束任期';
comment on column RDDBYDYLLXT_RDDBXX.LXR
  is '联系人';
comment on column RDDBYDYLLXT_RDDBXX.LXRLXFS
  is '联系人联系方式';
comment on column RDDBYDYLLXT_RDDBXX.BZ
  is '备注';
comment on column RDDBYDYLLXT_RDDBXX.DQYDYLLY
  is '当前一对一联络员';

prompt
prompt Creating table RSXT_RYCFXX
prompt ==========================
prompt
create table RSXT_RYCFXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  CFBS        NUMBER,
  RYBS        NUMBER,
  BM          VARCHAR2(100),
  XM          VARCHAR2(40),
  CFLB        VARCHAR2(50),
  CFMC        VARCHAR2(100),
  CFSJ        DATE,
  BZ          VARCHAR2(250),
  DJSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table RSXT_RYCFXX
  is '人员处分信息';
comment on column RSXT_RYCFXX.FYBM
  is '法院编码';
comment on column RSXT_RYCFXX.CFBS
  is '处分标识';
comment on column RSXT_RYCFXX.RYBS
  is '人员标识';
comment on column RSXT_RYCFXX.BM
  is '部门';
comment on column RSXT_RYCFXX.XM
  is '姓名';
comment on column RSXT_RYCFXX.CFLB
  is '处分类别';
comment on column RSXT_RYCFXX.CFMC
  is '处分名称';
comment on column RSXT_RYCFXX.CFSJ
  is '处分时间';
comment on column RSXT_RYCFXX.BZ
  is '备注';
comment on column RSXT_RYCFXX.DJSJ
  is '登记时间';

prompt
prompt Creating table RSXT_RYDDXX
prompt ==========================
prompt
create table RSXT_RYDDXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  DDBS        NUMBER,
  RYBS        NUMBER,
  XM          VARCHAR2(40),
  YBM         VARCHAR2(100),
  XBM         VARCHAR2(100),
  YZW         VARCHAR2(50),
  XZW         VARCHAR2(50),
  DDLX        VARCHAR2(20),
  KSSJ        DATE,
  JSSJ        DATE,
  MZWH        VARCHAR2(50),
  RZWH        VARCHAR2(50),
  RMJG        VARCHAR2(100),
  RMLY        VARCHAR2(250),
  DJSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table RSXT_RYDDXX
  is '人员调动信息';
comment on column RSXT_RYDDXX.FYBM
  is '法院编码';
comment on column RSXT_RYDDXX.DDBS
  is '调动标识';
comment on column RSXT_RYDDXX.RYBS
  is '人员标识';
comment on column RSXT_RYDDXX.XM
  is '姓名';
comment on column RSXT_RYDDXX.YBM
  is '原部门';
comment on column RSXT_RYDDXX.XBM
  is '现部门';
comment on column RSXT_RYDDXX.YZW
  is '原职务';
comment on column RSXT_RYDDXX.XZW
  is '现职务';
comment on column RSXT_RYDDXX.DDLX
  is '调动类型';
comment on column RSXT_RYDDXX.KSSJ
  is '开始时间';
comment on column RSXT_RYDDXX.JSSJ
  is '结束时间';
comment on column RSXT_RYDDXX.MZWH
  is '免职文号';
comment on column RSXT_RYDDXX.RZWH
  is '任职文号';
comment on column RSXT_RYDDXX.RMJG
  is '任免机关';
comment on column RSXT_RYDDXX.RMLY
  is '任免理由';
comment on column RSXT_RYDDXX.DJSJ
  is '登记时间';

prompt
prompt Creating table RSXT_RYJLXX
prompt ==========================
prompt
create table RSXT_RYJLXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JLBS        NUMBER,
  RYBS        NUMBER,
  BM          VARCHAR2(100),
  XM          VARCHAR2(40),
  JLLB        VARCHAR2(50),
  JLMC        VARCHAR2(200),
  JLHDSJ      DATE,
  JLND        NUMBER,
  JLWH        VARCHAR2(100),
  JLPZFFDW    VARCHAR2(100),
  JLJB        VARCHAR2(50),
  BZ          VARCHAR2(250),
  DJSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table RSXT_RYJLXX
  is '人员奖励信息';
comment on column RSXT_RYJLXX.FYBM
  is '法院编码';
comment on column RSXT_RYJLXX.JLBS
  is '奖励标识';
comment on column RSXT_RYJLXX.RYBS
  is '人员标识';
comment on column RSXT_RYJLXX.BM
  is '部门';
comment on column RSXT_RYJLXX.XM
  is '姓名';
comment on column RSXT_RYJLXX.JLLB
  is '奖励类别';
comment on column RSXT_RYJLXX.JLMC
  is '奖励名称';
comment on column RSXT_RYJLXX.JLHDSJ
  is '奖励获得时间';
comment on column RSXT_RYJLXX.JLND
  is '奖励年度';
comment on column RSXT_RYJLXX.JLWH
  is '奖励文号';
comment on column RSXT_RYJLXX.JLPZFFDW
  is '奖励批准（发放）单位';
comment on column RSXT_RYJLXX.JLJB
  is '奖励级别';
comment on column RSXT_RYJLXX.BZ
  is '备注';
comment on column RSXT_RYJLXX.DJSJ
  is '登记时间';

prompt
prompt Creating table RSXT_RYJLXXS
prompt ===========================
prompt
create table RSXT_RYJLXXS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JLBS        NUMBER,
  RYBS        NUMBER,
  XM          VARCHAR2(40),
  KSSJ        VARCHAR2(40),
  JSSJ        VARCHAR2(40),
  NR          BLOB,
  SX          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table RSXT_RYJLXXS
  is '人员简历信息s';
comment on column RSXT_RYJLXXS.FYBM
  is '法院编码';
comment on column RSXT_RYJLXXS.JLBS
  is '简历标识';
comment on column RSXT_RYJLXXS.RYBS
  is '人员标识';
comment on column RSXT_RYJLXXS.XM
  is '姓名';
comment on column RSXT_RYJLXXS.KSSJ
  is '开始时间';
comment on column RSXT_RYJLXXS.JSSJ
  is '结束时间';
comment on column RSXT_RYJLXXS.NR
  is '内容';
comment on column RSXT_RYJLXXS.SX
  is '顺序';

prompt
prompt Creating table RSXT_RYJTCYXX
prompt ============================
prompt
create table RSXT_RYJTCYXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  CYBS        NUMBER,
  RYBS        NUMBER,
  XM          VARCHAR2(40),
  CW          VARCHAR2(20),
  MC          VARCHAR2(40),
  CSRQ        DATE,
  SZDW        VARCHAR2(100),
  ZZMM        VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table RSXT_RYJTCYXX
  is '人员家庭成员信息';
comment on column RSXT_RYJTCYXX.FYBM
  is '法院编码';
comment on column RSXT_RYJTCYXX.CYBS
  is '成员标识';
comment on column RSXT_RYJTCYXX.RYBS
  is '人员标识';
comment on column RSXT_RYJTCYXX.XM
  is '姓名';
comment on column RSXT_RYJTCYXX.CW
  is '称谓';
comment on column RSXT_RYJTCYXX.MC
  is '名称';
comment on column RSXT_RYJTCYXX.CSRQ
  is '出生日期';
comment on column RSXT_RYJTCYXX.SZDW
  is '所在单位';
comment on column RSXT_RYJTCYXX.ZZMM
  is '政治面貌';

prompt
prompt Creating table RSXT_RYPXXX
prompt ==========================
prompt
create table RSXT_RYPXXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  PXBS        NUMBER,
  RYBS        NUMBER,
  XM          VARCHAR2(40),
  PXLB        VARCHAR2(50),
  PXMC        VARCHAR2(50),
  KSSJ        DATE,
  JSSJ        DATE,
  PXNR        BLOB,
  PXDD        VARCHAR2(200),
  PXJG        VARCHAR2(200),
  PXTS        FLOAT,
  KQQK        VARCHAR2(50),
  SFTG        NUMBER,
  KSCJ        FLOAT,
  BZ          VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table RSXT_RYPXXX
  is '人员培训信息';
comment on column RSXT_RYPXXX.FYBM
  is '法院编码';
comment on column RSXT_RYPXXX.PXBS
  is '培训标识';
comment on column RSXT_RYPXXX.RYBS
  is '人员标识';
comment on column RSXT_RYPXXX.XM
  is '姓名';
comment on column RSXT_RYPXXX.PXLB
  is '培训类别';
comment on column RSXT_RYPXXX.PXMC
  is '培训名称';
comment on column RSXT_RYPXXX.KSSJ
  is '开始时间';
comment on column RSXT_RYPXXX.JSSJ
  is '结束时间';
comment on column RSXT_RYPXXX.PXNR
  is '培训内容';
comment on column RSXT_RYPXXX.PXDD
  is '培训地点';
comment on column RSXT_RYPXXX.PXJG
  is '培训结果';
comment on column RSXT_RYPXXX.PXTS
  is '培训天数';
comment on column RSXT_RYPXXX.KQQK
  is '考勤情况';
comment on column RSXT_RYPXXX.SFTG
  is '是否通过';
comment on column RSXT_RYPXXX.KSCJ
  is '考试成绩';
comment on column RSXT_RYPXXX.BZ
  is '备注';

prompt
prompt Creating table RSXT_RYXX
prompt ========================
prompt
create table RSXT_RYXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  RYBS        NUMBER,
  XM          VARCHAR2(40),
  BMBS        NUMBER,
  BM          VARCHAR2(100),
  XB          VARCHAR2(10),
  MZ          VARCHAR2(20),
  CSRQ        DATE,
  ZZMM        VARCHAR2(40),
  JG          VARCHAR2(40),
  CSD         VARCHAR2(40),
  SFZH        VARCHAR2(20),
  RDTSJ       DATE,
  CJGZSJ      DATE,
  BZQK        VARCHAR2(20),
  GBFL        VARCHAR2(20),
  GWXZ        VARCHAR2(20),
  GZGW        VARCHAR2(20),
  SFSY        NUMBER,
  RYLB        VARCHAR2(20),
  XZZJ        VARCHAR2(50),
  CRZJSJ      DATE,
  XRZW        VARCHAR2(50),
  RXZWSJ      DATE,
  SPZC        VARCHAR2(50),
  RXZCSJ      DATE,
  SPZW        VARCHAR2(50),
  RSPZWSJ     DATE,
  JSZW        VARCHAR2(50),
  XZZW        VARCHAR2(50),
  RXZZWSJ     DATE,
  FGDJ        VARCHAR2(50),
  FGDJQSSJ    DATE,
  FGDJPZWH    VARCHAR2(50),
  FGDJPZJG    VARCHAR2(50),
  ZGXL        VARCHAR2(20),
  ZGXLQDYX    VARCHAR2(100),
  ZGXW        VARCHAR2(20),
  ZGXLLX      VARCHAR2(20),
  ZGXLXJZY    VARCHAR2(50),
  QRZXL       VARCHAR2(20),
  QRZBYYX     VARCHAR2(100),
  QRZXW       VARCHAR2(20),
  QRZZY       VARCHAR2(50),
  ZZXL        VARCHAR2(20),
  ZZYX        VARCHAR2(100),
  ZZXW        VARCHAR2(20),
  ZZZY        VARCHAR2(50),
  ZPXX        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table RSXT_RYXX
  is '人员信息';
comment on column RSXT_RYXX.FYBM
  is '法院编码';
comment on column RSXT_RYXX.RYBS
  is '人员标识';
comment on column RSXT_RYXX.XM
  is '姓名';
comment on column RSXT_RYXX.BMBS
  is '部门标识';
comment on column RSXT_RYXX.BM
  is '部门';
comment on column RSXT_RYXX.XB
  is '性别';
comment on column RSXT_RYXX.MZ
  is '民族';
comment on column RSXT_RYXX.CSRQ
  is '出生日期';
comment on column RSXT_RYXX.ZZMM
  is '政治面貌';
comment on column RSXT_RYXX.JG
  is '籍贯';
comment on column RSXT_RYXX.CSD
  is '出生地';
comment on column RSXT_RYXX.SFZH
  is '身份证号';
comment on column RSXT_RYXX.RDTSJ
  is '入党团时间';
comment on column RSXT_RYXX.CJGZSJ
  is '参加工作时间';
comment on column RSXT_RYXX.BZQK
  is '编制情况';
comment on column RSXT_RYXX.GBFL
  is '干部分类';
comment on column RSXT_RYXX.GWXZ
  is '岗位性质';
comment on column RSXT_RYXX.GZGW
  is '工作岗位';
comment on column RSXT_RYXX.SFSY
  is '是否使用';
comment on column RSXT_RYXX.RYLB
  is '人员类别';
comment on column RSXT_RYXX.XZZJ
  is '行政职级';
comment on column RSXT_RYXX.CRZJSJ
  is '出任职级时间';
comment on column RSXT_RYXX.XRZW
  is '现任职务';
comment on column RSXT_RYXX.RXZWSJ
  is '任现职务时间';
comment on column RSXT_RYXX.SPZC
  is '审判职称';
comment on column RSXT_RYXX.RXZCSJ
  is '任现职称时间';
comment on column RSXT_RYXX.SPZW
  is '审判职务';
comment on column RSXT_RYXX.RSPZWSJ
  is '任审判职务时间';
comment on column RSXT_RYXX.JSZW
  is '技术职务';
comment on column RSXT_RYXX.XZZW
  is '行政职务';
comment on column RSXT_RYXX.RXZZWSJ
  is '任行政职务时间';
comment on column RSXT_RYXX.FGDJ
  is '法官等级';
comment on column RSXT_RYXX.FGDJQSSJ
  is '法官等级起算时间';
comment on column RSXT_RYXX.FGDJPZWH
  is '法官等级批准文号';
comment on column RSXT_RYXX.FGDJPZJG
  is '法官等级批准机关';
comment on column RSXT_RYXX.ZGXL
  is '最高学历';
comment on column RSXT_RYXX.ZGXLQDYX
  is '最高学历取得院校';
comment on column RSXT_RYXX.ZGXW
  is '最高学位';
comment on column RSXT_RYXX.ZGXLLX
  is '最高学历类型';
comment on column RSXT_RYXX.ZGXLXJZY
  is '最高学历系及专业';
comment on column RSXT_RYXX.QRZXL
  is '全日制学历';
comment on column RSXT_RYXX.QRZBYYX
  is '全日制毕业院校';
comment on column RSXT_RYXX.QRZXW
  is '全日制学位';
comment on column RSXT_RYXX.QRZZY
  is '全日制专业';
comment on column RSXT_RYXX.ZZXL
  is '在职学历';
comment on column RSXT_RYXX.ZZYX
  is '在职院校';
comment on column RSXT_RYXX.ZZXW
  is '在职学位';
comment on column RSXT_RYXX.ZZZY
  is '在职专业';
comment on column RSXT_RYXX.ZPXX
  is '照片信息';

prompt
prompt Creating table SFTJJKXT_DPFZQKTJB
prompt =================================
prompt
create table SFTJJKXT_DPFZQKTJB
(
  ID                 VARCHAR2(36) not null,
  REG_TIME           DATE not null,
  UPDATE_TIME        DATE not null,
  DEPT_CODE          VARCHAR2(20) not null,
  APP_CODE           VARCHAR2(20) not null,
  FYBM               NUMBER,
  BH                 NUMBER,
  XH                 NUMBER,
  YPBMEBKJS          NUMBER,
  YPBMEBKRS          NUMBER,
  YPEBZYQKJS         NUMBER,
  YPEBZYQKRS         NUMBER,
  YPYQKYSJS          NUMBER,
  YPYQKYSRS          NUMBER,
  HLYBMSKJS          NUMBER,
  HLYBMSKRS          NUMBER,
  HLYSZWSKJS         NUMBER,
  HLYSZWSKRS         NUMBER,
  HLYWSKYSJS         NUMBER,
  HLYWSKYSRS         NUMBER,
  JJBBABMSKJS        NUMBER,
  JJBBABMSKRS        NUMBER,
  JJBBASZWSKJS       NUMBER,
  JJBBASZWSKRS       NUMBER,
  JJBBAWSKYSJS       NUMBER,
  JJBBAWSKYSRS       NUMBER,
  QTDPJS             NUMBER,
  QTDPRS             NUMBER,
  HJJS               NUMBER,
  HJRS               NUMBER,
  FYBMFXBM           NUMBER,
  BHBH               NUMBER,
  XHXH               NUMBER,
  FZJEWFJSRS         NUMBER,
  FZJEWSDRS          NUMBER,
  FZJEBMYWYRS        NUMBER,
  FZJEYWYYSBMSWYRS   NUMBER,
  FZJESWYYSBMWSWYRS  NUMBER,
  FZJEWSWYYSBMYBWYRS NUMBER,
  FZJEYBWYYSBMWBWYRS NUMBER,
  FZJEWBWYYSBMYQWYRS NUMBER,
  FZJEYQWYYSRS       NUMBER,
  FZJEXJRS           NUMBER,
  AJAZWFJSJS         NUMBER,
  AJAZBMWWYJS        NUMBER,
  AJAZWWYYSBMWSWYJS  NUMBER,
  AJAZWSWYYSBMEBWYJS NUMBER,
  AJAZEBWYYSBMYQWYJS NUMBER,
  AJAZYQWYYSBMWQWYJS NUMBER,
  AJAZWQWYYSJS       NUMBER,
  AJAZXJJS           NUMBER,
  CCXFJ              NUMBER,
  CCXMSCC            NUMBER,
  PJWHSSJE           NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_DPFZQKTJB
  is '毒品犯罪情况统计表';
comment on column SFTJJKXT_DPFZQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_DPFZQKTJB.BH
  is '编号';
comment on column SFTJJKXT_DPFZQKTJB.XH
  is '序号';
comment on column SFTJJKXT_DPFZQKTJB.YPBMEBKJS
  is '鸦片不满二百克件数';
comment on column SFTJJKXT_DPFZQKTJB.YPBMEBKRS
  is '鸦片不满二百克人数';
comment on column SFTJJKXT_DPFZQKTJB.YPEBZYQKJS
  is '鸦片二百至一千克件数';
comment on column SFTJJKXT_DPFZQKTJB.YPEBZYQKRS
  is '鸦片二百至一千克人数';
comment on column SFTJJKXT_DPFZQKTJB.YPYQKYSJS
  is '鸦片一千克以上件数';
comment on column SFTJJKXT_DPFZQKTJB.YPYQKYSRS
  is '鸦片一千克以上人数';
comment on column SFTJJKXT_DPFZQKTJB.HLYBMSKJS
  is '海洛因不满十克件数';
comment on column SFTJJKXT_DPFZQKTJB.HLYBMSKRS
  is '海洛因不满十克人数';
comment on column SFTJJKXT_DPFZQKTJB.HLYSZWSKJS
  is '海洛因十至五十克件数';
comment on column SFTJJKXT_DPFZQKTJB.HLYSZWSKRS
  is '海洛因十至五十克人数';
comment on column SFTJJKXT_DPFZQKTJB.HLYWSKYSJS
  is '海洛因五十克以上件数';
comment on column SFTJJKXT_DPFZQKTJB.HLYWSKYSRS
  is '海洛因五十克以上人数';
comment on column SFTJJKXT_DPFZQKTJB.JJBBABMSKJS
  is '甲基苯丙胺不满十克件数';
comment on column SFTJJKXT_DPFZQKTJB.JJBBABMSKRS
  is '甲基苯丙胺不满十克人数';
comment on column SFTJJKXT_DPFZQKTJB.JJBBASZWSKJS
  is '甲基苯丙胺十至五十克件数';
comment on column SFTJJKXT_DPFZQKTJB.JJBBASZWSKRS
  is '甲基苯丙胺十至五十克人数';
comment on column SFTJJKXT_DPFZQKTJB.JJBBAWSKYSJS
  is '甲基苯丙胺五十克以上件数';
comment on column SFTJJKXT_DPFZQKTJB.JJBBAWSKYSRS
  is '甲基苯丙胺五十克以上人数';
comment on column SFTJJKXT_DPFZQKTJB.QTDPJS
  is '其他毒品件数';
comment on column SFTJJKXT_DPFZQKTJB.QTDPRS
  is '其他毒品人数';
comment on column SFTJJKXT_DPFZQKTJB.HJJS
  is '合计件数';
comment on column SFTJJKXT_DPFZQKTJB.HJRS
  is '合计人数';
comment on column SFTJJKXT_DPFZQKTJB.FYBMFXBM
  is '法院编码fxbm';
comment on column SFTJJKXT_DPFZQKTJB.BHBH
  is '编号bh';
comment on column SFTJJKXT_DPFZQKTJB.XHXH
  is '序号xh';
comment on column SFTJJKXT_DPFZQKTJB.FZJEWFJSRS
  is '犯罪金额无法计算人数';
comment on column SFTJJKXT_DPFZQKTJB.FZJEWSDRS
  is '犯罪金额无所得人数';
comment on column SFTJJKXT_DPFZQKTJB.FZJEBMYWYRS
  is '犯罪金额不满一万元人数';
comment on column SFTJJKXT_DPFZQKTJB.FZJEYWYYSBMSWYRS
  is '犯罪金额一万元以上不满十万元人数';
comment on column SFTJJKXT_DPFZQKTJB.FZJESWYYSBMWSWYRS
  is '犯罪金额十万元以上不满五十万元人数';
comment on column SFTJJKXT_DPFZQKTJB.FZJEWSWYYSBMYBWYRS
  is '犯罪金额五十万元以上不满一百万元人数';
comment on column SFTJJKXT_DPFZQKTJB.FZJEYBWYYSBMWBWYRS
  is '犯罪金额一百万元以上不满五百万元人数';
comment on column SFTJJKXT_DPFZQKTJB.FZJEWBWYYSBMYQWYRS
  is '犯罪金额五百万元以上不满一千万元人数';
comment on column SFTJJKXT_DPFZQKTJB.FZJEYQWYYSRS
  is '犯罪金额一千万元以上人数';
comment on column SFTJJKXT_DPFZQKTJB.FZJEXJRS
  is '犯罪金额小计人数';
comment on column SFTJJKXT_DPFZQKTJB.AJAZWFJSJS
  is '案件案值无法计算件数';
comment on column SFTJJKXT_DPFZQKTJB.AJAZBMWWYJS
  is '案件案值不满五万元件数';
comment on column SFTJJKXT_DPFZQKTJB.AJAZWWYYSBMWSWYJS
  is '案件案值五万元以上不满五十万元件数';
comment on column SFTJJKXT_DPFZQKTJB.AJAZWSWYYSBMEBWYJS
  is '案件案值五十万元以上不满二百万元件数';
comment on column SFTJJKXT_DPFZQKTJB.AJAZEBWYYSBMYQWYJS
  is '案件案值二百万元以上不满一千万元件数';
comment on column SFTJJKXT_DPFZQKTJB.AJAZYQWYYSBMWQWYJS
  is '案件案值一千万元以上不满五千万元件数';
comment on column SFTJJKXT_DPFZQKTJB.AJAZWQWYYSJS
  is '案件案值五千万元以上件数';
comment on column SFTJJKXT_DPFZQKTJB.AJAZXJJS
  is '案件案值小计件数';
comment on column SFTJJKXT_DPFZQKTJB.CCXFJ
  is '财产刑罚金';
comment on column SFTJJKXT_DPFZQKTJB.CCXMSCC
  is '财产刑没收财产';
comment on column SFTJJKXT_DPFZQKTJB.PJWHSSJE
  is '判决挽回损失金额';

prompt
prompt Creating table SFTJJKXT_DWFZQK
prompt ==============================
prompt
create table SFTJJKXT_DWFZQK
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  DWMC        VARCHAR2(100),
  FZJE        NUMBER,
  ZM          VARCHAR2(100),
  FJJE        NUMBER,
  XM          VARCHAR2(40),
  ZW          VARCHAR2(20),
  JB          VARCHAR2(20),
  ZX          VARCHAR2(100),
  FJX         VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_DWFZQK
  is '单位犯罪情况';
comment on column SFTJJKXT_DWFZQK.FYBM
  is '法院编码';
comment on column SFTJJKXT_DWFZQK.BH
  is '编号';
comment on column SFTJJKXT_DWFZQK.DWMC
  is '单位名称';
comment on column SFTJJKXT_DWFZQK.FZJE
  is '犯罪金额';
comment on column SFTJJKXT_DWFZQK.ZM
  is '罪名';
comment on column SFTJJKXT_DWFZQK.FJJE
  is '附加金额';
comment on column SFTJJKXT_DWFZQK.XM
  is '姓名';
comment on column SFTJJKXT_DWFZQK.ZW
  is '职务';
comment on column SFTJJKXT_DWFZQK.JB
  is '级别';
comment on column SFTJJKXT_DWFZQK.ZX
  is '主刑';
comment on column SFTJJKXT_DWFZQK.FJX
  is '附加刑';

prompt
prompt Creating table SFTJJKXT_GLAJSXQKTJB
prompt ===================================
prompt
create table SFTJJKXT_GLAJSXQKTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JAJS        NUMBER,
  SXNJS       NUMBER,
  JAYKCSX     NUMBER,
  JAPZYC      NUMBER,
  JACSX       NUMBER,
  JACSXBMLGY  NUMBER,
  JACSXLGYYS  NUMBER,
  JACSXYNYS   NUMBER,
  JAYYAQFZ    NUMBER,
  JAYYDQP     NUMBER,
  JAYYQS      NUMBER,
  JAYYQQYJ    NUMBER,
  JAYYQT      NUMBER,
  WJJS        NUMBER,
  SXNWJ       NUMBER,
  WJCSX       NUMBER,
  WJCSXBMLGY  NUMBER,
  WJCSXLGYYS  NUMBER,
  WJCSXYNYS   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_GLAJSXQKTJB
  is '各类案件审限情况统计表';
comment on column SFTJJKXT_GLAJSXQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_GLAJSXQKTJB.BH
  is '编号';
comment on column SFTJJKXT_GLAJSXQKTJB.XH
  is '序号';
comment on column SFTJJKXT_GLAJSXQKTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_GLAJSXQKTJB.SXNJS
  is '审限内件数';
comment on column SFTJJKXT_GLAJSXQKTJB.JAYKCSX
  is '结案有扣除审限';
comment on column SFTJJKXT_GLAJSXQKTJB.JAPZYC
  is '结案批准延长';
comment on column SFTJJKXT_GLAJSXQKTJB.JACSX
  is '结案超审限';
comment on column SFTJJKXT_GLAJSXQKTJB.JACSXBMLGY
  is '结案超审限不满六个月';
comment on column SFTJJKXT_GLAJSXQKTJB.JACSXLGYYS
  is '结案超审限六个月以上';
comment on column SFTJJKXT_GLAJSXQKTJB.JACSXYNYS
  is '结案超审限一年以上';
comment on column SFTJJKXT_GLAJSXQKTJB.JAYYAQFZ
  is '结案原因案情复杂';
comment on column SFTJJKXT_GLAJSXQKTJB.JAYYDQP
  is '结案原因待签批';
comment on column SFTJJKXT_GLAJSXQKTJB.JAYYQS
  is '结案原因请示';
comment on column SFTJJKXT_GLAJSXQKTJB.JAYYQQYJ
  is '结案原因请求意见';
comment on column SFTJJKXT_GLAJSXQKTJB.JAYYQT
  is '结案原因其他';
comment on column SFTJJKXT_GLAJSXQKTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_GLAJSXQKTJB.SXNWJ
  is '审限内未结';
comment on column SFTJJKXT_GLAJSXQKTJB.WJCSX
  is '未结超审限';
comment on column SFTJJKXT_GLAJSXQKTJB.WJCSXBMLGY
  is '未结超审限不满六个月';
comment on column SFTJJKXT_GLAJSXQKTJB.WJCSXLGYYS
  is '未结超审限六个月以上';
comment on column SFTJJKXT_GLAJSXQKTJB.WJCSXYNYS
  is '未结超审限一年以上';

prompt
prompt Creating table SFTJJKXT_HSESZSAJTJB
prompt ===================================
prompt
create table SFTJJKXT_HSESZSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  WCJS        NUMBER,
  GPJS        NUMBER,
  FHZSJS      NUMBER,
  CSJS        NUMBER,
  BHJS        NUMBER,
  ZJJS        NUMBER,
  CXYCDJS     NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  KTSLJS      NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAJS    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_HSESZSAJTJB
  is '海事二审、再审案件统计表';
comment on column SFTJJKXT_HSESZSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_HSESZSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_HSESZSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_HSESZSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_HSESZSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_HSESZSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_HSESZSAJTJB.WCJS
  is '维持件数';
comment on column SFTJJKXT_HSESZSAJTJB.GPJS
  is '改判件数';
comment on column SFTJJKXT_HSESZSAJTJB.FHZSJS
  is '发回重审件数';
comment on column SFTJJKXT_HSESZSAJTJB.CSJS
  is '撤诉件数';
comment on column SFTJJKXT_HSESZSAJTJB.BHJS
  is '驳回件数';
comment on column SFTJJKXT_HSESZSAJTJB.ZJJS
  is '终结件数';
comment on column SFTJJKXT_HSESZSAJTJB.CXYCDJS
  is '撤消原裁定件数';
comment on column SFTJJKXT_HSESZSAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_HSESZSAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_HSESZSAJTJB.KTSLJS
  is '开庭审理件数';
comment on column SFTJJKXT_HSESZSAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_HSESZSAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_HSESZSAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_HSESZSAJTJB.SAJSSAJS
  is '涉澳件数sajs';
comment on column SFTJJKXT_HSESZSAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_HSESZSAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_HSESZSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_HSESZSAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_HSYSAJTJB
prompt =================================
prompt
create table SFTJJKXT_HSYSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  SWJSSWAJ    NUMBER,
  SGATJS      NUMBER,
  JAJS        NUMBER,
  PJJS        NUMBER,
  BHQSCDJS    NUMBER,
  CSCDJS      NUMBER,
  ZJCDJS      NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  KTSLJS      NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAJS    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  SWZJE       NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_HSYSAJTJB
  is '海事一审案件统计表';
comment on column SFTJJKXT_HSYSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_HSYSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_HSYSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_HSYSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_HSYSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_HSYSAJTJB.SWJSSWAJ
  is '涉外件数swaj';
comment on column SFTJJKXT_HSYSAJTJB.SGATJS
  is '涉港澳台件数';
comment on column SFTJJKXT_HSYSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_HSYSAJTJB.PJJS
  is '判决件数';
comment on column SFTJJKXT_HSYSAJTJB.BHQSCDJS
  is '驳回起诉裁定件数';
comment on column SFTJJKXT_HSYSAJTJB.CSCDJS
  is '撤诉裁定件数';
comment on column SFTJJKXT_HSYSAJTJB.ZJCDJS
  is '终结裁定件数';
comment on column SFTJJKXT_HSYSAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_HSYSAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_HSYSAJTJB.KTSLJS
  is '开庭审理件数';
comment on column SFTJJKXT_HSYSAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_HSYSAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_HSYSAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_HSYSAJTJB.SAJSSAJS
  is '涉澳件数sajs';
comment on column SFTJJKXT_HSYSAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_HSYSAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_HSYSAJTJB.SWZJE
  is '涉外总金额';
comment on column SFTJJKXT_HSYSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_HSYSAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_HSZSCQAJSXQKTJB
prompt =======================================
prompt
create table SFTJJKXT_HSZSCQAJSXQKTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JAJS        NUMBER,
  SXNJA       NUMBER,
  JAYKCSX     NUMBER,
  JAPZYC      NUMBER,
  JACSX       NUMBER,
  JACSXBMLGY  NUMBER,
  JACSXLGYYS  NUMBER,
  JACSXYNYS   NUMBER,
  JAYYAQFZ    NUMBER,
  JAYYDQP     NUMBER,
  JAYYQS      NUMBER,
  JAYYZQYJ    NUMBER,
  JAYYQT      NUMBER,
  WJJS        NUMBER,
  SXNWJ       NUMBER,
  WJCSX       NUMBER,
  WJCSXBMLGY  NUMBER,
  WJCSXLGYYS  NUMBER,
  WJCSXYNYS   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_HSZSCQAJSXQKTJB
  is '海事、知识产权案件审限情况统计表';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.BH
  is '编号';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.XH
  is '序号';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.SXNJA
  is '审限内结案';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAYKCSX
  is '结案有扣除审限';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAPZYC
  is '结案批准延长';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JACSX
  is '结案超审限';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JACSXBMLGY
  is '结案超审限不满六个月';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JACSXLGYYS
  is '结案超审限六个月以上';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JACSXYNYS
  is '结案超审限一年以上';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAYYAQFZ
  is '结案原因案情复杂';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAYYDQP
  is '结案原因待签批';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAYYQS
  is '结案原因请示';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAYYZQYJ
  is '结案原因征求意见';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAYYQT
  is '结案原因其他';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.SXNWJ
  is '审限内未结';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.WJCSX
  is '未结超审限';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.WJCSXBMLGY
  is '未结超审限不满六个月';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.WJCSXLGYYS
  is '未结超审限六个月以上';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.WJCSXYNYS
  is '未结超审限一年以上';

prompt
prompt Creating table SFTJJKXT_HTJFESAJTJB
prompt ===================================
prompt
create table SFTJJKXT_HTJFESAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  WCJS        NUMBER,
  GPJS        NUMBER,
  FHZSJS      NUMBER,
  CSJS        NUMBER,
  BHJS        NUMBER,
  ZJJS        NUMBER,
  CXYCDJS     NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  KTSLJS      NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAJS    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_HTJFESAJTJB
  is '合同纠纷二审案件统计表';
comment on column SFTJJKXT_HTJFESAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_HTJFESAJTJB.BH
  is '编号';
comment on column SFTJJKXT_HTJFESAJTJB.XH
  is '序号';
comment on column SFTJJKXT_HTJFESAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_HTJFESAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_HTJFESAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_HTJFESAJTJB.WCJS
  is '维持件数';
comment on column SFTJJKXT_HTJFESAJTJB.GPJS
  is '改判件数';
comment on column SFTJJKXT_HTJFESAJTJB.FHZSJS
  is '发回重审件数';
comment on column SFTJJKXT_HTJFESAJTJB.CSJS
  is '撤诉件数';
comment on column SFTJJKXT_HTJFESAJTJB.BHJS
  is '驳回件数';
comment on column SFTJJKXT_HTJFESAJTJB.ZJJS
  is '终结件数';
comment on column SFTJJKXT_HTJFESAJTJB.CXYCDJS
  is '撤消原裁定件数';
comment on column SFTJJKXT_HTJFESAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_HTJFESAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_HTJFESAJTJB.KTSLJS
  is '开庭审理件数';
comment on column SFTJJKXT_HTJFESAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_HTJFESAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_HTJFESAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_HTJFESAJTJB.SAJSSAJS
  is '涉澳件数sajs';
comment on column SFTJJKXT_HTJFESAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_HTJFESAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_HTJFESAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_HTJFESAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_HTJFYSAJTJB
prompt ===================================
prompt
create table SFTJJKXT_HTJFYSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  PJJS        NUMBER,
  BHQSCDJS    NUMBER,
  CSCDJS      NUMBER,
  ZJCDJS      NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  KTSLJS      NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAJS    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_HTJFYSAJTJB
  is '合同纠纷一审案件统计表';
comment on column SFTJJKXT_HTJFYSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_HTJFYSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_HTJFYSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_HTJFYSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_HTJFYSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_HTJFYSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_HTJFYSAJTJB.PJJS
  is '判决件数';
comment on column SFTJJKXT_HTJFYSAJTJB.BHQSCDJS
  is '驳回起诉裁定件数';
comment on column SFTJJKXT_HTJFYSAJTJB.CSCDJS
  is '撤诉裁定件数';
comment on column SFTJJKXT_HTJFYSAJTJB.ZJCDJS
  is '终结裁定件数';
comment on column SFTJJKXT_HTJFYSAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_HTJFYSAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_HTJFYSAJTJB.KTSLJS
  is '开庭审理件数';
comment on column SFTJJKXT_HTJFYSAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_HTJFYSAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_HTJFYSAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_HTJFYSAJTJB.SAJSSAJS
  is '涉澳件数sajs';
comment on column SFTJJKXT_HTJFYSAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_HTJFYSAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_HTJFYSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_HTJFYSAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_HTJFZSAJTJB
prompt ===================================
prompt
create table SFTJJKXT_HTJFZSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  WCJS        NUMBER,
  GPJS        NUMBER,
  FHZSJS      NUMBER,
  CSJS        NUMBER,
  BHJS        NUMBER,
  ZJJS        NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  KTSLJS      NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAJS    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_HTJFZSAJTJB
  is '合同纠纷再审案件统计表';
comment on column SFTJJKXT_HTJFZSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_HTJFZSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_HTJFZSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_HTJFZSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_HTJFZSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_HTJFZSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_HTJFZSAJTJB.WCJS
  is '维持件数';
comment on column SFTJJKXT_HTJFZSAJTJB.GPJS
  is '改判件数';
comment on column SFTJJKXT_HTJFZSAJTJB.FHZSJS
  is '发回重审件数';
comment on column SFTJJKXT_HTJFZSAJTJB.CSJS
  is '撤诉件数';
comment on column SFTJJKXT_HTJFZSAJTJB.BHJS
  is '驳回件数';
comment on column SFTJJKXT_HTJFZSAJTJB.ZJJS
  is '终结件数';
comment on column SFTJJKXT_HTJFZSAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_HTJFZSAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_HTJFZSAJTJB.KTSLJS
  is '开庭审理件数';
comment on column SFTJJKXT_HTJFZSAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_HTJFZSAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_HTJFZSAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_HTJFZSAJTJB.SAJSSAJS
  is '涉澳件数sajs';
comment on column SFTJJKXT_HTJFZSAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_HTJFZSAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_HTJFZSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_HTJFZSAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_HYJTJCJFESAJTJB
prompt =======================================
prompt
create table SFTJJKXT_HYJTJCJFESAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  WCJS        NUMBER,
  GPJS        NUMBER,
  FHZSJS      NUMBER,
  CSJS        NUMBER,
  BHJS        NUMBER,
  ZJJS        NUMBER,
  CXYCDJS     NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  KTSLJS      NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAJS    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_HYJTJCJFESAJTJB
  is '婚姻家庭、继承纠纷二审案件统计表';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.BH
  is '编号';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.XH
  is '序号';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.WCJS
  is '维持件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.GPJS
  is '改判件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.FHZSJS
  is '发回重审件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.CSJS
  is '撤诉件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.BHJS
  is '驳回件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.ZJJS
  is '终结件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.CXYCDJS
  is '撤消原裁定件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.KTSLJS
  is '开庭审理件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.SAJSSAJS
  is '涉澳件数sajs';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_HYJTJCJFYSAJTJB
prompt =======================================
prompt
create table SFTJJKXT_HYJTJCJFYSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCRS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  PJJS        NUMBER,
  BHQSCDJS    NUMBER,
  CSCDJS      NUMBER,
  ZJCDJS      NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  YSJS        NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAJS    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_HYJTJCJFYSAJTJB
  is '婚姻家庭、继承纠纷一审案件统计表';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.JCRS
  is '旧存人数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.PJJS
  is '判决件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.BHQSCDJS
  is '驳回起诉裁定件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.CSCDJS
  is '撤诉裁定件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.ZJCDJS
  is '终结裁定件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.YSJS
  is '移送件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.SAJSSAJS
  is '涉澳件数sajs';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_HYJTJCJFZSAJTJB
prompt =======================================
prompt
create table SFTJJKXT_HYJTJCJFZSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCRS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  WCJS        NUMBER,
  GPJS        NUMBER,
  FHZSJS      NUMBER,
  CSJS        NUMBER,
  BHJS        NUMBER,
  ZJJS        NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  KTSLJS      NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAJS    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_HYJTJCJFZSAJTJB
  is '婚姻家庭、继承纠纷再审案件统计表';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.JCRS
  is '旧存人数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.WCJS
  is '维持件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.GPJS
  is '改判件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.FHZSJS
  is '发回重审件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.CSJS
  is '撤诉件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.BHJS
  is '驳回件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.ZJJS
  is '终结件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.KTSLJS
  is '开庭审理件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.SAJSSAJS
  is '涉澳件数sajs';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_HZSXZFQKTJB
prompt ===================================
prompt
create table SFTJJKXT_HZSXZFQKTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  AY          NUMBER,
  QCWZXRS     NUMBER,
  BQBHRS      NUMBER,
  BQHZRS      NUMBER,
  BQZXRS      NUMBER,
  CGQRZXRS    NUMBER,
  QMWZXRS     NUMBER,
  ZYGRRS      NUMBER,
  XGGRRS      NUMBER,
  MGNMRS      NUMBER,
  QTNMRS      NUMBER,
  XYJRRS      NUMBER,
  GJJGRYRS    NUMBER,
  GYQYRYRS    NUMBER,
  JRJGRYRS    NUMBER,
  SYDWRYRS    NUMBER,
  RMTTRYRS    NUMBER,
  QTGJGZRYRS  NUMBER,
  XSRS        NUMBER,
  ZYRS        NUMBER,
  LTXRYRS     NUMBER,
  SYGTRYRS    NUMBER,
  WYRYRS      NUMBER,
  QTSFRY      NUMBER,
  SBSZESWSRS  NUMBER,
  LSSYSRS     NUMBER,
  NXRS        NUMBER,
  DYRS        NUMBER,
  SSMZRS      NUMBER,
  GATRYRS     NUMBER,
  WJRYRS      NUMBER,
  ZFZRYRS     NUMBER,
  LFRS        NUMBER,
  JCLJRYRS    NUMBER,
  AYBM        VARCHAR2(4),
  XSLM        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_HZSXZFQKTJB
  is '核准死刑罪犯情况统计表';
comment on column SFTJJKXT_HZSXZFQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_HZSXZFQKTJB.BH
  is '编号';
comment on column SFTJJKXT_HZSXZFQKTJB.XH
  is '序号';
comment on column SFTJJKXT_HZSXZFQKTJB.AY
  is '案由';
comment on column SFTJJKXT_HZSXZFQKTJB.QCWZXRS
  is '起初未执行人数';
comment on column SFTJJKXT_HZSXZFQKTJB.BQBHRS
  is '本期报核人数';
comment on column SFTJJKXT_HZSXZFQKTJB.BQHZRS
  is '本期核准人数';
comment on column SFTJJKXT_HZSXZFQKTJB.BQZXRS
  is '本期执行人数';
comment on column SFTJJKXT_HZSXZFQKTJB.CGQRZXRS
  is '超过七日执行人数';
comment on column SFTJJKXT_HZSXZFQKTJB.QMWZXRS
  is '期末未执行人数';
comment on column SFTJJKXT_HZSXZFQKTJB.ZYGRRS
  is '在业工人人数';
comment on column SFTJJKXT_HZSXZFQKTJB.XGGRRS
  is '下岗工人人数';
comment on column SFTJJKXT_HZSXZFQKTJB.MGNMRS
  is '民工农民人数';
comment on column SFTJJKXT_HZSXZFQKTJB.QTNMRS
  is '其他农民人数';
comment on column SFTJJKXT_HZSXZFQKTJB.XYJRRS
  is '现役军人人数';
comment on column SFTJJKXT_HZSXZFQKTJB.GJJGRYRS
  is '国家机关人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.GYQYRYRS
  is '国有企业人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.JRJGRYRS
  is '金融机构人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.SYDWRYRS
  is '事业单位人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.RMTTRYRS
  is '人民团体人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.QTGJGZRYRS
  is '其他国家工作人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.XSRS
  is '学生人数';
comment on column SFTJJKXT_HZSXZFQKTJB.ZYRS
  is '职员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.LTXRYRS
  is '离退休人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.SYGTRYRS
  is '私营个体人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.WYRYRS
  is '无业人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.QTSFRY
  is '其他身份人员';
comment on column SFTJJKXT_HZSXZFQKTJB.SBSZESWSRS
  is '十八岁至二十五岁人数';
comment on column SFTJJKXT_HZSXZFQKTJB.LSSYSRS
  is '六十岁以上人数';
comment on column SFTJJKXT_HZSXZFQKTJB.NXRS
  is '女性人数';
comment on column SFTJJKXT_HZSXZFQKTJB.DYRS
  is '党员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.SSMZRS
  is '少数民族人数';
comment on column SFTJJKXT_HZSXZFQKTJB.GATRYRS
  is '港澳台人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.WJRYRS
  is '外籍人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.ZFZRYRS
  is '曾犯罪人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.LFRS
  is '累犯人数';
comment on column SFTJJKXT_HZSXZFQKTJB.JCLJRYRS
  is '解除劳教人员人数';
comment on column SFTJJKXT_HZSXZFQKTJB.AYBM
  is '案由编码';
comment on column SFTJJKXT_HZSXZFQKTJB.XSLM
  is '显示列名';

prompt
prompt Creating table SFTJJKXT_HZSXZFXJ
prompt ================================
prompt
create table SFTJJKXT_HZSXZFXJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  XM          VARCHAR2(250),
  ZM          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_HZSXZFXJ
  is '核准死刑罪犯细节';
comment on column SFTJJKXT_HZSXZFXJ.FYBM
  is '法院编码';
comment on column SFTJJKXT_HZSXZFXJ.BH
  is '编号';
comment on column SFTJJKXT_HZSXZFXJ.XH
  is '序号';
comment on column SFTJJKXT_HZSXZFXJ.XM
  is '姓名';
comment on column SFTJJKXT_HZSXZFXJ.ZM
  is '罪名';

prompt
prompt Creating table SFTJJKXT_JJMJHJSSFQKTJB
prompt ======================================
prompt
create table SFTJJKXT_JJMJHJSSFQKTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JJJS        NUMBER,
  JJSSF       NUMBER,
  MJJS        NUMBER,
  MJSSF       NUMBER,
  HJJS        NUMBER,
  HJSSF       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_JJMJHJSSFQKTJB
  is '减缴、免缴、缓缴诉讼费情况统计表';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.BH
  is '编号';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.XH
  is '序号';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.JJJS
  is '减交件数';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.JJSSF
  is '减交诉讼费';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.MJJS
  is '免交件数';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.MJSSF
  is '免交诉讼费';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.HJJS
  is '缓交件数';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.HJSSF
  is '缓交诉讼费';

prompt
prompt Creating table SFTJJKXT_JRZFQKQKTJB
prompt ===================================
prompt
create table SFTJJKXT_JRZFQKQKTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AY          NUMBER,
  BQSXPJZF    NUMBER,
  XYJRRS      NUMBER,
  ZBZYRS      NUMBER,
  ZBZGRS      NUMBER,
  TLXRYRS     NUMBER,
  LGRYRS      NUMBER,
  LJRYRS      NUMBER,
  QTRS        NUMBER,
  JGRS        NUMBER,
  WZGBRS      NUMBER,
  JRGBRS      NUMBER,
  ZGGBRS      NUMBER,
  HQGBRS      NUMBER,
  JSGBRS      NUMBER,
  FJGBRS      NUMBER,
  ZSGBRS      NUMBER,
  FSGBRS      NUMBER,
  TZGBRS      NUMBER,
  YZGBRS      NUMBER,
  LZGBRS      NUMBER,
  SSSZSLSRS   NUMBER,
  SLZSBSRS    NUMBER,
  SBZESWSRS   NUMBER,
  LSSYSRS     NUMBER,
  NXRS        NUMBER,
  DYRS        NUMBER,
  SSRMRS      NUMBER,
  GATRYRS     NUMBER,
  WJRYRS      NUMBER,
  ZFZRYRS     NUMBER,
  LFRS        NUMBER,
  ZLJDRY      NUMBER,
  AYBM        VARCHAR2(4),
  XSLM        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_JRZFQKQKTJB
  is '军人罪犯情况情况统计表';
comment on column SFTJJKXT_JRZFQKQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_JRZFQKQKTJB.BH
  is '编号';
comment on column SFTJJKXT_JRZFQKQKTJB.AY
  is '案由';
comment on column SFTJJKXT_JRZFQKQKTJB.BQSXPJZF
  is '本期生效判决罪犯';
comment on column SFTJJKXT_JRZFQKQKTJB.XYJRRS
  is '现役军人人数';
comment on column SFTJJKXT_JRZFQKQKTJB.ZBZYRS
  is '在编职员人数';
comment on column SFTJJKXT_JRZFQKQKTJB.ZBZGRS
  is '在编职工人数';
comment on column SFTJJKXT_JRZFQKQKTJB.TLXRYRS
  is '退离休人员人数';
comment on column SFTJJKXT_JRZFQKQKTJB.LGRYRS
  is '劳改人员人数';
comment on column SFTJJKXT_JRZFQKQKTJB.LJRYRS
  is '劳教人员人数';
comment on column SFTJJKXT_JRZFQKQKTJB.QTRS
  is '其他人数';
comment on column SFTJJKXT_JRZFQKQKTJB.JGRS
  is '军官人数';
comment on column SFTJJKXT_JRZFQKQKTJB.WZGBRS
  is '文职干部人数';
comment on column SFTJJKXT_JRZFQKQKTJB.JRGBRS
  is '军人干部人数';
comment on column SFTJJKXT_JRZFQKQKTJB.ZGGBRS
  is '政工干部人数';
comment on column SFTJJKXT_JRZFQKQKTJB.HQGBRS
  is '后勤干部人数';
comment on column SFTJJKXT_JRZFQKQKTJB.JSGBRS
  is '技术干部人数';
comment on column SFTJJKXT_JRZFQKQKTJB.FJGBRS
  is '副军干部人数';
comment on column SFTJJKXT_JRZFQKQKTJB.ZSGBRS
  is '正师干部人数';
comment on column SFTJJKXT_JRZFQKQKTJB.FSGBRS
  is '副师干部人数';
comment on column SFTJJKXT_JRZFQKQKTJB.TZGBRS
  is '团职干部人数';
comment on column SFTJJKXT_JRZFQKQKTJB.YZGBRS
  is '营职干部人数';
comment on column SFTJJKXT_JRZFQKQKTJB.LZGBRS
  is '连职干部人数';
comment on column SFTJJKXT_JRZFQKQKTJB.SSSZSLSRS
  is '十四岁至十六岁人数';
comment on column SFTJJKXT_JRZFQKQKTJB.SLZSBSRS
  is '十六至十八岁人数';
comment on column SFTJJKXT_JRZFQKQKTJB.SBZESWSRS
  is '十八至二十五岁人数';
comment on column SFTJJKXT_JRZFQKQKTJB.LSSYSRS
  is '六十岁以上人数';
comment on column SFTJJKXT_JRZFQKQKTJB.NXRS
  is '女性人数';
comment on column SFTJJKXT_JRZFQKQKTJB.DYRS
  is '党员人数';
comment on column SFTJJKXT_JRZFQKQKTJB.SSRMRS
  is '少数人民人数';
comment on column SFTJJKXT_JRZFQKQKTJB.GATRYRS
  is '港澳台人员人数';
comment on column SFTJJKXT_JRZFQKQKTJB.WJRYRS
  is '外籍人员人数';
comment on column SFTJJKXT_JRZFQKQKTJB.ZFZRYRS
  is '曾犯罪人员人数';
comment on column SFTJJKXT_JRZFQKQKTJB.LFRS
  is '累犯人数';
comment on column SFTJJKXT_JRZFQKQKTJB.ZLJDRY
  is '曾劳教的人员';
comment on column SFTJJKXT_JRZFQKQKTJB.AYBM
  is '案由编码';
comment on column SFTJJKXT_JRZFQKQKTJB.XSLM
  is '显示列名';

prompt
prompt Creating table SFTJJKXT_MSSQZSAJTJB
prompt ===================================
prompt
create table SFTJJKXT_MSSQZSAJTJB
(
  ID                 VARCHAR2(36) not null,
  REG_TIME           DATE not null,
  UPDATE_TIME        DATE not null,
  DEPT_CODE          VARCHAR2(20) not null,
  APP_CODE           VARCHAR2(20) not null,
  FYBM               NUMBER,
  BH                 NUMBER,
  XH                 NUMBER,
  JC                 NUMBER,
  SA                 NUMBER,
  DYCSPHSEQSZSSX     NUMBER,
  YYZXSSAYZJZSDCSSRQ NUMBER,
  JA                 NUMBER,
  CDZS               NUMBER,
  BHZSSQ             NUMBER,
  BHSQ               NUMBER,
  ZJ                 NUMBER,
  SGYN               NUMBER,
  CGSGY              NUMBER,
  JYCSPYC            NUMBER,
  WJ                 NUMBER,
  BHZSSQZSQ          NUMBER,
  DZCSSCQPZS         NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_MSSQZSAJTJB
  is '民事申请再审案件统计表';
comment on column SFTJJKXT_MSSQZSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_MSSQZSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_MSSQZSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_MSSQZSAJTJB.JC
  is '旧存';
comment on column SFTJJKXT_MSSQZSAJTJB.SA
  is '收案';
comment on column SFTJJKXT_MSSQZSAJTJB.DYCSPHSEQSZSSX
  is '对一裁审判或申二请审再生审效';
comment on column SFTJJKXT_MSSQZSAJTJB.YYZXSSAYZJZSDCSSRQ
  is '已因再新审事案由再件再审当次事申人请';
comment on column SFTJJKXT_MSSQZSAJTJB.JA
  is '结案';
comment on column SFTJJKXT_MSSQZSAJTJB.CDZS
  is '裁定再审';
comment on column SFTJJKXT_MSSQZSAJTJB.BHZSSQ
  is '驳回再审申请';
comment on column SFTJJKXT_MSSQZSAJTJB.BHSQ
  is '驳回申请';
comment on column SFTJJKXT_MSSQZSAJTJB.ZJ
  is '终结';
comment on column SFTJJKXT_MSSQZSAJTJB.SGYN
  is '三个月内';
comment on column SFTJJKXT_MSSQZSAJTJB.CGSGY
  is '超过三个月';
comment on column SFTJJKXT_MSSQZSAJTJB.JYCSPYC
  is '经院长审批延长';
comment on column SFTJJKXT_MSSQZSAJTJB.WJ
  is '未结';
comment on column SFTJJKXT_MSSQZSAJTJB.BHZSSQZSQ
  is '驳回在申申请再申请';
comment on column SFTJJKXT_MSSQZSAJTJB.DZCSSCQPZS
  is '对再次审申裁请判再审';

prompt
prompt Creating table SFTJJKXT_MSZSCQESZSAJTJB
prompt =======================================
prompt
create table SFTJJKXT_MSZSCQESZSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  WCJS        NUMBER,
  GPJS        NUMBER,
  FHZSJS      NUMBER,
  CSJS        NUMBER,
  BHJS        NUMBER,
  ZJJS        NUMBER,
  CXYCDJS     NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  KTSLJS      NUMBER,
  DTXPJS      NUMBER,
  SMG         NUMBER,
  SFG         NUMBER,
  SYG         NUMBER,
  SDGDZYOMGJ  NUMBER,
  SRB         NUMBER,
  SQT         NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAAJ    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_MSZSCQESZSAJTJB
  is '民事知识产权二审、再审案件统计表';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.WCJS
  is '维持件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.GPJS
  is '改判件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.FHZSJS
  is '发回重审件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.CSJS
  is '撤诉件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.BHJS
  is '驳回件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.ZJJS
  is '终结件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.CXYCDJS
  is '撤消原裁定件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.KTSLJS
  is '开庭审理件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SMG
  is '涉美国';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SFG
  is '涉法国';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SYG
  is '涉英国';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SDGDZYOMGJ
  is '涉德国等主要欧盟国家';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SRB
  is '涉日本';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SQT
  is '涉其他';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SAJSSAAJ
  is '涉澳件数saaj';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_MSZSCQYSAJTJB
prompt =====================================
prompt
create table SFTJJKXT_MSZSCQYSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  PJJS        NUMBER,
  BHQSCDJS    NUMBER,
  CSCDJS      NUMBER,
  ZJCDJS      NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  YSJS        NUMBER,
  DTXPJS      NUMBER,
  SMG         NUMBER,
  SFG         NUMBER,
  SYG         NUMBER,
  SDGDZYOMGJ  NUMBER,
  SRB         NUMBER,
  SQT         NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAAJ    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_MSZSCQYSAJTJB
  is '民事知识产权一审案件统计表';
comment on column SFTJJKXT_MSZSCQYSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_MSZSCQYSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_MSZSCQYSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_MSZSCQYSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.PJJS
  is '判决件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.BHQSCDJS
  is '驳回起诉裁定件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.CSCDJS
  is '撤诉裁定件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.ZJCDJS
  is '终结裁定件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.YSJS
  is '移送件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SMG
  is '涉美国';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SFG
  is '涉法国';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SYG
  is '涉英国';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SDGDZYOMGJ
  is '涉德国等主要欧盟国家';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SRB
  is '涉日本';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SQT
  is '涉其他';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SAJSSAAJ
  is '涉澳件数saaj';
comment on column SFTJJKXT_MSZSCQYSAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_MSZSCQYSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_MSZSCQYSAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_PCAJTJB
prompt ===============================
prompt
create table SFTJJKXT_PCAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  ZWR         NUMBER,
  ZQR         NUMBER,
  ZCZE        NUMBER,
  ZWZE        NUMBER,
  YXZQ        NUMBER,
  JAJS        NUMBER,
  PC          NUMBER,
  BHSQCDJS    NUMBER,
  HJ          NUMBER,
  PCFYBZ      NUMBER,
  QTPCCX      NUMBER,
  QTCDJS      NUMBER,
  PCZCZE      NUMBER,
  PCZWZE      NUMBER,
  PCYXZQ      NUMBER,
  SLSJBMYN    NUMBER,
  SLSJYNYS    NUMBER,
  PCQYZGRS    NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_PCAJTJB
  is '破产案件统计表';
comment on column SFTJJKXT_PCAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_PCAJTJB.BH
  is '编号';
comment on column SFTJJKXT_PCAJTJB.XH
  is '序号';
comment on column SFTJJKXT_PCAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_PCAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_PCAJTJB.ZWR
  is '债务人';
comment on column SFTJJKXT_PCAJTJB.ZQR
  is '债权人';
comment on column SFTJJKXT_PCAJTJB.ZCZE
  is '资产总额';
comment on column SFTJJKXT_PCAJTJB.ZWZE
  is '债务总额';
comment on column SFTJJKXT_PCAJTJB.YXZQ
  is '银行债权';
comment on column SFTJJKXT_PCAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_PCAJTJB.PC
  is '破产';
comment on column SFTJJKXT_PCAJTJB.BHSQCDJS
  is '驳回申请裁定件数';
comment on column SFTJJKXT_PCAJTJB.HJ
  is '和解';
comment on column SFTJJKXT_PCAJTJB.PCFYBZ
  is '破产费用不足';
comment on column SFTJJKXT_PCAJTJB.QTPCCX
  is '其他破产程序';
comment on column SFTJJKXT_PCAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_PCAJTJB.PCZCZE
  is '破产资产总额';
comment on column SFTJJKXT_PCAJTJB.PCZWZE
  is '破产债务总额';
comment on column SFTJJKXT_PCAJTJB.PCYXZQ
  is '破产银行债权';
comment on column SFTJJKXT_PCAJTJB.SLSJBMYN
  is '审理时间不满一年';
comment on column SFTJJKXT_PCAJTJB.SLSJYNYS
  is '审理时间一年以上';
comment on column SFTJJKXT_PCAJTJB.PCQYZGRS
  is '破产企业职工人数';
comment on column SFTJJKXT_PCAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_PCAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_PCAJTJBPCAJ
prompt ===================================
prompt
create table SFTJJKXT_PCAJTJBPCAJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JC          NUMBER,
  SA          NUMBER,
  JA          NUMBER,
  CHPCQQ      NUMBER,
  JDPC        NUMBER,
  JDBPC       NUMBER,
  QT          NUMBER,
  CWJL        NUMBER,
  CWDB        NUMBER,
  CWCP        NUMBER,
  GPWZ        NUMBER,
  XXBG        NUMBER,
  SYBL        NUMBER,
  SYWQ        NUMBER,
  WFCF        NUMBER,
  CPFJ        NUMBER,
  WFJL        NUMBER,
  CWZX        NUMBER,
  QTPC        NUMBER,
  SW          NUMBER,
  SG          NUMBER,
  SASA        NUMBER,
  ST          NUMBER,
  PCJE        NUMBER,
  WJ          NUMBER,
  ZZ          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_PCAJTJBPCAJ
  is '赔偿案件统计表pcaj';
comment on column SFTJJKXT_PCAJTJBPCAJ.FYBM
  is '法院编码';
comment on column SFTJJKXT_PCAJTJBPCAJ.BH
  is '编号';
comment on column SFTJJKXT_PCAJTJBPCAJ.XH
  is '序号';
comment on column SFTJJKXT_PCAJTJBPCAJ.JC
  is '旧存';
comment on column SFTJJKXT_PCAJTJBPCAJ.SA
  is '收案';
comment on column SFTJJKXT_PCAJTJBPCAJ.JA
  is '结案';
comment on column SFTJJKXT_PCAJTJBPCAJ.CHPCQQ
  is '撤回赔偿请求';
comment on column SFTJJKXT_PCAJTJBPCAJ.JDPC
  is '决定赔偿';
comment on column SFTJJKXT_PCAJTJBPCAJ.JDBPC
  is '决定不赔偿';
comment on column SFTJJKXT_PCAJTJBPCAJ.QT
  is '其他';
comment on column SFTJJKXT_PCAJTJBPCAJ.CWJL
  is '错误拘留';
comment on column SFTJJKXT_PCAJTJBPCAJ.CWDB
  is '错误逮捕';
comment on column SFTJJKXT_PCAJTJBPCAJ.CWCP
  is '错误错判';
comment on column SFTJJKXT_PCAJTJBPCAJ.GPWZ
  is '改判无罪';
comment on column SFTJJKXT_PCAJTJBPCAJ.XXBG
  is '刑讯逼供';
comment on column SFTJJKXT_PCAJTJBPCAJ.SYBL
  is '使用暴力';
comment on column SFTJJKXT_PCAJTJBPCAJ.SYWQ
  is '使用武器';
comment on column SFTJJKXT_PCAJTJBPCAJ.WFCF
  is '违法查封';
comment on column SFTJJKXT_PCAJTJBPCAJ.CPFJ
  is '错判罚金';
comment on column SFTJJKXT_PCAJTJBPCAJ.WFJL
  is '违法拘留';
comment on column SFTJJKXT_PCAJTJBPCAJ.CWZX
  is '错误执行';
comment on column SFTJJKXT_PCAJTJBPCAJ.QTPC
  is '其他赔偿';
comment on column SFTJJKXT_PCAJTJBPCAJ.SW
  is '涉外';
comment on column SFTJJKXT_PCAJTJBPCAJ.SG
  is '涉港';
comment on column SFTJJKXT_PCAJTJBPCAJ.SASA
  is '涉澳sa';
comment on column SFTJJKXT_PCAJTJBPCAJ.ST
  is '涉台';
comment on column SFTJJKXT_PCAJTJBPCAJ.PCJE
  is '赔偿金额';
comment on column SFTJJKXT_PCAJTJBPCAJ.WJ
  is '未结';
comment on column SFTJJKXT_PCAJTJBPCAJ.ZZ
  is '中止';

prompt
prompt Creating table SFTJJKXT_QGFYQLCSXAJQKTJB
prompt ========================================
prompt
create table SFTJJKXT_QGFYQLCSXAJQKTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  SQCSXAJ     NUMBER,
  BQXZCSXAJ   NUMBER,
  BQSJCSXAJ   NUMBER,
  BQWCSXAJ    NUMBER,
  BMLGY       NUMBER,
  LGYYSBMYN   NUMBER,
  YNYS        NUMBER,
  AQFZ        NUMBER,
  DSPHTL      NUMBER,
  CSXXJ       NUMBER,
  QS          NUMBER,
  DXDPS       NUMBER,
  JCZJBZD     NUMBER,
  YFBLFLSX    NUMBER,
  QZXJ        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_QGFYQLCSXAJQKTJB
  is '全国法院清理超审限案件情况统计表';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.BH
  is '编号';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.XH
  is '序号';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.SQCSXAJ
  is '上期超审限案件';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.BQXZCSXAJ
  is '本期新增超审限案件';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.BQSJCSXAJ
  is '本期审结超审限案件';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.BQWCSXAJ
  is '本期未超审限案件';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.BMLGY
  is '不满六个月';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.LGYYSBMYN
  is '六个月以上不满一年';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.YNYS
  is '一年以上';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.AQFZ
  is '案情复杂';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.DSPHTL
  is '待审批和讨论';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.CSXXJ
  is '超审限小计';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.QS
  is '请示';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.DXDPS
  is '待协调批示';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.JCZJBZD
  is '检查证据补正等';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.YFBLFLSX
  is '依法办理法律手续';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.QZXJ
  is '其中小计';

prompt
prompt Creating table SFTJJKXT_QSQQJFJQTMSESAJTJB
prompt ==========================================
prompt
create table SFTJJKXT_QSQQJFJQTMSESAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  WCJS        NUMBER,
  GPJS        NUMBER,
  FHZSJS      NUMBER,
  CSJS        NUMBER,
  BHJS        NUMBER,
  ZJJS        NUMBER,
  CXYCDJS     NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  KTSLJS      NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAAJ    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_QSQQJFJQTMSESAJTJB
  is '权属、侵权纠纷及其他民事二审案件统计表';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.BH
  is '编号';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.XH
  is '序号';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.WCJS
  is '维持件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.GPJS
  is '改判件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.FHZSJS
  is '发回重审件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.CSJS
  is '撤诉件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.BHJS
  is '驳回件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.ZJJS
  is '终结件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.CXYCDJS
  is '撤消原裁定件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.KTSLJS
  is '开庭审理件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.SAJSSAAJ
  is '涉澳件数saaj';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_QSQQJFJQTMSYSAJTJB
prompt ==========================================
prompt
create table SFTJJKXT_QSQQJFJQTMSYSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCRS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  PJJS        NUMBER,
  BHQSCDJS    NUMBER,
  CSCDJS      NUMBER,
  ZJCDJS      NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  YSJS        NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAAJ    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_QSQQJFJQTMSYSAJTJB
  is '权属、侵权纠纷及其他民事一审案件统计表';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.JCRS
  is '旧存人数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.PJJS
  is '判决件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.BHQSCDJS
  is '驳回起诉裁定件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.CSCDJS
  is '撤诉裁定件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.ZJCDJS
  is '终结裁定件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.YSJS
  is '移送件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.SAJSSAAJ
  is '涉澳件数saaj';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_QSQQJFJQTMSZSAJTJB
prompt ==========================================
prompt
create table SFTJJKXT_QSQQJFJQTMSZSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  WCJS        NUMBER,
  GPJS        NUMBER,
  FHZSJS      NUMBER,
  CSJS        NUMBER,
  BHJS        NUMBER,
  ZJJS        NUMBER,
  QTCDJS      NUMBER,
  DJJS        NUMBER,
  KTSLJS      NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAAJ    NUMBER,
  STJS        NUMBER,
  SSBDZJE     NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_QSQQJFJQTMSZSAJTJB
  is '权属、侵权纠纷及其他民事再审案件统计表';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.WCJS
  is '维持件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.GPJS
  is '改判件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.FHZSJS
  is '发回重审件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.CSJS
  is '撤诉件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.BHJS
  is '驳回件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.ZJJS
  is '终结件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.KTSLJS
  is '开庭审理件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.SAJSSAAJ
  is '涉澳件数saaj';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.SSBDZJE
  is '诉讼标的总金额';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_RMPSYCJSPAJQKTJB
prompt ========================================
prompt
create table SFTJJKXT_RMPSYCJSPAJQKTJB
(
  ID            VARCHAR2(36) not null,
  REG_TIME      DATE not null,
  UPDATE_TIME   DATE not null,
  DEPT_CODE     VARCHAR2(20) not null,
  APP_CODE      VARCHAR2(20) not null,
  FYBM          NUMBER,
  BH            NUMBER,
  XH            NUMBER,
  PSYCJJS       NUMBER,
  PSYCJRS       NUMBER,
  XSJS          NUMBER,
  XSRS          NUMBER,
  XSQZ          NUMBER,
  HYJS          NUMBER,
  HT            NUMBER,
  HYQZ          NUMBER,
  HTJS          NUMBER,
  HTRS          NUMBER,
  HTQZ          NUMBER,
  QSJS          NUMBER,
  QSRS          NUMBER,
  QSQZ          NUMBER,
  XZJS          NUMBER,
  XZRS          NUMBER,
  XZQZ          NUMBER,
  HBJS          NUMBER,
  HBRS          NUMBER,
  TQYCTJSWHTLJS NUMBER,
  SWHTL         NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_RMPSYCJSPAJQKTJB
  is '人民陪审员参加审判案件情况统计表';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.BH
  is '编号';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XH
  is '序号';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.PSYCJJS
  is '陪审员参加件数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.PSYCJRS
  is '陪审员参加人数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XSJS
  is '刑事件数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XSRS
  is '刑事人数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XSQZ
  is '刑事其中';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HYJS
  is '婚姻件数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HT
  is '合同';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HYQZ
  is '婚姻其中';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HTJS
  is '合同件数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HTRS
  is '合同人数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HTQZ
  is '合同其中';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.QSJS
  is '权属件数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.QSRS
  is '权属人数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.QSQZ
  is '权属其中';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XZJS
  is '行政件数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XZRS
  is '行政人数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XZQZ
  is '行政其中';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HBJS
  is '回避件数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HBRS
  is '回避人数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.TQYCTJSWHTLJS
  is '提请院长提交审委会讨论件数';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.SWHTL
  is '审委会讨论';

prompt
prompt Creating table SFTJJKXT_SSSQZSAJTJB
prompt ===================================
prompt
create table SFTJJKXT_SSSQZSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JC          NUMBER,
  SA          NUMBER,
  JA          NUMBER,
  BHBH        NUMBER,
  CS          NUMBER,
  BYZS        NUMBER,
  TQZS        NUMBER,
  ZLZS        NUMBER,
  ZJ          NUMBER,
  QT          NUMBER,
  TZ          NUMBER,
  BMSGY       NUMBER,
  BMLGY       NUMBER,
  LGYYS       NUMBER,
  WJ          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_SSSQZSAJTJB
  is '申诉、申请再审案件统计表';
comment on column SFTJJKXT_SSSQZSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_SSSQZSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_SSSQZSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_SSSQZSAJTJB.JC
  is '旧存';
comment on column SFTJJKXT_SSSQZSAJTJB.SA
  is '收案';
comment on column SFTJJKXT_SSSQZSAJTJB.JA
  is '结案';
comment on column SFTJJKXT_SSSQZSAJTJB.BHBH
  is '驳回bh';
comment on column SFTJJKXT_SSSQZSAJTJB.CS
  is '撤诉';
comment on column SFTJJKXT_SSSQZSAJTJB.BYZS
  is '本院再审';
comment on column SFTJJKXT_SSSQZSAJTJB.TQZS
  is '提起再审';
comment on column SFTJJKXT_SSSQZSAJTJB.ZLZS
  is '指令再审';
comment on column SFTJJKXT_SSSQZSAJTJB.ZJ
  is '终结';
comment on column SFTJJKXT_SSSQZSAJTJB.QT
  is '其他';
comment on column SFTJJKXT_SSSQZSAJTJB.TZ
  is '听证';
comment on column SFTJJKXT_SSSQZSAJTJB.BMSGY
  is '不满三个月';
comment on column SFTJJKXT_SSSQZSAJTJB.BMLGY
  is '不满六个月';
comment on column SFTJJKXT_SSSQZSAJTJB.LGYYS
  is '六个月以上';
comment on column SFTJJKXT_SSSQZSAJTJB.WJ
  is '未结';

prompt
prompt Creating table SFTJJKXT_SYTBCXSLAJTJB
prompt =====================================
prompt
create table SFTJJKXT_SYTBCXSLAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  PJJS        NUMBER,
  CHCDJS      NUMBER,
  BHSQCDJS    NUMBER,
  ZJCDJS      NUMBER,
  QTCDJS      NUMBER,
  SABDZJE     NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SGJSSGAJ    NUMBER,
  STJS        NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_SYTBCXSLAJTJB
  is '适用特别程序审理案件统计表';
comment on column SFTJJKXT_SYTBCXSLAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_SYTBCXSLAJTJB.BH
  is '编号';
comment on column SFTJJKXT_SYTBCXSLAJTJB.XH
  is '序号';
comment on column SFTJJKXT_SYTBCXSLAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_SYTBCXSLAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_SYTBCXSLAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_SYTBCXSLAJTJB.PJJS
  is '判决件数';
comment on column SFTJJKXT_SYTBCXSLAJTJB.CHCDJS
  is '撤回裁定件数';
comment on column SFTJJKXT_SYTBCXSLAJTJB.BHSQCDJS
  is '驳回申请裁定件数';
comment on column SFTJJKXT_SYTBCXSLAJTJB.ZJCDJS
  is '终结裁定件数';
comment on column SFTJJKXT_SYTBCXSLAJTJB.QTCDJS
  is '其他裁定件数';
comment on column SFTJJKXT_SYTBCXSLAJTJB.SABDZJE
  is '涉案标的总金额';
comment on column SFTJJKXT_SYTBCXSLAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_SYTBCXSLAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_SYTBCXSLAJTJB.SGJSSGAJ
  is '涉港件数sgaj';
comment on column SFTJJKXT_SYTBCXSLAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_SYTBCXSLAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_SYTBCXSLAJTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFTJJKXT_WCNRFZQKTJB
prompt ===================================
prompt
create table SFTJJKXT_WCNRFZQKTJB
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  BH           NUMBER,
  XH           NUMBER,
  BQSXPJRS     NUMBER,
  ZJBZXGWZRS   NUMBER,
  QTXGWZRS     NUMBER,
  MYCFRS       NUMBER,
  GYCFRS       NUMBER,
  WQTXRS       NUMBER,
  SWNYSZESNRS  NUMBER,
  SNYSBMSWNRS  NUMBER,
  QNYSBMSNRS   NUMBER,
  WNYSBMQNRS   NUMBER,
  CGSNBMWNRS   NUMBER,
  SNYXRS       NUMBER,
  JYRS         NUMBER,
  YQTXJYHXRS   NUMBER,
  GZRS         NUMBER,
  DCFJRS       NUMBER,
  GRRS         NUMBER,
  NMRS         NUMBER,
  ZXXSRS       NUMBER,
  ZXXSRSXUUS   NUMBER,
  GTLDZRS      NUMBER,
  WYRYRS       NUMBER,
  QT           NUMBER,
  SLSYSBMSBSRS NUMBER,
  SSSYSBMSLSRS NUMBER,
  WMRS         NUMBER,
  XXRS         NUMBER,
  CZRS         NUMBER,
  GZRSGZRES    NUMBER,
  DZYSRS       NUMBER,
  ZFZRS        NUMBER,
  LFRS         NUMBER,
  ZLJRS        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_WCNRFZQKTJB
  is '未成年人犯罪情况统计表';
comment on column SFTJJKXT_WCNRFZQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_WCNRFZQKTJB.BH
  is '编号';
comment on column SFTJJKXT_WCNRFZQKTJB.XH
  is '序号';
comment on column SFTJJKXT_WCNRFZQKTJB.BQSXPJRS
  is '本期生效判决人数';
comment on column SFTJJKXT_WCNRFZQKTJB.ZJBZXGWZRS
  is '证据不足宣告无罪人数';
comment on column SFTJJKXT_WCNRFZQKTJB.QTXGWZRS
  is '其他宣告无罪人数';
comment on column SFTJJKXT_WCNRFZQKTJB.MYCFRS
  is '免予处罚人数';
comment on column SFTJJKXT_WCNRFZQKTJB.GYCFRS
  is '给予处罚人数';
comment on column SFTJJKXT_WCNRFZQKTJB.WQTXRS
  is '无期徒刑人数';
comment on column SFTJJKXT_WCNRFZQKTJB.SWNYSZESNRS
  is '十五年以上至二十年人数';
comment on column SFTJJKXT_WCNRFZQKTJB.SNYSBMSWNRS
  is '十年以上不满十五年人数';
comment on column SFTJJKXT_WCNRFZQKTJB.QNYSBMSNRS
  is '七年以上不满十年人数';
comment on column SFTJJKXT_WCNRFZQKTJB.WNYSBMQNRS
  is '五年以上不满七年人数';
comment on column SFTJJKXT_WCNRFZQKTJB.CGSNBMWNRS
  is '超过三年不满五年人数';
comment on column SFTJJKXT_WCNRFZQKTJB.SNYXRS
  is '三年以下人数';
comment on column SFTJJKXT_WCNRFZQKTJB.JYRS
  is '拘役人数';
comment on column SFTJJKXT_WCNRFZQKTJB.YQTXJYHXRS
  is '有期徒刑拘役缓刑人数';
comment on column SFTJJKXT_WCNRFZQKTJB.GZRS
  is '管制人数';
comment on column SFTJJKXT_WCNRFZQKTJB.DCFJRS
  is '单处罚金人数';
comment on column SFTJJKXT_WCNRFZQKTJB.GRRS
  is '工人人数';
comment on column SFTJJKXT_WCNRFZQKTJB.NMRS
  is '农民人数';
comment on column SFTJJKXT_WCNRFZQKTJB.ZXXSRS
  is '在校学生人数';
comment on column SFTJJKXT_WCNRFZQKTJB.ZXXSRSXUUS
  is '缀学学生人数xuus';
comment on column SFTJJKXT_WCNRFZQKTJB.GTLDZRS
  is '个体劳动者人数';
comment on column SFTJJKXT_WCNRFZQKTJB.WYRYRS
  is '无业人员人数';
comment on column SFTJJKXT_WCNRFZQKTJB.QT
  is '其他';
comment on column SFTJJKXT_WCNRFZQKTJB.SLSYSBMSBSRS
  is '十六岁以上不满十八岁人数';
comment on column SFTJJKXT_WCNRFZQKTJB.SSSYSBMSLSRS
  is '十四岁以上不满十六岁人数';
comment on column SFTJJKXT_WCNRFZQKTJB.WMRS
  is '文盲人数';
comment on column SFTJJKXT_WCNRFZQKTJB.XXRS
  is '小学人数';
comment on column SFTJJKXT_WCNRFZQKTJB.CZRS
  is '初中人数';
comment on column SFTJJKXT_WCNRFZQKTJB.GZRSGZRES
  is '高中人数gzres';
comment on column SFTJJKXT_WCNRFZQKTJB.DZYSRS
  is '大专以上人数';
comment on column SFTJJKXT_WCNRFZQKTJB.ZFZRS
  is '曾犯罪人数';
comment on column SFTJJKXT_WCNRFZQKTJB.LFRS
  is '累犯人数';
comment on column SFTJJKXT_WCNRFZQKTJB.ZLJRS
  is '曾劳教人数';

prompt
prompt Creating table SFTJJKXT_XSBGRPJSXQKTJB
prompt ======================================
prompt
create table SFTJJKXT_XSBGRPJSXQKTJB
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  BH           NUMBER,
  XH           NUMBER,
  AY           VARCHAR2(100),
  BQSXPJJS     NUMBER,
  BQSXPJRS     NUMBER,
  ZJBZXGWZRS   NUMBER,
  QTXGWZRS     NUMBER,
  MYXSCFRS     NUMBER,
  GYXSCFRS     NUMBER,
  SXYZXRS      NUMBER,
  SHRS         NUMBER,
  WQTXRS       NUMBER,
  SWZESNYQTXRS NUMBER,
  SZSWNYQTXRS  NUMBER,
  QZSNYQTXRS   NUMBER,
  WZQNYQTXRS   NUMBER,
  SZWNYQTXRS   NUMBER,
  SNYXYQTXRS   NUMBER,
  JYRS         NUMBER,
  YQTXJYHXRS   NUMBER,
  GZRS         NUMBER,
  DCFJRS       NUMBER,
  DCBDZZQLRS   NUMBER,
  DTQZCJRS     NUMBER,
  BCFJRS       NUMBER,
  BCMSCCRS     NUMBER,
  BCBDZZQLRS   NUMBER,
  BCQZCJRS     NUMBER,
  AYBM         VARCHAR2(4),
  XSLM         VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_XSBGRPJSXQKTJB
  is '刑事被告人判决生效情况统计表';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BH
  is '编号';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.XH
  is '序号';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.AY
  is '案由';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BQSXPJJS
  is '本期生效判决件数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BQSXPJRS
  is '本期生效判决人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.ZJBZXGWZRS
  is '证据不足宣告无罪人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.QTXGWZRS
  is '其他宣告无罪人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.MYXSCFRS
  is '免予刑事处罚人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.GYXSCFRS
  is '给予刑事处罚人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.SXYZXRS
  is '死刑已执行人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.SHRS
  is '死缓人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.WQTXRS
  is '无期徒刑人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.SWZESNYQTXRS
  is '十五至二十年有期徒刑人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.SZSWNYQTXRS
  is '十至十五年有期徒刑人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.QZSNYQTXRS
  is '七至十年有期徒刑人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.WZQNYQTXRS
  is '五至七年有期徒刑人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.SZWNYQTXRS
  is '三至五年有期徒刑人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.SNYXYQTXRS
  is '三年以下有期徒刑人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.JYRS
  is '拘役人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.YQTXJYHXRS
  is '有期徒刑、拘役、缓刑人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.GZRS
  is '管制人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.DCFJRS
  is '单处罚金人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.DCBDZZQLRS
  is '单处剥夺政治权利人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.DTQZCJRS
  is '单体驱逐出境人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BCFJRS
  is '并处罚金人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BCMSCCRS
  is '并处没收财产人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BCBDZZQLRS
  is '并处剥夺政治权利人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BCQZCJRS
  is '并处驱逐出境人数';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.AYBM
  is '案由编码';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.XSLM
  is '显示列名';

prompt
prompt Creating table SFTJJKXT_XSESFHAJQKTJB
prompt =====================================
prompt
create table SFTJJKXT_XSESFHAJQKTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  WCJS        NUMBER,
  WCRS        NUMBER,
  GPJS        NUMBER,
  GPRS        NUMBER,
  JZCFRS      NUMBER,
  JQRS        NUMBER,
  MYCFRS      NUMBER,
  WZRS        NUMBER,
  GPQT        NUMBER,
  CWSYFLGPRS  NUMBER,
  LXBDGPRS    NUMBER,
  SSBQGPRS    NUMBER,
  QTYYGPRS    NUMBER,
  SSBQFHZSJS  NUMBER,
  WFCXFHZSJS  NUMBER,
  QTYYFHZSJS  NUMBER,
  XJFHZSJS    NUMBER,
  CXYCDJS     NUMBER,
  CSJS        NUMBER,
  DJJS        NUMBER,
  QT          NUMBER,
  KTSLJS      NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAAJ    NUMBER,
  STJS        NUMBER,
  WJJS        NUMBER,
  YQSLJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_XSESFHAJQKTJB
  is '刑事二审（复核）案件情况统计表';
comment on column SFTJJKXT_XSESFHAJQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_XSESFHAJQKTJB.BH
  is '编号';
comment on column SFTJJKXT_XSESFHAJQKTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.WCJS
  is '维持件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.WCRS
  is '维持人数';
comment on column SFTJJKXT_XSESFHAJQKTJB.GPJS
  is '改判件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.GPRS
  is '改判人数';
comment on column SFTJJKXT_XSESFHAJQKTJB.JZCFRS
  is '加重处罚人数';
comment on column SFTJJKXT_XSESFHAJQKTJB.JQRS
  is '减轻人数';
comment on column SFTJJKXT_XSESFHAJQKTJB.MYCFRS
  is '免予处罚人数';
comment on column SFTJJKXT_XSESFHAJQKTJB.WZRS
  is '无罪人数';
comment on column SFTJJKXT_XSESFHAJQKTJB.GPQT
  is '改判其他';
comment on column SFTJJKXT_XSESFHAJQKTJB.CWSYFLGPRS
  is '错误适用法律改判人数';
comment on column SFTJJKXT_XSESFHAJQKTJB.LXBDGPRS
  is '量刑不当改判人数';
comment on column SFTJJKXT_XSESFHAJQKTJB.SSBQGPRS
  is '事实不清改判人数';
comment on column SFTJJKXT_XSESFHAJQKTJB.QTYYGPRS
  is '其他原因改判人数';
comment on column SFTJJKXT_XSESFHAJQKTJB.SSBQFHZSJS
  is '事实不清发回重审件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.WFCXFHZSJS
  is '违反程序发回重审件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.QTYYFHZSJS
  is '其他原因发回重审件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.XJFHZSJS
  is '小计发回重审件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.CXYCDJS
  is '撤销原裁定件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.CSJS
  is '撤诉件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.QT
  is '其他';
comment on column SFTJJKXT_XSESFHAJQKTJB.KTSLJS
  is '开庭审理件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.SAJSSAAJ
  is '涉澳件数saaj';
comment on column SFTJJKXT_XSESFHAJQKTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_XSESFHAJQKTJB.YQSLJS
  is '延期审理件数';

prompt
prompt Creating table SFTJJKXT_XSYSAJTJB
prompt =================================
prompt
create table SFTJJKXT_XSYSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  AY          NUMBER,
  JCJS        NUMBER,
  JCRS        NUMBER,
  SAJS        NUMBER,
  SARS        NUMBER,
  GSJS        NUMBER,
  ZSJS        NUMBER,
  ZXQSJS      NUMBER,
  FHZSJS      NUMBER,
  JAJS        NUMBER,
  JARS        NUMBER,
  PJJS        NUMBER,
  DJJS        NUMBER,
  JCYCSJS     NUMBER,
  ZSRCSJS     NUMBER,
  BHZS        NUMBER,
  YSJS        NUMBER,
  ZZJS        NUMBER,
  DTXPJS      NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAJS    NUMBER,
  STJS        NUMBER,
  WJJS        NUMBER,
  WJRS        NUMBER,
  YQSLJS      NUMBER,
  AYBM        VARCHAR2(4),
  XSLM        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_XSYSAJTJB
  is '刑事一审案件统计表';
comment on column SFTJJKXT_XSYSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_XSYSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_XSYSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_XSYSAJTJB.AY
  is '案由';
comment on column SFTJJKXT_XSYSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_XSYSAJTJB.JCRS
  is '旧存人数';
comment on column SFTJJKXT_XSYSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_XSYSAJTJB.SARS
  is '收案人数';
comment on column SFTJJKXT_XSYSAJTJB.GSJS
  is '公诉件数';
comment on column SFTJJKXT_XSYSAJTJB.ZSJS
  is '自诉件数';
comment on column SFTJJKXT_XSYSAJTJB.ZXQSJS
  is '重新起诉件数';
comment on column SFTJJKXT_XSYSAJTJB.FHZSJS
  is '发回重审件数';
comment on column SFTJJKXT_XSYSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_XSYSAJTJB.JARS
  is '结案人数';
comment on column SFTJJKXT_XSYSAJTJB.PJJS
  is '判决件数';
comment on column SFTJJKXT_XSYSAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_XSYSAJTJB.JCYCSJS
  is '检察院撤诉件数';
comment on column SFTJJKXT_XSYSAJTJB.ZSRCSJS
  is '自诉人撤诉件数';
comment on column SFTJJKXT_XSYSAJTJB.BHZS
  is '驳回自诉';
comment on column SFTJJKXT_XSYSAJTJB.YSJS
  is '移送件数';
comment on column SFTJJKXT_XSYSAJTJB.ZZJS
  is '终止件数';
comment on column SFTJJKXT_XSYSAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_XSYSAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_XSYSAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_XSYSAJTJB.SAJSSAJS
  is '涉澳件数sajs';
comment on column SFTJJKXT_XSYSAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_XSYSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_XSYSAJTJB.WJRS
  is '未结人数';
comment on column SFTJJKXT_XSYSAJTJB.YQSLJS
  is '延期审理件数';
comment on column SFTJJKXT_XSYSAJTJB.AYBM
  is '案由编码';
comment on column SFTJJKXT_XSYSAJTJB.XSLM
  is '显示列名';

prompt
prompt Creating table SFTJJKXT_XSZSAJTJB
prompt =================================
prompt
create table SFTJJKXT_XSZSAJTJB
(
  ID               VARCHAR2(36) not null,
  REG_TIME         DATE not null,
  UPDATE_TIME      DATE not null,
  DEPT_CODE        VARCHAR2(20) not null,
  APP_CODE         VARCHAR2(20) not null,
  FYBM             NUMBER,
  BHS              NUMBER,
  XH               NUMBER,
  JCJSS            NUMBER,
  SAJS             NUMBER,
  JAJS             NUMBER,
  WCYPJSS          NUMBER,
  WCYPRSS          NUMBER,
  GPHBGYCPJS       NUMBER,
  GPHBGYCPRS       NUMBER,
  JZCFRS           NUMBER,
  JQCFRS           NUMBER,
  MYXSCFRS         NUMBER,
  WZRS             NUMBER,
  GPHBGYCPQTRS     NUMBER,
  CWSYFLGPHBGYCPRS NUMBER,
  LXBDGPHBGYCPRS   NUMBER,
  SSBQHZJBZRS      NUMBER,
  QTYYGPHBGYCPRS   NUMBER,
  SSBQHZJBZFHZSJS  NUMBER,
  WFSSCXFHZSJS     NUMBER,
  QTYYFHZSJS       NUMBER,
  XJFHZSJS         NUMBER,
  JCYCSJS          NUMBER,
  DJJS             NUMBER,
  QTJAJS           NUMBER,
  KTSLJS           NUMBER,
  DTXPJS           NUMBER,
  SWJS             NUMBER,
  SGJS             NUMBER,
  SAJSSAAJ         NUMBER,
  STJS             NUMBER,
  WJJSWJJS         NUMBER,
  FYBMS            NUMBER,
  BH               NUMBER,
  XHS              NUMBER,
  JCJS             NUMBER,
  SAJSSAJS         NUMBER,
  JA               NUMBER,
  WCYPJS           NUMBER,
  WCYPRS           NUMBER,
  GPJS             NUMBER,
  GPRS             NUMBER,
  JZCF             NUMBER,
  JQCF             NUMBER,
  MYXSCF           NUMBER,
  WZ               NUMBER,
  QZQT             NUMBER,
  CWSYFL           NUMBER,
  LXBD             NUMBER,
  SSBQCHZJBZ       NUMBER,
  GPYYQT           NUMBER,
  FHZSSSBQ         NUMBER,
  WFSSCX           NUMBER,
  FHZSQT           NUMBER,
  FHZSXJ           NUMBER,
  CXHBGYCD         NUMBER,
  CSRS             NUMBER,
  DJ               NUMBER,
  ZSJAJQT          NUMBER,
  KTSL             NUMBER,
  KTXP             NUMBER,
  MG               NUMBER,
  FG               NUMBER,
  YG               NUMBER,
  DGDZYOMGJ        NUMBER,
  RB               NUMBER,
  SWQT             NUMBER,
  SWXJ             NUMBER,
  SG               NUMBER,
  SA               NUMBER,
  ST               NUMBER,
  WJJS             NUMBER,
  JCYJYYQSL        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_XSZSAJTJB
  is '刑事再审案件统计表';
comment on column SFTJJKXT_XSZSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_XSZSAJTJB.BHS
  is '编号s';
comment on column SFTJJKXT_XSZSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_XSZSAJTJB.JCJSS
  is '旧存件数s';
comment on column SFTJJKXT_XSZSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_XSZSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_XSZSAJTJB.WCYPJSS
  is '维持原判件数s';
comment on column SFTJJKXT_XSZSAJTJB.WCYPRSS
  is '维持原判人数s';
comment on column SFTJJKXT_XSZSAJTJB.GPHBGYCPJS
  is '改判或变更原裁判件数';
comment on column SFTJJKXT_XSZSAJTJB.GPHBGYCPRS
  is '改判或变更原裁判人数';
comment on column SFTJJKXT_XSZSAJTJB.JZCFRS
  is '加重处罚人数';
comment on column SFTJJKXT_XSZSAJTJB.JQCFRS
  is '减轻处罚人数';
comment on column SFTJJKXT_XSZSAJTJB.MYXSCFRS
  is '免予刑事处罚人数';
comment on column SFTJJKXT_XSZSAJTJB.WZRS
  is '无罪人数';
comment on column SFTJJKXT_XSZSAJTJB.GPHBGYCPQTRS
  is '改判或变更原裁判其他人数';
comment on column SFTJJKXT_XSZSAJTJB.CWSYFLGPHBGYCPRS
  is '错误适用法律改判或变更原裁判人数';
comment on column SFTJJKXT_XSZSAJTJB.LXBDGPHBGYCPRS
  is '量刑不当改判或变更原裁判人数';
comment on column SFTJJKXT_XSZSAJTJB.SSBQHZJBZRS
  is '事实不清或证据不足人数';
comment on column SFTJJKXT_XSZSAJTJB.QTYYGPHBGYCPRS
  is '其他原因改判或变更原裁判人数';
comment on column SFTJJKXT_XSZSAJTJB.SSBQHZJBZFHZSJS
  is '事实不清或证据不足发回重审件数';
comment on column SFTJJKXT_XSZSAJTJB.WFSSCXFHZSJS
  is '违反诉讼程序发回重审件数';
comment on column SFTJJKXT_XSZSAJTJB.QTYYFHZSJS
  is '其他原因发回重审件数';
comment on column SFTJJKXT_XSZSAJTJB.XJFHZSJS
  is '小计发回重审件数';
comment on column SFTJJKXT_XSZSAJTJB.JCYCSJS
  is '检察院撤诉件数';
comment on column SFTJJKXT_XSZSAJTJB.DJJS
  is '调解件数';
comment on column SFTJJKXT_XSZSAJTJB.QTJAJS
  is '其他结案件数';
comment on column SFTJJKXT_XSZSAJTJB.KTSLJS
  is '开庭审理件数';
comment on column SFTJJKXT_XSZSAJTJB.DTXPJS
  is '当庭宣判件数';
comment on column SFTJJKXT_XSZSAJTJB.SWJS
  is '涉外件数';
comment on column SFTJJKXT_XSZSAJTJB.SGJS
  is '涉港件数';
comment on column SFTJJKXT_XSZSAJTJB.SAJSSAAJ
  is '涉澳件数saaj';
comment on column SFTJJKXT_XSZSAJTJB.STJS
  is '涉台件数';
comment on column SFTJJKXT_XSZSAJTJB.WJJSWJJS
  is '未结件数wjjs';
comment on column SFTJJKXT_XSZSAJTJB.FYBMS
  is '法院编码s';
comment on column SFTJJKXT_XSZSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_XSZSAJTJB.XHS
  is '序号s';
comment on column SFTJJKXT_XSZSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_XSZSAJTJB.SAJSSAJS
  is '收案件数sajs';
comment on column SFTJJKXT_XSZSAJTJB.JA
  is '结案';
comment on column SFTJJKXT_XSZSAJTJB.WCYPJS
  is '维持原判件数';
comment on column SFTJJKXT_XSZSAJTJB.WCYPRS
  is '维持原判人数';
comment on column SFTJJKXT_XSZSAJTJB.GPJS
  is '改判件数';
comment on column SFTJJKXT_XSZSAJTJB.GPRS
  is '改判人数';
comment on column SFTJJKXT_XSZSAJTJB.JZCF
  is '加重处罚';
comment on column SFTJJKXT_XSZSAJTJB.JQCF
  is '减轻处罚';
comment on column SFTJJKXT_XSZSAJTJB.MYXSCF
  is '免于刑事处罚';
comment on column SFTJJKXT_XSZSAJTJB.WZ
  is '无罪';
comment on column SFTJJKXT_XSZSAJTJB.QZQT
  is '其中其他';
comment on column SFTJJKXT_XSZSAJTJB.CWSYFL
  is '错误适用法律';
comment on column SFTJJKXT_XSZSAJTJB.LXBD
  is '量刑不当';
comment on column SFTJJKXT_XSZSAJTJB.SSBQCHZJBZ
  is '事实不清楚或证据不足';
comment on column SFTJJKXT_XSZSAJTJB.GPYYQT
  is '改判原因其他';
comment on column SFTJJKXT_XSZSAJTJB.FHZSSSBQ
  is '发回重审事实不清';
comment on column SFTJJKXT_XSZSAJTJB.WFSSCX
  is '违法诉讼程序';
comment on column SFTJJKXT_XSZSAJTJB.FHZSQT
  is '发回重审其他';
comment on column SFTJJKXT_XSZSAJTJB.FHZSXJ
  is '发回重审小计';
comment on column SFTJJKXT_XSZSAJTJB.CXHBGYCD
  is '撤销或变更原裁定';
comment on column SFTJJKXT_XSZSAJTJB.CSRS
  is '撤诉人数';
comment on column SFTJJKXT_XSZSAJTJB.DJ
  is '调解';
comment on column SFTJJKXT_XSZSAJTJB.ZSJAJQT
  is '再审旧案件其他';
comment on column SFTJJKXT_XSZSAJTJB.KTSL
  is '开庭审理';
comment on column SFTJJKXT_XSZSAJTJB.KTXP
  is '开庭宣判';
comment on column SFTJJKXT_XSZSAJTJB.MG
  is '美国';
comment on column SFTJJKXT_XSZSAJTJB.FG
  is '法国';
comment on column SFTJJKXT_XSZSAJTJB.YG
  is '英国';
comment on column SFTJJKXT_XSZSAJTJB.DGDZYOMGJ
  is '德国等主要欧盟国家';
comment on column SFTJJKXT_XSZSAJTJB.RB
  is '日本';
comment on column SFTJJKXT_XSZSAJTJB.SWQT
  is '涉外其他';
comment on column SFTJJKXT_XSZSAJTJB.SWXJ
  is '涉外小计';
comment on column SFTJJKXT_XSZSAJTJB.SG
  is '涉港';
comment on column SFTJJKXT_XSZSAJTJB.SA
  is '涉澳';
comment on column SFTJJKXT_XSZSAJTJB.ST
  is '涉台';
comment on column SFTJJKXT_XSZSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_XSZSAJTJB.JCYJYYQSL
  is '检察院建议延期审理';

prompt
prompt Creating table SFTJJKXT_XSZSCQYSAJTJB
prompt =====================================
prompt
create table SFTJJKXT_XSZSCQYSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  JCRS        NUMBER,
  SAJS        NUMBER,
  SARS        NUMBER,
  GS          NUMBER,
  ZS          NUMBER,
  JCYZXQS     NUMBER,
  SJFYFHZS    NUMBER,
  JAJS        NUMBER,
  JARS        NUMBER,
  PJ          NUMBER,
  DJ          NUMBER,
  JCYCS       NUMBER,
  ZSRCS       NUMBER,
  BHZS        NUMBER,
  YS          NUMBER,
  ZZ          NUMBER,
  DTXP        NUMBER,
  MG          NUMBER,
  FG          NUMBER,
  YG          NUMBER,
  DGDZYOMGJ   NUMBER,
  RB          NUMBER,
  JSQT        NUMBER,
  XJ          NUMBER,
  SG          NUMBER,
  SA          NUMBER,
  ST          NUMBER,
  WJJS        NUMBER,
  WJRS        NUMBER,
  JCYJYYQSL   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_XSZSCQYSAJTJB
  is '刑事知识产权一审案件统计表';
comment on column SFTJJKXT_XSZSCQYSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_XSZSCQYSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_XSZSCQYSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JCRS
  is '旧存人数';
comment on column SFTJJKXT_XSZSCQYSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_XSZSCQYSAJTJB.SARS
  is '收案人数';
comment on column SFTJJKXT_XSZSCQYSAJTJB.GS
  is '公诉';
comment on column SFTJJKXT_XSZSCQYSAJTJB.ZS
  is '自诉';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JCYZXQS
  is '检察院重新起诉';
comment on column SFTJJKXT_XSZSCQYSAJTJB.SJFYFHZS
  is '上级法院发挥重审';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JARS
  is '结案人数';
comment on column SFTJJKXT_XSZSCQYSAJTJB.PJ
  is '判决';
comment on column SFTJJKXT_XSZSCQYSAJTJB.DJ
  is '调解';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JCYCS
  is '检察院撤诉';
comment on column SFTJJKXT_XSZSCQYSAJTJB.ZSRCS
  is '自诉人撤诉';
comment on column SFTJJKXT_XSZSCQYSAJTJB.BHZS
  is '驳回自诉';
comment on column SFTJJKXT_XSZSCQYSAJTJB.YS
  is '移送';
comment on column SFTJJKXT_XSZSCQYSAJTJB.ZZ
  is '终止';
comment on column SFTJJKXT_XSZSCQYSAJTJB.DTXP
  is '当庭宣判';
comment on column SFTJJKXT_XSZSCQYSAJTJB.MG
  is '美国';
comment on column SFTJJKXT_XSZSCQYSAJTJB.FG
  is '法国';
comment on column SFTJJKXT_XSZSCQYSAJTJB.YG
  is '英国';
comment on column SFTJJKXT_XSZSCQYSAJTJB.DGDZYOMGJ
  is '德国等主要欧盟国家';
comment on column SFTJJKXT_XSZSCQYSAJTJB.RB
  is '日本';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JSQT
  is '件数其他';
comment on column SFTJJKXT_XSZSCQYSAJTJB.XJ
  is '小计';
comment on column SFTJJKXT_XSZSCQYSAJTJB.SG
  is '涉港';
comment on column SFTJJKXT_XSZSCQYSAJTJB.SA
  is '涉澳';
comment on column SFTJJKXT_XSZSCQYSAJTJB.ST
  is '涉台';
comment on column SFTJJKXT_XSZSCQYSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_XSZSCQYSAJTJB.WJRS
  is '未结人数';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JCYJYYQSL
  is '检察院建议延期审理';

prompt
prompt Creating table SFTJJKXT_XSZSCQZSAJTJB
prompt =====================================
prompt
create table SFTJJKXT_XSZSCQZSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JA          NUMBER,
  WCYPJS      NUMBER,
  WCYPRS      NUMBER,
  GPHBGYCPJS  NUMBER,
  GPHBGYCPRS  NUMBER,
  JZCF        NUMBER,
  JQCF        NUMBER,
  MYXSCF      NUMBER,
  WZ          NUMBER,
  QZQT        NUMBER,
  CWSYFL      NUMBER,
  LXBD        NUMBER,
  SSBQHZJBZ   NUMBER,
  GPYYQT      NUMBER,
  FHZSSSBQ    NUMBER,
  WFSSCX      NUMBER,
  FHZSQT      NUMBER,
  FHZSXJ      NUMBER,
  JCYCS       NUMBER,
  DJ          NUMBER,
  ZSJAJZQT    NUMBER,
  KTSL        NUMBER,
  DTXP        NUMBER,
  MG          NUMBER,
  FG          NUMBER,
  YG          NUMBER,
  DGDZYOMGJ   NUMBER,
  RB          NUMBER,
  SWQT        NUMBER,
  XJ          NUMBER,
  SG          NUMBER,
  SA          NUMBER,
  ST          NUMBER,
  WJJS        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_XSZSCQZSAJTJB
  is '刑事知识产权再审案件统计表';
comment on column SFTJJKXT_XSZSCQZSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_XSZSCQZSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_XSZSCQZSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_XSZSCQZSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_XSZSCQZSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_XSZSCQZSAJTJB.JA
  is '结案';
comment on column SFTJJKXT_XSZSCQZSAJTJB.WCYPJS
  is '维持原判件数';
comment on column SFTJJKXT_XSZSCQZSAJTJB.WCYPRS
  is '维持原判人数';
comment on column SFTJJKXT_XSZSCQZSAJTJB.GPHBGYCPJS
  is '改判或变更原裁判件数';
comment on column SFTJJKXT_XSZSCQZSAJTJB.GPHBGYCPRS
  is '改判或变更原裁判人数';
comment on column SFTJJKXT_XSZSCQZSAJTJB.JZCF
  is '加重处罚';
comment on column SFTJJKXT_XSZSCQZSAJTJB.JQCF
  is '减轻处罚';
comment on column SFTJJKXT_XSZSCQZSAJTJB.MYXSCF
  is '免予刑事处罚';
comment on column SFTJJKXT_XSZSCQZSAJTJB.WZ
  is '无罪';
comment on column SFTJJKXT_XSZSCQZSAJTJB.QZQT
  is '其中其他';
comment on column SFTJJKXT_XSZSCQZSAJTJB.CWSYFL
  is '错误适用法律';
comment on column SFTJJKXT_XSZSCQZSAJTJB.LXBD
  is '量刑不当';
comment on column SFTJJKXT_XSZSCQZSAJTJB.SSBQHZJBZ
  is '事实不清或证据不足';
comment on column SFTJJKXT_XSZSCQZSAJTJB.GPYYQT
  is '改判原因其他';
comment on column SFTJJKXT_XSZSCQZSAJTJB.FHZSSSBQ
  is '发挥重生事实不清';
comment on column SFTJJKXT_XSZSCQZSAJTJB.WFSSCX
  is '违反诉讼程序';
comment on column SFTJJKXT_XSZSCQZSAJTJB.FHZSQT
  is '发回重审其它';
comment on column SFTJJKXT_XSZSCQZSAJTJB.FHZSXJ
  is '发挥重审小计';
comment on column SFTJJKXT_XSZSCQZSAJTJB.JCYCS
  is '检察院撤诉';
comment on column SFTJJKXT_XSZSCQZSAJTJB.DJ
  is '调解';
comment on column SFTJJKXT_XSZSCQZSAJTJB.ZSJAJZQT
  is '在审结案件中其它';
comment on column SFTJJKXT_XSZSCQZSAJTJB.KTSL
  is '开庭审理';
comment on column SFTJJKXT_XSZSCQZSAJTJB.DTXP
  is '当庭宣判';
comment on column SFTJJKXT_XSZSCQZSAJTJB.MG
  is '美国';
comment on column SFTJJKXT_XSZSCQZSAJTJB.FG
  is '法国';
comment on column SFTJJKXT_XSZSCQZSAJTJB.YG
  is '英国';
comment on column SFTJJKXT_XSZSCQZSAJTJB.DGDZYOMGJ
  is '德国等主要欧盟国家';
comment on column SFTJJKXT_XSZSCQZSAJTJB.RB
  is '日本';
comment on column SFTJJKXT_XSZSCQZSAJTJB.SWQT
  is '涉外其它';
comment on column SFTJJKXT_XSZSCQZSAJTJB.XJ
  is '小计';
comment on column SFTJJKXT_XSZSCQZSAJTJB.SG
  is '涉港';
comment on column SFTJJKXT_XSZSCQZSAJTJB.SA
  is '涉澳';
comment on column SFTJJKXT_XSZSCQZSAJTJB.ST
  is '涉台';
comment on column SFTJJKXT_XSZSCQZSAJTJB.WJJS
  is '未结件数';

prompt
prompt Creating table SFTJJKXT_XZESZSAJAJTJB
prompt =====================================
prompt
create table SFTJJKXT_XZESZSAJAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JC          NUMBER,
  SA          NUMBER,
  JA          NUMBER,
  WC          NUMBER,
  PJ          NUMBER,
  FHZS        NUMBER,
  CS          NUMBER,
  BHBH        NUMBER,
  CXYCDZL     NUMBER,
  ZJ          NUMBER,
  QT          NUMBER,
  DJ          NUMBER,
  KT          NUMBER,
  DTXP        NUMBER,
  SWSW        NUMBER,
  SG          NUMBER,
  SASA        NUMBER,
  ST          NUMBER,
  WJ          NUMBER,
  ZZ          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_XZESZSAJAJTJB
  is '行政二审、再审案件案件统计表';
comment on column SFTJJKXT_XZESZSAJAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_XZESZSAJAJTJB.BH
  is '编号';
comment on column SFTJJKXT_XZESZSAJAJTJB.XH
  is '序号';
comment on column SFTJJKXT_XZESZSAJAJTJB.JC
  is '旧存';
comment on column SFTJJKXT_XZESZSAJAJTJB.SA
  is '收案';
comment on column SFTJJKXT_XZESZSAJAJTJB.JA
  is '结案';
comment on column SFTJJKXT_XZESZSAJAJTJB.WC
  is '维持';
comment on column SFTJJKXT_XZESZSAJAJTJB.PJ
  is '判决';
comment on column SFTJJKXT_XZESZSAJAJTJB.FHZS
  is '发回重审';
comment on column SFTJJKXT_XZESZSAJAJTJB.CS
  is '撤诉';
comment on column SFTJJKXT_XZESZSAJAJTJB.BHBH
  is '驳回bh';
comment on column SFTJJKXT_XZESZSAJAJTJB.CXYCDZL
  is '撤销原裁定指令';
comment on column SFTJJKXT_XZESZSAJAJTJB.ZJ
  is '终结';
comment on column SFTJJKXT_XZESZSAJAJTJB.QT
  is '其他';
comment on column SFTJJKXT_XZESZSAJAJTJB.DJ
  is '调解';
comment on column SFTJJKXT_XZESZSAJAJTJB.KT
  is '开庭';
comment on column SFTJJKXT_XZESZSAJAJTJB.DTXP
  is '当庭宣判';
comment on column SFTJJKXT_XZESZSAJAJTJB.SWSW
  is '涉外sw';
comment on column SFTJJKXT_XZESZSAJAJTJB.SG
  is '涉港';
comment on column SFTJJKXT_XZESZSAJAJTJB.SASA
  is '涉澳sa';
comment on column SFTJJKXT_XZESZSAJAJTJB.ST
  is '涉台';
comment on column SFTJJKXT_XZESZSAJAJTJB.WJ
  is '未结';
comment on column SFTJJKXT_XZESZSAJAJTJB.ZZ
  is '中止';

prompt
prompt Creating table SFTJJKXT_XZYSAJTJB
prompt =================================
prompt
create table SFTJJKXT_XZYSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JC          NUMBER,
  SA          NUMBER,
  SADDPC      NUMBER,
  SAFDPC      NUMBER,
  JA          NUMBER,
  JADDPC      NUMBER,
  JAFDPC      NUMBER,
  WC          NUMBER,
  QBCX        NUMBER,
  BFCX        NUMBER,
  ZXZXZXW     NUMBER,
  BG          NUMBER,
  LXFDZZ      NUMBER,
  QRHF        NUMBER,
  QRWF        NUMBER,
  PJBHSS      NUMBER,
  PC          NUMBER,
  BYPC        NUMBER,
  CDBH        NUMBER,
  YGZDCS      NUMBER,
  BGGBYGCS    NUMBER,
  SSBD        NUMBER,
  ZJ          NUMBER,
  QT          NUMBER,
  PCDJ        NUMBER,
  FHYW        NUMBER,
  ZFPCJ       NUMBER,
  PCJE        NUMBER,
  DTXP        NUMBER,
  SW          NUMBER,
  SG          NUMBER,
  SASA        NUMBER,
  ST          NUMBER,
  WJ          NUMBER,
  ZZ          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_XZYSAJTJB
  is '行政一审案件统计表';
comment on column SFTJJKXT_XZYSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_XZYSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_XZYSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_XZYSAJTJB.JC
  is '旧存';
comment on column SFTJJKXT_XZYSAJTJB.SA
  is '收案';
comment on column SFTJJKXT_XZYSAJTJB.SADDPC
  is '收案单独赔偿';
comment on column SFTJJKXT_XZYSAJTJB.SAFDPC
  is '收案附带赔偿';
comment on column SFTJJKXT_XZYSAJTJB.JA
  is '结案';
comment on column SFTJJKXT_XZYSAJTJB.JADDPC
  is '结案单独赔偿';
comment on column SFTJJKXT_XZYSAJTJB.JAFDPC
  is '结案附带赔偿';
comment on column SFTJJKXT_XZYSAJTJB.WC
  is '维持';
comment on column SFTJJKXT_XZYSAJTJB.QBCX
  is '全部撤销';
comment on column SFTJJKXT_XZYSAJTJB.BFCX
  is '部分撤销';
comment on column SFTJJKXT_XZYSAJTJB.ZXZXZXW
  is '重新作行政行为';
comment on column SFTJJKXT_XZYSAJTJB.BG
  is '变更';
comment on column SFTJJKXT_XZYSAJTJB.LXFDZZ
  is '履行法定职责';
comment on column SFTJJKXT_XZYSAJTJB.QRHF
  is '确认合法';
comment on column SFTJJKXT_XZYSAJTJB.QRWF
  is '确认违法';
comment on column SFTJJKXT_XZYSAJTJB.PJBHSS
  is '判决驳回诉讼';
comment on column SFTJJKXT_XZYSAJTJB.PC
  is '赔偿';
comment on column SFTJJKXT_XZYSAJTJB.BYPC
  is '不予赔偿';
comment on column SFTJJKXT_XZYSAJTJB.CDBH
  is '裁定驳回';
comment on column SFTJJKXT_XZYSAJTJB.YGZDCS
  is '原告主动撤诉';
comment on column SFTJJKXT_XZYSAJTJB.BGGBYGCS
  is '被告改变原告撤诉';
comment on column SFTJJKXT_XZYSAJTJB.SSBD
  is '诉讼标的';
comment on column SFTJJKXT_XZYSAJTJB.ZJ
  is '终结';
comment on column SFTJJKXT_XZYSAJTJB.QT
  is '其他';
comment on column SFTJJKXT_XZYSAJTJB.PCDJ
  is '赔偿调解';
comment on column SFTJJKXT_XZYSAJTJB.FHYW
  is '返还原物';
comment on column SFTJJKXT_XZYSAJTJB.ZFPCJ
  is '支付赔偿金';
comment on column SFTJJKXT_XZYSAJTJB.PCJE
  is '赔偿金额';
comment on column SFTJJKXT_XZYSAJTJB.DTXP
  is '当庭宣判';
comment on column SFTJJKXT_XZYSAJTJB.SW
  is '涉外';
comment on column SFTJJKXT_XZYSAJTJB.SG
  is '涉港';
comment on column SFTJJKXT_XZYSAJTJB.SASA
  is '涉澳sa';
comment on column SFTJJKXT_XZYSAJTJB.ST
  is '涉台';
comment on column SFTJJKXT_XZYSAJTJB.WJ
  is '未结';
comment on column SFTJJKXT_XZYSAJTJB.ZZ
  is '中止';

prompt
prompt Creating table SFTJJKXT_XZZSCQESZSAJTJB
prompt =======================================
prompt
create table SFTJJKXT_XZZSCQESZSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  WC          NUMBER,
  PJ          NUMBER,
  FHZS        NUMBER,
  CS          NUMBER,
  BHBH        NUMBER,
  CXYCDZLLASL NUMBER,
  ZJ          NUMBER,
  QT          NUMBER,
  DJ          NUMBER,
  KTSL        NUMBER,
  DTXP        NUMBER,
  MG          NUMBER,
  FG          NUMBER,
  YG          NUMBER,
  DGDZYOMGJ   NUMBER,
  RB          NUMBER,
  SWQT        NUMBER,
  XJ          NUMBER,
  SG          NUMBER,
  SA          NUMBER,
  ST          NUMBER,
  WJ          NUMBER,
  WJZZ        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_XZZSCQESZSAJTJB
  is '行政知识产权二审、再审案件统计表';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.WC
  is '维持';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.PJ
  is '判决';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.FHZS
  is '发回重审';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.CS
  is '撤诉';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.BHBH
  is '驳回bh';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.CXYCDZLLASL
  is '撤销原裁定指令立案审理';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.ZJ
  is '终结';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.QT
  is '其他';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.DJ
  is '调解';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.KTSL
  is '开庭审理';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.DTXP
  is '当庭宣判';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.MG
  is '美国';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.FG
  is '法国';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.YG
  is '英国';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.DGDZYOMGJ
  is '德国等主要欧盟国家';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.RB
  is '日本';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.SWQT
  is '涉外其它';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.XJ
  is '小计';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.SG
  is '涉港';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.SA
  is '涉澳';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.ST
  is '涉台';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.WJ
  is '未结';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.WJZZ
  is '未结终止';

prompt
prompt Creating table SFTJJKXT_XZZSCQYSAJTJB
prompt =====================================
prompt
create table SFTJJKXT_XZZSCQYSAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_XZZSCQYSAJTJB
  is '行政知识产权一审案件统计表';

prompt
prompt Creating table SFTJJKXT_ZFQKTJB
prompt ===============================
prompt
create table SFTJJKXT_ZFQKTJB
(
  ID            VARCHAR2(36) not null,
  REG_TIME      DATE not null,
  UPDATE_TIME   DATE not null,
  DEPT_CODE     VARCHAR2(20) not null,
  APP_CODE      VARCHAR2(20) not null,
  FYBM          NUMBER,
  BH            NUMBER,
  XH            NUMBER,
  AY            NUMBER,
  BQSXPJZFRS    NUMBER,
  ZYGRRS        NUMBER,
  XGGRRS        NUMBER,
  MGNMRS        NUMBER,
  QTNMRS        NUMBER,
  XYJRRS        NUMBER,
  GJJGRYRS      NUMBER,
  GYQYRYRS      NUMBER,
  JRJGRYRS      NUMBER,
  SYDWRYRS      NUMBER,
  RMTTRYRS      NUMBER,
  QTGJGZRYRS    NUMBER,
  XSRS          NUMBER,
  ZYRS          NUMBER,
  LTXRYRS       NUMBER,
  SYGTRYRS      NUMBER,
  WYRYRS        NUMBER,
  QTRS          NUMBER,
  SSSYSBMSLSRS  NUMBER,
  SLSYSBMSBSRS  NUMBER,
  SBSYSBMESWSRS NUMBER,
  LSSYSRS       NUMBER,
  NXRS          NUMBER,
  DYRS          NUMBER,
  SSMZRS        NUMBER,
  GATRYRS       NUMBER,
  WJRRS         NUMBER,
  ZFZDRYRS      NUMBER,
  LFRS          NUMBER,
  ZLJRYRS       NUMBER,
  AYBM          VARCHAR2(4),
  XSLM          VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_ZFQKTJB
  is '罪犯情况统计表';
comment on column SFTJJKXT_ZFQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_ZFQKTJB.BH
  is '编号';
comment on column SFTJJKXT_ZFQKTJB.XH
  is '序号';
comment on column SFTJJKXT_ZFQKTJB.AY
  is '案由';
comment on column SFTJJKXT_ZFQKTJB.BQSXPJZFRS
  is '本期生效判决罪犯人数';
comment on column SFTJJKXT_ZFQKTJB.ZYGRRS
  is '在业工人人数';
comment on column SFTJJKXT_ZFQKTJB.XGGRRS
  is '下岗工人人数';
comment on column SFTJJKXT_ZFQKTJB.MGNMRS
  is '民工农民人数';
comment on column SFTJJKXT_ZFQKTJB.QTNMRS
  is '其他农民人数';
comment on column SFTJJKXT_ZFQKTJB.XYJRRS
  is '现役军人人数';
comment on column SFTJJKXT_ZFQKTJB.GJJGRYRS
  is '国家机关人员人数';
comment on column SFTJJKXT_ZFQKTJB.GYQYRYRS
  is '国有企业人员人数';
comment on column SFTJJKXT_ZFQKTJB.JRJGRYRS
  is '金融机构人员人数';
comment on column SFTJJKXT_ZFQKTJB.SYDWRYRS
  is '事业单位人员人数';
comment on column SFTJJKXT_ZFQKTJB.RMTTRYRS
  is '人民团体人员人数';
comment on column SFTJJKXT_ZFQKTJB.QTGJGZRYRS
  is '其他国家工作人员人数';
comment on column SFTJJKXT_ZFQKTJB.XSRS
  is '学生人数';
comment on column SFTJJKXT_ZFQKTJB.ZYRS
  is '职员人数';
comment on column SFTJJKXT_ZFQKTJB.LTXRYRS
  is '离退休人员人数';
comment on column SFTJJKXT_ZFQKTJB.SYGTRYRS
  is '私营个体人员人数';
comment on column SFTJJKXT_ZFQKTJB.WYRYRS
  is '无业人员人数';
comment on column SFTJJKXT_ZFQKTJB.QTRS
  is '其他人数';
comment on column SFTJJKXT_ZFQKTJB.SSSYSBMSLSRS
  is '十四岁以上不满十六岁人数';
comment on column SFTJJKXT_ZFQKTJB.SLSYSBMSBSRS
  is '十六岁以上不满十八岁人数';
comment on column SFTJJKXT_ZFQKTJB.SBSYSBMESWSRS
  is '十八岁以上不满二十五岁人数';
comment on column SFTJJKXT_ZFQKTJB.LSSYSRS
  is '六十岁以上人数';
comment on column SFTJJKXT_ZFQKTJB.NXRS
  is '女性人数';
comment on column SFTJJKXT_ZFQKTJB.DYRS
  is '党员人数';
comment on column SFTJJKXT_ZFQKTJB.SSMZRS
  is '少数民族人数';
comment on column SFTJJKXT_ZFQKTJB.GATRYRS
  is '港澳台人员人数';
comment on column SFTJJKXT_ZFQKTJB.WJRRS
  is '外籍人人数';
comment on column SFTJJKXT_ZFQKTJB.ZFZDRYRS
  is '曾犯罪的人员人数';
comment on column SFTJJKXT_ZFQKTJB.LFRS
  is '累犯人数';
comment on column SFTJJKXT_ZFQKTJB.ZLJRYRS
  is '曾劳教人员人数';
comment on column SFTJJKXT_ZFQKTJB.AYBM
  is '案由编码';
comment on column SFTJJKXT_ZFQKTJB.XSLM
  is '显示列名';

prompt
prompt Creating table SFTJJKXT_ZFZYWXTJYSGBQKE
prompt =======================================
prompt
create table SFTJJKXT_ZFZYWXTJYSGBQKE
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  HJRS        NUMBER,
  ZSPTHWWP    NUMBER,
  TW          NUMBER,
  NYGK        NUMBER,
  SH          NUMBER,
  JECCLYBM    NUMBER,
  LYZQ        NUMBER,
  WHZS        NUMBER,
  QT          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_ZFZYWXTJYSGBQKE
  is '罪犯中原为县团级以上干部情况（二）';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.FYBM
  is '法院编码';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.BH
  is '编号';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.XH
  is '序号';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.HJRS
  is '合计人数';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.ZSPTHWWP
  is '走私普通货物、物品';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.TW
  is '贪污';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.NYGK
  is '挪用公款';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.SH
  is '受贿';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.JECCLYBM
  is '巨额财产来源不明';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.LYZQ
  is '滥用职权';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.WHZS
  is '玩忽职守';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.QT
  is '其他';

prompt
prompt Creating table SFTJJKXT_ZHQKTJB
prompt ===============================
prompt
create table SFTJJKXT_ZHQKTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BM          NUMBER,
  XH          NUMBER,
  PSYCJ       NUMBER,
  HB          NUMBER,
  SSCCBQ      NUMBER,
  XYZX        NUMBER,
  SWHTL       NUMBER,
  FLYZ        NUMBER,
  ZGYJA       NUMBER,
  ZGYSSBDZJE  NUMBER,
  GYJA        NUMBER,
  GYSSBDZJE   NUMBER,
  ZYJA        NUMBER,
  ZYSSBDZJE   NUMBER,
  JCYJA       NUMBER,
  JCYSSBDZJE  NUMBER,
  RMFTJA      NUMBER,
  RMFTSSBDZJE NUMBER,
  HJJA        NUMBER,
  HJSSBDZJE   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_ZHQKTJB
  is '综合情况统计表';
comment on column SFTJJKXT_ZHQKTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_ZHQKTJB.BM
  is '编码';
comment on column SFTJJKXT_ZHQKTJB.XH
  is '序号';
comment on column SFTJJKXT_ZHQKTJB.PSYCJ
  is '陪审员参加';
comment on column SFTJJKXT_ZHQKTJB.HB
  is '回避';
comment on column SFTJJKXT_ZHQKTJB.SSCCBQ
  is '诉讼财产保全';
comment on column SFTJJKXT_ZHQKTJB.XYZX
  is '先予执行';
comment on column SFTJJKXT_ZHQKTJB.SWHTL
  is '审委会讨论';
comment on column SFTJJKXT_ZHQKTJB.FLYZ
  is '法律援助';
comment on column SFTJJKXT_ZHQKTJB.ZGYJA
  is '最高院结案';
comment on column SFTJJKXT_ZHQKTJB.ZGYSSBDZJE
  is '最高院诉讼标的总金额';
comment on column SFTJJKXT_ZHQKTJB.GYJA
  is '高院结案';
comment on column SFTJJKXT_ZHQKTJB.GYSSBDZJE
  is '高院诉讼标的总金额';
comment on column SFTJJKXT_ZHQKTJB.ZYJA
  is '中院结案';
comment on column SFTJJKXT_ZHQKTJB.ZYSSBDZJE
  is '中院诉讼标的总金额';
comment on column SFTJJKXT_ZHQKTJB.JCYJA
  is '基层院结案';
comment on column SFTJJKXT_ZHQKTJB.JCYSSBDZJE
  is '基层院诉讼标的总金额';
comment on column SFTJJKXT_ZHQKTJB.RMFTJA
  is '人民法庭结案';
comment on column SFTJJKXT_ZHQKTJB.RMFTSSBDZJE
  is '人民法庭诉讼标的总金额';
comment on column SFTJJKXT_ZHQKTJB.HJJA
  is '合计结案';
comment on column SFTJJKXT_ZHQKTJB.HJSSBDZJE
  is '合计诉讼标的总金额';

prompt
prompt Creating table SFTJJKXT_ZXAJTJB
prompt ===============================
prompt
create table SFTJJKXT_ZXAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JC          NUMBER,
  JCXZFS      NUMBER,
  SA          NUMBER,
  YJ          NUMBER,
  SQ          NUMBER,
  SQZXBDZJE   NUMBER,
  ST          NUMBER,
  CCXJSZX     NUMBER,
  TJZX        NUMBER,
  ZDZX        NUMBER,
  SCXZFS      NUMBER,
  JA          NUMBER,
  XZFSZYZX    NUMBER,
  XZFSBYZX    NUMBER,
  BYZX        NUMBER,
  ZDLX        NUMBER,
  HJ          NUMBER,
  QZZX        NUMBER,
  ZJ          NUMBER,
  QT          NUMBER,
  SW          NUMBER,
  SG          NUMBER,
  SASA        NUMBER,
  STST        NUMBER,
  ZJBDZJE     NUMBER,
  JL          NUMBER,
  FKJS        NUMBER,
  FKZJE       NUMBER,
  WJJS        NUMBER,
  WJXZFS      NUMBER,
  WJBDZJE     NUMBER,
  ZZ          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_ZXAJTJB
  is '执行案件统计表';
comment on column SFTJJKXT_ZXAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_ZXAJTJB.BH
  is '编号';
comment on column SFTJJKXT_ZXAJTJB.XH
  is '序号';
comment on column SFTJJKXT_ZXAJTJB.JC
  is '旧存';
comment on column SFTJJKXT_ZXAJTJB.JCXZFS
  is '旧存行政非诉';
comment on column SFTJJKXT_ZXAJTJB.SA
  is '收案';
comment on column SFTJJKXT_ZXAJTJB.YJ
  is '移交';
comment on column SFTJJKXT_ZXAJTJB.SQ
  is '申请';
comment on column SFTJJKXT_ZXAJTJB.SQZXBDZJE
  is '申请执行标的总金额';
comment on column SFTJJKXT_ZXAJTJB.ST
  is '受托';
comment on column SFTJJKXT_ZXAJTJB.CCXJSZX
  is '财产刑即时执行';
comment on column SFTJJKXT_ZXAJTJB.TJZX
  is '提级执行';
comment on column SFTJJKXT_ZXAJTJB.ZDZX
  is '指定执行';
comment on column SFTJJKXT_ZXAJTJB.SCXZFS
  is '审查行政非诉';
comment on column SFTJJKXT_ZXAJTJB.JA
  is '结案';
comment on column SFTJJKXT_ZXAJTJB.XZFSZYZX
  is '行政非诉准予执行';
comment on column SFTJJKXT_ZXAJTJB.XZFSBYZX
  is '行政非诉不予执行';
comment on column SFTJJKXT_ZXAJTJB.BYZX
  is '不予执行';
comment on column SFTJJKXT_ZXAJTJB.ZDLX
  is '自动履行';
comment on column SFTJJKXT_ZXAJTJB.HJ
  is '和解';
comment on column SFTJJKXT_ZXAJTJB.QZZX
  is '强制执行';
comment on column SFTJJKXT_ZXAJTJB.ZJ
  is '终结';
comment on column SFTJJKXT_ZXAJTJB.QT
  is '其他';
comment on column SFTJJKXT_ZXAJTJB.SW
  is '涉外';
comment on column SFTJJKXT_ZXAJTJB.SG
  is '涉港';
comment on column SFTJJKXT_ZXAJTJB.SASA
  is '涉澳sa';
comment on column SFTJJKXT_ZXAJTJB.STST
  is '涉台st';
comment on column SFTJJKXT_ZXAJTJB.ZJBDZJE
  is '执结标的总金额';
comment on column SFTJJKXT_ZXAJTJB.JL
  is '拘留';
comment on column SFTJJKXT_ZXAJTJB.FKJS
  is '罚款件数';
comment on column SFTJJKXT_ZXAJTJB.FKZJE
  is '罚款总金额';
comment on column SFTJJKXT_ZXAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_ZXAJTJB.WJXZFS
  is '未结行政非诉';
comment on column SFTJJKXT_ZXAJTJB.WJBDZJE
  is '未结标的总金额';
comment on column SFTJJKXT_ZXAJTJB.ZZ
  is '中止';

prompt
prompt Creating table SFTJJKXT_ZXAJZXQXTJB
prompt ===================================
prompt
create table SFTJJKXT_ZXAJZXQXTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  AJJS        NUMBER,
  GDQXNJA     NUMBER,
  QXWSJBMLGY  NUMBER,
  QXWSJLGYYS  NUMBER,
  QXWSJYNYS   NUMBER,
  BZXRXLBM    NUMBER,
  BZXRWCC     NUMBER,
  CCQSDQD     NUMBER,
  YGRWFZX     NUMBER,
  SJFYYQ      NUMBER,
  SJFYXD      NUMBER,
  QTYY        NUMBER,
  WJJS        NUMBER,
  GDQXNWJ     NUMBER,
  QXNWJBMLGY  NUMBER,
  QXNWJLGYYS  NUMBER,
  QXNWJYNYS   NUMBER,
  WJZZ        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_ZXAJZXQXTJB
  is '执行案件执行期限统计表';
comment on column SFTJJKXT_ZXAJZXQXTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_ZXAJZXQXTJB.BH
  is '编号';
comment on column SFTJJKXT_ZXAJZXQXTJB.XH
  is '序号';
comment on column SFTJJKXT_ZXAJZXQXTJB.AJJS
  is '案件件数';
comment on column SFTJJKXT_ZXAJZXQXTJB.GDQXNJA
  is '规定期限内结案';
comment on column SFTJJKXT_ZXAJZXQXTJB.QXWSJBMLGY
  is '期限外审结不满六个月';
comment on column SFTJJKXT_ZXAJZXQXTJB.QXWSJLGYYS
  is '期限外审结六个月以上';
comment on column SFTJJKXT_ZXAJZXQXTJB.QXWSJYNYS
  is '期限外审结一年以上';
comment on column SFTJJKXT_ZXAJZXQXTJB.BZXRXLBM
  is '被执行人下落不明';
comment on column SFTJJKXT_ZXAJZXQXTJB.BZXRWCC
  is '被执行人无财产';
comment on column SFTJJKXT_ZXAJZXQXTJB.CCQSDQD
  is '财产权属待确定';
comment on column SFTJJKXT_ZXAJZXQXTJB.YGRWFZX
  is '因干扰无法执行';
comment on column SFTJJKXT_ZXAJZXQXTJB.SJFYYQ
  is '上级法院要求';
comment on column SFTJJKXT_ZXAJZXQXTJB.SJFYXD
  is '上级法院协调';
comment on column SFTJJKXT_ZXAJZXQXTJB.QTYY
  is '其他原因';
comment on column SFTJJKXT_ZXAJZXQXTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_ZXAJZXQXTJB.GDQXNWJ
  is '规定期限内未结';
comment on column SFTJJKXT_ZXAJZXQXTJB.QXNWJBMLGY
  is '期限内未结不满六个月';
comment on column SFTJJKXT_ZXAJZXQXTJB.QXNWJLGYYS
  is '期限内未结六个月以上';
comment on column SFTJJKXT_ZXAJZXQXTJB.QXNWJYNYS
  is '期限内未结一年以上';
comment on column SFTJJKXT_ZXAJZXQXTJB.WJZZ
  is '未结中止';

prompt
prompt Creating table SFTJJKXT_ZXYYFYDCZXAJTJB
prompt =======================================
prompt
create table SFTJJKXT_ZXYYFYDCZXAJTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JC          NUMBER,
  SA          NUMBER,
  JA          NUMBER,
  BHBH        NUMBER,
  BGGZ        NUMBER,
  CXJC        NUMBER,
  CH          NUMBER,
  QT          NUMBER,
  ZLYSFYZX    NUMBER,
  JDYBYZX     NUMBER,
  ZLQTFYZX    NUMBER,
  SWRYNJA     NUMBER,
  SWRYSJA     NUMBER,
  YGYYNJA     NUMBER,
  YGYYSJA     NUMBER,
  SW          NUMBER,
  SG          NUMBER,
  SASA        NUMBER,
  ST          NUMBER,
  WJ          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFTJJKXT_ZXYYFYDCZXAJTJB
  is '执行异议、复议、督促执行案件统计表';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.BH
  is '编号';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.XH
  is '序号';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.JC
  is '旧存';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.SA
  is '收案';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.JA
  is '结案';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.BHBH
  is '驳回bh';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.BGGZ
  is '变更、改正';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.CXJC
  is '撤销、解除';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.CH
  is '撤回';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.QT
  is '其他';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.ZLYSFYZX
  is '责令原审法院执行';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.JDYBYZX
  is '决定由本院执行';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.ZLQTFYZX
  is '指令其他法院执行';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.SWRYNJA
  is '十五日以内结案';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.SWRYSJA
  is '十五日以上结案';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.YGYYNJA
  is '一个月以内结案';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.YGYYSJA
  is '一个月以上结案';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.SW
  is '涉外';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.SG
  is '涉港';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.SASA
  is '涉澳sa';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.ST
  is '涉台';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.WJ
  is '未结';

prompt
prompt Creating table SFXZZBGLXT_ABJQ
prompt ==============================
prompt
create table SFXZZBGLXT_ABJQ
(
  ID                VARCHAR2(36) not null,
  REG_TIME          DATE not null,
  UPDATE_TIME       DATE not null,
  DEPT_CODE         VARCHAR2(20) not null,
  APP_CODE          VARCHAR2(20) not null,
  FYBM              NUMBER,
  BH                NUMBER,
  DJRBS             NUMBER,
  DJR               VARCHAR2(40),
  DJSJ              DATE,
  BM                VARCHAR2(50),
  SJ                DATE,
  JQR               VARCHAR2(40),
  JBQK              VARCHAR2(250),
  XYRS              NUMBER,
  SFLXGAPCS         NUMBER,
  TCYJHQTBMYJHSXCYJ VARCHAR2(250),
  TCSPBZ            NUMBER,
  TCSPSJ            DATE,
  TCSPR             VARCHAR2(40),
  TCSPSM            VARCHAR2(250),
  YWWLDXZYJ         VARCHAR2(250),
  YWWLDXZSPBZ       NUMBER,
  YWWLDXZSPR        VARCHAR2(40),
  YWWLDXZSPSJ       DATE,
  YWWLDXZSPSM       VARCHAR2(250),
  YLDYJ             VARCHAR2(250),
  YLDSPBZ           NUMBER,
  YLDSPSJ           DATE,
  YLDSPR            VARCHAR2(40),
  YLDSPSM           VARCHAR2(250),
  BZ                VARCHAR2(250),
  SFWCSP            NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ABJQ
  is '安保接洽';
comment on column SFXZZBGLXT_ABJQ.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ABJQ.BH
  is '编号';
comment on column SFXZZBGLXT_ABJQ.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_ABJQ.DJR
  is '登记人';
comment on column SFXZZBGLXT_ABJQ.DJSJ
  is '登记时间';
comment on column SFXZZBGLXT_ABJQ.BM
  is '部门';
comment on column SFXZZBGLXT_ABJQ.SJ
  is '时间';
comment on column SFXZZBGLXT_ABJQ.JQR
  is '接洽人';
comment on column SFXZZBGLXT_ABJQ.JBQK
  is '基本情况';
comment on column SFXZZBGLXT_ABJQ.XYRS
  is '需要人数';
comment on column SFXZZBGLXT_ABJQ.SFLXGAPCS
  is '是否联系公安（派出所）';
comment on column SFXZZBGLXT_ABJQ.TCYJHQTBMYJHSXCYJ
  is '庭、处意见或其他部门意见';
comment on column SFXZZBGLXT_ABJQ.TCSPBZ
  is '庭、处审批标志';
comment on column SFXZZBGLXT_ABJQ.TCSPSJ
  is '庭、处审批时间';
comment on column SFXZZBGLXT_ABJQ.TCSPR
  is '庭、处审批人';
comment on column SFXZZBGLXT_ABJQ.TCSPSM
  is '庭、处审批说明';
comment on column SFXZZBGLXT_ABJQ.YWWLDXZYJ
  is '院维稳领导小组意见';
comment on column SFXZZBGLXT_ABJQ.YWWLDXZSPBZ
  is '院维稳领导小组审批标志';
comment on column SFXZZBGLXT_ABJQ.YWWLDXZSPR
  is '院维稳领导小组审批人';
comment on column SFXZZBGLXT_ABJQ.YWWLDXZSPSJ
  is '院维稳领导小组审批时间';
comment on column SFXZZBGLXT_ABJQ.YWWLDXZSPSM
  is '院维稳领导小组审批说明';
comment on column SFXZZBGLXT_ABJQ.YLDYJ
  is '院领导意见';
comment on column SFXZZBGLXT_ABJQ.YLDSPBZ
  is '院领导审批标志';
comment on column SFXZZBGLXT_ABJQ.YLDSPSJ
  is '院领导审批时间';
comment on column SFXZZBGLXT_ABJQ.YLDSPR
  is '院领导审批人';
comment on column SFXZZBGLXT_ABJQ.YLDSPSM
  is '院领导审批说明';
comment on column SFXZZBGLXT_ABJQ.BZ
  is '备注';
comment on column SFXZZBGLXT_ABJQ.SFWCSP
  is '是否完成审批';

prompt
prompt Creating table SFXZZBGLXT_BGYPLYMXB
prompt ===================================
prompt
create table SFXZZBGLXT_BGYPLYMXB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  MXBH        NUMBER,
  ZBBS        NUMBER,
  BGYPBS      NUMBER,
  PM          VARCHAR2(100),
  BH          VARCHAR2(50),
  XH          VARCHAR2(50),
  GG          VARCHAR2(50),
  DW          VARCHAR2(50),
  DJ          FLOAT,
  SL          FLOAT,
  JE          FLOAT,
  SFZJFF      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BGYPLYMXB
  is '办公用品领用明细表';
comment on column SFXZZBGLXT_BGYPLYMXB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BGYPLYMXB.MXBH
  is '明细编号';
comment on column SFXZZBGLXT_BGYPLYMXB.ZBBS
  is '主表标识';
comment on column SFXZZBGLXT_BGYPLYMXB.BGYPBS
  is '办公用品标识';
comment on column SFXZZBGLXT_BGYPLYMXB.PM
  is '品名';
comment on column SFXZZBGLXT_BGYPLYMXB.BH
  is '编号';
comment on column SFXZZBGLXT_BGYPLYMXB.XH
  is '型号';
comment on column SFXZZBGLXT_BGYPLYMXB.GG
  is '规格';
comment on column SFXZZBGLXT_BGYPLYMXB.DW
  is '单位';
comment on column SFXZZBGLXT_BGYPLYMXB.DJ
  is '单价';
comment on column SFXZZBGLXT_BGYPLYMXB.SL
  is '数量';
comment on column SFXZZBGLXT_BGYPLYMXB.JE
  is '金额';
comment on column SFXZZBGLXT_BGYPLYMXB.SFZJFF
  is '是否直接发放';

prompt
prompt Creating table SFXZZBGLXT_BGYPLYZB
prompt ==================================
prompt
create table SFXZZBGLXT_BGYPLYZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  LYBH        NUMBER,
  LYBM        VARCHAR2(100),
  LYRBS       NUMBER,
  LYR         VARCHAR2(40),
  SQSJ        DATE,
  HJJE        FLOAT,
  LYSY        BLOB,
  BMLDSPR     VARCHAR2(40),
  BMLDSPSJ    DATE,
  BMLDSPYJ    VARCHAR2(250),
  BMLDSPJG    NUMBER,
  SXCLDSPJG   NUMBER,
  SXCLDSPYJ   VARCHAR2(250),
  SXCLDSPSJ   DATE,
  SXCLDSPR    VARCHAR2(40),
  FFRBS       NUMBER,
  FFR         VARCHAR2(40),
  FFRQ        DATE,
  ZT          VARCHAR2(20),
  ZTBZ        NUMBER,
  DSPDJ       NUMBER,
  DSPR        VARCHAR2(40),
  SFZJFF      NUMBER,
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BGYPLYZB
  is '办公用品领用主表';
comment on column SFXZZBGLXT_BGYPLYZB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BGYPLYZB.LYBH
  is '领用编号';
comment on column SFXZZBGLXT_BGYPLYZB.LYBM
  is '领用部门';
comment on column SFXZZBGLXT_BGYPLYZB.LYRBS
  is '领用人标识';
comment on column SFXZZBGLXT_BGYPLYZB.LYR
  is '领用人';
comment on column SFXZZBGLXT_BGYPLYZB.SQSJ
  is '申请时间';
comment on column SFXZZBGLXT_BGYPLYZB.HJJE
  is '合计金额';
comment on column SFXZZBGLXT_BGYPLYZB.LYSY
  is '领用事由';
comment on column SFXZZBGLXT_BGYPLYZB.BMLDSPR
  is '部门领导审批人';
comment on column SFXZZBGLXT_BGYPLYZB.BMLDSPSJ
  is '部门领导审批时间';
comment on column SFXZZBGLXT_BGYPLYZB.BMLDSPYJ
  is '部门领导审批意见';
comment on column SFXZZBGLXT_BGYPLYZB.BMLDSPJG
  is '部门领导审批结果';
comment on column SFXZZBGLXT_BGYPLYZB.SXCLDSPJG
  is '司行处领导审批结果';
comment on column SFXZZBGLXT_BGYPLYZB.SXCLDSPYJ
  is '司行处领导审批意见';
comment on column SFXZZBGLXT_BGYPLYZB.SXCLDSPSJ
  is '司行处领导审批时间';
comment on column SFXZZBGLXT_BGYPLYZB.SXCLDSPR
  is '司行处领导审批人';
comment on column SFXZZBGLXT_BGYPLYZB.FFRBS
  is '发放人标识';
comment on column SFXZZBGLXT_BGYPLYZB.FFR
  is '发放人';
comment on column SFXZZBGLXT_BGYPLYZB.FFRQ
  is '发放日期';
comment on column SFXZZBGLXT_BGYPLYZB.ZT
  is '状态';
comment on column SFXZZBGLXT_BGYPLYZB.ZTBZ
  is '状态标志';
comment on column SFXZZBGLXT_BGYPLYZB.DSPDJ
  is '待审批等级';
comment on column SFXZZBGLXT_BGYPLYZB.DSPR
  is '待审批人';
comment on column SFXZZBGLXT_BGYPLYZB.SFZJFF
  is '是否直接发放';
comment on column SFXZZBGLXT_BGYPLYZB.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_BGYPPDMXB
prompt ===================================
prompt
create table SFXZZBGLXT_BGYPPDMXB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  MXBH        NUMBER,
  ZBH         NUMBER,
  BGYPBS      NUMBER,
  PM          VARCHAR2(100),
  DW          VARCHAR2(40),
  KCSL        FLOAT,
  PDSL        FLOAT,
  PDJG        VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BGYPPDMXB
  is '办公用品盘点明细表';
comment on column SFXZZBGLXT_BGYPPDMXB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BGYPPDMXB.MXBH
  is '明细编号';
comment on column SFXZZBGLXT_BGYPPDMXB.ZBH
  is '主编号';
comment on column SFXZZBGLXT_BGYPPDMXB.BGYPBS
  is '办公用品标识';
comment on column SFXZZBGLXT_BGYPPDMXB.PM
  is '品名';
comment on column SFXZZBGLXT_BGYPPDMXB.DW
  is '单位';
comment on column SFXZZBGLXT_BGYPPDMXB.KCSL
  is '库存数量';
comment on column SFXZZBGLXT_BGYPPDMXB.PDSL
  is '盘点数量';
comment on column SFXZZBGLXT_BGYPPDMXB.PDJG
  is '盘点结果';

prompt
prompt Creating table SFXZZBGLXT_BGYPPDZB
prompt ==================================
prompt
create table SFXZZBGLXT_BGYPPDZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  PDBH        NUMBER,
  PDND        NUMBER,
  SXBN        VARCHAR2(20),
  PDSJ        DATE,
  PDRBS       NUMBER,
  PDR         VARCHAR2(40),
  SHRBS       NUMBER,
  SHR         VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BGYPPDZB
  is '办公用品盘点主表';
comment on column SFXZZBGLXT_BGYPPDZB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BGYPPDZB.PDBH
  is '盘点编号';
comment on column SFXZZBGLXT_BGYPPDZB.PDND
  is '盘点年度';
comment on column SFXZZBGLXT_BGYPPDZB.SXBN
  is '上下半年';
comment on column SFXZZBGLXT_BGYPPDZB.PDSJ
  is '盘点时间';
comment on column SFXZZBGLXT_BGYPPDZB.PDRBS
  is '盘点人标识';
comment on column SFXZZBGLXT_BGYPPDZB.PDR
  is '盘点人';
comment on column SFXZZBGLXT_BGYPPDZB.SHRBS
  is '审核人标识';
comment on column SFXZZBGLXT_BGYPPDZB.SHR
  is '审核人';

prompt
prompt Creating table SFXZZBGLXT_BGYPXX
prompt ================================
prompt
create table SFXZZBGLXT_BGYPXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BGYPBS      NUMBER,
  BH          VARCHAR2(50),
  PM          VARCHAR2(100),
  XH          VARCHAR2(50),
  GG          VARCHAR2(50),
  DW          VARCHAR2(50),
  DJ          FLOAT,
  SL          NUMBER,
  JE          FLOAT,
  BJKCL       NUMBER,
  BZ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BGYPXX
  is '办公用品信息';
comment on column SFXZZBGLXT_BGYPXX.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BGYPXX.BGYPBS
  is '办公用品标识';
comment on column SFXZZBGLXT_BGYPXX.BH
  is '编号';
comment on column SFXZZBGLXT_BGYPXX.PM
  is '品名';
comment on column SFXZZBGLXT_BGYPXX.XH
  is '型号';
comment on column SFXZZBGLXT_BGYPXX.GG
  is '规格';
comment on column SFXZZBGLXT_BGYPXX.DW
  is '单位';
comment on column SFXZZBGLXT_BGYPXX.DJ
  is '单价';
comment on column SFXZZBGLXT_BGYPXX.SL
  is '数量';
comment on column SFXZZBGLXT_BGYPXX.JE
  is '金额';
comment on column SFXZZBGLXT_BGYPXX.BJKCL
  is '报警库存量';
comment on column SFXZZBGLXT_BGYPXX.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_BZCKMXB
prompt =================================
prompt
create table SFXZZBGLXT_BZCKMXB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  MXBH        NUMBER,
  CKBH        NUMBER,
  BZBM        VARCHAR2(100),
  PM          VARCHAR2(100),
  DW          VARCHAR2(20),
  XH          VARCHAR2(50),
  HFBZ        VARCHAR2(50),
  JG          NUMBER,
  SL          NUMBER,
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BZCKMXB
  is '被装出库明细表';
comment on column SFXZZBGLXT_BZCKMXB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BZCKMXB.MXBH
  is '明细编号';
comment on column SFXZZBGLXT_BZCKMXB.CKBH
  is '出库编号';
comment on column SFXZZBGLXT_BZCKMXB.BZBM
  is '被装编码';
comment on column SFXZZBGLXT_BZCKMXB.PM
  is '品名';
comment on column SFXZZBGLXT_BZCKMXB.DW
  is '单位';
comment on column SFXZZBGLXT_BZCKMXB.XH
  is '型号';
comment on column SFXZZBGLXT_BZCKMXB.HFBZ
  is '换发标准';
comment on column SFXZZBGLXT_BZCKMXB.JG
  is '价格';
comment on column SFXZZBGLXT_BZCKMXB.SL
  is '数量';
comment on column SFXZZBGLXT_BZCKMXB.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_BZCKZB
prompt ================================
prompt
create table SFXZZBGLXT_BZCKZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  FYMC        VARCHAR2(100),
  CKBH        NUMBER,
  CKDH        VARCHAR2(50),
  CKRQ        DATE,
  FWDW        VARCHAR2(100),
  SWDW        VARCHAR2(100),
  LWRBS       NUMBER,
  LWR         VARCHAR2(40),
  CWSTKRBS    VARCHAR2(40),
  CWSTKR      VARCHAR2(40),
  HJJE        FLOAT,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  CKBGYBS     NUMBER,
  CKBGY       VARCHAR2(20),
  BGYQRSJ     DATE,
  CKGLYBS     NUMBER,
  CKGLY       VARCHAR2(20),
  GLYQRSJ     DATE,
  ZGLDBS      NUMBER,
  ZGLD        VARCHAR2(40),
  LDSHSJ      DATE,
  BZ          VARCHAR2(250),
  ZT          NUMBER,
  GLFJE       FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BZCKZB
  is '被装出库主表';
comment on column SFXZZBGLXT_BZCKZB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BZCKZB.FYMC
  is '法院名称';
comment on column SFXZZBGLXT_BZCKZB.CKBH
  is '出库编号';
comment on column SFXZZBGLXT_BZCKZB.CKDH
  is '出库单号';
comment on column SFXZZBGLXT_BZCKZB.CKRQ
  is '出库日期';
comment on column SFXZZBGLXT_BZCKZB.FWDW
  is '发物单位';
comment on column SFXZZBGLXT_BZCKZB.SWDW
  is '收物单位';
comment on column SFXZZBGLXT_BZCKZB.LWRBS
  is '领物人标识';
comment on column SFXZZBGLXT_BZCKZB.LWR
  is '领物人';
comment on column SFXZZBGLXT_BZCKZB.CWSTKRBS
  is '财务收（退）款人标识';
comment on column SFXZZBGLXT_BZCKZB.CWSTKR
  is '财务收（退）款人';
comment on column SFXZZBGLXT_BZCKZB.HJJE
  is '合计金额';
comment on column SFXZZBGLXT_BZCKZB.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_BZCKZB.DJR
  is '登记人';
comment on column SFXZZBGLXT_BZCKZB.DJRQ
  is '登记日期';
comment on column SFXZZBGLXT_BZCKZB.CKBGYBS
  is '仓库保管员标识';
comment on column SFXZZBGLXT_BZCKZB.CKBGY
  is '仓库保管员';
comment on column SFXZZBGLXT_BZCKZB.BGYQRSJ
  is '保管员确认时间';
comment on column SFXZZBGLXT_BZCKZB.CKGLYBS
  is '仓库管理员标识';
comment on column SFXZZBGLXT_BZCKZB.CKGLY
  is '仓库管理员';
comment on column SFXZZBGLXT_BZCKZB.GLYQRSJ
  is '管理员确认时间';
comment on column SFXZZBGLXT_BZCKZB.ZGLDBS
  is '主管领导标识';
comment on column SFXZZBGLXT_BZCKZB.ZGLD
  is '主管领导';
comment on column SFXZZBGLXT_BZCKZB.LDSHSJ
  is '领导审核时间';
comment on column SFXZZBGLXT_BZCKZB.BZ
  is '备注';
comment on column SFXZZBGLXT_BZCKZB.ZT
  is '状态';
comment on column SFXZZBGLXT_BZCKZB.GLFJE
  is '管理费金额';

prompt
prompt Creating table SFXZZBGLXT_BZFFJL
prompt ================================
prompt
create table SFXZZBGLXT_BZFFJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBM        NUMBER,
  XM          VARCHAR2(50),
  BM          VARCHAR2(40),
  FYMC        VARCHAR2(100),
  BZBM        VARCHAR2(100),
  PM          VARCHAR2(100),
  DW          VARCHAR2(20),
  XH          VARCHAR2(50),
  HFBZ        VARCHAR2(50),
  JG          NUMBER,
  SL          FLOAT,
  FFSJ        DATE,
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BZFFJL
  is '被装发放记录';
comment on column SFXZZBGLXT_BZFFJL.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BZFFJL.BH
  is '编号';
comment on column SFXZZBGLXT_BZFFJL.RYBM
  is '人员编码';
comment on column SFXZZBGLXT_BZFFJL.XM
  is '姓名';
comment on column SFXZZBGLXT_BZFFJL.BM
  is '部门';
comment on column SFXZZBGLXT_BZFFJL.FYMC
  is '法院名称';
comment on column SFXZZBGLXT_BZFFJL.BZBM
  is '被装编码';
comment on column SFXZZBGLXT_BZFFJL.PM
  is '品名';
comment on column SFXZZBGLXT_BZFFJL.DW
  is '单位';
comment on column SFXZZBGLXT_BZFFJL.XH
  is '型号';
comment on column SFXZZBGLXT_BZFFJL.HFBZ
  is '换发标准';
comment on column SFXZZBGLXT_BZFFJL.JG
  is '价格';
comment on column SFXZZBGLXT_BZFFJL.SL
  is '数量';
comment on column SFXZZBGLXT_BZFFJL.FFSJ
  is '发放时间';
comment on column SFXZZBGLXT_BZFFJL.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_BZKCXXB
prompt =================================
prompt
create table SFXZZBGLXT_BZKCXXB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  FYMC        VARCHAR2(100),
  BZBM        VARCHAR2(100),
  PM          VARCHAR2(100),
  DW          VARCHAR2(20),
  XH          VARCHAR2(50),
  HFBZ        VARCHAR2(50),
  JG          NUMBER,
  KCSL        NUMBER,
  ZDKCSL      NUMBER,
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BZKCXXB
  is '被装库存信息表';
comment on column SFXZZBGLXT_BZKCXXB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BZKCXXB.BH
  is '编号';
comment on column SFXZZBGLXT_BZKCXXB.FYMC
  is '法院名称';
comment on column SFXZZBGLXT_BZKCXXB.BZBM
  is '被装编码';
comment on column SFXZZBGLXT_BZKCXXB.PM
  is '品名';
comment on column SFXZZBGLXT_BZKCXXB.DW
  is '单位';
comment on column SFXZZBGLXT_BZKCXXB.XH
  is '型号';
comment on column SFXZZBGLXT_BZKCXXB.HFBZ
  is '换发标准';
comment on column SFXZZBGLXT_BZKCXXB.JG
  is '价格';
comment on column SFXZZBGLXT_BZKCXXB.KCSL
  is '库存数量';
comment on column SFXZZBGLXT_BZKCXXB.ZDKCSL
  is '最低库存数量';
comment on column SFXZZBGLXT_BZKCXXB.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_BZNDJHMXB
prompt ===================================
prompt
create table SFXZZBGLXT_BZNDJHMXB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JHBH        NUMBER,
  MXBH        NUMBER,
  BZBM        VARCHAR2(100),
  PM          VARCHAR2(100),
  DW          VARCHAR2(10),
  DJ          NUMBER,
  HJSL        NUMBER,
  ND          NUMBER,
  F1          NUMBER,
  F2          NUMBER,
  F3          NUMBER,
  F4          NUMBER,
  F5          NUMBER,
  F6          NUMBER,
  F7          NUMBER,
  F8          NUMBER,
  F9          NUMBER,
  F10         NUMBER,
  F11         NUMBER,
  F12         NUMBER,
  F13         NUMBER,
  F14         NUMBER,
  F15         NUMBER,
  F16         NUMBER,
  F17         NUMBER,
  F18         NUMBER,
  F19         NUMBER,
  F20         NUMBER,
  F21         NUMBER,
  F22         NUMBER,
  F23         NUMBER,
  F24         NUMBER,
  F25         NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BZNDJHMXB
  is '被装年度计划明细表';
comment on column SFXZZBGLXT_BZNDJHMXB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BZNDJHMXB.JHBH
  is '计划编号';
comment on column SFXZZBGLXT_BZNDJHMXB.MXBH
  is '明细编号';
comment on column SFXZZBGLXT_BZNDJHMXB.BZBM
  is '被装编码';
comment on column SFXZZBGLXT_BZNDJHMXB.PM
  is '品名';
comment on column SFXZZBGLXT_BZNDJHMXB.DW
  is '单位';
comment on column SFXZZBGLXT_BZNDJHMXB.DJ
  is '单价';
comment on column SFXZZBGLXT_BZNDJHMXB.HJSL
  is '合计数量';
comment on column SFXZZBGLXT_BZNDJHMXB.ND
  is '年度';
comment on column SFXZZBGLXT_BZNDJHMXB.F1
  is 'f1';
comment on column SFXZZBGLXT_BZNDJHMXB.F2
  is 'f2';
comment on column SFXZZBGLXT_BZNDJHMXB.F3
  is 'f3';
comment on column SFXZZBGLXT_BZNDJHMXB.F4
  is 'f4';
comment on column SFXZZBGLXT_BZNDJHMXB.F5
  is 'f5';
comment on column SFXZZBGLXT_BZNDJHMXB.F6
  is 'f6';
comment on column SFXZZBGLXT_BZNDJHMXB.F7
  is 'f7';
comment on column SFXZZBGLXT_BZNDJHMXB.F8
  is 'f8';
comment on column SFXZZBGLXT_BZNDJHMXB.F9
  is 'f9';
comment on column SFXZZBGLXT_BZNDJHMXB.F10
  is 'f10';
comment on column SFXZZBGLXT_BZNDJHMXB.F11
  is 'f11';
comment on column SFXZZBGLXT_BZNDJHMXB.F12
  is 'f12';
comment on column SFXZZBGLXT_BZNDJHMXB.F13
  is 'f13';
comment on column SFXZZBGLXT_BZNDJHMXB.F14
  is 'f14';
comment on column SFXZZBGLXT_BZNDJHMXB.F15
  is 'f15';
comment on column SFXZZBGLXT_BZNDJHMXB.F16
  is 'f16';
comment on column SFXZZBGLXT_BZNDJHMXB.F17
  is 'f17';
comment on column SFXZZBGLXT_BZNDJHMXB.F18
  is 'f18';
comment on column SFXZZBGLXT_BZNDJHMXB.F19
  is 'f19';
comment on column SFXZZBGLXT_BZNDJHMXB.F20
  is 'f20';
comment on column SFXZZBGLXT_BZNDJHMXB.F21
  is 'f21';
comment on column SFXZZBGLXT_BZNDJHMXB.F22
  is 'f22';
comment on column SFXZZBGLXT_BZNDJHMXB.F23
  is 'f23';
comment on column SFXZZBGLXT_BZNDJHMXB.F24
  is 'f24';
comment on column SFXZZBGLXT_BZNDJHMXB.F25
  is 'f25';

prompt
prompt Creating table SFXZZBGLXT_BZNDJHZB
prompt ==================================
prompt
create table SFXZZBGLXT_BZNDJHZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JHBH        NUMBER,
  FYMC        VARCHAR2(100),
  ND          NUMBER,
  DJSJ        DATE,
  HJJE        FLOAT,
  SBRQ        DATE,
  QRSJ        DATE,
  BZ          VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BZNDJHZB
  is '被装年度计划主表';
comment on column SFXZZBGLXT_BZNDJHZB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BZNDJHZB.JHBH
  is '计划编号';
comment on column SFXZZBGLXT_BZNDJHZB.FYMC
  is '法院名称';
comment on column SFXZZBGLXT_BZNDJHZB.ND
  is '年度';
comment on column SFXZZBGLXT_BZNDJHZB.DJSJ
  is '登记时间';
comment on column SFXZZBGLXT_BZNDJHZB.HJJE
  is '合计金额';
comment on column SFXZZBGLXT_BZNDJHZB.SBRQ
  is '上报日期';
comment on column SFXZZBGLXT_BZNDJHZB.QRSJ
  is '确认时间';
comment on column SFXZZBGLXT_BZNDJHZB.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_BZRKMXB
prompt =================================
prompt
create table SFXZZBGLXT_BZRKMXB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  MXBH        NUMBER,
  RKBH        NUMBER,
  BZBM        VARCHAR2(100),
  PM          VARCHAR2(100),
  DW          VARCHAR2(20),
  XH          VARCHAR2(50),
  HFBZ        VARCHAR2(50),
  JG          NUMBER,
  SL          NUMBER,
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BZRKMXB
  is '被装入库明细表';
comment on column SFXZZBGLXT_BZRKMXB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BZRKMXB.MXBH
  is '明细编号';
comment on column SFXZZBGLXT_BZRKMXB.RKBH
  is '入库编号';
comment on column SFXZZBGLXT_BZRKMXB.BZBM
  is '被装编码';
comment on column SFXZZBGLXT_BZRKMXB.PM
  is '品名';
comment on column SFXZZBGLXT_BZRKMXB.DW
  is '单位';
comment on column SFXZZBGLXT_BZRKMXB.XH
  is '型号';
comment on column SFXZZBGLXT_BZRKMXB.HFBZ
  is '换发标准';
comment on column SFXZZBGLXT_BZRKMXB.JG
  is '价格';
comment on column SFXZZBGLXT_BZRKMXB.SL
  is '数量';
comment on column SFXZZBGLXT_BZRKMXB.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_BZRKZB
prompt ================================
prompt
create table SFXZZBGLXT_BZRKZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  RKBH        NUMBER,
  FYMC        VARCHAR2(100),
  RKDH        VARCHAR2(50),
  RKRQ        DATE,
  JBRBS       NUMBER,
  JBR         VARCHAR2(40),
  HJJE        FLOAT,
  DJBS        NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  CKBGYBS     NUMBER,
  CKBGY       VARCHAR2(20),
  BGYQRSJ     DATE,
  CKGLYBS     NUMBER,
  CKGLY       VARCHAR2(40),
  GLYQRSJ     DATE,
  ZGLDBS      NUMBER,
  ZGLD        VARCHAR2(40),
  LDSHSJ      DATE,
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_BZRKZB
  is '被装入库主表';
comment on column SFXZZBGLXT_BZRKZB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_BZRKZB.RKBH
  is '入库编号';
comment on column SFXZZBGLXT_BZRKZB.FYMC
  is '法院名称';
comment on column SFXZZBGLXT_BZRKZB.RKDH
  is '入库单号';
comment on column SFXZZBGLXT_BZRKZB.RKRQ
  is '入库日期';
comment on column SFXZZBGLXT_BZRKZB.JBRBS
  is '经办人标识';
comment on column SFXZZBGLXT_BZRKZB.JBR
  is '经办人';
comment on column SFXZZBGLXT_BZRKZB.HJJE
  is '合计金额';
comment on column SFXZZBGLXT_BZRKZB.DJBS
  is '登记标识';
comment on column SFXZZBGLXT_BZRKZB.DJR
  is '登记人';
comment on column SFXZZBGLXT_BZRKZB.DJRQ
  is '登记日期';
comment on column SFXZZBGLXT_BZRKZB.CKBGYBS
  is '仓库保管员标识';
comment on column SFXZZBGLXT_BZRKZB.CKBGY
  is '仓库保管员';
comment on column SFXZZBGLXT_BZRKZB.BGYQRSJ
  is '保管员确认时间';
comment on column SFXZZBGLXT_BZRKZB.CKGLYBS
  is '仓库管理员标识';
comment on column SFXZZBGLXT_BZRKZB.CKGLY
  is '仓库管理员';
comment on column SFXZZBGLXT_BZRKZB.GLYQRSJ
  is '管理员确认时间';
comment on column SFXZZBGLXT_BZRKZB.ZGLDBS
  is '主管领导标识';
comment on column SFXZZBGLXT_BZRKZB.ZGLD
  is '主管领导';
comment on column SFXZZBGLXT_BZRKZB.LDSHSJ
  is '领导审核时间';
comment on column SFXZZBGLXT_BZRKZB.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_CWGLCC
prompt ================================
prompt
create table SFXZZBGLXT_CWGLCC
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  RYBS        NUMBER,
  XM          VARCHAR2(40),
  BM          VARCHAR2(100),
  CCSY        VARCHAR2(250),
  DDDD        VARCHAR2(250),
  YJKSSJ      DATE,
  YJDDSJ      DATE,
  SQGZJTGJ    VARCHAR2(50),
  BMLDSPYJ    VARCHAR2(250),
  BMLDSPBZ    NUMBER,
  BMLDSPSM    VARCHAR2(250),
  BMLDSPR     NUMBER,
  BMLDSPRBS   VARCHAR2(40),
  BMLDSPSJ    DATE,
  FGYLDSPYJ   VARCHAR2(250),
  FGYLDSPR    VARCHAR2(40),
  FGYLDSPRBS  NUMBER,
  FGYLDSPBZ   NUMBER,
  FGYLDSPSM   VARCHAR2(250),
  FGYLDSPSJ   DATE,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJSJ        DATE,
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_CWGLCC
  is '财务管理cc(出差)';
comment on column SFXZZBGLXT_CWGLCC.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_CWGLCC.BH
  is '编号';
comment on column SFXZZBGLXT_CWGLCC.RYBS
  is '人员标识';
comment on column SFXZZBGLXT_CWGLCC.XM
  is '姓名';
comment on column SFXZZBGLXT_CWGLCC.BM
  is '部门';
comment on column SFXZZBGLXT_CWGLCC.CCSY
  is '出差事由';
comment on column SFXZZBGLXT_CWGLCC.DDDD
  is '到达地点';
comment on column SFXZZBGLXT_CWGLCC.YJKSSJ
  is '预计开始时间';
comment on column SFXZZBGLXT_CWGLCC.YJDDSJ
  is '预计到达时间';
comment on column SFXZZBGLXT_CWGLCC.SQGZJTGJ
  is '申请乖坐交通工具';
comment on column SFXZZBGLXT_CWGLCC.BMLDSPYJ
  is '部门领导审批意见';
comment on column SFXZZBGLXT_CWGLCC.BMLDSPBZ
  is '部门领导审批标志';
comment on column SFXZZBGLXT_CWGLCC.BMLDSPSM
  is '部门领导审批说明';
comment on column SFXZZBGLXT_CWGLCC.BMLDSPR
  is '部门领导审批人';
comment on column SFXZZBGLXT_CWGLCC.BMLDSPRBS
  is '部门领导审批人标识';
comment on column SFXZZBGLXT_CWGLCC.BMLDSPSJ
  is '部门领导审批时间';
comment on column SFXZZBGLXT_CWGLCC.FGYLDSPYJ
  is '分管院领导审批意见';
comment on column SFXZZBGLXT_CWGLCC.FGYLDSPR
  is '分管院领导审批人';
comment on column SFXZZBGLXT_CWGLCC.FGYLDSPRBS
  is '分管院领导审批人标识';
comment on column SFXZZBGLXT_CWGLCC.FGYLDSPBZ
  is '分管院领导审批标志';
comment on column SFXZZBGLXT_CWGLCC.FGYLDSPSM
  is '分管院领导审批说明';
comment on column SFXZZBGLXT_CWGLCC.FGYLDSPSJ
  is '分管院领导审批时间';
comment on column SFXZZBGLXT_CWGLCC.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_CWGLCC.DJR
  is '登记人';
comment on column SFXZZBGLXT_CWGLCC.DJSJ
  is '登记时间';
comment on column SFXZZBGLXT_CWGLCC.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_CWGLFLFG
prompt ==================================
prompt
create table SFXZZBGLXT_CWGLFLFG
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  MC          VARCHAR2(200),
  NR          BLOB,
  FJ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_CWGLFLFG
  is '财务管理flfg(法律法规)';
comment on column SFXZZBGLXT_CWGLFLFG.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_CWGLFLFG.BH
  is '编号';
comment on column SFXZZBGLXT_CWGLFLFG.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_CWGLFLFG.DJR
  is '登记人';
comment on column SFXZZBGLXT_CWGLFLFG.DJRQ
  is '登记日期';
comment on column SFXZZBGLXT_CWGLFLFG.MC
  is '名称';
comment on column SFXZZBGLXT_CWGLFLFG.NR
  is '内容';
comment on column SFXZZBGLXT_CWGLFLFG.FJ
  is '附件';

prompt
prompt Creating table SFXZZBGLXT_CWGLJK
prompt ================================
prompt
create table SFXZZBGLXT_CWGLJK
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  BH           NUMBER,
  RYBS         NUMBER,
  XM           VARCHAR2(50),
  BM           VARCHAR2(50),
  JKLB         VARCHAR2(50),
  JKYY         VARCHAR2(200),
  JKJEDX       VARCHAR2(100),
  JKJEXX       FLOAT,
  LDSPBZ       NUMBER,
  LDSPR        VARCHAR2(40),
  LDSPYJ       VARCHAR2(200),
  LDSPSJ       DATE,
  LDSPSM       VARCHAR2(250),
  ZGCWFZRSPRBS NUMBER,
  ZGCWFZRSPR   VARCHAR2(40),
  ZGCWFZRSPSM  VARCHAR2(250),
  ZGCWFZRSPSJ  DATE,
  ZGCWFZRSPYJ  VARCHAR2(200),
  ZGCWFZRSPBZ  NUMBER,
  BZ           VARCHAR2(250),
  CNBS         NUMBER,
  CN           VARCHAR2(50),
  JKRBS        NUMBER,
  JKR          VARCHAR2(40),
  DJRQ         DATE,
  DJRBS        NUMBER,
  DJR          VARCHAR2(40),
  JKRQ         DATE,
  SFWCSP       NUMBER,
  YJKJE        FLOAT,
  BMSPRBS      NUMBER,
  BMSPR        VARCHAR2(40),
  BMSPSJ       DATE,
  BMSPSM       VARCHAR2(250),
  BMSPYJ       VARCHAR2(250),
  BMSPBZ       NUMBER,
  SXCSPRBS     NUMBER,
  SXCSPR       VARCHAR2(40),
  SXCSPSJ      DATE,
  SXCSPYJ      VARCHAR2(250),
  SXCSPSM      VARCHAR2(250),
  SXCSPBZ      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_CWGLJK
  is '财务管理jk(借款)';
comment on column SFXZZBGLXT_CWGLJK.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_CWGLJK.BH
  is '编号';
comment on column SFXZZBGLXT_CWGLJK.RYBS
  is '人员标识';
comment on column SFXZZBGLXT_CWGLJK.XM
  is '姓名';
comment on column SFXZZBGLXT_CWGLJK.BM
  is '部门';
comment on column SFXZZBGLXT_CWGLJK.JKLB
  is '借款类别';
comment on column SFXZZBGLXT_CWGLJK.JKYY
  is '借款原由';
comment on column SFXZZBGLXT_CWGLJK.JKJEDX
  is '借款金额大写';
comment on column SFXZZBGLXT_CWGLJK.JKJEXX
  is '借款金额小写';
comment on column SFXZZBGLXT_CWGLJK.LDSPBZ
  is '领导申批标志';
comment on column SFXZZBGLXT_CWGLJK.LDSPR
  is '领导申批人';
comment on column SFXZZBGLXT_CWGLJK.LDSPYJ
  is '领导申批意见';
comment on column SFXZZBGLXT_CWGLJK.LDSPSJ
  is '领导申批时间';
comment on column SFXZZBGLXT_CWGLJK.LDSPSM
  is '领导申批说明';
comment on column SFXZZBGLXT_CWGLJK.ZGCWFZRSPRBS
  is '主管财务负责人审批人标识';
comment on column SFXZZBGLXT_CWGLJK.ZGCWFZRSPR
  is '主管财务负责人审批人';
comment on column SFXZZBGLXT_CWGLJK.ZGCWFZRSPSM
  is '主管财务负责人审批说明';
comment on column SFXZZBGLXT_CWGLJK.ZGCWFZRSPSJ
  is '主管财务负责人审批时间';
comment on column SFXZZBGLXT_CWGLJK.ZGCWFZRSPYJ
  is '主管财务负责人审批意见';
comment on column SFXZZBGLXT_CWGLJK.ZGCWFZRSPBZ
  is '主管财务负责人审批标志';
comment on column SFXZZBGLXT_CWGLJK.BZ
  is '备注';
comment on column SFXZZBGLXT_CWGLJK.CNBS
  is '出纳标识';
comment on column SFXZZBGLXT_CWGLJK.CN
  is '出纳';
comment on column SFXZZBGLXT_CWGLJK.JKRBS
  is '借款人标识';
comment on column SFXZZBGLXT_CWGLJK.JKR
  is '借款人';
comment on column SFXZZBGLXT_CWGLJK.DJRQ
  is '登记日期';
comment on column SFXZZBGLXT_CWGLJK.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_CWGLJK.DJR
  is '登记人';
comment on column SFXZZBGLXT_CWGLJK.JKRQ
  is '借款日期';
comment on column SFXZZBGLXT_CWGLJK.SFWCSP
  is '是否完成审批';
comment on column SFXZZBGLXT_CWGLJK.YJKJE
  is '已借款金额';
comment on column SFXZZBGLXT_CWGLJK.BMSPRBS
  is '部门审批人标识';
comment on column SFXZZBGLXT_CWGLJK.BMSPR
  is '部门审批人';
comment on column SFXZZBGLXT_CWGLJK.BMSPSJ
  is '部门审批时间';
comment on column SFXZZBGLXT_CWGLJK.BMSPSM
  is '部门审批说明';
comment on column SFXZZBGLXT_CWGLJK.BMSPYJ
  is '部门审批意见';
comment on column SFXZZBGLXT_CWGLJK.BMSPBZ
  is '部门审批标志';
comment on column SFXZZBGLXT_CWGLJK.SXCSPRBS
  is '司行处审批人标识';
comment on column SFXZZBGLXT_CWGLJK.SXCSPR
  is '司行处审批人';
comment on column SFXZZBGLXT_CWGLJK.SXCSPSJ
  is '司行处审批时间';
comment on column SFXZZBGLXT_CWGLJK.SXCSPYJ
  is '司行处审批意见';
comment on column SFXZZBGLXT_CWGLJK.SXCSPSM
  is '司行处审批说明';
comment on column SFXZZBGLXT_CWGLJK.SXCSPBZ
  is '司行处审批标志';

prompt
prompt Creating table SFXZZBGLXT_CWGLKZ
prompt ================================
prompt
create table SFXZZBGLXT_CWGLKZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  KM          FLOAT,
  QCFSSJ      DATE,
  BZ          VARCHAR2(250),
  QCYE        NUMBER,
  BQFSE       NUMBER,
  HJ          FLOAT,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  QMJSSJ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_CWGLKZ
  is '财务管理kz(开支)';
comment on column SFXZZBGLXT_CWGLKZ.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_CWGLKZ.BH
  is '编号';
comment on column SFXZZBGLXT_CWGLKZ.KM
  is '科目';
comment on column SFXZZBGLXT_CWGLKZ.QCFSSJ
  is '期初发生时间';
comment on column SFXZZBGLXT_CWGLKZ.BZ
  is '备注';
comment on column SFXZZBGLXT_CWGLKZ.QCYE
  is '期初余额';
comment on column SFXZZBGLXT_CWGLKZ.BQFSE
  is '本期发生额';
comment on column SFXZZBGLXT_CWGLKZ.HJ
  is '合计';
comment on column SFXZZBGLXT_CWGLKZ.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_CWGLKZ.DJR
  is '登记人';
comment on column SFXZZBGLXT_CWGLKZ.DJRQ
  is '登记日期';
comment on column SFXZZBGLXT_CWGLKZ.QMJSSJ
  is '期末结束时间';

prompt
prompt Creating table SFXZZBGLXT_FGTZBGSQ
prompt ==================================
prompt
create table SFXZZBGLXT_FGTZBGSQ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SQRBS       NUMBER,
  SQR         VARCHAR2(40),
  SQNR        BLOB,
  SQSJ        DATE,
  ZT          VARCHAR2(10),
  CLRBS       NUMBER,
  CLR         VARCHAR2(40),
  CLSJ        DATE,
  BZ          VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_FGTZBGSQ
  is '法官体征变更申请';
comment on column SFXZZBGLXT_FGTZBGSQ.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_FGTZBGSQ.BH
  is '编号';
comment on column SFXZZBGLXT_FGTZBGSQ.SQRBS
  is '申请人标识';
comment on column SFXZZBGLXT_FGTZBGSQ.SQR
  is '申请人';
comment on column SFXZZBGLXT_FGTZBGSQ.SQNR
  is '申请内容';
comment on column SFXZZBGLXT_FGTZBGSQ.SQSJ
  is '申请时间';
comment on column SFXZZBGLXT_FGTZBGSQ.ZT
  is '状态';
comment on column SFXZZBGLXT_FGTZBGSQ.CLRBS
  is '处理人标识';
comment on column SFXZZBGLXT_FGTZBGSQ.CLR
  is '处理人';
comment on column SFXZZBGLXT_FGTZBGSQ.CLSJ
  is '处理时间';
comment on column SFXZZBGLXT_FGTZBGSQ.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_FGTZXX
prompt ================================
prompt
create table SFXZZBGLXT_FGTZXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  FYMC        VARCHAR2(100),
  BH          NUMBER,
  RYBS        NUMBER,
  XM          VARCHAR2(40),
  BM          VARCHAR2(100),
  XB          VARCHAR2(10),
  NL          NUMBER,
  SG          FLOAT,
  CLY         VARCHAR2(40),
  CLSJ        DATE,
  GXSJ        DATE,
  XFXH        VARCHAR2(50),
  XZXH        VARCHAR2(50),
  FFSJ        DATE,
  CYXH        VARCHAR2(50),
  FZZL        VARCHAR2(200),
  BZ          BLOB,
  TZ1         FLOAT,
  TZ2         FLOAT,
  TZ3         FLOAT,
  TZ4         FLOAT,
  TZ5         FLOAT,
  TZ6         FLOAT,
  TZ7         FLOAT,
  TZ8         FLOAT,
  TZ9         FLOAT,
  TZ10        FLOAT,
  TZ11        FLOAT,
  TZ13        FLOAT,
  TZ12        FLOAT,
  TZ14        FLOAT,
  TZ15        FLOAT,
  TZ16        FLOAT,
  TZ17        FLOAT,
  TZ18        FLOAT,
  TZ19        FLOAT,
  TZ20        FLOAT,
  TZ21        FLOAT,
  TZ22        FLOAT,
  TZ23        FLOAT,
  TZ24        FLOAT,
  TZ25        FLOAT,
  TZ26        FLOAT,
  TZ27        FLOAT,
  TZ28        FLOAT,
  TZ29        FLOAT,
  TZ30        FLOAT,
  TZ31        FLOAT,
  TZ32        FLOAT,
  TZ33        FLOAT,
  TZ34        FLOAT,
  TZ35        FLOAT,
  TZ36        FLOAT,
  TZ37        FLOAT,
  TZ38        FLOAT,
  TZ39        FLOAT,
  TZ40        FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_FGTZXX
  is '法官体征信息';
comment on column SFXZZBGLXT_FGTZXX.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_FGTZXX.FYMC
  is '法院名称';
comment on column SFXZZBGLXT_FGTZXX.BH
  is '编号';
comment on column SFXZZBGLXT_FGTZXX.RYBS
  is '人员标识';
comment on column SFXZZBGLXT_FGTZXX.XM
  is '姓名';
comment on column SFXZZBGLXT_FGTZXX.BM
  is '部门';
comment on column SFXZZBGLXT_FGTZXX.XB
  is '性别';
comment on column SFXZZBGLXT_FGTZXX.NL
  is '年龄';
comment on column SFXZZBGLXT_FGTZXX.SG
  is '身高';
comment on column SFXZZBGLXT_FGTZXX.CLY
  is '测量员';
comment on column SFXZZBGLXT_FGTZXX.CLSJ
  is '测量时间';
comment on column SFXZZBGLXT_FGTZXX.GXSJ
  is '更新时间';
comment on column SFXZZBGLXT_FGTZXX.XFXH
  is '西服型号';
comment on column SFXZZBGLXT_FGTZXX.XZXH
  is '下装型号';
comment on column SFXZZBGLXT_FGTZXX.FFSJ
  is '发放时间';
comment on column SFXZZBGLXT_FGTZXX.CYXH
  is '衬衣型号';
comment on column SFXZZBGLXT_FGTZXX.FZZL
  is '服装种类';
comment on column SFXZZBGLXT_FGTZXX.BZ
  is '备注';
comment on column SFXZZBGLXT_FGTZXX.TZ1
  is '体征1';
comment on column SFXZZBGLXT_FGTZXX.TZ2
  is '体征2';
comment on column SFXZZBGLXT_FGTZXX.TZ3
  is '体征3';
comment on column SFXZZBGLXT_FGTZXX.TZ4
  is '体征4';
comment on column SFXZZBGLXT_FGTZXX.TZ5
  is '体征5';
comment on column SFXZZBGLXT_FGTZXX.TZ6
  is '体征6';
comment on column SFXZZBGLXT_FGTZXX.TZ7
  is '体征7';
comment on column SFXZZBGLXT_FGTZXX.TZ8
  is '体征8';
comment on column SFXZZBGLXT_FGTZXX.TZ9
  is '体征9';
comment on column SFXZZBGLXT_FGTZXX.TZ10
  is '体征10';
comment on column SFXZZBGLXT_FGTZXX.TZ11
  is '体征11';
comment on column SFXZZBGLXT_FGTZXX.TZ13
  is '体征13';
comment on column SFXZZBGLXT_FGTZXX.TZ12
  is '体征12';
comment on column SFXZZBGLXT_FGTZXX.TZ14
  is '体征14';
comment on column SFXZZBGLXT_FGTZXX.TZ15
  is '体征15';
comment on column SFXZZBGLXT_FGTZXX.TZ16
  is '体征16';
comment on column SFXZZBGLXT_FGTZXX.TZ17
  is '体征17';
comment on column SFXZZBGLXT_FGTZXX.TZ18
  is '体征18';
comment on column SFXZZBGLXT_FGTZXX.TZ19
  is '体征19';
comment on column SFXZZBGLXT_FGTZXX.TZ20
  is '体征20';
comment on column SFXZZBGLXT_FGTZXX.TZ21
  is '体征21';
comment on column SFXZZBGLXT_FGTZXX.TZ22
  is '体征22';
comment on column SFXZZBGLXT_FGTZXX.TZ23
  is '体征23';
comment on column SFXZZBGLXT_FGTZXX.TZ24
  is '体征24';
comment on column SFXZZBGLXT_FGTZXX.TZ25
  is '体征25';
comment on column SFXZZBGLXT_FGTZXX.TZ26
  is '体征26';
comment on column SFXZZBGLXT_FGTZXX.TZ27
  is '体征27';
comment on column SFXZZBGLXT_FGTZXX.TZ28
  is '体征28';
comment on column SFXZZBGLXT_FGTZXX.TZ29
  is '体征29';
comment on column SFXZZBGLXT_FGTZXX.TZ30
  is '体征30';
comment on column SFXZZBGLXT_FGTZXX.TZ31
  is '体征31';
comment on column SFXZZBGLXT_FGTZXX.TZ32
  is '体征32';
comment on column SFXZZBGLXT_FGTZXX.TZ33
  is '体征33';
comment on column SFXZZBGLXT_FGTZXX.TZ34
  is '体征34';
comment on column SFXZZBGLXT_FGTZXX.TZ35
  is '体征35';
comment on column SFXZZBGLXT_FGTZXX.TZ36
  is '体征36';
comment on column SFXZZBGLXT_FGTZXX.TZ37
  is '体征37';
comment on column SFXZZBGLXT_FGTZXX.TZ38
  is '体征38';
comment on column SFXZZBGLXT_FGTZXX.TZ39
  is '体征39';
comment on column SFXZZBGLXT_FGTZXX.TZ40
  is '体征40';

prompt
prompt Creating table SFXZZBGLXT_FYFTJSXX
prompt ==================================
prompt
create table SFXZZBGLXT_FYFTJSXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  FYMC        VARCHAR2(200),
  FTXZ        VARCHAR2(20),
  DQXZ        VARCHAR2(200),
  GXDY        VARCHAR2(200),
  GXDYMJ      FLOAT,
  GXRKS       NUMBER,
  ZLDZ        VARCHAR2(250),
  HYTS        NUMBER,
  ZSRYBZS     NUMBER,
  PYRYBZS     NUMBER,
  SPFTJSFS    VARCHAR2(200),
  KGRQ        DATE,
  JGRQ        DATE,
  JZZTZ       FLOAT,
  GJBK        FLOAT,
  SJBK        FLOAT,
  ZCZJ        FLOAT,
  GZZJ        FLOAT,
  LLNQGZL     NUMBER,
  ZHZJL       NUMBER,
  LJNXZL      NUMBER,
  QTXMLB      VARCHAR2(100),
  XJFS        VARCHAR2(100),
  GJFS        VARCHAR2(100),
  QTJSFS      VARCHAR2(100),
  JZZMJ       FLOAT,
  ZDMJ        FLOAT,
  SPYFMJ      FLOAT,
  BGYFMJ      FLOAT,
  SHYFMJ      FLOAT,
  FSYFMJ      FLOAT,
  CLS         NUMBER,
  QTZB        BLOB,
  NSSSF       FLOAT,
  LRSJ        DATE,
  BZ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_FYFTJSXX
  is '法院（法庭）建设信息';
comment on column SFXZZBGLXT_FYFTJSXX.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_FYFTJSXX.FYMC
  is '法院名称';
comment on column SFXZZBGLXT_FYFTJSXX.FTXZ
  is '法庭性质';
comment on column SFXZZBGLXT_FYFTJSXX.DQXZ
  is '地区性质';
comment on column SFXZZBGLXT_FYFTJSXX.GXDY
  is '管辖地域';
comment on column SFXZZBGLXT_FYFTJSXX.GXDYMJ
  is '管辖地域面积';
comment on column SFXZZBGLXT_FYFTJSXX.GXRKS
  is '管辖人口数';
comment on column SFXZZBGLXT_FYFTJSXX.ZLDZ
  is '坐落地址';
comment on column SFXZZBGLXT_FYFTJSXX.HYTS
  is '合议庭数';
comment on column SFXZZBGLXT_FYFTJSXX.ZSRYBZS
  is '正式人员编制数';
comment on column SFXZZBGLXT_FYFTJSXX.PYRYBZS
  is '聘用人员编制数';
comment on column SFXZZBGLXT_FYFTJSXX.SPFTJSFS
  is '审判法庭建设方式';
comment on column SFXZZBGLXT_FYFTJSXX.KGRQ
  is '开工日期';
comment on column SFXZZBGLXT_FYFTJSXX.JGRQ
  is '竣工日期';
comment on column SFXZZBGLXT_FYFTJSXX.JZZTZ
  is '建筑总投资';
comment on column SFXZZBGLXT_FYFTJSXX.GJBK
  is '国家拨款';
comment on column SFXZZBGLXT_FYFTJSXX.SJBK
  is '上级拨款';
comment on column SFXZZBGLXT_FYFTJSXX.ZCZJ
  is '自筹资金';
comment on column SFXZZBGLXT_FYFTJSXX.GZZJ
  is '国债资金';
comment on column SFXZZBGLXT_FYFTJSXX.LLNQGZL
  is '零六年前国债类';
comment on column SFXZZBGLXT_FYFTJSXX.ZHZJL
  is '灾后重建类';
comment on column SFXZZBGLXT_FYFTJSXX.LJNXZL
  is '零九年新增类';
comment on column SFXZZBGLXT_FYFTJSXX.QTXMLB
  is '其它项目类别';
comment on column SFXZZBGLXT_FYFTJSXX.XJFS
  is '新建方式';
comment on column SFXZZBGLXT_FYFTJSXX.GJFS
  is '改建方式';
comment on column SFXZZBGLXT_FYFTJSXX.QTJSFS
  is '其它建设方式';
comment on column SFXZZBGLXT_FYFTJSXX.JZZMJ
  is '建筑总面积';
comment on column SFXZZBGLXT_FYFTJSXX.ZDMJ
  is '占地面积';
comment on column SFXZZBGLXT_FYFTJSXX.SPYFMJ
  is '审判用房面积';
comment on column SFXZZBGLXT_FYFTJSXX.BGYFMJ
  is '办公用房面积';
comment on column SFXZZBGLXT_FYFTJSXX.SHYFMJ
  is '生活用房面积';
comment on column SFXZZBGLXT_FYFTJSXX.FSYFMJ
  is '附属用房面积';
comment on column SFXZZBGLXT_FYFTJSXX.CLS
  is '车辆数';
comment on column SFXZZBGLXT_FYFTJSXX.QTZB
  is '其它装备';
comment on column SFXZZBGLXT_FYFTJSXX.NSSSF
  is '年诉讼收费';
comment on column SFXZZBGLXT_FYFTJSXX.LRSJ
  is '录入时间';
comment on column SFXZZBGLXT_FYFTJSXX.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_FYFTTP
prompt ================================
prompt
create table SFXZZBGLXT_FYFTTP
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  TPBH        NUMBER,
  LX          VARCHAR2(100),
  TPXSMC      VARCHAR2(200),
  TPSM        VARCHAR2(200),
  TPCFDZ      VARCHAR2(250),
  SLTDZ       VARCHAR2(250),
  SFXS        NUMBER,
  XSSX        NUMBER,
  TPYSGD      FLOAT,
  TPYSKD      FLOAT,
  CJSJ        DATE,
  CJYH        VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_FYFTTP
  is '法院（法庭）图片';
comment on column SFXZZBGLXT_FYFTTP.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_FYFTTP.TPBH
  is '图片编号';
comment on column SFXZZBGLXT_FYFTTP.LX
  is '类型';
comment on column SFXZZBGLXT_FYFTTP.TPXSMC
  is '图片显示名称';
comment on column SFXZZBGLXT_FYFTTP.TPSM
  is '图片说明';
comment on column SFXZZBGLXT_FYFTTP.TPCFDZ
  is '图片存放地址';
comment on column SFXZZBGLXT_FYFTTP.SLTDZ
  is '缩略图地址';
comment on column SFXZZBGLXT_FYFTTP.SFXS
  is '是否显示';
comment on column SFXZZBGLXT_FYFTTP.XSSX
  is '显示顺序';
comment on column SFXZZBGLXT_FYFTTP.TPYSGD
  is '图片原始高度';
comment on column SFXZZBGLXT_FYFTTP.TPYSKD
  is '图片原始宽度';
comment on column SFXZZBGLXT_FYFTTP.CJSJ
  is '创建时间';
comment on column SFXZZBGLXT_FYFTTP.CJYH
  is '创建用户';

prompt
prompt Creating table SFXZZBGLXT_HSTJB
prompt ===============================
prompt
create table SFXZZBGLXT_HSTJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  JCJS        NUMBER,
  SAJS        NUMBER,
  JAJS        NUMBER,
  PJJS        NUMBER,
  CHCDJS      NUMBER,
  BHSQCDJS    NUMBER,
  ZJCDJS      NUMBER,
  QTCDJS      NUMBER,
  SABDZJE     NUMBER,
  SWJS        NUMBER,
  SGJS        NUMBER,
  SAJSSAAN    NUMBER,
  STJS        NUMBER,
  WJJS        NUMBER,
  WJZZJS      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_HSTJB
  is '海事统计表';
comment on column SFXZZBGLXT_HSTJB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_HSTJB.BH
  is '编号';
comment on column SFXZZBGLXT_HSTJB.XH
  is '序号';
comment on column SFXZZBGLXT_HSTJB.JCJS
  is '旧存件数';
comment on column SFXZZBGLXT_HSTJB.SAJS
  is '收案件数';
comment on column SFXZZBGLXT_HSTJB.JAJS
  is '结案件数';
comment on column SFXZZBGLXT_HSTJB.PJJS
  is '判决件数';
comment on column SFXZZBGLXT_HSTJB.CHCDJS
  is '撤回裁定件数';
comment on column SFXZZBGLXT_HSTJB.BHSQCDJS
  is '驳回申请裁定件数';
comment on column SFXZZBGLXT_HSTJB.ZJCDJS
  is '终结裁定件数';
comment on column SFXZZBGLXT_HSTJB.QTCDJS
  is '其他裁定件数';
comment on column SFXZZBGLXT_HSTJB.SABDZJE
  is '涉案标的总金额';
comment on column SFXZZBGLXT_HSTJB.SWJS
  is '涉外件数';
comment on column SFXZZBGLXT_HSTJB.SGJS
  is '涉港件数';
comment on column SFXZZBGLXT_HSTJB.SAJSSAAN
  is '涉澳件数saan';
comment on column SFXZZBGLXT_HSTJB.STJS
  is '涉台件数';
comment on column SFXZZBGLXT_HSTJB.WJJS
  is '未结件数';
comment on column SFXZZBGLXT_HSTJB.WJZZJS
  is '未结中止件数';

prompt
prompt Creating table SFXZZBGLXT_SDGLXX
prompt ================================
prompt
create table SFXZZBGLXT_SDGLXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  ND          NUMBER,
  YF          NUMBER,
  HPMC        VARCHAR2(40),
  DW          VARCHAR2(20),
  DJ          FLOAT,
  SL          FLOAT,
  ZJE         FLOAT,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  BZ          VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_SDGLXX
  is '水电管理信息';
comment on column SFXZZBGLXT_SDGLXX.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_SDGLXX.BH
  is '编号';
comment on column SFXZZBGLXT_SDGLXX.ND
  is '年度';
comment on column SFXZZBGLXT_SDGLXX.YF
  is '月份';
comment on column SFXZZBGLXT_SDGLXX.HPMC
  is '耗品名称';
comment on column SFXZZBGLXT_SDGLXX.DW
  is '单位';
comment on column SFXZZBGLXT_SDGLXX.DJ
  is '单价';
comment on column SFXZZBGLXT_SDGLXX.SL
  is '数量';
comment on column SFXZZBGLXT_SDGLXX.ZJE
  is '总金额';
comment on column SFXZZBGLXT_SDGLXX.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_SDGLXX.DJR
  is '登记人';
comment on column SFXZZBGLXT_SDGLXX.DJRQ
  is '登记日期';
comment on column SFXZZBGLXT_SDGLXX.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_WYSBWXXX
prompt ==================================
prompt
create table SFXZZBGLXT_WYSBWXXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  WXBH        NUMBER,
  SQBM        VARCHAR2(100),
  SQRBS       NUMBER,
  SQR         VARCHAR2(40),
  SQSJ        DATE,
  DH          VARCHAR2(50),
  FJH         VARCHAR2(50),
  GHHC        VARCHAR2(50),
  HCLB        VARCHAR2(50),
  JX          VARCHAR2(50),
  JQWX        VARCHAR2(100),
  SL          FLOAT,
  WXJQXK      BLOB,
  WXQK        BLOB,
  BMLDSPJG    NUMBER,
  BMLDSPYJ    VARCHAR2(250),
  BMLDSPSJ    DATE,
  BMLDSPR     VARCHAR2(40),
  SXCLDSPJG   NUMBER,
  SXCLDSPYJ   VARCHAR2(250),
  SXCLDSPSJ   DATE,
  SXCLDSPR    VARCHAR2(40),
  XGKSPJG     NUMBER,
  XGKSPYJ     VARCHAR2(250),
  XGKSPSJ     DATE,
  XGKSPR      VARCHAR2(40),
  DSPDJ       FLOAT,
  HJJE        FLOAT,
  DJR         VARCHAR2(40),
  DJSJ        DATE,
  HZ          VARCHAR2(250),
  SFHZ        NUMBER,
  ZDSPR       VARCHAR2(40),
  ZDSPYJ      VARCHAR2(250),
  ZDSPJG      NUMBER,
  ZDSPSJ      DATE,
  ZDSPSM      VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_WYSBWXXX
  is '文印设备维修信息';
comment on column SFXZZBGLXT_WYSBWXXX.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_WYSBWXXX.WXBH
  is '维修编号';
comment on column SFXZZBGLXT_WYSBWXXX.SQBM
  is '申请部门';
comment on column SFXZZBGLXT_WYSBWXXX.SQRBS
  is '申请人标识';
comment on column SFXZZBGLXT_WYSBWXXX.SQR
  is '申请人';
comment on column SFXZZBGLXT_WYSBWXXX.SQSJ
  is '申请时间';
comment on column SFXZZBGLXT_WYSBWXXX.DH
  is '电话';
comment on column SFXZZBGLXT_WYSBWXXX.FJH
  is '房间号';
comment on column SFXZZBGLXT_WYSBWXXX.GHHC
  is '更换耗材';
comment on column SFXZZBGLXT_WYSBWXXX.HCLB
  is '耗材类别';
comment on column SFXZZBGLXT_WYSBWXXX.JX
  is '机型';
comment on column SFXZZBGLXT_WYSBWXXX.JQWX
  is '机器维修';
comment on column SFXZZBGLXT_WYSBWXXX.SL
  is '数量';
comment on column SFXZZBGLXT_WYSBWXXX.WXJQXK
  is '维修机器现况';
comment on column SFXZZBGLXT_WYSBWXXX.WXQK
  is '维修情况';
comment on column SFXZZBGLXT_WYSBWXXX.BMLDSPJG
  is '部门领导审批结果';
comment on column SFXZZBGLXT_WYSBWXXX.BMLDSPYJ
  is '部门领导审批意见';
comment on column SFXZZBGLXT_WYSBWXXX.BMLDSPSJ
  is '部门领导审批时间';
comment on column SFXZZBGLXT_WYSBWXXX.BMLDSPR
  is '部门领导审批人';
comment on column SFXZZBGLXT_WYSBWXXX.SXCLDSPJG
  is '司行处领导审批结果';
comment on column SFXZZBGLXT_WYSBWXXX.SXCLDSPYJ
  is '司行处领导审批意见';
comment on column SFXZZBGLXT_WYSBWXXX.SXCLDSPSJ
  is '司行处领导审批时间';
comment on column SFXZZBGLXT_WYSBWXXX.SXCLDSPR
  is '司行处领导审批人';
comment on column SFXZZBGLXT_WYSBWXXX.XGKSPJG
  is '行管科审批结果';
comment on column SFXZZBGLXT_WYSBWXXX.XGKSPYJ
  is '行管科审批意见';
comment on column SFXZZBGLXT_WYSBWXXX.XGKSPSJ
  is '行管科审批时间';
comment on column SFXZZBGLXT_WYSBWXXX.XGKSPR
  is '行管科审批人';
comment on column SFXZZBGLXT_WYSBWXXX.DSPDJ
  is '待审批等级';
comment on column SFXZZBGLXT_WYSBWXXX.HJJE
  is '合计金额';
comment on column SFXZZBGLXT_WYSBWXXX.DJR
  is '登记人';
comment on column SFXZZBGLXT_WYSBWXXX.DJSJ
  is '登记时间';
comment on column SFXZZBGLXT_WYSBWXXX.HZ
  is '回执';
comment on column SFXZZBGLXT_WYSBWXXX.SFHZ
  is '是否回执';
comment on column SFXZZBGLXT_WYSBWXXX.ZDSPR
  is '指定审批人';
comment on column SFXZZBGLXT_WYSBWXXX.ZDSPYJ
  is '指定审批意见';
comment on column SFXZZBGLXT_WYSBWXXX.ZDSPJG
  is '指定审批结果';
comment on column SFXZZBGLXT_WYSBWXXX.ZDSPSJ
  is '指定审批时间';
comment on column SFXZZBGLXT_WYSBWXXX.ZDSPSM
  is '指定审批说明';

prompt
prompt Creating table SFXZZBGLXT_WZCGGYS
prompt =================================
prompt
create table SFXZZBGLXT_WZCGGYS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  CGSBS       NUMBER,
  CGBH        NUMBER,
  GYS         VARCHAR2(250),
  BJ          FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_WZCGGYS
  is '物资采购供应商';
comment on column SFXZZBGLXT_WZCGGYS.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_WZCGGYS.CGSBS
  is '采购商标识';
comment on column SFXZZBGLXT_WZCGGYS.CGBH
  is '采购编号';
comment on column SFXZZBGLXT_WZCGGYS.GYS
  is '供应商';
comment on column SFXZZBGLXT_WZCGGYS.BJ
  is '报价';

prompt
prompt Creating table SFXZZBGLXT_WZCGXX
prompt ================================
prompt
create table SFXZZBGLXT_WZCGXX
(
  ID             VARCHAR2(36) not null,
  REG_TIME       DATE not null,
  UPDATE_TIME    DATE not null,
  DEPT_CODE      VARCHAR2(20) not null,
  APP_CODE       VARCHAR2(20) not null,
  FYBM           NUMBER,
  CGBH           NUMBER,
  CGDH           NUMBER,
  SQBM           VARCHAR2(100),
  SQRBS          NUMBER,
  SQR            VARCHAR2(40),
  SQSJ           DATE,
  SYRBS          NUMBER,
  SYR            VARCHAR2(40),
  WZLB           VARCHAR2(50),
  PM             VARCHAR2(250),
  XH             VARCHAR2(50),
  LB             VARCHAR2(50),
  DW             VARCHAR2(50),
  DJ             FLOAT,
  SL             FLOAT,
  HJJE           FLOAT,
  XQYY           BLOB,
  BMLDSPJG       NUMBER,
  BMLDSPYJ       VARCHAR2(250),
  BMLDSPSJ       DATE,
  BMLDSPR        VARCHAR2(40),
  ZGJSBMLDSPJG   NUMBER,
  ZGJSBMLDSPYJ   VARCHAR2(250),
  ZGJSBMLDSPSJ   DATE,
  ZGJSBMLDSPR    VARCHAR2(40),
  GDZCGLBMLDSPJG NUMBER,
  GDZCGLBMLDSPYJ VARCHAR2(250),
  GDZCGLBMLDSPSJ DATE,
  GDZCGLBMLDSPR  VARCHAR2(40),
  ZGCWBMLDSPJG   NUMBER,
  ZGCWBMLDSPYJ   VARCHAR2(250),
  ZGCWBMLDSPSJ   DATE,
  ZGCWBMLDSPR    VARCHAR2(40),
  FGCWYLDSPJG    NUMBER,
  FGCWYLDSPYJ    VARCHAR2(250),
  FGCWYLDSPSJ    DATE,
  FGCWYLDSPR     VARCHAR2(40),
  YKJHSQ         BLOB,
  CGFS           VARCHAR2(250),
  ZBS            VARCHAR2(250),
  CGJ            FLOAT,
  QDHTSJ         DATE,
  CGRDB          VARCHAR2(250),
  GHSJ           DATE,
  YHR            VARCHAR2(250),
  FKSJ           DATE,
  JE             FLOAT,
  BZ             BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_WZCGXX
  is '物资采购信息';
comment on column SFXZZBGLXT_WZCGXX.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_WZCGXX.CGBH
  is '采购编号';
comment on column SFXZZBGLXT_WZCGXX.CGDH
  is '采购单号';
comment on column SFXZZBGLXT_WZCGXX.SQBM
  is '申请部门';
comment on column SFXZZBGLXT_WZCGXX.SQRBS
  is '申请人标识';
comment on column SFXZZBGLXT_WZCGXX.SQR
  is '申请人';
comment on column SFXZZBGLXT_WZCGXX.SQSJ
  is '申请时间';
comment on column SFXZZBGLXT_WZCGXX.SYRBS
  is '使用人标识';
comment on column SFXZZBGLXT_WZCGXX.SYR
  is '使用人';
comment on column SFXZZBGLXT_WZCGXX.WZLB
  is '物资类别';
comment on column SFXZZBGLXT_WZCGXX.PM
  is '品名';
comment on column SFXZZBGLXT_WZCGXX.XH
  is '型号';
comment on column SFXZZBGLXT_WZCGXX.LB
  is '类别';
comment on column SFXZZBGLXT_WZCGXX.DW
  is '单位';
comment on column SFXZZBGLXT_WZCGXX.DJ
  is '单价';
comment on column SFXZZBGLXT_WZCGXX.SL
  is '数量';
comment on column SFXZZBGLXT_WZCGXX.HJJE
  is '合计金额';
comment on column SFXZZBGLXT_WZCGXX.XQYY
  is '需求原因';
comment on column SFXZZBGLXT_WZCGXX.BMLDSPJG
  is '部门领导审批结果';
comment on column SFXZZBGLXT_WZCGXX.BMLDSPYJ
  is '部门领导审批意见';
comment on column SFXZZBGLXT_WZCGXX.BMLDSPSJ
  is '部门领导审批时间';
comment on column SFXZZBGLXT_WZCGXX.BMLDSPR
  is '部门领导审批人';
comment on column SFXZZBGLXT_WZCGXX.ZGJSBMLDSPJG
  is '主管技术部门领导审批结果';
comment on column SFXZZBGLXT_WZCGXX.ZGJSBMLDSPYJ
  is '主管技术部门领导审批意见';
comment on column SFXZZBGLXT_WZCGXX.ZGJSBMLDSPSJ
  is '主管技术部门领导审批时间';
comment on column SFXZZBGLXT_WZCGXX.ZGJSBMLDSPR
  is '主管技术部门领导审批人';
comment on column SFXZZBGLXT_WZCGXX.GDZCGLBMLDSPJG
  is '固定资产管理部门领导审批结果';
comment on column SFXZZBGLXT_WZCGXX.GDZCGLBMLDSPYJ
  is '固定资产管理部门领导审批意见';
comment on column SFXZZBGLXT_WZCGXX.GDZCGLBMLDSPSJ
  is '固定资产管理部门领导审批时间';
comment on column SFXZZBGLXT_WZCGXX.GDZCGLBMLDSPR
  is '固定资产管理部门领导审批人';
comment on column SFXZZBGLXT_WZCGXX.ZGCWBMLDSPJG
  is '主管财务部门领导审批结果';
comment on column SFXZZBGLXT_WZCGXX.ZGCWBMLDSPYJ
  is '主管财务部门领导审批意见';
comment on column SFXZZBGLXT_WZCGXX.ZGCWBMLDSPSJ
  is '主管财务部门领导审批时间';
comment on column SFXZZBGLXT_WZCGXX.ZGCWBMLDSPR
  is '主管财务部门领导审批人';
comment on column SFXZZBGLXT_WZCGXX.FGCWYLDSPJG
  is '分管财务院领导审批结果';
comment on column SFXZZBGLXT_WZCGXX.FGCWYLDSPYJ
  is '分管财务院领导审批意见';
comment on column SFXZZBGLXT_WZCGXX.FGCWYLDSPSJ
  is '分管财务院领导审批时间';
comment on column SFXZZBGLXT_WZCGXX.FGCWYLDSPR
  is '分管财务院领导审批人';
comment on column SFXZZBGLXT_WZCGXX.YKJHSQ
  is '用款计划申请';
comment on column SFXZZBGLXT_WZCGXX.CGFS
  is '采购方式';
comment on column SFXZZBGLXT_WZCGXX.ZBS
  is '中标商';
comment on column SFXZZBGLXT_WZCGXX.CGJ
  is '采购价(单价)';
comment on column SFXZZBGLXT_WZCGXX.QDHTSJ
  is '签订合同时间';
comment on column SFXZZBGLXT_WZCGXX.CGRDB
  is '采购人代表';
comment on column SFXZZBGLXT_WZCGXX.GHSJ
  is '供货时间';
comment on column SFXZZBGLXT_WZCGXX.YHR
  is '验货人';
comment on column SFXZZBGLXT_WZCGXX.FKSJ
  is '付款时间';
comment on column SFXZZBGLXT_WZCGXX.JE
  is '金额';
comment on column SFXZZBGLXT_WZCGXX.BZ
  is '备注';

prompt
prompt Creating table SFXZZBGLXT_YDXHHZDJMXB
prompt =====================================
prompt
create table SFXZZBGLXT_YDXHHZDJMXB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  MXBH        NUMBER,
  ZBBS        NUMBER,
  BM          VARCHAR2(100),
  MH          NUMBER,
  XG          NUMBER,
  SD          NUMBER,
  HPJE        FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_YDXHHZDJMXB
  is '月度消耗汇总登记明细表';
comment on column SFXZZBGLXT_YDXHHZDJMXB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_YDXHHZDJMXB.MXBH
  is '明细编号';
comment on column SFXZZBGLXT_YDXHHZDJMXB.ZBBS
  is '主表标识';
comment on column SFXZZBGLXT_YDXHHZDJMXB.BM
  is '部门';
comment on column SFXZZBGLXT_YDXHHZDJMXB.MH
  is '墨盒';
comment on column SFXZZBGLXT_YDXHHZDJMXB.XG
  is '硒鼓';
comment on column SFXZZBGLXT_YDXHHZDJMXB.SD
  is '色带';
comment on column SFXZZBGLXT_YDXHHZDJMXB.HPJE
  is '耗品金额';

prompt
prompt Creating table SFXZZBGLXT_YDXHHZDJZB
prompt ====================================
prompt
create table SFXZZBGLXT_YDXHHZDJZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  ZBBS        NUMBER,
  ND          NUMBER,
  YF          NUMBER,
  HJJE        FLOAT,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_YDXHHZDJZB
  is '月度消耗汇总登记主表';
comment on column SFXZZBGLXT_YDXHHZDJZB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_YDXHHZDJZB.ZBBS
  is '主表标识';
comment on column SFXZZBGLXT_YDXHHZDJZB.ND
  is '年度';
comment on column SFXZZBGLXT_YDXHHZDJZB.YF
  is '月份';
comment on column SFXZZBGLXT_YDXHHZDJZB.HJJE
  is '合计金额';
comment on column SFXZZBGLXT_YDXHHZDJZB.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_YDXHHZDJZB.DJR
  is '登记人';
comment on column SFXZZBGLXT_YDXHHZDJZB.DJSJ
  is '登记时间';

prompt
prompt Creating table SFXZZBGLXT_ZCBDB
prompt ===============================
prompt
create table SFXZZBGLXT_ZCBDB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  BDDJH       VARCHAR2(20),
  ZCBH        VARCHAR2(30),
  YSYRBS      NUMBER,
  YSYR        VARCHAR2(40),
  XSYRBS      NUMBER,
  XSYR        VARCHAR2(40),
  YCFDD       VARCHAR2(100),
  XCFDD       VARCHAR2(100),
  YSYZK       VARCHAR2(50),
  XSYZK       VARCHAR2(50),
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ZCBDB
  is '资产变动表';
comment on column SFXZZBGLXT_ZCBDB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ZCBDB.BH
  is '编号';
comment on column SFXZZBGLXT_ZCBDB.BDDJH
  is '变动单据号';
comment on column SFXZZBGLXT_ZCBDB.ZCBH
  is '资产编号';
comment on column SFXZZBGLXT_ZCBDB.YSYRBS
  is '原使用人标识';
comment on column SFXZZBGLXT_ZCBDB.YSYR
  is '原使用人';
comment on column SFXZZBGLXT_ZCBDB.XSYRBS
  is '现使用人标识';
comment on column SFXZZBGLXT_ZCBDB.XSYR
  is '现使用人';
comment on column SFXZZBGLXT_ZCBDB.YCFDD
  is '原存放地点';
comment on column SFXZZBGLXT_ZCBDB.XCFDD
  is '现存放地点';
comment on column SFXZZBGLXT_ZCBDB.YSYZK
  is '原使用状况';
comment on column SFXZZBGLXT_ZCBDB.XSYZK
  is '现使用状况';
comment on column SFXZZBGLXT_ZCBDB.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_ZCBDB.DJR
  is '登记人';
comment on column SFXZZBGLXT_ZCBDB.DJRQ
  is '登记日期';

prompt
prompt Creating table SFXZZBGLXT_ZCCKMX
prompt ================================
prompt
create table SFXZZBGLXT_ZCCKMX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  MXBH        NUMBER,
  CKBH        NUMBER,
  ZCBH        VARCHAR2(30),
  MC          VARCHAR2(50),
  PP          VARCHAR2(50),
  XH          VARCHAR2(50),
  DW          VARCHAR2(50),
  DJ          NUMBER,
  SL          FLOAT,
  SYRBS       NUMBER,
  SYR         VARCHAR2(40),
  FZDD        VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ZCCKMX
  is '资产出库明细';
comment on column SFXZZBGLXT_ZCCKMX.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ZCCKMX.MXBH
  is '明细编号';
comment on column SFXZZBGLXT_ZCCKMX.CKBH
  is '出库编号';
comment on column SFXZZBGLXT_ZCCKMX.ZCBH
  is '资产编号';
comment on column SFXZZBGLXT_ZCCKMX.MC
  is '名称';
comment on column SFXZZBGLXT_ZCCKMX.PP
  is '品牌';
comment on column SFXZZBGLXT_ZCCKMX.XH
  is '型号';
comment on column SFXZZBGLXT_ZCCKMX.DW
  is '单位';
comment on column SFXZZBGLXT_ZCCKMX.DJ
  is '单价';
comment on column SFXZZBGLXT_ZCCKMX.SL
  is '数量';
comment on column SFXZZBGLXT_ZCCKMX.SYRBS
  is '使用人标识';
comment on column SFXZZBGLXT_ZCCKMX.SYR
  is '使用人';
comment on column SFXZZBGLXT_ZCCKMX.FZDD
  is '放置地点';

prompt
prompt Creating table SFXZZBGLXT_ZCCKZB
prompt ================================
prompt
create table SFXZZBGLXT_ZCCKZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  CKBH        NUMBER,
  CKDH        VARCHAR2(20),
  CKRQ        DATE,
  CKYT        VARCHAR2(50),
  JBRBS       NUMBER,
  JBR         VARCHAR2(40),
  HJJE        NUMBER,
  BZ          VARCHAR2(250),
  LYBM        VARCHAR2(40),
  LYRBS       NUMBER,
  LYR         VARCHAR2(40),
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  LX          NUMBER,
  SHRBS       NUMBER,
  SHR         VARCHAR2(40),
  SHRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ZCCKZB
  is '资产出库主表';
comment on column SFXZZBGLXT_ZCCKZB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ZCCKZB.CKBH
  is '出库编号';
comment on column SFXZZBGLXT_ZCCKZB.CKDH
  is '出库单号';
comment on column SFXZZBGLXT_ZCCKZB.CKRQ
  is '出库日期';
comment on column SFXZZBGLXT_ZCCKZB.CKYT
  is '出库用途';
comment on column SFXZZBGLXT_ZCCKZB.JBRBS
  is '经办人标识';
comment on column SFXZZBGLXT_ZCCKZB.JBR
  is '经办人';
comment on column SFXZZBGLXT_ZCCKZB.HJJE
  is '合计金额';
comment on column SFXZZBGLXT_ZCCKZB.BZ
  is '备注';
comment on column SFXZZBGLXT_ZCCKZB.LYBM
  is '领用部门';
comment on column SFXZZBGLXT_ZCCKZB.LYRBS
  is '领用人标识';
comment on column SFXZZBGLXT_ZCCKZB.LYR
  is '领用人';
comment on column SFXZZBGLXT_ZCCKZB.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_ZCCKZB.DJR
  is '登记人';
comment on column SFXZZBGLXT_ZCCKZB.DJRQ
  is '登记日期';
comment on column SFXZZBGLXT_ZCCKZB.LX
  is '类型';
comment on column SFXZZBGLXT_ZCCKZB.SHRBS
  is '审核人标识';
comment on column SFXZZBGLXT_ZCCKZB.SHR
  is '审核人';
comment on column SFXZZBGLXT_ZCCKZB.SHRQ
  is '审核日期';

prompt
prompt Creating table SFXZZBGLXT_ZCCZMX
prompt ================================
prompt
create table SFXZZBGLXT_ZCCZMX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  CZBH        NUMBER,
  MXBH        NUMBER,
  ZCBH        VARCHAR2(30),
  MC          VARCHAR2(50),
  PP          VARCHAR2(50),
  XH          VARCHAR2(50),
  DW          VARCHAR2(50),
  DJ          NUMBER,
  SL          FLOAT,
  SYQK        VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ZCCZMX
  is '资产处置明细';
comment on column SFXZZBGLXT_ZCCZMX.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ZCCZMX.CZBH
  is '处置编号';
comment on column SFXZZBGLXT_ZCCZMX.MXBH
  is '明细编号';
comment on column SFXZZBGLXT_ZCCZMX.ZCBH
  is '资产编号';
comment on column SFXZZBGLXT_ZCCZMX.MC
  is '名称';
comment on column SFXZZBGLXT_ZCCZMX.PP
  is '品牌';
comment on column SFXZZBGLXT_ZCCZMX.XH
  is '型号';
comment on column SFXZZBGLXT_ZCCZMX.DW
  is '单位';
comment on column SFXZZBGLXT_ZCCZMX.DJ
  is '单价';
comment on column SFXZZBGLXT_ZCCZMX.SL
  is '数量';
comment on column SFXZZBGLXT_ZCCZMX.SYQK
  is '使用情况';

prompt
prompt Creating table SFXZZBGLXT_ZCCZZB
prompt ================================
prompt
create table SFXZZBGLXT_ZCCZZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  CZBH        NUMBER,
  CZDH        VARCHAR2(20),
  SBRQ        DATE,
  SBBM        VARCHAR2(50),
  CZFS        VARCHAR2(20),
  JBRJBR      VARCHAR2(40),
  JBR         VARCHAR2(40),
  HJJE        FLOAT,
  BZ          VARCHAR2(250),
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  SPR1BS      NUMBER,
  SPR1        VARCHAR2(40),
  SPYJ1       NUMBER,
  SPYJBZ1     VARCHAR2(250),
  SPSJ1       DATE,
  SPR2BS      NUMBER,
  SPR2        VARCHAR2(40),
  SPYJ2       NUMBER,
  SPYJBZ2     VARCHAR2(250),
  SPSJ2       DATE,
  SPR3BS      NUMBER,
  SPR3        VARCHAR2(40),
  SPYJ3       NUMBER,
  SPYJBZ3     VARCHAR2(250),
  SPSJ3       DATE,
  SPR4BS      NUMBER,
  SPR4        VARCHAR2(40),
  SPYJ4       NUMBER,
  SPYJBZ4     VARCHAR2(250),
  SPSJ4       DATE,
  SPR5BS      NUMBER,
  SPR5        VARCHAR2(40),
  SPYJ5       NUMBER,
  SPYJBZ5     VARCHAR2(250),
  SPSJ5       DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ZCCZZB
  is '资产处置主表';
comment on column SFXZZBGLXT_ZCCZZB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ZCCZZB.CZBH
  is '处置编号';
comment on column SFXZZBGLXT_ZCCZZB.CZDH
  is '处置单号';
comment on column SFXZZBGLXT_ZCCZZB.SBRQ
  is '申报日期';
comment on column SFXZZBGLXT_ZCCZZB.SBBM
  is '申报部门';
comment on column SFXZZBGLXT_ZCCZZB.CZFS
  is '处置方式';
comment on column SFXZZBGLXT_ZCCZZB.JBRJBR
  is '经办人jbr';
comment on column SFXZZBGLXT_ZCCZZB.JBR
  is '经办人';
comment on column SFXZZBGLXT_ZCCZZB.HJJE
  is '合计金额';
comment on column SFXZZBGLXT_ZCCZZB.BZ
  is '备注';
comment on column SFXZZBGLXT_ZCCZZB.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_ZCCZZB.DJR
  is '登记人';
comment on column SFXZZBGLXT_ZCCZZB.DJRQ
  is '登记日期';
comment on column SFXZZBGLXT_ZCCZZB.SPR1BS
  is '审批人1标识';
comment on column SFXZZBGLXT_ZCCZZB.SPR1
  is '审批人1';
comment on column SFXZZBGLXT_ZCCZZB.SPYJ1
  is '审批意见1';
comment on column SFXZZBGLXT_ZCCZZB.SPYJBZ1
  is '审批意见备注1';
comment on column SFXZZBGLXT_ZCCZZB.SPSJ1
  is '审批时间1';
comment on column SFXZZBGLXT_ZCCZZB.SPR2BS
  is '审批人2标识';
comment on column SFXZZBGLXT_ZCCZZB.SPR2
  is '审批人2';
comment on column SFXZZBGLXT_ZCCZZB.SPYJ2
  is '审批意见2';
comment on column SFXZZBGLXT_ZCCZZB.SPYJBZ2
  is '审批意见备注2';
comment on column SFXZZBGLXT_ZCCZZB.SPSJ2
  is '审批时间2';
comment on column SFXZZBGLXT_ZCCZZB.SPR3BS
  is '审批人3标识';
comment on column SFXZZBGLXT_ZCCZZB.SPR3
  is '审批人3';
comment on column SFXZZBGLXT_ZCCZZB.SPYJ3
  is '审批意见3';
comment on column SFXZZBGLXT_ZCCZZB.SPYJBZ3
  is '审批意见备注3';
comment on column SFXZZBGLXT_ZCCZZB.SPSJ3
  is '审批时间3';
comment on column SFXZZBGLXT_ZCCZZB.SPR4BS
  is '审批人4标识';
comment on column SFXZZBGLXT_ZCCZZB.SPR4
  is '审批人4';
comment on column SFXZZBGLXT_ZCCZZB.SPYJ4
  is '审批意见4';
comment on column SFXZZBGLXT_ZCCZZB.SPYJBZ4
  is '审批意见备注4';
comment on column SFXZZBGLXT_ZCCZZB.SPSJ4
  is '审批时间4';
comment on column SFXZZBGLXT_ZCCZZB.SPR5BS
  is '审批人5标识';
comment on column SFXZZBGLXT_ZCCZZB.SPR5
  is '审批人5';
comment on column SFXZZBGLXT_ZCCZZB.SPYJ5
  is '审批意见5';
comment on column SFXZZBGLXT_ZCCZZB.SPYJBZ5
  is '审批意见备注5';
comment on column SFXZZBGLXT_ZCCZZB.SPSJ5
  is '审批时间5';

prompt
prompt Creating table SFXZZBGLXT_ZCDJB
prompt ===============================
prompt
create table SFXZZBGLXT_ZCDJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  ZCBH        VARCHAR2(30),
  MC          VARCHAR2(50),
  DW          VARCHAR2(50),
  LB          VARCHAR2(50),
  XH          VARCHAR2(50),
  PP          VARCHAR2(50),
  DJ          NUMBER,
  SCRQJGRQ    DATE,
  SYNX        FLOAT,
  LYBM        VARCHAR2(100),
  CFDDZLWZ    VARCHAR2(100),
  SYRBS       NUMBER,
  SYR         VARCHAR2(40),
  SYZK        VARCHAR2(50),
  CD          VARCHAR2(50),
  CPH         VARCHAR2(50),
  FDJH        VARCHAR2(50),
  CJH         VARCHAR2(50),
  PQL         FLOAT,
  YTFL        VARCHAR2(50),
  BZQK        VARCHAR2(50),
  JZMJ        FLOAT,
  SYMJ        FLOAT,
  RKDH        NUMBER,
  CKDH        NUMBER,
  CZDH        NUMBER,
  PDDH        NUMBER,
  GQTS        NUMBER,
  DQRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ZCDJB
  is '资产登记表';
comment on column SFXZZBGLXT_ZCDJB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ZCDJB.BH
  is '编号';
comment on column SFXZZBGLXT_ZCDJB.ZCBH
  is '资产编号';
comment on column SFXZZBGLXT_ZCDJB.MC
  is '名称';
comment on column SFXZZBGLXT_ZCDJB.DW
  is '单位';
comment on column SFXZZBGLXT_ZCDJB.LB
  is '类别';
comment on column SFXZZBGLXT_ZCDJB.XH
  is '型号';
comment on column SFXZZBGLXT_ZCDJB.PP
  is '品牌';
comment on column SFXZZBGLXT_ZCDJB.DJ
  is '单价';
comment on column SFXZZBGLXT_ZCDJB.SCRQJGRQ
  is '生产日期竣工日期';
comment on column SFXZZBGLXT_ZCDJB.SYNX
  is '使用年限';
comment on column SFXZZBGLXT_ZCDJB.LYBM
  is '领用部门';
comment on column SFXZZBGLXT_ZCDJB.CFDDZLWZ
  is '存放地点坐落位置';
comment on column SFXZZBGLXT_ZCDJB.SYRBS
  is '使用人标识';
comment on column SFXZZBGLXT_ZCDJB.SYR
  is '使用人';
comment on column SFXZZBGLXT_ZCDJB.SYZK
  is '使用状况';
comment on column SFXZZBGLXT_ZCDJB.CD
  is '产地';
comment on column SFXZZBGLXT_ZCDJB.CPH
  is '车牌号';
comment on column SFXZZBGLXT_ZCDJB.FDJH
  is '发动机号';
comment on column SFXZZBGLXT_ZCDJB.CJH
  is '车架号';
comment on column SFXZZBGLXT_ZCDJB.PQL
  is '排气量';
comment on column SFXZZBGLXT_ZCDJB.YTFL
  is '用途分类';
comment on column SFXZZBGLXT_ZCDJB.BZQK
  is '编制情况';
comment on column SFXZZBGLXT_ZCDJB.JZMJ
  is '建筑面积';
comment on column SFXZZBGLXT_ZCDJB.SYMJ
  is '使用面积';
comment on column SFXZZBGLXT_ZCDJB.RKDH
  is '入库单号';
comment on column SFXZZBGLXT_ZCDJB.CKDH
  is '出库单号';
comment on column SFXZZBGLXT_ZCDJB.CZDH
  is '处置单号';
comment on column SFXZZBGLXT_ZCDJB.PDDH
  is '盘点单号';
comment on column SFXZZBGLXT_ZCDJB.GQTS
  is '过期提示';
comment on column SFXZZBGLXT_ZCDJB.DQRQ
  is '到期日期';

prompt
prompt Creating table SFXZZBGLXT_ZCKCB
prompt ===============================
prompt
create table SFXZZBGLXT_ZCKCB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  ZCBH        VARCHAR2(30),
  MC          VARCHAR2(50),
  DW          VARCHAR2(50),
  SL          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ZCKCB
  is '资产库存表';
comment on column SFXZZBGLXT_ZCKCB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ZCKCB.BH
  is '编号';
comment on column SFXZZBGLXT_ZCKCB.ZCBH
  is '资产编号';
comment on column SFXZZBGLXT_ZCKCB.MC
  is '名称';
comment on column SFXZZBGLXT_ZCKCB.DW
  is '单位';
comment on column SFXZZBGLXT_ZCKCB.SL
  is '数量';

prompt
prompt Creating table SFXZZBGLXT_ZCPDMX
prompt ================================
prompt
create table SFXZZBGLXT_ZCPDMX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  MXBH        NUMBER,
  PDBH        NUMBER,
  ZCBH        VARCHAR2(30),
  MC          VARCHAR2(50),
  DW          VARCHAR2(50),
  KFSL        NUMBER,
  PDSL        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ZCPDMX
  is '资产盘点明细';
comment on column SFXZZBGLXT_ZCPDMX.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ZCPDMX.MXBH
  is '明细编号';
comment on column SFXZZBGLXT_ZCPDMX.PDBH
  is '盘点编号';
comment on column SFXZZBGLXT_ZCPDMX.ZCBH
  is '资产编号';
comment on column SFXZZBGLXT_ZCPDMX.MC
  is '名称';
comment on column SFXZZBGLXT_ZCPDMX.DW
  is '单位';
comment on column SFXZZBGLXT_ZCPDMX.KFSL
  is '库房数量';
comment on column SFXZZBGLXT_ZCPDMX.PDSL
  is '盘点数量';

prompt
prompt Creating table SFXZZBGLXT_ZCPDZB
prompt ================================
prompt
create table SFXZZBGLXT_ZCPDZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  PDBH        NUMBER,
  PDDH        VARCHAR2(20),
  PDRQ        DATE,
  PDRBS       NUMBER,
  PDR         VARCHAR2(40),
  SHRQ        DATE,
  SHRBS       NUMBER,
  SHR         VARCHAR2(40),
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ZCPDZB
  is '资产盘点主表';
comment on column SFXZZBGLXT_ZCPDZB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ZCPDZB.PDBH
  is '盘点编号';
comment on column SFXZZBGLXT_ZCPDZB.PDDH
  is '盘点单号';
comment on column SFXZZBGLXT_ZCPDZB.PDRQ
  is '盘点日期';
comment on column SFXZZBGLXT_ZCPDZB.PDRBS
  is '盘点人标识';
comment on column SFXZZBGLXT_ZCPDZB.PDR
  is '盘点人';
comment on column SFXZZBGLXT_ZCPDZB.SHRQ
  is '审核日期';
comment on column SFXZZBGLXT_ZCPDZB.SHRBS
  is '审核人标识';
comment on column SFXZZBGLXT_ZCPDZB.SHR
  is '审核人';
comment on column SFXZZBGLXT_ZCPDZB.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_ZCPDZB.DJR
  is '登记人';
comment on column SFXZZBGLXT_ZCPDZB.DJRQ
  is '登记日期';

prompt
prompt Creating table SFXZZBGLXT_ZCRKMX
prompt ================================
prompt
create table SFXZZBGLXT_ZCRKMX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  MXBH        NUMBER,
  RKBH        NUMBER,
  ZCBH        VARCHAR2(30),
  MC          VARCHAR2(50),
  PP          VARCHAR2(50),
  XH          VARCHAR2(50),
  DW          VARCHAR2(50),
  DJ          NUMBER,
  SL          FLOAT,
  SCRQJGRQ    DATE,
  SYNX        FLOAT,
  HSYY        VARCHAR2(250),
  SYZK        VARCHAR2(50),
  CD          VARCHAR2(50),
  CPH         VARCHAR2(50),
  FDJH        VARCHAR2(50),
  CJH         VARCHAR2(50),
  PQL         FLOAT,
  YTFL        VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ZCRKMX
  is '资产入库明细';
comment on column SFXZZBGLXT_ZCRKMX.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ZCRKMX.MXBH
  is '明细编号';
comment on column SFXZZBGLXT_ZCRKMX.RKBH
  is '入库编号';
comment on column SFXZZBGLXT_ZCRKMX.ZCBH
  is '资产编号';
comment on column SFXZZBGLXT_ZCRKMX.MC
  is '名称';
comment on column SFXZZBGLXT_ZCRKMX.PP
  is '品牌';
comment on column SFXZZBGLXT_ZCRKMX.XH
  is '型号';
comment on column SFXZZBGLXT_ZCRKMX.DW
  is '单位';
comment on column SFXZZBGLXT_ZCRKMX.DJ
  is '单价';
comment on column SFXZZBGLXT_ZCRKMX.SL
  is '数量';
comment on column SFXZZBGLXT_ZCRKMX.SCRQJGRQ
  is '生产日期竣工日期';
comment on column SFXZZBGLXT_ZCRKMX.SYNX
  is '使用年限';
comment on column SFXZZBGLXT_ZCRKMX.HSYY
  is '回收原因';
comment on column SFXZZBGLXT_ZCRKMX.SYZK
  is '使用状况';
comment on column SFXZZBGLXT_ZCRKMX.CD
  is '产地';
comment on column SFXZZBGLXT_ZCRKMX.CPH
  is '车牌号';
comment on column SFXZZBGLXT_ZCRKMX.FDJH
  is '发动机号';
comment on column SFXZZBGLXT_ZCRKMX.CJH
  is '车架号';
comment on column SFXZZBGLXT_ZCRKMX.PQL
  is '排气量';
comment on column SFXZZBGLXT_ZCRKMX.YTFL
  is '用途分类';

prompt
prompt Creating table SFXZZBGLXT_ZCRKZB
prompt ================================
prompt
create table SFXZZBGLXT_ZCRKZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  RKBH        NUMBER,
  RKDH        VARCHAR2(20),
  RKRQ        DATE,
  LB          VARCHAR2(50),
  RKLY        VARCHAR2(50),
  JBRBS       NUMBER,
  JBR         VARCHAR2(40),
  HJJE        NUMBER,
  HSYY        VARCHAR2(250),
  HSBM        VARCHAR2(50),
  BZ          VARCHAR2(250),
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  LX          NUMBER,
  SHRBS       NUMBER,
  SHR         VARCHAR2(40),
  SHRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ZCRKZB
  is '资产入库主表';
comment on column SFXZZBGLXT_ZCRKZB.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ZCRKZB.RKBH
  is '入库编号';
comment on column SFXZZBGLXT_ZCRKZB.RKDH
  is '入库单号';
comment on column SFXZZBGLXT_ZCRKZB.RKRQ
  is '入库日期';
comment on column SFXZZBGLXT_ZCRKZB.LB
  is '类别';
comment on column SFXZZBGLXT_ZCRKZB.RKLY
  is '入库来源';
comment on column SFXZZBGLXT_ZCRKZB.JBRBS
  is '经办人标识';
comment on column SFXZZBGLXT_ZCRKZB.JBR
  is '经办人';
comment on column SFXZZBGLXT_ZCRKZB.HJJE
  is '合计金额';
comment on column SFXZZBGLXT_ZCRKZB.HSYY
  is '回收原因';
comment on column SFXZZBGLXT_ZCRKZB.HSBM
  is '回收部门';
comment on column SFXZZBGLXT_ZCRKZB.BZ
  is '备注';
comment on column SFXZZBGLXT_ZCRKZB.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_ZCRKZB.DJR
  is '登记人';
comment on column SFXZZBGLXT_ZCRKZB.DJRQ
  is '登记日期';
comment on column SFXZZBGLXT_ZCRKZB.LX
  is '类型';
comment on column SFXZZBGLXT_ZCRKZB.SHRBS
  is '审核人标识';
comment on column SFXZZBGLXT_ZCRKZB.SHR
  is '审核人';
comment on column SFXZZBGLXT_ZCRKZB.SHRQ
  is '审核日期';

prompt
prompt Creating table SFXZZBGLXT_ZCTZ
prompt ==============================
prompt
create table SFXZZBGLXT_ZCTZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  ZJ          NUMBER,
  ZCBH        VARCHAR2(30),
  MC          VARCHAR2(50),
  DJH         VARCHAR2(50),
  DJLX        VARCHAR2(20),
  BDSL        NUMBER,
  KFSL        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SFXZZBGLXT_ZCTZ
  is '资产台账';
comment on column SFXZZBGLXT_ZCTZ.FYBM
  is '法院编码';
comment on column SFXZZBGLXT_ZCTZ.ZJ
  is '主键';
comment on column SFXZZBGLXT_ZCTZ.ZCBH
  is '资产编号';
comment on column SFXZZBGLXT_ZCTZ.MC
  is '名称';
comment on column SFXZZBGLXT_ZCTZ.DJH
  is '单据号';
comment on column SFXZZBGLXT_ZCTZ.DJLX
  is '单据类型';
comment on column SFXZZBGLXT_ZCTZ.BDSL
  is '变动数量';
comment on column SFXZZBGLXT_ZCTZ.KFSL
  is '库房数量';
comment on column SFXZZBGLXT_ZCTZ.DJRBS
  is '登记人标识';
comment on column SFXZZBGLXT_ZCTZ.DJR
  is '登记人';
comment on column SFXZZBGLXT_ZCTZ.DJRQ
  is '登记日期';

prompt
prompt Creating table SGKXT_SGKLZJL
prompt ============================
prompt
create table SGKXT_SGKLZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  SGKBS       NUMBER,
  GZMC        VARCHAR2(100),
  FSRBS       NUMBER,
  FSR         VARCHAR2(40),
  FSSJ        DATE,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40),
  JSSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SGKXT_SGKLZJL
  is '四公开流转记录';
comment on column SGKXT_SGKLZJL.FYBM
  is '法院编码';
comment on column SGKXT_SGKLZJL.XH
  is '序号';
comment on column SGKXT_SGKLZJL.SGKBS
  is '四公开标识';
comment on column SGKXT_SGKLZJL.GZMC
  is '工作名称';
comment on column SGKXT_SGKLZJL.FSRBS
  is '发送人标识';
comment on column SGKXT_SGKLZJL.FSR
  is '发送人';
comment on column SGKXT_SGKLZJL.FSSJ
  is '发送时间';
comment on column SGKXT_SGKLZJL.JSRBS
  is '接收人标识';
comment on column SGKXT_SGKLZJL.JSR
  is '接收人';
comment on column SGKXT_SGKLZJL.JSSJ
  is '接收时间';

prompt
prompt Creating table SGKXT_SGKST
prompt ==========================
prompt
create table SGKXT_SGKST
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SGKBS       NUMBER,
  XH          NUMBER,
  STLX        VARCHAR2(10),
  WJMC        VARCHAR2(255),
  STWJM       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SGKXT_SGKST
  is '四公开实体';
comment on column SGKXT_SGKST.FYBM
  is '法院编码';
comment on column SGKXT_SGKST.SGKBS
  is '四公开标识';
comment on column SGKXT_SGKST.XH
  is '序号';
comment on column SGKXT_SGKST.STLX
  is '实体类型';
comment on column SGKXT_SGKST.WJMC
  is '文件名称';
comment on column SGKXT_SGKST.STWJM
  is '实体文件名';

prompt
prompt Creating table SGKXT_SGKZTXX
prompt ============================
prompt
create table SGKXT_SGKZTXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SGKBS       NUMBER,
  LWBT        VARCHAR2(250),
  BH          VARCHAR2(100),
  BHNF        NUMBER,
  FYJC        VARCHAR2(20),
  BHZH        VARCHAR2(20),
  HS          NUMBER,
  DJRQ        DATE,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  LDXSJ       DATE,
  DSR         VARCHAR2(200),
  LXFS        VARCHAR2(100),
  XXLY        VARCHAR2(50),
  WTLB        VARCHAR2(40),
  NRXZ        VARCHAR2(40),
  FYSXZYNR    BLOB,
  SJDW        VARCHAR2(100),
  LDPS        VARCHAR2(100),
  NBYJHBLQK   BLOB,
  SFZY        NUMBER,
  ZFCS        NUMBER,
  LSDJBH      NUMBER,
  SFBJG       NUMBER,
  XBDW        VARCHAR2(100),
  SJAH        VARCHAR2(100),
  DBBM        VARCHAR2(100),
  SFSBJG      NUMBER,
  WCQX        DATE,
  BLRBS       NUMBER,
  BLR         VARCHAR2(40),
  ZBDW        VARCHAR2(100),
  LJBS        NUMBER,
  LJRQ        DATE,
  GDBS        NUMBER,
  TQGDRQ      DATE,
  GDRQ        DATE,
  SGKGLBH     NUMBER,
  HFTD        VARCHAR2(100),
  MYD         VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SGKXT_SGKZTXX
  is '四公开主体信息';
comment on column SGKXT_SGKZTXX.FYBM
  is '法院编码';
comment on column SGKXT_SGKZTXX.SGKBS
  is '四公开标识';
comment on column SGKXT_SGKZTXX.LWBT
  is '来文标题';
comment on column SGKXT_SGKZTXX.BH
  is '编号';
comment on column SGKXT_SGKZTXX.BHNF
  is '编号年份';
comment on column SGKXT_SGKZTXX.FYJC
  is '法院简称';
comment on column SGKXT_SGKZTXX.BHZH
  is '编号字号';
comment on column SGKXT_SGKZTXX.HS
  is '号数';
comment on column SGKXT_SGKZTXX.DJRQ
  is '登记日期';
comment on column SGKXT_SGKZTXX.DJRBS
  is '登记人标识';
comment on column SGKXT_SGKZTXX.DJR
  is '登记人';
comment on column SGKXT_SGKZTXX.LDXSJ
  is '来电（信）时间';
comment on column SGKXT_SGKZTXX.DSR
  is '当事人';
comment on column SGKXT_SGKZTXX.LXFS
  is '联系方式';
comment on column SGKXT_SGKZTXX.XXLY
  is '信息来源';
comment on column SGKXT_SGKZTXX.WTLB
  is '问题类别';
comment on column SGKXT_SGKZTXX.NRXZ
  is '内容性质';
comment on column SGKXT_SGKZTXX.FYSXZYNR
  is '反映事项主要内容';
comment on column SGKXT_SGKZTXX.SJDW
  is '涉及单位';
comment on column SGKXT_SGKZTXX.LDPS
  is '领导批示';
comment on column SGKXT_SGKZTXX.NBYJHBLQK
  is '拟办意见或办理情况';
comment on column SGKXT_SGKZTXX.SFZY
  is '是否重要';
comment on column SGKXT_SGKZTXX.ZFCS
  is '重复次数';
comment on column SGKXT_SGKZTXX.LSDJBH
  is '落实登记编号';
comment on column SGKXT_SGKZTXX.SFBJG
  is '是否报结果';
comment on column SGKXT_SGKZTXX.XBDW
  is '协办单位';
comment on column SGKXT_SGKZTXX.SJAH
  is '涉及案号';
comment on column SGKXT_SGKZTXX.DBBM
  is '督办部门';
comment on column SGKXT_SGKZTXX.SFSBJG
  is '是否上报结果';
comment on column SGKXT_SGKZTXX.WCQX
  is '完成期限';
comment on column SGKXT_SGKZTXX.BLRBS
  is '办理人标识';
comment on column SGKXT_SGKZTXX.BLR
  is '办理人';
comment on column SGKXT_SGKZTXX.ZBDW
  is '主办单位';
comment on column SGKXT_SGKZTXX.LJBS
  is '了结标识';
comment on column SGKXT_SGKZTXX.LJRQ
  is '了结日期';
comment on column SGKXT_SGKZTXX.GDBS
  is '归档标识';
comment on column SGKXT_SGKZTXX.TQGDRQ
  is '提请归档日期';
comment on column SGKXT_SGKZTXX.GDRQ
  is '归档日期';
comment on column SGKXT_SGKZTXX.SGKGLBH
  is '四公开关联编号';
comment on column SGKXT_SGKZTXX.HFTD
  is '回复态度';
comment on column SGKXT_SGKZTXX.MYD
  is '满意度';

prompt
prompt Creating table SPGKXT_AJJBXX
prompt ============================
prompt
create table SPGKXT_AJJBXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  FYMC        VARCHAR2(100),
  AJLB        VARCHAR2(20),
  SPCX        VARCHAR2(20),
  AH          VARCHAR2(40),
  ND          NUMBER,
  FYJC        VARCHAR2(20),
  AZ          VARCHAR2(20),
  HS          NUMBER,
  LAAY        VARCHAR2(50),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  HYTCY       VARCHAR2(250),
  SJYBS       NUMBER,
  SJY         VARCHAR2(40),
  DSR         BLOB,
  SYCX        VARCHAR2(50),
  LXDH        VARCHAR2(100),
  SFYX        NUMBER,
  LARQ        DATE,
  YG          BLOB,
  BG          BLOB,
  BDJE        NUMBER,
  YYR         VARCHAR2(50),
  YYLY        VARCHAR2(250),
  CLJG        VARCHAR2(250),
  AJLY        VARCHAR2(50),
  YSLX        VARCHAR2(50),
  JSXRQ       DATE,
  MSBD        NUMBER,
  SSLY        VARCHAR2(20),
  JABS        NUMBER,
  JARQ        DATE,
  BDLX        VARCHAR2(20),
  BDZ         NUMBER,
  FLWSBH      VARCHAR2(50),
  YSFY        VARCHAR2(100),
  SSRQ        DATE,
  YSAH        VARCHAR2(50),
  JAFS        VARCHAR2(100),
  FARQ        DATE,
  SPT         VARCHAR2(100),
  ZXXX        DATE,
  GKRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_AJJBXX
  is '案件基本信息';
comment on column SPGKXT_AJJBXX.FYBM
  is '法院编码';
comment on column SPGKXT_AJJBXX.BH
  is '编号';
comment on column SPGKXT_AJJBXX.AJBS
  is '案件标识';
comment on column SPGKXT_AJJBXX.FYMC
  is '法院名称';
comment on column SPGKXT_AJJBXX.AJLB
  is '案件类别';
comment on column SPGKXT_AJJBXX.SPCX
  is '审判程序';
comment on column SPGKXT_AJJBXX.AH
  is '案号';
comment on column SPGKXT_AJJBXX.ND
  is '年度';
comment on column SPGKXT_AJJBXX.FYJC
  is '法院简称';
comment on column SPGKXT_AJJBXX.AZ
  is '案字';
comment on column SPGKXT_AJJBXX.HS
  is '号数';
comment on column SPGKXT_AJJBXX.LAAY
  is '立案案由';
comment on column SPGKXT_AJJBXX.CBRBS
  is '承办人标识';
comment on column SPGKXT_AJJBXX.CBR
  is '承办人';
comment on column SPGKXT_AJJBXX.HYTCY
  is '合议庭成员';
comment on column SPGKXT_AJJBXX.SJYBS
  is '书记员标识';
comment on column SPGKXT_AJJBXX.SJY
  is '书记员';
comment on column SPGKXT_AJJBXX.DSR
  is '当事人';
comment on column SPGKXT_AJJBXX.SYCX
  is '适用程序';
comment on column SPGKXT_AJJBXX.LXDH
  is '联系电话';
comment on column SPGKXT_AJJBXX.SFYX
  is '是否有效';
comment on column SPGKXT_AJJBXX.LARQ
  is '立案日期';
comment on column SPGKXT_AJJBXX.YG
  is '原告';
comment on column SPGKXT_AJJBXX.BG
  is '被告';
comment on column SPGKXT_AJJBXX.BDJE
  is '标的金额';
comment on column SPGKXT_AJJBXX.YYR
  is '议异人';
comment on column SPGKXT_AJJBXX.YYLY
  is '议异理由';
comment on column SPGKXT_AJJBXX.CLJG
  is '处理结果';
comment on column SPGKXT_AJJBXX.AJLY
  is '案件来源';
comment on column SPGKXT_AJJBXX.YSLX
  is '一审类型';
comment on column SPGKXT_AJJBXX.JSXRQ
  is '己生效日期';
comment on column SPGKXT_AJJBXX.MSBD
  is '民事标的';
comment on column SPGKXT_AJJBXX.SSLY
  is '诉讼来源';
comment on column SPGKXT_AJJBXX.JABS
  is '结案标识';
comment on column SPGKXT_AJJBXX.JARQ
  is '结案日期';
comment on column SPGKXT_AJJBXX.BDLX
  is '标的类型';
comment on column SPGKXT_AJJBXX.BDZ
  is '标的值';
comment on column SPGKXT_AJJBXX.FLWSBH
  is '法律文书标号';
comment on column SPGKXT_AJJBXX.YSFY
  is '原审法院';
comment on column SPGKXT_AJJBXX.SSRQ
  is '申诉日期';
comment on column SPGKXT_AJJBXX.YSAH
  is '原审案号';
comment on column SPGKXT_AJJBXX.JAFS
  is '结案方式';
comment on column SPGKXT_AJJBXX.FARQ
  is '分案日期';
comment on column SPGKXT_AJJBXX.SPT
  is '审判庭';
comment on column SPGKXT_AJJBXX.ZXXX
  is '执行信息';
comment on column SPGKXT_AJJBXX.GKRQ
  is '公开日期';

prompt
prompt Creating table SPGKXT_AJPQ
prompt ==========================
prompt
create table SPGKXT_AJPQ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  XH          NUMBER,
  FYMC        VARCHAR2(100),
  AJLB        VARCHAR2(50),
  KTRQ        DATE,
  KTSJ        DATE,
  FT          VARCHAR2(50),
  CBR         VARCHAR2(40),
  AH          VARCHAR2(50),
  LAAY        VARCHAR2(50),
  DSR         VARCHAR2(200),
  SFYX        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_AJPQ
  is '案件排期';
comment on column SPGKXT_AJPQ.FYBM
  is '法院编码';
comment on column SPGKXT_AJPQ.BH
  is '编号';
comment on column SPGKXT_AJPQ.AJBS
  is '案件标识';
comment on column SPGKXT_AJPQ.XH
  is '序号';
comment on column SPGKXT_AJPQ.FYMC
  is '法院名称';
comment on column SPGKXT_AJPQ.AJLB
  is '案件类别';
comment on column SPGKXT_AJPQ.KTRQ
  is '开庭日期';
comment on column SPGKXT_AJPQ.KTSJ
  is '开庭时间';
comment on column SPGKXT_AJPQ.FT
  is '法庭';
comment on column SPGKXT_AJPQ.CBR
  is '承办人';
comment on column SPGKXT_AJPQ.AH
  is '案号';
comment on column SPGKXT_AJPQ.LAAY
  is '立案案由';
comment on column SPGKXT_AJPQ.DSR
  is '当事人';
comment on column SPGKXT_AJPQ.SFYX
  is '是否有效';

prompt
prompt Creating table SPGKXT_AKSR
prompt ==========================
prompt
create table SPGKXT_AKSR
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  FYMC        VARCHAR2(100),
  XH          NUMBER,
  SKZL        VARCHAR2(200),
  SKRQ        DATE,
  SKDX        VARCHAR2(200),
  JE          NUMBER,
  JLRBS       NUMBER,
  JLR         VARCHAR2(40),
  JLSJ        DATE,
  SKYE        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_AKSR
  is '案款收入';
comment on column SPGKXT_AKSR.FYBM
  is '法院编码';
comment on column SPGKXT_AKSR.BH
  is '编号';
comment on column SPGKXT_AKSR.AJBS
  is '案件标识';
comment on column SPGKXT_AKSR.FYMC
  is '法院名称';
comment on column SPGKXT_AKSR.XH
  is '序号';
comment on column SPGKXT_AKSR.SKZL
  is '收款种类';
comment on column SPGKXT_AKSR.SKRQ
  is '收款日期';
comment on column SPGKXT_AKSR.SKDX
  is '收款对象';
comment on column SPGKXT_AKSR.JE
  is '金额';
comment on column SPGKXT_AKSR.JLRBS
  is '记录人标识';
comment on column SPGKXT_AKSR.JLR
  is '记录人';
comment on column SPGKXT_AKSR.JLSJ
  is '记录时间';
comment on column SPGKXT_AKSR.SKYE
  is '收款余额';

prompt
prompt Creating table SPGKXT_AKZX
prompt ==========================
prompt
create table SPGKXT_AKZX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  XH          NUMBER,
  ZKZL        VARCHAR2(100),
  ZKRQ        DATE,
  ZKSX        VARCHAR2(100),
  ZKJE        NUMBER,
  SQRBS       NUMBER,
  SQR         VARCHAR2(40),
  SQRQ        DATE,
  CZSPRBS     NUMBER,
  CZSPR       VARCHAR2(40),
  CZSFPZ      NUMBER,
  CZSPYJ      VARCHAR2(100),
  CZSPRQ      DATE,
  TCSPRBS     NUMBER,
  TCSPR       VARCHAR2(40),
  TCSFPZ      NUMBER,
  TCSPYJ      VARCHAR2(100),
  TCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(40),
  YCSFPZ      NUMBER,
  YCYJ        VARCHAR2(100),
  YCSPRQ      DATE,
  ZKYE        NUMBER,
  SFCL        NUMBER,
  QRR         VARCHAR2(200),
  QRRQ        DATE,
  ZFFS        VARCHAR2(100),
  SKRZH       VARCHAR2(100),
  QTZXR       VARCHAR2(100),
  QTFYZXR     VARCHAR2(100),
  BZXRSF      NUMBER,
  ZKLJJE      NUMBER,
  YJ          VARCHAR2(250),
  SM          VARCHAR2(200),
  ZKLY        VARCHAR2(100),
  SPRBS       NUMBER,
  SPR         VARCHAR2(40),
  SPYS        VARCHAR2(100),
  SFPZ        NUMBER,
  SPRQ        DATE,
  AKXZ        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_AKZX
  is '案款执行';
comment on column SPGKXT_AKZX.FYBM
  is '法院编码';
comment on column SPGKXT_AKZX.BH
  is '编号';
comment on column SPGKXT_AKZX.AJBS
  is '案件标识';
comment on column SPGKXT_AKZX.XH
  is '序号';
comment on column SPGKXT_AKZX.ZKZL
  is '支款种类';
comment on column SPGKXT_AKZX.ZKRQ
  is '支款日期';
comment on column SPGKXT_AKZX.ZKSX
  is '支款事项';
comment on column SPGKXT_AKZX.ZKJE
  is '支款金额';
comment on column SPGKXT_AKZX.SQRBS
  is '申请人标识';
comment on column SPGKXT_AKZX.SQR
  is '申请人';
comment on column SPGKXT_AKZX.SQRQ
  is '申请日期';
comment on column SPGKXT_AKZX.CZSPRBS
  is '处置审批人标识';
comment on column SPGKXT_AKZX.CZSPR
  is '处置审批人';
comment on column SPGKXT_AKZX.CZSFPZ
  is '处置是否批准';
comment on column SPGKXT_AKZX.CZSPYJ
  is '处置审批意见';
comment on column SPGKXT_AKZX.CZSPRQ
  is '处置审批日期';
comment on column SPGKXT_AKZX.TCSPRBS
  is '庭长审批人标识';
comment on column SPGKXT_AKZX.TCSPR
  is '庭长审批人';
comment on column SPGKXT_AKZX.TCSFPZ
  is '庭长是否批准';
comment on column SPGKXT_AKZX.TCSPYJ
  is '庭长审批意见';
comment on column SPGKXT_AKZX.TCSPRQ
  is '庭长审批日期';
comment on column SPGKXT_AKZX.YCSPRBS
  is '院长审批人标识';
comment on column SPGKXT_AKZX.YCSPR
  is '院长审批人';
comment on column SPGKXT_AKZX.YCSFPZ
  is '院长是否批准';
comment on column SPGKXT_AKZX.YCYJ
  is '院长意见';
comment on column SPGKXT_AKZX.YCSPRQ
  is '院长审批日期';
comment on column SPGKXT_AKZX.ZKYE
  is '支款余额';
comment on column SPGKXT_AKZX.SFCL
  is '是否处理';
comment on column SPGKXT_AKZX.QRR
  is '确认人';
comment on column SPGKXT_AKZX.QRRQ
  is '确认日期';
comment on column SPGKXT_AKZX.ZFFS
  is '支付方式';
comment on column SPGKXT_AKZX.SKRZH
  is '收款人账户';
comment on column SPGKXT_AKZX.QTZXR
  is '其它执行人';
comment on column SPGKXT_AKZX.QTFYZXR
  is '其它法院执行人';
comment on column SPGKXT_AKZX.BZXRSF
  is '被执行人收费';
comment on column SPGKXT_AKZX.ZKLJJE
  is '支款累计金额';
comment on column SPGKXT_AKZX.YJ
  is '意见';
comment on column SPGKXT_AKZX.SM
  is '说明';
comment on column SPGKXT_AKZX.ZKLY
  is '支款理由';
comment on column SPGKXT_AKZX.SPRBS
  is '审批人标识';
comment on column SPGKXT_AKZX.SPR
  is '审批人';
comment on column SPGKXT_AKZX.SPYS
  is '审批意思';
comment on column SPGKXT_AKZX.SFPZ
  is '是否批准';
comment on column SPGKXT_AKZX.SPRQ
  is '审批日期';
comment on column SPGKXT_AKZX.AKXZ
  is '案款性质';

prompt
prompt Creating table SPGKXT_CBRBGJL
prompt =============================
prompt
create table SPGKXT_CBRBGJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  BGQCBRBS    NUMBER,
  BGQCBR      VARCHAR2(40),
  BGHCBRBGH   NUMBER,
  BGHCBR      VARCHAR2(40),
  CLR         VARCHAR2(40),
  BGRQ        DATE,
  FYMC        VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_CBRBGJL
  is '承办人变更记录';
comment on column SPGKXT_CBRBGJL.FYBM
  is '法院编码';
comment on column SPGKXT_CBRBGJL.BH
  is '编号';
comment on column SPGKXT_CBRBGJL.AJBS
  is '案件标识';
comment on column SPGKXT_CBRBGJL.BGQCBRBS
  is '变更前承办人标识';
comment on column SPGKXT_CBRBGJL.BGQCBR
  is '变更前承办人';
comment on column SPGKXT_CBRBGJL.BGHCBRBGH
  is '变更后承办人bgh';
comment on column SPGKXT_CBRBGJL.BGHCBR
  is '变更后承办人';
comment on column SPGKXT_CBRBGJL.CLR
  is '处理人';
comment on column SPGKXT_CBRBGJL.BGRQ
  is '变更日期';

prompt
prompt Creating table SPGKXT_CPWS
prompt ==========================
prompt
create table SPGKXT_CPWS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  FYMC        VARCHAR2(100),
  AH          VARCHAR2(50),
  BT          VARCHAR2(250),
  FBSJ        DATE,
  SFYX        NUMBER,
  LAAY        VARCHAR2(100),
  DSR         VARCHAR2(200),
  PJSBZ       NUMBER,
  WSNR        BLOB,
  GKSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_CPWS
  is '裁判文书';
comment on column SPGKXT_CPWS.FYBM
  is '法院编码';
comment on column SPGKXT_CPWS.BH
  is '编号';
comment on column SPGKXT_CPWS.AJBS
  is '案件标识';
comment on column SPGKXT_CPWS.FYMC
  is '法院名称';
comment on column SPGKXT_CPWS.AH
  is '案号';
comment on column SPGKXT_CPWS.BT
  is '标题';
comment on column SPGKXT_CPWS.FBSJ
  is '发布时间';
comment on column SPGKXT_CPWS.SFYX
  is '是否有效';
comment on column SPGKXT_CPWS.LAAY
  is '立案案由';
comment on column SPGKXT_CPWS.DSR
  is '当事人';
comment on column SPGKXT_CPWS.PJSBZ
  is '判决书标志';
comment on column SPGKXT_CPWS.WSNR
  is '文书内容';
comment on column SPGKXT_CPWS.GKSJ
  is '公开时间';

prompt
prompt Creating table SPGKXT_DSRJBXX
prompt =============================
prompt
create table SPGKXT_DSRJBXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  XH          NUMBER,
  FYMC        VARCHAR2(100),
  SSDW        VARCHAR2(20),
  DSRMC       VARCHAR2(200),
  ZSD         VARCHAR2(250),
  FDDBR       VARCHAR2(40),
  SFZHM       VARCHAR2(30),
  CXMM        VARCHAR2(20),
  SFYX        NUMBER,
  YXZJ        VARCHAR2(40),
  CSRQ        DATE,
  XB          VARCHAR2(10),
  NL          NUMBER,
  MZ          VARCHAR2(40),
  GJ          VARCHAR2(40),
  DZ          VARCHAR2(250),
  SF          VARCHAR2(50),
  YZBM        VARCHAR2(20),
  XZYY        VARCHAR2(200),
  BHRXM       VARCHAR2(40),
  BHRLX       VARCHAR2(40),
  BHRDW       VARCHAR2(100),
  BHRSFZHM    VARCHAR2(30),
  BHRSF       VARCHAR2(50),
  BHRDZ       VARCHAR2(200),
  BZ          VARCHAR2(200),
  QTBHRXM     VARCHAR2(40),
  QTBHRDW     VARCHAR2(100),
  QTBHRLX     VARCHAR2(40),
  QTBHRSF     VARCHAR2(50),
  QTBHRSFZHM  VARCHAR2(30),
  QTBHRDH     VARCHAR2(20),
  QTBHRDZ     VARCHAR2(200),
  QYDM        VARCHAR2(50),
  ZJH         VARCHAR2(20),
  DWXZ        VARCHAR2(20),
  JSPQK       VARCHAR2(200),
  LXFS        VARCHAR2(200),
  ZY          VARCHAR2(100),
  JYCS        VARCHAR2(200),
  WHCD        VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_DSRJBXX
  is '当事人基本信息';
comment on column SPGKXT_DSRJBXX.FYBM
  is '法院编码';
comment on column SPGKXT_DSRJBXX.BH
  is '编号';
comment on column SPGKXT_DSRJBXX.AJBS
  is '案件标识';
comment on column SPGKXT_DSRJBXX.XH
  is '序号';
comment on column SPGKXT_DSRJBXX.FYMC
  is '法院名称';
comment on column SPGKXT_DSRJBXX.SSDW
  is '诉讼地位';
comment on column SPGKXT_DSRJBXX.DSRMC
  is '当事人名称';
comment on column SPGKXT_DSRJBXX.ZSD
  is '住所地';
comment on column SPGKXT_DSRJBXX.FDDBR
  is '法定代表人';
comment on column SPGKXT_DSRJBXX.SFZHM
  is '身份证号码';
comment on column SPGKXT_DSRJBXX.CXMM
  is '查询密码';
comment on column SPGKXT_DSRJBXX.SFYX
  is '是否有效';
comment on column SPGKXT_DSRJBXX.YXZJ
  is '有效证件';
comment on column SPGKXT_DSRJBXX.CSRQ
  is '出生日期';
comment on column SPGKXT_DSRJBXX.XB
  is '性别';
comment on column SPGKXT_DSRJBXX.NL
  is '年龄';
comment on column SPGKXT_DSRJBXX.MZ
  is '民族';
comment on column SPGKXT_DSRJBXX.GJ
  is '国籍';
comment on column SPGKXT_DSRJBXX.DZ
  is '地址';
comment on column SPGKXT_DSRJBXX.SF
  is '身份';
comment on column SPGKXT_DSRJBXX.YZBM
  is '邮政编码';
comment on column SPGKXT_DSRJBXX.XZYY
  is '行政议异';
comment on column SPGKXT_DSRJBXX.BHRXM
  is '辨护人姓名';
comment on column SPGKXT_DSRJBXX.BHRLX
  is '辩护人类型';
comment on column SPGKXT_DSRJBXX.BHRDW
  is '辩护人单位';
comment on column SPGKXT_DSRJBXX.BHRSFZHM
  is '辨护人身份证号码';
comment on column SPGKXT_DSRJBXX.BHRSF
  is '辨护人身份';
comment on column SPGKXT_DSRJBXX.BHRDZ
  is '辨护人地址';
comment on column SPGKXT_DSRJBXX.BZ
  is '备注';
comment on column SPGKXT_DSRJBXX.QTBHRXM
  is '其它辨护人姓名';
comment on column SPGKXT_DSRJBXX.QTBHRDW
  is '其它辨护人单位';
comment on column SPGKXT_DSRJBXX.QTBHRLX
  is '其它辨护人类型';
comment on column SPGKXT_DSRJBXX.QTBHRSF
  is '其它辨护人身份';
comment on column SPGKXT_DSRJBXX.QTBHRSFZHM
  is '其它辨护人身份证号码';
comment on column SPGKXT_DSRJBXX.QTBHRDH
  is '其它辨护人电话';
comment on column SPGKXT_DSRJBXX.QTBHRDZ
  is '其它辨护人地址';
comment on column SPGKXT_DSRJBXX.QYDM
  is '企业代码';
comment on column SPGKXT_DSRJBXX.ZJH
  is '证件号';
comment on column SPGKXT_DSRJBXX.DWXZ
  is '单位性质';
comment on column SPGKXT_DSRJBXX.JSPQK
  is '己审判情况';
comment on column SPGKXT_DSRJBXX.LXFS
  is '联系方式';
comment on column SPGKXT_DSRJBXX.ZY
  is '职业';
comment on column SPGKXT_DSRJBXX.JYCS
  is '教育措施';
comment on column SPGKXT_DSRJBXX.WHCD
  is '文化程度';

prompt
prompt Creating table SPGKXT_JDPM
prompt ==========================
prompt
create table SPGKXT_JDPM
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  WDBH        VARCHAR2(100),
  FYMC        VARCHAR2(100),
  AH          VARCHAR2(50),
  SQR         VARCHAR2(200),
  SQSX        BLOB,
  SLSJ        DATE,
  WTJGXZFS    VARCHAR2(50),
  JGMC        VARCHAR2(200),
  JGDH        VARCHAR2(50),
  WTSJ        DATE,
  SFYX        NUMBER,
  PMDD        VARCHAR2(200),
  WCSJ        DATE,
  PMJG        VARCHAR2(200),
  PMSJ        DATE,
  WTSX        BLOB,
  PMJGXZFS    VARCHAR2(50),
  PMJGMC      VARCHAR2(200),
  PMJGDH      VARCHAR2(50),
  PMWTRQ      DATE,
  YPDD        VARCHAR2(200),
  YPWTSJ      DATE,
  YPSJ        DATE,
  YPJG        VARCHAR2(100),
  YPJGDH      VARCHAR2(50),
  YPXZFS      VARCHAR2(50),
  YPGGSJ      DATE,
  EPDD        VARCHAR2(200),
  EPWTSJ      DATE,
  EPSJ        DATE,
  EPJG        VARCHAR2(100),
  EPJGDH      VARCHAR2(50),
  EPXZFS      VARCHAR2(50),
  EPGGSJ      DATE,
  SPWTSJ      DATE,
  SPSJ        DATE,
  SPDD        VARCHAR2(200),
  SPJG        VARCHAR2(100),
  SPDH        VARCHAR2(50),
  SPXZFS      VARCHAR2(50),
  SPGGSJ      DATE,
  JDLB        VARCHAR2(50),
  JDDW        VARCHAR2(200),
  JDFYF       VARCHAR2(200),
  QDSJ        DATE,
  QDSX        BLOB,
  SQRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_JDPM
  is '鉴定拍卖';
comment on column SPGKXT_JDPM.FYBM
  is '法院编码';
comment on column SPGKXT_JDPM.BH
  is '编号';
comment on column SPGKXT_JDPM.AJBS
  is '案件标识';
comment on column SPGKXT_JDPM.WDBH
  is '文档编号';
comment on column SPGKXT_JDPM.FYMC
  is '法院名称';
comment on column SPGKXT_JDPM.AH
  is '案号';
comment on column SPGKXT_JDPM.SQR
  is '申请人';
comment on column SPGKXT_JDPM.SQSX
  is '申请事项';
comment on column SPGKXT_JDPM.SLSJ
  is '授理时间';
comment on column SPGKXT_JDPM.WTJGXZFS
  is '委托机构选中方式';
comment on column SPGKXT_JDPM.JGMC
  is '机构名称';
comment on column SPGKXT_JDPM.JGDH
  is '机构电话';
comment on column SPGKXT_JDPM.WTSJ
  is '委托时间';
comment on column SPGKXT_JDPM.SFYX
  is '是否有效';
comment on column SPGKXT_JDPM.PMDD
  is '拍卖地点';
comment on column SPGKXT_JDPM.WCSJ
  is '完成时间';
comment on column SPGKXT_JDPM.PMJG
  is '拍卖机构';
comment on column SPGKXT_JDPM.PMSJ
  is '拍卖时间';
comment on column SPGKXT_JDPM.WTSX
  is '委托事项';
comment on column SPGKXT_JDPM.PMJGXZFS
  is '拍卖机构选择方式';
comment on column SPGKXT_JDPM.PMJGMC
  is '拍卖机构名称';
comment on column SPGKXT_JDPM.PMJGDH
  is '拍卖机构电话';
comment on column SPGKXT_JDPM.PMWTRQ
  is '拍卖委托日期';
comment on column SPGKXT_JDPM.YPDD
  is '一拍地点';
comment on column SPGKXT_JDPM.YPWTSJ
  is '一拍委托时间';
comment on column SPGKXT_JDPM.YPSJ
  is '一拍时间';
comment on column SPGKXT_JDPM.YPJG
  is '一拍结果';
comment on column SPGKXT_JDPM.YPJGDH
  is '一拍机构电话';
comment on column SPGKXT_JDPM.YPXZFS
  is '一拍选择方式';
comment on column SPGKXT_JDPM.YPGGSJ
  is '一拍公告时间';
comment on column SPGKXT_JDPM.EPDD
  is '二拍地点';
comment on column SPGKXT_JDPM.EPWTSJ
  is '二拍委托时间';
comment on column SPGKXT_JDPM.EPSJ
  is '二拍时间';
comment on column SPGKXT_JDPM.EPJG
  is '二拍结果';
comment on column SPGKXT_JDPM.EPJGDH
  is '二拍机构电话';
comment on column SPGKXT_JDPM.EPXZFS
  is '二拍先择方式';
comment on column SPGKXT_JDPM.EPGGSJ
  is '二拍公告时间';
comment on column SPGKXT_JDPM.SPWTSJ
  is '三拍委托时间';
comment on column SPGKXT_JDPM.SPSJ
  is '三拍时间';
comment on column SPGKXT_JDPM.SPDD
  is '三拍地点';
comment on column SPGKXT_JDPM.SPJG
  is '三拍结果';
comment on column SPGKXT_JDPM.SPDH
  is '三拍电话';
comment on column SPGKXT_JDPM.SPXZFS
  is '三拍选择方式';
comment on column SPGKXT_JDPM.SPGGSJ
  is '三拍公告时间';
comment on column SPGKXT_JDPM.JDLB
  is '鉴定类别';
comment on column SPGKXT_JDPM.JDDW
  is '鉴定单位';
comment on column SPGKXT_JDPM.JDFYF
  is '鉴定费用方';
comment on column SPGKXT_JDPM.QDSJ
  is '确定时间';
comment on column SPGKXT_JDPM.QDSX
  is '确定事项';
comment on column SPGKXT_JDPM.SQRQ
  is '申请日期';

prompt
prompt Creating table SPGKXT_KTGG
prompt ==========================
prompt
create table SPGKXT_KTGG
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  FYMC        VARCHAR2(100),
  AH          VARCHAR2(50),
  DSR         VARCHAR2(200),
  DD          VARCHAR2(200),
  SJ          DATE,
  SYCX        VARCHAR2(50),
  AY          VARCHAR2(100),
  SFYX        NUMBER,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  SJYBS       NUMBER,
  SJY         VARCHAR2(40),
  GKSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_KTGG
  is '开庭公告';
comment on column SPGKXT_KTGG.FYBM
  is '法院编码';
comment on column SPGKXT_KTGG.BH
  is '编号';
comment on column SPGKXT_KTGG.AJBS
  is '案件标识';
comment on column SPGKXT_KTGG.FYMC
  is '法院名称';
comment on column SPGKXT_KTGG.AH
  is '案号';
comment on column SPGKXT_KTGG.DSR
  is '当事人';
comment on column SPGKXT_KTGG.DD
  is '地点';
comment on column SPGKXT_KTGG.SJ
  is '时间';
comment on column SPGKXT_KTGG.SYCX
  is '适用程序';
comment on column SPGKXT_KTGG.AY
  is '案由';
comment on column SPGKXT_KTGG.SFYX
  is '是否有效';
comment on column SPGKXT_KTGG.CBRBS
  is '承办人标识';
comment on column SPGKXT_KTGG.CBR
  is '承办人';
comment on column SPGKXT_KTGG.SJYBS
  is '书记员标识';
comment on column SPGKXT_KTGG.SJY
  is '书纪员';
comment on column SPGKXT_KTGG.GKSJ
  is '公开时间';

prompt
prompt Creating table SPGKXT_PGXX
prompt ==========================
prompt
create table SPGKXT_PGXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  WDBH        VARCHAR2(100),
  FYMC        VARCHAR2(100),
  SQR         VARCHAR2(200),
  BZXR        VARCHAR2(200),
  CZZL        VARCHAR2(40),
  CZDX        VARCHAR2(200),
  CZSJ        DATE,
  CZJG        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_PGXX
  is '评估信息';
comment on column SPGKXT_PGXX.FYBM
  is '法院编码';
comment on column SPGKXT_PGXX.BH
  is '编号';
comment on column SPGKXT_PGXX.AJBS
  is '案件标识';
comment on column SPGKXT_PGXX.WDBH
  is '文档编号';
comment on column SPGKXT_PGXX.FYMC
  is '法院名称';
comment on column SPGKXT_PGXX.SQR
  is '申请人';
comment on column SPGKXT_PGXX.BZXR
  is '被执行人';
comment on column SPGKXT_PGXX.CZZL
  is '处置种类';
comment on column SPGKXT_PGXX.CZDX
  is '处置对象';
comment on column SPGKXT_PGXX.CZSJ
  is '处置时间';
comment on column SPGKXT_PGXX.CZJG
  is '处置结果';

prompt
prompt Creating table SPGKXT_PGXX2
prompt ===========================
prompt
create table SPGKXT_PGXX2
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  FYMC        VARCHAR2(100),
  AH          VARCHAR2(50),
  SQR         VARCHAR2(200),
  SQSX        VARCHAR2(250),
  SLSJ        DATE,
  XZFS        VARCHAR2(50),
  JGMC        VARCHAR2(250),
  DGDH        VARCHAR2(100),
  WTSJ        DATE,
  SFYX        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_PGXX2
  is '评估信息2';
comment on column SPGKXT_PGXX2.FYBM
  is '法院编码';
comment on column SPGKXT_PGXX2.BH
  is '编号';
comment on column SPGKXT_PGXX2.AJBS
  is '案件标识';
comment on column SPGKXT_PGXX2.FYMC
  is '法院名称';
comment on column SPGKXT_PGXX2.AH
  is '案号';
comment on column SPGKXT_PGXX2.SQR
  is '申请人';
comment on column SPGKXT_PGXX2.SQSX
  is '申请事项';
comment on column SPGKXT_PGXX2.SLSJ
  is '授理时间';
comment on column SPGKXT_PGXX2.XZFS
  is '选择方式';
comment on column SPGKXT_PGXX2.JGMC
  is '机构名称';
comment on column SPGKXT_PGXX2.DGDH
  is '电构电话';
comment on column SPGKXT_PGXX2.WTSJ
  is '委托时间';
comment on column SPGKXT_PGXX2.SFYX
  is '是否有效';

prompt
prompt Creating table SPGKXT_QZCS
prompt ==========================
prompt
create table SPGKXT_QZCS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  WDBH        VARCHAR2(100),
  FYMC        VARCHAR2(100),
  SQR         VARCHAR2(200),
  BZXR        VARCHAR2(200),
  CSLX        VARCHAR2(50),
  XZ          VARCHAR2(50),
  RY          VARCHAR2(50),
  CQSJ        DATE,
  JMSJ        DATE,
  XXCS        VARCHAR2(50),
  CSSJ        DATE,
  CSNR        VARCHAR2(250),
  CSMC        VARCHAR2(200),
  CCXS        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_QZCS
  is '强制措施';
comment on column SPGKXT_QZCS.FYBM
  is '法院编码';
comment on column SPGKXT_QZCS.BH
  is '编号';
comment on column SPGKXT_QZCS.AJBS
  is '案件标识';
comment on column SPGKXT_QZCS.WDBH
  is '文档编号';
comment on column SPGKXT_QZCS.FYMC
  is '法院名称';
comment on column SPGKXT_QZCS.SQR
  is '申请人';
comment on column SPGKXT_QZCS.BZXR
  is '被执行人';
comment on column SPGKXT_QZCS.CSLX
  is '措施类型';
comment on column SPGKXT_QZCS.XZ
  is '性质';
comment on column SPGKXT_QZCS.RY
  is '人员';
comment on column SPGKXT_QZCS.CQSJ
  is '采取时间';
comment on column SPGKXT_QZCS.JMSJ
  is '届满时间';
comment on column SPGKXT_QZCS.XXCS
  is '详细措施';
comment on column SPGKXT_QZCS.CSSJ
  is '措施时间';
comment on column SPGKXT_QZCS.CSNR
  is '措施内容';
comment on column SPGKXT_QZCS.CSMC
  is '措施名称';
comment on column SPGKXT_QZCS.CCXS
  is '财产详述';

prompt
prompt Creating table SPGKXT_TSSP
prompt ==========================
prompt
create table SPGKXT_TSSP
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  AH          VARCHAR2(50),
  SPMC        VARCHAR2(100),
  LJ          VARCHAR2(250),
  SFYX        NUMBER,
  GKSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_TSSP
  is '庭审视频';
comment on column SPGKXT_TSSP.FYBM
  is '法院编码';
comment on column SPGKXT_TSSP.BH
  is '编号';
comment on column SPGKXT_TSSP.AJBS
  is '案件标识';
comment on column SPGKXT_TSSP.AH
  is '案号';
comment on column SPGKXT_TSSP.SPMC
  is '视频名称';
comment on column SPGKXT_TSSP.LJ
  is '路径';
comment on column SPGKXT_TSSP.SFYX
  is '是否有效';
comment on column SPGKXT_TSSP.GKSJ
  is '公开时间';

prompt
prompt Creating table SPGKXT_ZXAK
prompt ==========================
prompt
create table SPGKXT_ZXAK
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  XH          NUMBER,
  LB          VARCHAR2(20),
  RQ          DATE,
  ZL          VARCHAR2(200),
  JE          NUMBER,
  SZR         VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SPGKXT_ZXAK
  is '执行案款';
comment on column SPGKXT_ZXAK.FYBM
  is '法院编码';
comment on column SPGKXT_ZXAK.BH
  is '编号';
comment on column SPGKXT_ZXAK.AJBS
  is '案件标识';
comment on column SPGKXT_ZXAK.XH
  is '序号';
comment on column SPGKXT_ZXAK.LB
  is '类别';
comment on column SPGKXT_ZXAK.RQ
  is '日期';
comment on column SPGKXT_ZXAK.ZL
  is '种类';
comment on column SPGKXT_ZXAK.JE
  is '金额';
comment on column SPGKXT_ZXAK.SZR
  is '收支人';

prompt
prompt Creating table SSFWXT_SSFWCCQK
prompt ==============================
prompt
create table SSFWXT_SSFWCCQK
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SSFWBH      NUMBER,
  CCZL        VARCHAR2(40),
  CCMC        VARCHAR2(100),
  CXSJ        DATE,
  CXJG        VARCHAR2(200),
  FWCQDZ      VARCHAR2(250),
  FWMJ        FLOAT,
  FWHZ        VARCHAR2(100),
  SFYDY       NUMBER,
  KHX         VARCHAR2(40),
  CKHM        VARCHAR2(40),
  CKZH        VARCHAR2(40),
  CKBZ        VARCHAR2(40),
  CKJE        NUMBER,
  DSRMC       VARCHAR2(200),
  GSDJH       VARCHAR2(50),
  ZCDZ        VARCHAR2(100),
  GSMC        VARCHAR2(200),
  JYRZK       VARCHAR2(200),
  CLMC        VARCHAR2(100),
  SYQR        VARCHAR2(50),
  CLDJH       VARCHAR2(50),
  DCFS        VARCHAR2(50),
  XSSS        NUMBER,
  PJZL        VARCHAR2(50),
  PJH         VARCHAR2(50),
  PJJE        NUMBER,
  QTCLCC      VARCHAR2(50),
  QTCC        VARCHAR2(50),
  BZ          VARCHAR2(200),
  JLRBS       NUMBER,
  JLR         VARCHAR2(40),
  JLRQ        DATE,
  JTCY        VARCHAR2(40),
  JTCYGZDW    VARCHAR2(200),
  JTCYLXDH    VARCHAR2(100),
  POXM        VARCHAR2(40),
  POCSRQ      DATE,
  PODW        VARCHAR2(200),
  POLXFS      VARCHAR2(100),
  POYGZSR     NUMBER,
  POQYNDSR    NUMBER,
  TZRXM       VARCHAR2(200),
  BTZR        VARCHAR2(200),
  TZJE        NUMBER,
  YSZQJE      NUMBER,
  ZWR         VARCHAR2(200),
  ZQDQRQ      DATE,
  CCSYR       VARCHAR2(200),
  CCXS        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWCCQK
  is '诉讼服务财产情况';
comment on column SSFWXT_SSFWCCQK.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWCCQK.BH
  is '编号';
comment on column SSFWXT_SSFWCCQK.SSFWBH
  is '诉讼服务编号';
comment on column SSFWXT_SSFWCCQK.CCZL
  is '财产种类';
comment on column SSFWXT_SSFWCCQK.CCMC
  is '财产名称';
comment on column SSFWXT_SSFWCCQK.CXSJ
  is '查询时间';
comment on column SSFWXT_SSFWCCQK.CXJG
  is '查询结果';
comment on column SSFWXT_SSFWCCQK.FWCQDZ
  is '房屋产权地址';
comment on column SSFWXT_SSFWCCQK.FWMJ
  is '房屋面积';
comment on column SSFWXT_SSFWCCQK.FWHZ
  is '房屋户主';
comment on column SSFWXT_SSFWCCQK.SFYDY
  is '是否已抵押';
comment on column SSFWXT_SSFWCCQK.KHX
  is '开户行';
comment on column SSFWXT_SSFWCCQK.CKHM
  is '存款户名';
comment on column SSFWXT_SSFWCCQK.CKZH
  is '存款账号';
comment on column SSFWXT_SSFWCCQK.CKBZ
  is '存款币种';
comment on column SSFWXT_SSFWCCQK.CKJE
  is '存款金额';
comment on column SSFWXT_SSFWCCQK.DSRMC
  is '当事人名称';
comment on column SSFWXT_SSFWCCQK.GSDJH
  is '工商登记号';
comment on column SSFWXT_SSFWCCQK.ZCDZ
  is '注册地址';
comment on column SSFWXT_SSFWCCQK.GSMC
  is '公司名称';
comment on column SSFWXT_SSFWCCQK.JYRZK
  is '经营人状况';
comment on column SSFWXT_SSFWCCQK.CLMC
  is '车辆名称';
comment on column SSFWXT_SSFWCCQK.SYQR
  is '所有权人';
comment on column SSFWXT_SSFWCCQK.CLDJH
  is '车辆登记号';
comment on column SSFWXT_SSFWCCQK.DCFS
  is '调查方式';
comment on column SSFWXT_SSFWCCQK.XSSS
  is '线索属实';
comment on column SSFWXT_SSFWCCQK.PJZL
  is '票据种类';
comment on column SSFWXT_SSFWCCQK.PJH
  is '票据号';
comment on column SSFWXT_SSFWCCQK.PJJE
  is '票据金额';
comment on column SSFWXT_SSFWCCQK.QTCLCC
  is '其他车辆财产';
comment on column SSFWXT_SSFWCCQK.QTCC
  is '其他财产';
comment on column SSFWXT_SSFWCCQK.BZ
  is '备注';
comment on column SSFWXT_SSFWCCQK.JLRBS
  is '记录人标识';
comment on column SSFWXT_SSFWCCQK.JLR
  is '记录人';
comment on column SSFWXT_SSFWCCQK.JLRQ
  is '记录日期';
comment on column SSFWXT_SSFWCCQK.JTCY
  is '家庭成员';
comment on column SSFWXT_SSFWCCQK.JTCYGZDW
  is '家庭成员工作单位';
comment on column SSFWXT_SSFWCCQK.JTCYLXDH
  is '家庭成员联系电话';
comment on column SSFWXT_SSFWCCQK.POXM
  is '配偶姓名';
comment on column SSFWXT_SSFWCCQK.POCSRQ
  is '配偶出生日期';
comment on column SSFWXT_SSFWCCQK.PODW
  is '配偶单位';
comment on column SSFWXT_SSFWCCQK.POLXFS
  is '配偶联系方式';
comment on column SSFWXT_SSFWCCQK.POYGZSR
  is '配偶月工资收入';
comment on column SSFWXT_SSFWCCQK.POQYNDSR
  is '配偶前一年度收入';
comment on column SSFWXT_SSFWCCQK.TZRXM
  is '投资人姓名';
comment on column SSFWXT_SSFWCCQK.BTZR
  is '被投资人';
comment on column SSFWXT_SSFWCCQK.TZJE
  is '投资金额';
comment on column SSFWXT_SSFWCCQK.YSZQJE
  is '应收债权金额';
comment on column SSFWXT_SSFWCCQK.ZWR
  is '债务人';
comment on column SSFWXT_SSFWCCQK.ZQDQRQ
  is '债权到期日期';
comment on column SSFWXT_SSFWCCQK.CCSYR
  is '财产所有人';
comment on column SSFWXT_SSFWCCQK.CCXS
  is '财产详述';

prompt
prompt Creating table SSFWXT_SSFWCLQKXX
prompt ================================
prompt
create table SSFWXT_SSFWCLQKXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SSFWBH      NUMBER,
  JDBH        NUMBER,
  JDMC        VARCHAR2(100),
  FSRBS       NUMBER,
  FSR         VARCHAR2(40),
  FSSJ        DATE,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40),
  JSSJ        DATE,
  FSBZ        NUMBER,
  XH          NUMBER,
  SFJJ        NUMBER,
  SFSC        NUMBER,
  SFCL        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWCLQKXX
  is '诉讼服务处理情况信息';
comment on column SSFWXT_SSFWCLQKXX.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWCLQKXX.BH
  is '编号';
comment on column SSFWXT_SSFWCLQKXX.SSFWBH
  is '诉讼服务编号';
comment on column SSFWXT_SSFWCLQKXX.JDBH
  is '节点标号';
comment on column SSFWXT_SSFWCLQKXX.JDMC
  is '节点名称';
comment on column SSFWXT_SSFWCLQKXX.FSRBS
  is '发送人标识';
comment on column SSFWXT_SSFWCLQKXX.FSR
  is '发送人';
comment on column SSFWXT_SSFWCLQKXX.FSSJ
  is '发送时间';
comment on column SSFWXT_SSFWCLQKXX.JSRBS
  is '接收人标识';
comment on column SSFWXT_SSFWCLQKXX.JSR
  is '接收人';
comment on column SSFWXT_SSFWCLQKXX.JSSJ
  is '接收时间';
comment on column SSFWXT_SSFWCLQKXX.FSBZ
  is '发送标志';
comment on column SSFWXT_SSFWCLQKXX.XH
  is '序号';
comment on column SSFWXT_SSFWCLQKXX.SFJJ
  is '是否紧急';
comment on column SSFWXT_SSFWCLQKXX.SFSC
  is '是否收藏';
comment on column SSFWXT_SSFWCLQKXX.SFCL
  is '是否处理';

prompt
prompt Creating table SSFWXT_SSFWCLQKXX2
prompt =================================
prompt
create table SSFWXT_SSFWCLQKXX2
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XH          NUMBER,
  SSDW        VARCHAR2(40),
  SFZJZL      VARCHAR2(40),
  SFZJHM      VARCHAR2(30),
  DSRLX       VARCHAR2(20),
  NL          NUMBER,
  MC          VARCHAR2(250),
  DZ          VARCHAR2(250),
  XB          VARCHAR2(10),
  MZ          VARCHAR2(50),
  CSRQ        DATE,
  WHCD        VARCHAR2(40),
  ZZMM        VARCHAR2(40),
  LXDH        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWCLQKXX2
  is '诉讼服务处理情况信息2';
comment on column SSFWXT_SSFWCLQKXX2.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWCLQKXX2.BH
  is '编号';
comment on column SSFWXT_SSFWCLQKXX2.XH
  is '序号';
comment on column SSFWXT_SSFWCLQKXX2.SSDW
  is '诉讼地位';
comment on column SSFWXT_SSFWCLQKXX2.SFZJZL
  is '身份证件种类';
comment on column SSFWXT_SSFWCLQKXX2.SFZJHM
  is '身份证件号码';
comment on column SSFWXT_SSFWCLQKXX2.DSRLX
  is '当事人类型';
comment on column SSFWXT_SSFWCLQKXX2.NL
  is '年龄';
comment on column SSFWXT_SSFWCLQKXX2.MC
  is '名称';
comment on column SSFWXT_SSFWCLQKXX2.DZ
  is '地址';
comment on column SSFWXT_SSFWCLQKXX2.XB
  is '性别';
comment on column SSFWXT_SSFWCLQKXX2.MZ
  is '名族';
comment on column SSFWXT_SSFWCLQKXX2.CSRQ
  is '出生日期';
comment on column SSFWXT_SSFWCLQKXX2.WHCD
  is '文化程度';
comment on column SSFWXT_SSFWCLQKXX2.ZZMM
  is '政治面貌';
comment on column SSFWXT_SSFWCLQKXX2.LXDH
  is '联系电话';

prompt
prompt Creating table SSFWXT_SSFWCLQKXX3
prompt =================================
prompt
create table SSFWXT_SSFWCLQKXX3
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SSFWBH      NUMBER,
  CLQK        VARCHAR2(250),
  WCLYY       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWCLQKXX3
  is '诉讼服务处理情况信息3';
comment on column SSFWXT_SSFWCLQKXX3.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWCLQKXX3.BH
  is '编号';
comment on column SSFWXT_SSFWCLQKXX3.SSFWBH
  is '诉讼服务编号';
comment on column SSFWXT_SSFWCLQKXX3.CLQK
  is '处理情况';
comment on column SSFWXT_SSFWCLQKXX3.WCLYY
  is '未处理原因';

prompt
prompt Creating table SSFWXT_SSFWLCPZXX
prompt ================================
prompt
create table SSFWXT_SSFWLCPZXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SSFWLBID    NUMBER,
  SSFWLB      VARCHAR2(40),
  LCMC        VARCHAR2(50),
  LCJG        VARCHAR2(20),
  TS          NUMBER,
  KSLCMC      VARCHAR2(50),
  JSLCMC      VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWLCPZXX
  is '诉讼服务流程配置信息';
comment on column SSFWXT_SSFWLCPZXX.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWLCPZXX.BH
  is '编号';
comment on column SSFWXT_SSFWLCPZXX.SSFWLBID
  is '诉讼服务类别ID';
comment on column SSFWXT_SSFWLCPZXX.SSFWLB
  is '诉讼服务类别';
comment on column SSFWXT_SSFWLCPZXX.LCMC
  is '流程名称';
comment on column SSFWXT_SSFWLCPZXX.LCJG
  is '流程结果';
comment on column SSFWXT_SSFWLCPZXX.TS
  is '天数';
comment on column SSFWXT_SSFWLCPZXX.KSLCMC
  is '开始流程名称';
comment on column SSFWXT_SSFWLCPZXX.JSLCMC
  is '结束流程名称';

prompt
prompt Creating table SSFWXT_SSFWLCRZ
prompt ==============================
prompt
create table SSFWXT_SSFWLCRZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  LCBH        NUMBER,
  LCMC        VARCHAR2(50),
  LCTS        NUMBER,
  KSSJ        DATE,
  JSSJ        DATE,
  YJRBS       NUMBER,
  YJR         VARCHAR2(40),
  YJBM        VARCHAR2(50),
  BLBM        VARCHAR2(50),
  BLRBS       NUMBER,
  BLR         VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWLCRZ
  is '诉讼服务流程日志';
comment on column SSFWXT_SSFWLCRZ.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWLCRZ.BH
  is '编号';
comment on column SSFWXT_SSFWLCRZ.LCBH
  is '流程编号';
comment on column SSFWXT_SSFWLCRZ.LCMC
  is '流程名称';
comment on column SSFWXT_SSFWLCRZ.LCTS
  is '流程天数';
comment on column SSFWXT_SSFWLCRZ.KSSJ
  is '开始时间';
comment on column SSFWXT_SSFWLCRZ.JSSJ
  is '结束时间';
comment on column SSFWXT_SSFWLCRZ.YJRBS
  is '移交人标识';
comment on column SSFWXT_SSFWLCRZ.YJR
  is '移交人';
comment on column SSFWXT_SSFWLCRZ.YJBM
  is '移交部门';
comment on column SSFWXT_SSFWLCRZ.BLBM
  is '办理部门';
comment on column SSFWXT_SSFWLCRZ.BLRBS
  is '办理人标识';
comment on column SSFWXT_SSFWLCRZ.BLR
  is '办理人';

prompt
prompt Creating table SSFWXT_SSFWQZJL
prompt ==============================
prompt
create table SSFWXT_SSFWQZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SSFWBH      NUMBER,
  QZNR        BLOB,
  CJRQ        DATE,
  XGRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWQZJL
  is '诉讼服务签字记录';
comment on column SSFWXT_SSFWQZJL.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWQZJL.BH
  is '编号';
comment on column SSFWXT_SSFWQZJL.SSFWBH
  is '诉讼服务编号';
comment on column SSFWXT_SSFWQZJL.QZNR
  is '签字内容';
comment on column SSFWXT_SSFWQZJL.CJRQ
  is '创建日期';
comment on column SSFWXT_SSFWQZJL.XGRQ
  is '修改日期';

prompt
prompt Creating table SSFWXT_SSFWRZXX
prompt ==============================
prompt
create table SSFWXT_SSFWRZXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SSFWBH      NUMBER,
  KSRQ        DATE,
  JSRQ        DATE,
  BM          VARCHAR2(50),
  RYBS        NUMBER,
  XM          VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWRZXX
  is '诉讼服务日志信息';
comment on column SSFWXT_SSFWRZXX.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWRZXX.BH
  is '编号';
comment on column SSFWXT_SSFWRZXX.SSFWBH
  is '诉讼服务编号';
comment on column SSFWXT_SSFWRZXX.KSRQ
  is '开始日期';
comment on column SSFWXT_SSFWRZXX.JSRQ
  is '结束日期';
comment on column SSFWXT_SSFWRZXX.BM
  is '部门';
comment on column SSFWXT_SSFWRZXX.RYBS
  is '人员标识';
comment on column SSFWXT_SSFWRZXX.XM
  is '姓名';

prompt
prompt Creating table SSFWXT_SSFWSDJL
prompt ==============================
prompt
create table SSFWXT_SSFWSDJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SSFWBH      NUMBER,
  WSMC        VARCHAR2(250),
  BSDR        VARCHAR2(250),
  BSDRLXDH    VARCHAR2(100),
  SDFS        VARCHAR2(30),
  QZR         VARCHAR2(40),
  SDRQ        DATE,
  SDRBS       NUMBER,
  SDR         VARCHAR2(40),
  SDDD        VARCHAR2(250),
  SDJG        VARCHAR2(40),
  WSDLY       VARCHAR2(200),
  HZLB        VARCHAR2(20),
  SDCS        NUMBER,
  SDWJFS      NUMBER,
  LQQX        DATE,
  SMWJMC      VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWSDJL
  is '诉讼服务送达记录';
comment on column SSFWXT_SSFWSDJL.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWSDJL.BH
  is '编号';
comment on column SSFWXT_SSFWSDJL.SSFWBH
  is '诉讼服务编号';
comment on column SSFWXT_SSFWSDJL.WSMC
  is '文书名称';
comment on column SSFWXT_SSFWSDJL.BSDR
  is '被送达人';
comment on column SSFWXT_SSFWSDJL.BSDRLXDH
  is '被送达人联系电话';
comment on column SSFWXT_SSFWSDJL.SDFS
  is '送达方式';
comment on column SSFWXT_SSFWSDJL.QZR
  is '签字人';
comment on column SSFWXT_SSFWSDJL.SDRQ
  is '送达日期';
comment on column SSFWXT_SSFWSDJL.SDRBS
  is '送达人标识';
comment on column SSFWXT_SSFWSDJL.SDR
  is '送达人';
comment on column SSFWXT_SSFWSDJL.SDDD
  is '送达地点';
comment on column SSFWXT_SSFWSDJL.SDJG
  is '送达结果';
comment on column SSFWXT_SSFWSDJL.WSDLY
  is '未送达理由';
comment on column SSFWXT_SSFWSDJL.HZLB
  is '回证类别';
comment on column SSFWXT_SSFWSDJL.SDCS
  is '送达次数';
comment on column SSFWXT_SSFWSDJL.SDWJFS
  is '送达文件分数';
comment on column SSFWXT_SSFWSDJL.LQQX
  is '领取期限';
comment on column SSFWXT_SSFWSDJL.SMWJMC
  is '扫描文件名称';

prompt
prompt Creating table SSFWXT_SSFWST
prompt ============================
prompt
create table SSFWXT_SSFWST
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SSFWBH      NUMBER,
  XH          NUMBER,
  WJMC        VARCHAR2(255),
  STWJM       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWST
  is '诉讼服务实体';
comment on column SSFWXT_SSFWST.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWST.SSFWBH
  is '诉讼服务编号';
comment on column SSFWXT_SSFWST.XH
  is '序号';
comment on column SSFWXT_SSFWST.WJMC
  is '文件名称';
comment on column SSFWXT_SSFWST.STWJM
  is '实体文件名';

prompt
prompt Creating table SSFWXT_SSFWWWCXAJDSRXX
prompt =====================================
prompt
create table SSFWXT_SSFWWWCXAJDSRXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  DSRXH       NUMBER,
  LX          VARCHAR2(20),
  MC          VARCHAR2(200),
  SSDW        VARCHAR2(50),
  CXBM        VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWWWCXAJDSRXX
  is '诉讼服务外网查询案件当事人信息';
comment on column SSFWXT_SSFWWWCXAJDSRXX.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWWWCXAJDSRXX.BH
  is '编号';
comment on column SSFWXT_SSFWWWCXAJDSRXX.AJBS
  is '案件标识';
comment on column SSFWXT_SSFWWWCXAJDSRXX.DSRXH
  is '当事人序号';
comment on column SSFWXT_SSFWWWCXAJDSRXX.LX
  is '类型';
comment on column SSFWXT_SSFWWWCXAJDSRXX.MC
  is '名称';
comment on column SSFWXT_SSFWWWCXAJDSRXX.SSDW
  is '诉讼地位';
comment on column SSFWXT_SSFWWWCXAJDSRXX.CXBM
  is '查询编码';

prompt
prompt Creating table SSFWXT_SSFWWWCXAJJBXX
prompt ====================================
prompt
create table SSFWXT_SSFWWWCXAJJBXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  AJBS        NUMBER,
  NH          NUMBER,
  AZ          VARCHAR2(20),
  HS          NUMBER,
  AJLB        VARCHAR2(20),
  LAAY        VARCHAR2(100),
  LARQ        DATE,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  DSR         VARCHAR2(200),
  CBSPT       VARCHAR2(50),
  JAAY        VARCHAR2(100),
  JARQ        DATE,
  JABZ        NUMBER,
  JDWJ        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWWWCXAJJBXX
  is '诉讼服务外网查询案件基本信息';
comment on column SSFWXT_SSFWWWCXAJJBXX.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWWWCXAJJBXX.AJBS
  is '案件标识';
comment on column SSFWXT_SSFWWWCXAJJBXX.NH
  is '年号';
comment on column SSFWXT_SSFWWWCXAJJBXX.AZ
  is '案字';
comment on column SSFWXT_SSFWWWCXAJJBXX.HS
  is '号数';
comment on column SSFWXT_SSFWWWCXAJJBXX.AJLB
  is '案件类别';
comment on column SSFWXT_SSFWWWCXAJJBXX.LAAY
  is '立案案由';
comment on column SSFWXT_SSFWWWCXAJJBXX.LARQ
  is '立案日期';
comment on column SSFWXT_SSFWWWCXAJJBXX.CBRBS
  is '承办人标识';
comment on column SSFWXT_SSFWWWCXAJJBXX.CBR
  is '承办人';
comment on column SSFWXT_SSFWWWCXAJJBXX.DSR
  is '当事人';
comment on column SSFWXT_SSFWWWCXAJJBXX.CBSPT
  is '承办审判庭';
comment on column SSFWXT_SSFWWWCXAJJBXX.JAAY
  is '结案案由';
comment on column SSFWXT_SSFWWWCXAJJBXX.JARQ
  is '结案日期';
comment on column SSFWXT_SSFWWWCXAJJBXX.JABZ
  is '结案标志';
comment on column SSFWXT_SSFWWWCXAJJBXX.JDWJ
  is '节点完结';

prompt
prompt Creating table SSFWXT_SSFWWWCXAJJDJDXX
prompt ======================================
prompt
create table SSFWXT_SSFWWWCXAJJDJDXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JDBH        NUMBER,
  JDDM        VARCHAR2(20),
  JDMC        VARCHAR2(50),
  XSXX        VARCHAR2(250),
  XXCXDM      BLOB,
  JDXSCXDM    BLOB,
  BZ          VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWWWCXAJJDJDXX
  is '诉讼服务外网查询案件进度节点信息';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.JDBH
  is '节点编号';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.JDDM
  is '节点代码';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.JDMC
  is '节点名称';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.XSXX
  is '显示信息';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.XXCXDM
  is '信息查询代码';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.JDXSCXDM
  is '节点显示查询代码';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.BZ
  is '备注';

prompt
prompt Creating table SSFWXT_SSFWWWCXAJJDJL
prompt ====================================
prompt
create table SSFWXT_SSFWWWCXAJJDJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  JDBH        NUMBER,
  JDMC        VARCHAR2(50),
  JDXH        NUMBER,
  JDXX        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWWWCXAJJDJL
  is '诉讼服务外网查询案件进度记录';
comment on column SSFWXT_SSFWWWCXAJJDJL.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWWWCXAJJDJL.BH
  is '编号';
comment on column SSFWXT_SSFWWWCXAJJDJL.AJBS
  is '案件标识';
comment on column SSFWXT_SSFWWWCXAJJDJL.JDBH
  is '节点编号';
comment on column SSFWXT_SSFWWWCXAJJDJL.JDMC
  is '节点名称';
comment on column SSFWXT_SSFWWWCXAJJDJL.JDXH
  is '节点序号';
comment on column SSFWXT_SSFWWWCXAJJDJL.JDXX
  is '节点信息';

prompt
prompt Creating table SSFWXT_SSFWWWCXKTXX
prompt ==================================
prompt
create table SSFWXT_SSFWWWCXKTXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  AH          VARCHAR2(50),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  SJYBS       NUMBER,
  SJY         VARCHAR2(40),
  HYTCY       VARCHAR2(200),
  AY          VARCHAR2(50),
  DSR         VARCHAR2(200),
  KTSJ        DATE,
  KTDD        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWWWCXKTXX
  is '诉讼服务外网查询开庭信息';
comment on column SSFWXT_SSFWWWCXKTXX.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWWWCXKTXX.BH
  is '编号';
comment on column SSFWXT_SSFWWWCXKTXX.AJBS
  is '案件标识';
comment on column SSFWXT_SSFWWWCXKTXX.AH
  is '案号';
comment on column SSFWXT_SSFWWWCXKTXX.CBRBS
  is '承办人标识';
comment on column SSFWXT_SSFWWWCXKTXX.CBR
  is '承办人';
comment on column SSFWXT_SSFWWWCXKTXX.SJYBS
  is '书记员标识';
comment on column SSFWXT_SSFWWWCXKTXX.SJY
  is '书记员';
comment on column SSFWXT_SSFWWWCXKTXX.HYTCY
  is '合议庭成员';
comment on column SSFWXT_SSFWWWCXKTXX.AY
  is '案由';
comment on column SSFWXT_SSFWWWCXKTXX.DSR
  is '当事人';
comment on column SSFWXT_SSFWWWCXKTXX.KTSJ
  is '开庭时间';
comment on column SSFWXT_SSFWWWCXKTXX.KTDD
  is '开庭地点';

prompt
prompt Creating table SSFWXT_SSFWWWLYSY
prompt ================================
prompt
create table SSFWXT_SSFWWWLYSY
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  XM          VARCHAR2(100),
  BT          VARCHAR2(100),
  LYNR        BLOB,
  HFNR        BLOB,
  JLSJ        DATE,
  HFSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWWWLYSY
  is '诉讼服务外网留言、释疑';
comment on column SSFWXT_SSFWWWLYSY.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWWWLYSY.BH
  is '编号';
comment on column SSFWXT_SSFWWWLYSY.AJBS
  is '案件标识';
comment on column SSFWXT_SSFWWWLYSY.XM
  is '姓名';
comment on column SSFWXT_SSFWWWLYSY.BT
  is '标题';
comment on column SSFWXT_SSFWWWLYSY.LYNR
  is '留言内容';
comment on column SSFWXT_SSFWWWLYSY.HFNR
  is '回复内容';
comment on column SSFWXT_SSFWWWLYSY.JLSJ
  is '建立时间';
comment on column SSFWXT_SSFWWWLYSY.HFSJ
  is '回复时间';

prompt
prompt Creating table SSFWXT_SSFWWWYYLASQ
prompt ==================================
prompt
create table SSFWXT_SSFWWWYYLASQ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SQBH        NUMBER,
  YYBH        VARCHAR2(50),
  YYMM        VARCHAR2(20),
  LXYX        VARCHAR2(50),
  LXDH        VARCHAR2(50),
  SSQQ        BLOB,
  SSYLY       BLOB,
  YYLASJ      DATE,
  YYLAHF      BLOB,
  JLSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWWWYYLASQ
  is '诉讼服务外网预约立案申请';
comment on column SSFWXT_SSFWWWYYLASQ.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWWWYYLASQ.SQBH
  is '申请编号';
comment on column SSFWXT_SSFWWWYYLASQ.YYBH
  is '预约编号';
comment on column SSFWXT_SSFWWWYYLASQ.YYMM
  is '预约密码';
comment on column SSFWXT_SSFWWWYYLASQ.LXYX
  is '联系邮箱';
comment on column SSFWXT_SSFWWWYYLASQ.LXDH
  is '联系电话';
comment on column SSFWXT_SSFWWWYYLASQ.SSQQ
  is '诉讼请求';
comment on column SSFWXT_SSFWWWYYLASQ.SSYLY
  is '事实与理由';
comment on column SSFWXT_SSFWWWYYLASQ.YYLASJ
  is '预约立案时间';
comment on column SSFWXT_SSFWWWYYLASQ.YYLAHF
  is '预约立案回复';
comment on column SSFWXT_SSFWWWYYLASQ.JLSJ
  is '建立时间';

prompt
prompt Creating table SSFWXT_SSFWWWYYLASSRYGC
prompt ======================================
prompt
create table SSFWXT_SSFWWWYYLASSRYGC
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SQBH        NUMBER,
  SSDW        VARCHAR2(40),
  SFZJZL      VARCHAR2(40),
  SFZJHM      VARCHAR2(30),
  DSRLX       VARCHAR2(20),
  NL          NUMBER,
  MC          VARCHAR2(250),
  DZ          VARCHAR2(250),
  XB          VARCHAR2(10),
  MZ          VARCHAR2(50),
  CSRQ        DATE,
  WHCD        VARCHAR2(40),
  ZZMM        VARCHAR2(40),
  LXDH        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWWWYYLASSRYGC
  is '诉讼服务外网预约立案诉讼人员构成';
comment on column SSFWXT_SSFWWWYYLASSRYGC.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWWWYYLASSRYGC.BH
  is '编号';
comment on column SSFWXT_SSFWWWYYLASSRYGC.SQBH
  is '申请编号';
comment on column SSFWXT_SSFWWWYYLASSRYGC.SSDW
  is '诉讼地位';
comment on column SSFWXT_SSFWWWYYLASSRYGC.SFZJZL
  is '身份证件种类';
comment on column SSFWXT_SSFWWWYYLASSRYGC.SFZJHM
  is '身份证件号码';
comment on column SSFWXT_SSFWWWYYLASSRYGC.DSRLX
  is '当事人类型';
comment on column SSFWXT_SSFWWWYYLASSRYGC.NL
  is '年龄';
comment on column SSFWXT_SSFWWWYYLASSRYGC.MC
  is '名称';
comment on column SSFWXT_SSFWWWYYLASSRYGC.DZ
  is '地址';
comment on column SSFWXT_SSFWWWYYLASSRYGC.XB
  is '性别';
comment on column SSFWXT_SSFWWWYYLASSRYGC.MZ
  is '名族';
comment on column SSFWXT_SSFWWWYYLASSRYGC.CSRQ
  is '出生日期';
comment on column SSFWXT_SSFWWWYYLASSRYGC.WHCD
  is '文化程度';
comment on column SSFWXT_SSFWWWYYLASSRYGC.ZZMM
  is '政治面貌';
comment on column SSFWXT_SSFWWWYYLASSRYGC.LXDH
  is '联系电话';

prompt
prompt Creating table SSFWXT_SSFWWWYYLAZJCL
prompt ====================================
prompt
create table SSFWXT_SSFWWWYYLAZJCL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SQBH        NUMBER,
  WJMC        VARCHAR2(250),
  BT          VARCHAR2(100),
  SM          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWWWYYLAZJCL
  is '诉讼服务外网预约立案证据材料';
comment on column SSFWXT_SSFWWWYYLAZJCL.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWWWYYLAZJCL.BH
  is '编号';
comment on column SSFWXT_SSFWWWYYLAZJCL.SQBH
  is '申请编号';
comment on column SSFWXT_SSFWWWYYLAZJCL.WJMC
  is '文件名称';
comment on column SSFWXT_SSFWWWYYLAZJCL.BT
  is '标题';
comment on column SSFWXT_SSFWWWYYLAZJCL.SM
  is '说明';

prompt
prompt Creating table SSFWXT_SSFWYQSQ
prompt ==============================
prompt
create table SSFWXT_SSFWYQSQ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SSFWBH      NUMBER,
  SQYQRBS     NUMBER,
  SQYQR       VARCHAR2(40),
  YQYY        BLOB,
  YQTS        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWYQSQ
  is '诉讼服务延期申请';
comment on column SSFWXT_SSFWYQSQ.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWYQSQ.BH
  is '编号';
comment on column SSFWXT_SSFWYQSQ.SSFWBH
  is '诉讼服务编号';
comment on column SSFWXT_SSFWYQSQ.SQYQRBS
  is '申请延期人标识';
comment on column SSFWXT_SSFWYQSQ.SQYQR
  is '申请延期人';
comment on column SSFWXT_SSFWYQSQ.YQYY
  is '延期原因';
comment on column SSFWXT_SSFWYQSQ.YQTS
  is '延期天数';

prompt
prompt Creating table SSFWXT_SSFWYSLZJL
prompt ================================
prompt
create table SSFWXT_SSFWYSLZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SSFWBH      NUMBER,
  YSRBS       NUMBER,
  YSR         VARCHAR2(40),
  YSLCNR      VARCHAR2(200),
  YSRQ        DATE,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40),
  JSRQ        DATE,
  YSFS        NUMBER,
  GLLCNR      VARCHAR2(200),
  THSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWYSLZJL
  is '诉讼服务移送流转记录';
comment on column SSFWXT_SSFWYSLZJL.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWYSLZJL.BH
  is '编号';
comment on column SSFWXT_SSFWYSLZJL.SSFWBH
  is '诉讼服务编号';
comment on column SSFWXT_SSFWYSLZJL.YSRBS
  is '移送人标识';
comment on column SSFWXT_SSFWYSLZJL.YSR
  is '移送人';
comment on column SSFWXT_SSFWYSLZJL.YSLCNR
  is '移送流程内容';
comment on column SSFWXT_SSFWYSLZJL.YSRQ
  is '移送日期';
comment on column SSFWXT_SSFWYSLZJL.JSRBS
  is '接收人标识';
comment on column SSFWXT_SSFWYSLZJL.JSR
  is '接收人';
comment on column SSFWXT_SSFWYSLZJL.JSRQ
  is '接收日期';
comment on column SSFWXT_SSFWYSLZJL.YSFS
  is '移送方式';
comment on column SSFWXT_SSFWYSLZJL.GLLCNR
  is '关联流程内容';
comment on column SSFWXT_SSFWYSLZJL.THSJ
  is '退回时间';

prompt
prompt Creating table SSFWXT_SSFWZTXX
prompt ==============================
prompt
create table SSFWXT_SSFWZTXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BHBH        NUMBER,
  SSFWLBBS    NUMBER,
  SSFWLB      VARCHAR2(100),
  BH          VARCHAR2(100),
  BHN         NUMBER,
  BHZ         VARCHAR2(20),
  BHHS        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  SQRQ        DATE,
  SJAJAY      VARCHAR2(100),
  SJAJAYBM    VARCHAR2(30),
  DCSX        BLOB,
  SJSYDSR     BLOB,
  SFWT        NUMBER,
  WTRQ        DATE,
  WTR         VARCHAR2(100),
  BZ          BLOB,
  DQSPRBS     NUMBER,
  DQSPRMC     VARCHAR2(40),
  YBJQX       DATE,
  SJAJCBRBS   NUMBER,
  SJAJCBR     VARCHAR2(40),
  SSFWCBRBS   NUMBER,
  SSFWCBR     VARCHAR2(40),
  CBBM        VARCHAR2(50),
  YQTS        NUMBER,
  SQR         BLOB,
  BSQR        BLOB,
  SJAH        VARCHAR2(50),
  WTDL        VARCHAR2(40),
  WTXL        VARCHAR2(40),
  WSQK        NUMBER,
  BQCCMC      BLOB,
  DBCCMC      BLOB,
  YSAJCBRRQ   DATE,
  BLJSBZ      NUMBER,
  BJRQ        DATE,
  BJFS        VARCHAR2(40),
  DQZT        VARCHAR2(40),
  SFTQGD      NUMBER,
  TQGDRQ      DATE,
  LCMC        VARCHAR2(100),
  SFSCBJ      NUMBER,
  GDH         VARCHAR2(40),
  GDSJ        DATE,
  CFDD        VARCHAR2(100),
  SWH         VARCHAR2(20),
  BGQX        VARCHAR2(20),
  MJ          VARCHAR2(20),
  SJAJBH      NUMBER,
  ZJDQDW      VARCHAR2(250),
  ZJDQDWLXFS  VARCHAR2(250),
  DQDZ        VARCHAR2(250),
  XGDSRLXFS   VARCHAR2(200),
  ZXRBS       NUMBER,
  ZXR         VARCHAR2(40),
  ZXRQ        DATE,
  WBLYY       VARCHAR2(50),
  YCBBM       VARCHAR2(50),
  GGFY        NUMBER,
  YSSSZXRQ    DATE,
  SJBSRQ      DATE,
  SSZYQSRQ    DATE,
  TJRQ        DATE,
  JMHLB       VARCHAR2(50),
  YSBLRRQ     DATE,
  DSRTYSYZXDC NUMBER,
  CCZL        VARCHAR2(40),
  JMHBH       NUMBER,
  JMHJE       NUMBER,
  CJR         VARCHAR2(250),
  CXSWLB      VARCHAR2(40),
  YJFGJLD     VARCHAR2(100),
  LXDH        VARCHAR2(100),
  CLQK        VARCHAR2(100),
  ZJZL        VARCHAR2(40),
  SFZHM       VARCHAR2(30),
  MZ          VARCHAR2(50),
  XB          VARCHAR2(10),
  DZ          VARCHAR2(200),
  CSRQ        DATE,
  SFZLA       NUMBER,
  ZLARQ       DATE,
  ZLAHAJBH    NUMBER,
  ZLAHAH      VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSFWXT_SSFWZTXX
  is '诉讼服务主体信息';
comment on column SSFWXT_SSFWZTXX.FYBM
  is '法院编码';
comment on column SSFWXT_SSFWZTXX.BHBH
  is '编号bh';
comment on column SSFWXT_SSFWZTXX.SSFWLBBS
  is '诉讼服务类别标识';
comment on column SSFWXT_SSFWZTXX.SSFWLB
  is '诉讼服务类别';
comment on column SSFWXT_SSFWZTXX.BH
  is '编号';
comment on column SSFWXT_SSFWZTXX.BHN
  is '编号年';
comment on column SSFWXT_SSFWZTXX.BHZ
  is '编号字';
comment on column SSFWXT_SSFWZTXX.BHHS
  is '编号号数';
comment on column SSFWXT_SSFWZTXX.DJRBS
  is '登记人标识';
comment on column SSFWXT_SSFWZTXX.DJR
  is '登记人';
comment on column SSFWXT_SSFWZTXX.DJRQ
  is '登记日期';
comment on column SSFWXT_SSFWZTXX.SQRQ
  is '申请日期';
comment on column SSFWXT_SSFWZTXX.SJAJAY
  is '涉及案件案由';
comment on column SSFWXT_SSFWZTXX.SJAJAYBM
  is '涉及案件案由编码';
comment on column SSFWXT_SSFWZTXX.DCSX
  is '调查事项';
comment on column SSFWXT_SSFWZTXX.SJSYDSR
  is '涉及所有当事人';
comment on column SSFWXT_SSFWZTXX.SFWT
  is '是否委托';
comment on column SSFWXT_SSFWZTXX.WTRQ
  is '委托日期';
comment on column SSFWXT_SSFWZTXX.WTR
  is '委托人';
comment on column SSFWXT_SSFWZTXX.BZ
  is '备注';
comment on column SSFWXT_SSFWZTXX.DQSPRBS
  is '当前审批人标识';
comment on column SSFWXT_SSFWZTXX.DQSPRMC
  is '当前审批人名称';
comment on column SSFWXT_SSFWZTXX.YBJQX
  is '应办结期限';
comment on column SSFWXT_SSFWZTXX.SJAJCBRBS
  is '涉及案件承办人标识';
comment on column SSFWXT_SSFWZTXX.SJAJCBR
  is '涉及案件承办人';
comment on column SSFWXT_SSFWZTXX.SSFWCBRBS
  is '诉讼服务承办人标识';
comment on column SSFWXT_SSFWZTXX.SSFWCBR
  is '诉讼服务承办人';
comment on column SSFWXT_SSFWZTXX.CBBM
  is '承办部门';
comment on column SSFWXT_SSFWZTXX.YQTS
  is '延期天数';
comment on column SSFWXT_SSFWZTXX.SQR
  is '申请人';
comment on column SSFWXT_SSFWZTXX.BSQR
  is '被申请人';
comment on column SSFWXT_SSFWZTXX.SJAH
  is '涉及案号';
comment on column SSFWXT_SSFWZTXX.WTDL
  is '委托大类';
comment on column SSFWXT_SSFWZTXX.WTXL
  is '委托小类';
comment on column SSFWXT_SSFWZTXX.WSQK
  is '五涉情况';
comment on column SSFWXT_SSFWZTXX.BQCCMC
  is '保全财产名称';
comment on column SSFWXT_SSFWZTXX.DBCCMC
  is '担保财产名称';
comment on column SSFWXT_SSFWZTXX.YSAJCBRRQ
  is '移送案件承办人日期';
comment on column SSFWXT_SSFWZTXX.BLJSBZ
  is '办理结束标志';
comment on column SSFWXT_SSFWZTXX.BJRQ
  is '办结日期';
comment on column SSFWXT_SSFWZTXX.BJFS
  is '办结方式';
comment on column SSFWXT_SSFWZTXX.DQZT
  is '当前状态';
comment on column SSFWXT_SSFWZTXX.SFTQGD
  is '是否提请归档';
comment on column SSFWXT_SSFWZTXX.TQGDRQ
  is '提请归档日期';
comment on column SSFWXT_SSFWZTXX.LCMC
  is '流程名称';
comment on column SSFWXT_SSFWZTXX.SFSCBJ
  is '是否删除标记';
comment on column SSFWXT_SSFWZTXX.GDH
  is '归档号';
comment on column SSFWXT_SSFWZTXX.GDSJ
  is '归档时间';
comment on column SSFWXT_SSFWZTXX.CFDD
  is '存放地点';
comment on column SSFWXT_SSFWZTXX.SWH
  is '缩微号';
comment on column SSFWXT_SSFWZTXX.BGQX
  is '保管期限';
comment on column SSFWXT_SSFWZTXX.MJ
  is '密级';
comment on column SSFWXT_SSFWZTXX.SJAJBH
  is '涉及案件编号';
comment on column SSFWXT_SSFWZTXX.ZJDQDW
  is '证据调取单位';
comment on column SSFWXT_SSFWZTXX.ZJDQDWLXFS
  is '证据调取单位联系方式';
comment on column SSFWXT_SSFWZTXX.DQDZ
  is '调取地址';
comment on column SSFWXT_SSFWZTXX.XGDSRLXFS
  is '相关当事人联系方式';
comment on column SSFWXT_SSFWZTXX.ZXRBS
  is '执行人标识';
comment on column SSFWXT_SSFWZTXX.ZXR
  is '执行人';
comment on column SSFWXT_SSFWZTXX.ZXRQ
  is '执行日期';
comment on column SSFWXT_SSFWZTXX.WBLYY
  is '未办理原因';
comment on column SSFWXT_SSFWZTXX.YCBBM
  is '原承办部门';
comment on column SSFWXT_SSFWZTXX.GGFY
  is '公告费用';
comment on column SSFWXT_SSFWZTXX.YSSSZXRQ
  is '移送诉讼中心日期';
comment on column SSFWXT_SSFWZTXX.SJBSRQ
  is '涉及报送日期';
comment on column SSFWXT_SSFWZTXX.SSZYQSRQ
  is '上诉中院签收日期';
comment on column SSFWXT_SSFWZTXX.TJRQ
  is '退卷日起';
comment on column SSFWXT_SSFWZTXX.JMHLB
  is '减免缓类别';
comment on column SSFWXT_SSFWZTXX.YSBLRRQ
  is '移送办理人日期';
comment on column SSFWXT_SSFWZTXX.DSRTYSYZXDC
  is '当事人同意适用执行督促';
comment on column SSFWXT_SSFWZTXX.CCZL
  is '财产种类';
comment on column SSFWXT_SSFWZTXX.JMHBH
  is '减免缓编号';
comment on column SSFWXT_SSFWZTXX.JMHJE
  is '减免缓金额';
comment on column SSFWXT_SSFWZTXX.CJR
  is '参加人';
comment on column SSFWXT_SSFWZTXX.CXSWLB
  is '查询事物类别';
comment on column SSFWXT_SSFWZTXX.YJFGJLD
  is '约见法官及领导';
comment on column SSFWXT_SSFWZTXX.LXDH
  is '联系电话';
comment on column SSFWXT_SSFWZTXX.CLQK
  is '处理情况';
comment on column SSFWXT_SSFWZTXX.ZJZL
  is '证件种类';
comment on column SSFWXT_SSFWZTXX.SFZHM
  is '身份证号码';
comment on column SSFWXT_SSFWZTXX.MZ
  is '名族';
comment on column SSFWXT_SSFWZTXX.XB
  is '性别';
comment on column SSFWXT_SSFWZTXX.DZ
  is '地址';
comment on column SSFWXT_SSFWZTXX.CSRQ
  is '出生日期';
comment on column SSFWXT_SSFWZTXX.SFZLA
  is '是否转立案';
comment on column SSFWXT_SSFWZTXX.ZLARQ
  is '转立案日期';
comment on column SSFWXT_SSFWZTXX.ZLAHAJBH
  is '转立案后案件编号';
comment on column SSFWXT_SSFWZTXX.ZLAHAH
  is '转立案后案号';

prompt
prompt Creating table SSXT_BGR
prompt =======================
prompt
create table SSXT_BGR
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BGRBS       NUMBER,
  AJBS        NUMBER,
  YSSSDW      NUMBER,
  ESSSDW      NUMBER,
  ZSSSDW      NUMBER,
  LX          NUMBER,
  XH          NUMBER,
  XM          VARCHAR2(40),
  BM          VARCHAR2(40),
  XB          NUMBER,
  GJ          NUMBER,
  MZ          NUMBER,
  CSRQ        DATE,
  SXFZSNL     NUMBER,
  SFZJZL      NUMBER,
  SFZJHM      VARCHAR2(30),
  CSD         VARCHAR2(100),
  YJ          VARCHAR2(100),
  HJSZD       VARCHAR2(100),
  XZZHZZD     VARCHAR2(100),
  HYZK        NUMBER,
  WHCD        NUMBER,
  ZZMM        NUMBER,
  LXDH        VARCHAR2(30),
  YZBM        VARCHAR2(10),
  ZY          NUMBER,
  SF          NUMBER,
  JB          NUMBER,
  JRSF        NUMBER,
  JRZW        NUMBER,
  JRGBZL      NUMBER,
  ZW          VARCHAR2(40),
  BQDW        VARCHAR2(100),
  TSSF        NUMBER,
  TSSLHBL     NUMBER,
  XBQSZRR     NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_BGR
  is '被告人';
comment on column SSXT_BGR.FYBM
  is '法院编码';
comment on column SSXT_BGR.BGRBS
  is '被告人标识';
comment on column SSXT_BGR.AJBS
  is '案件标识';
comment on column SSXT_BGR.YSSSDW
  is '一审诉讼地位';
comment on column SSXT_BGR.ESSSDW
  is '二审诉讼地位';
comment on column SSXT_BGR.ZSSSDW
  is '再审诉讼地位';
comment on column SSXT_BGR.LX
  is '类型';
comment on column SSXT_BGR.XH
  is '序号';
comment on column SSXT_BGR.XM
  is '姓名';
comment on column SSXT_BGR.BM
  is '别名';
comment on column SSXT_BGR.XB
  is '性别';
comment on column SSXT_BGR.GJ
  is '国籍';
comment on column SSXT_BGR.MZ
  is '民族';
comment on column SSXT_BGR.CSRQ
  is '出生日期';
comment on column SSXT_BGR.SXFZSNL
  is '涉嫌犯罪时年龄';
comment on column SSXT_BGR.SFZJZL
  is '身份证件种类';
comment on column SSXT_BGR.SFZJHM
  is '身份证件号码';
comment on column SSXT_BGR.CSD
  is '出生地';
comment on column SSXT_BGR.YJ
  is '原籍';
comment on column SSXT_BGR.HJSZD
  is '户籍所在地';
comment on column SSXT_BGR.XZZHZZD
  is '现住址或暂住地';
comment on column SSXT_BGR.HYZK
  is '婚姻状况';
comment on column SSXT_BGR.WHCD
  is '文化程度';
comment on column SSXT_BGR.ZZMM
  is '政治面貌';
comment on column SSXT_BGR.LXDH
  is '联系电话';
comment on column SSXT_BGR.YZBM
  is '邮政编码';
comment on column SSXT_BGR.ZY
  is '职业';
comment on column SSXT_BGR.SF
  is '身份';
comment on column SSXT_BGR.JB
  is '级别';
comment on column SSXT_BGR.JRSF
  is '军人身份';
comment on column SSXT_BGR.JRZW
  is '军人职务';
comment on column SSXT_BGR.JRGBZL
  is '军人干部种类';
comment on column SSXT_BGR.ZW
  is '职务';
comment on column SSXT_BGR.BQDW
  is '捕前单位';
comment on column SSXT_BGR.TSSF
  is '特殊身份';
comment on column SSXT_BGR.TSSLHBL
  is '特殊生理或病理';
comment on column SSXT_BGR.XBQSZRR
  is '系被起诉责任人';

prompt
prompt Creating table SSXT_BGRJAZM
prompt ===========================
prompt
create table SSXT_BGRJAZM
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  ZM          NUMBER,
  ZMZS        VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_BGRJAZM
  is '被告人结案罪名';
comment on column SSXT_BGRJAZM.FYBM
  is '法院编码';
comment on column SSXT_BGRJAZM.BH
  is '编号';
comment on column SSXT_BGRJAZM.ZM
  is '罪名';
comment on column SSXT_BGRJAZM.ZMZS
  is '罪名注释';

prompt
prompt Creating table SSXT_BGRLAZM
prompt ===========================
prompt
create table SSXT_BGRLAZM
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  ZM          NUMBER,
  ZMZS        VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_BGRLAZM
  is '被告人立案罪名';
comment on column SSXT_BGRLAZM.FYBM
  is '法院编码';
comment on column SSXT_BGRLAZM.BH
  is '编号';
comment on column SSXT_BGRLAZM.ZM
  is '罪名';
comment on column SSXT_BGRLAZM.ZMZS
  is '罪名注释';

prompt
prompt Creating table SSXT_BGRLXQJ
prompt ===========================
prompt
create table SSXT_BGRLXQJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  BGRBS       NUMBER,
  QJZL        NUMBER,
  LXLY        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_BGRLXQJ
  is '被告人量刑情节';
comment on column SSXT_BGRLXQJ.FYBM
  is '法院编码';
comment on column SSXT_BGRLXQJ.BH
  is '编号';
comment on column SSXT_BGRLXQJ.BGRBS
  is '被告人标识';
comment on column SSXT_BGRLXQJ.QJZL
  is '情节种类';
comment on column SSXT_BGRLXQJ.LXLY
  is '量刑理由';

prompt
prompt Creating table SSXT_BGRQKLJ
prompt ===========================
prompt
create table SSXT_BGRQKLJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  BGRBS       NUMBER,
  CFNR        VARCHAR2(100),
  CFYY        VARCHAR2(100),
  PCJG        VARCHAR2(100),
  KSRQ        DATE,
  JSRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_BGRQKLJ
  is '被告人前科劣迹';
comment on column SSXT_BGRQKLJ.FYBM
  is '法院编码';
comment on column SSXT_BGRQKLJ.BH
  is '编号';
comment on column SSXT_BGRQKLJ.BGRBS
  is '被告人标识';
comment on column SSXT_BGRQKLJ.CFNR
  is '处罚内容';
comment on column SSXT_BGRQKLJ.CFYY
  is '处罚原因';
comment on column SSXT_BGRQKLJ.PCJG
  is '判处机关';
comment on column SSXT_BGRQKLJ.KSRQ
  is '开始日期';
comment on column SSXT_BGRQKLJ.JSRQ
  is '结束日期';

prompt
prompt Creating table SSXT_MSDSR
prompt =========================
prompt
create table SSXT_MSDSR
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  AJBS        NUMBER,
  LX          NUMBER,
  YSSSDW      NUMBER,
  ESSSDW      NUMBER,
  ZSSSDW      NUMBER,
  XMHDWMC     VARCHAR2(100),
  XB          NUMBER,
  GJ          NUMBER,
  MZ          NUMBER,
  NL          NUMBER,
  ZY          NUMBER,
  WHCD        NUMBER,
  SFZJZL      NUMBER,
  SFZJHM      VARCHAR2(30),
  TSSLHBL     NUMBER,
  ZZJGDM      VARCHAR2(10),
  DWXZ        NUMBER,
  YZBM        VARCHAR2(10),
  LXDH        VARCHAR2(30),
  DZ          VARCHAR2(100),
  FDDBR       VARCHAR2(40),
  DBRZJZL     NUMBER,
  DBRZJHM     VARCHAR2(30),
  DLRXM1      VARCHAR2(40),
  DLRZW1      VARCHAR2(40),
  DLRLX1      NUMBER,
  DLRXM2      VARCHAR2(40),
  DLRZW2      VARCHAR2(40),
  DLRLX2      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_MSDSR
  is '民事当事人';
comment on column SSXT_MSDSR.FYBM
  is '法院编码';
comment on column SSXT_MSDSR.AJBS
  is '案件标识';
comment on column SSXT_MSDSR.LX
  is '类型';
comment on column SSXT_MSDSR.YSSSDW
  is '一审诉讼地位';
comment on column SSXT_MSDSR.ESSSDW
  is '二审诉讼地位';
comment on column SSXT_MSDSR.ZSSSDW
  is '再审诉讼地位';
comment on column SSXT_MSDSR.XMHDWMC
  is '姓名或单位名称';
comment on column SSXT_MSDSR.XB
  is '性别';
comment on column SSXT_MSDSR.GJ
  is '国籍';
comment on column SSXT_MSDSR.MZ
  is '民族';
comment on column SSXT_MSDSR.NL
  is '年龄';
comment on column SSXT_MSDSR.ZY
  is '职业';
comment on column SSXT_MSDSR.WHCD
  is '文化程度';
comment on column SSXT_MSDSR.SFZJZL
  is '身份证件种类';
comment on column SSXT_MSDSR.SFZJHM
  is '身份证件号码';
comment on column SSXT_MSDSR.TSSLHBL
  is '特殊生理或病理';
comment on column SSXT_MSDSR.ZZJGDM
  is '组织机构代码';
comment on column SSXT_MSDSR.DWXZ
  is '单位性质';
comment on column SSXT_MSDSR.YZBM
  is '邮政编码';
comment on column SSXT_MSDSR.LXDH
  is '联系电话';
comment on column SSXT_MSDSR.DZ
  is '地址';
comment on column SSXT_MSDSR.FDDBR
  is '法定代表人';
comment on column SSXT_MSDSR.DBRZJZL
  is '代表人证件种类';
comment on column SSXT_MSDSR.DBRZJHM
  is '代表人证件号码';
comment on column SSXT_MSDSR.DLRXM1
  is '代理人姓名1';
comment on column SSXT_MSDSR.DLRZW1
  is '代理人职务1';
comment on column SSXT_MSDSR.DLRLX1
  is '代理人类型1';
comment on column SSXT_MSDSR.DLRXM2
  is '代理人姓名2';
comment on column SSXT_MSDSR.DLRZW2
  is '代理人职务2';
comment on column SSXT_MSDSR.DLRLX2
  is '代理人类型2';

prompt
prompt Creating table SSXT_MSESAJ
prompt ==========================
prompt
create table SSXT_MSESAJ
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  AJBS         NUMBER,
  DJFY         VARCHAR2(100),
  DJFYJB       VARCHAR2(200),
  YSFYCLR      VARCHAR2(30),
  ESFYCLR      VARCHAR2(30),
  AJLBBS       VARCHAR2(20),
  SPCX         VARCHAR2(10),
  AZ           VARCHAR2(12),
  DSRHB        BLOB,
  SPJS         NUMBER,
  DJR          VARCHAR2(30),
  DJBM         VARCHAR2(30),
  DJRQ         DATE,
  SSAJLX       VARCHAR2(30),
  YSXCPFY      VARCHAR2(40),
  YSXAH        VARCHAR2(30),
  TCSSRQ       DATE,
  SDYSFYYSAJRQ DATE,
  LAAY         VARCHAR2(250),
  LAAYBM       VARCHAR2(20),
  LAAYZS       VARCHAR2(250),
  JZSL         NUMBER,
  BQFS         VARCHAR2(50),
  WSQK         NUMBER,
  ZJBQ         NUMBER,
  SSBD         NUMBER,
  YSSLF        NUMBER,
  YJSLF        NUMBER,
  JFRQ         DATE,
  JJ           NUMBER,
  JJJE         NUMBER,
  MJ           NUMBER,
  MJJE         NUMBER,
  HJ           NUMBER,
  HJJE         NUMBER,
  JJAJLX       VARCHAR2(50),
  SFJZDX       VARCHAR2(80),
  SFJZDXLX     VARCHAR2(50),
  SSQQ         BLOB,
  SSLY         BLOB,
  BZ           BLOB,
  BQAH         VARCHAR2(40),
  SJHM         VARCHAR2(20),
  BDLX         VARCHAR2(30),
  BDJE         NUMBER,
  BQFY         NUMBER,
  FYJDFY       NUMBER,
  SJZSCQ       NUMBER,
  BQQFSJGB     VARCHAR2(50),
  YSBDJE       NUMBER,
  LABS         NUMBER,
  LARQ         DATE,
  ESLAAH       VARCHAR2(40),
  ESAJBH       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_MSESAJ
  is '民事二审案件';
comment on column SSXT_MSESAJ.FYBM
  is '法院编码';
comment on column SSXT_MSESAJ.AJBS
  is '案件标识';
comment on column SSXT_MSESAJ.DJFY
  is '登记法院';
comment on column SSXT_MSESAJ.DJFYJB
  is '登记法院级别';
comment on column SSXT_MSESAJ.YSFYCLR
  is '原审法院处理人';
comment on column SSXT_MSESAJ.ESFYCLR
  is '二审法院处理人';
comment on column SSXT_MSESAJ.AJLBBS
  is '案件类别标识';
comment on column SSXT_MSESAJ.SPCX
  is '审判程序';
comment on column SSXT_MSESAJ.AZ
  is '案字';
comment on column SSXT_MSESAJ.DSRHB
  is '当事人（合并）';
comment on column SSXT_MSESAJ.SPJS
  is '审批结束';
comment on column SSXT_MSESAJ.DJR
  is '登记人';
comment on column SSXT_MSESAJ.DJBM
  is '登记部门';
comment on column SSXT_MSESAJ.DJRQ
  is '登记日期';
comment on column SSXT_MSESAJ.SSAJLX
  is '上诉案件类型';
comment on column SSXT_MSESAJ.YSXCPFY
  is '原生效裁判法院';
comment on column SSXT_MSESAJ.YSXAH
  is '原生效案号';
comment on column SSXT_MSESAJ.TCSSRQ
  is '提出上诉日期';
comment on column SSXT_MSESAJ.SDYSFYYSAJRQ
  is '收到一审法院移送案卷日期';
comment on column SSXT_MSESAJ.LAAY
  is '立案案由';
comment on column SSXT_MSESAJ.LAAYBM
  is '立案案由编码';
comment on column SSXT_MSESAJ.LAAYZS
  is '立案案由注释';
comment on column SSXT_MSESAJ.JZSL
  is '卷宗数量';
comment on column SSXT_MSESAJ.BQFS
  is '保全方式';
comment on column SSXT_MSESAJ.WSQK
  is '五涉情况';
comment on column SSXT_MSESAJ.ZJBQ
  is '证据保全';
comment on column SSXT_MSESAJ.SSBD
  is '上诉标的';
comment on column SSXT_MSESAJ.YSSLF
  is '应收受理费';
comment on column SSXT_MSESAJ.YJSLF
  is '预交受理费';
comment on column SSXT_MSESAJ.JFRQ
  is '缴费日期';
comment on column SSXT_MSESAJ.JJ
  is '减交';
comment on column SSXT_MSESAJ.JJJE
  is '减交金额';
comment on column SSXT_MSESAJ.MJ
  is '免交';
comment on column SSXT_MSESAJ.MJJE
  is '免交金额';
comment on column SSXT_MSESAJ.HJ
  is '缓交';
comment on column SSXT_MSESAJ.HJJE
  is '缓交金额';
comment on column SSXT_MSESAJ.JJAJLX
  is '减交案件类型';
comment on column SSXT_MSESAJ.SFJZDX
  is '司法救助对象';
comment on column SSXT_MSESAJ.SFJZDXLX
  is '司法救助对象类型';
comment on column SSXT_MSESAJ.SSQQ
  is '诉讼请求';
comment on column SSXT_MSESAJ.SSLY
  is '诉讼理由';
comment on column SSXT_MSESAJ.BZ
  is '备注';
comment on column SSXT_MSESAJ.BQAH
  is '保全案号';
comment on column SSXT_MSESAJ.SJHM
  is '收据号码';
comment on column SSXT_MSESAJ.BDLX
  is '标的类型';
comment on column SSXT_MSESAJ.BDJE
  is '标的金额';
comment on column SSXT_MSESAJ.BQFY
  is '保全费用';
comment on column SSXT_MSESAJ.FYJDFY
  is '法医鉴定费用';
comment on column SSXT_MSESAJ.SJZSCQ
  is '涉及知识产权';
comment on column SSXT_MSESAJ.BQQFSJGB
  is '被侵权方涉及国别';
comment on column SSXT_MSESAJ.YSBDJE
  is '原审标的金额(元)';
comment on column SSXT_MSESAJ.LABS
  is '立案标识';
comment on column SSXT_MSESAJ.LARQ
  is '立案日期';
comment on column SSXT_MSESAJ.ESLAAH
  is '二审立案案号';
comment on column SSXT_MSESAJ.ESAJBH
  is '二审案件编号';

prompt
prompt Creating table SSXT_MSZSDJ
prompt ==========================
prompt
create table SSXT_MSZSDJ
(
  ID            VARCHAR2(36) not null,
  REG_TIME      DATE not null,
  UPDATE_TIME   DATE not null,
  DEPT_CODE     VARCHAR2(20) not null,
  APP_CODE      VARCHAR2(20) not null,
  FYBM          NUMBER,
  AJBS          VARCHAR2(100),
  DJFY          VARCHAR2(200),
  DJFYJB        VARCHAR2(30),
  YSFYCLR       VARCHAR2(30),
  ESFYCLR       VARCHAR2(200),
  AJLBBS        VARCHAR2(20),
  AJLBBSS       VARCHAR2(10),
  SPCX          VARCHAR2(12),
  AZ            BLOB,
  DSRHB         VARCHAR2(200),
  SPJS          NUMBER,
  DJR           VARCHAR2(30),
  DJBM          VARCHAR2(40),
  DJRQ          DATE,
  AJLY          VARCHAR2(20),
  YSCPLX        VARCHAR2(40),
  CDZSRQ        DATE,
  CDZSFLWSBH    VARCHAR2(50),
  JDLADZSSQSCRQ DATE,
  YSXCPAY       VARCHAR2(40),
  YSXCPFY       VARCHAR2(30),
  YSXAH         VARCHAR2(50),
  YSXRQ         DATE,
  LAAY          VARCHAR2(20),
  LAAYBM        VARCHAR2(20),
  LAAYZS        VARCHAR2(250),
  WSQK          NUMBER,
  JZSL          NUMBER,
  KSJGMC        VARCHAR2(200),
  TCKSRQ        DATE,
  KSSBH         VARCHAR2(50),
  SSBDJE        NUMBER,
  YSSLF         NUMBER,
  YJSLF         NUMBER,
  JFRQ          DATE,
  SFJJ          NUMBER,
  JJJE          NUMBER,
  SFMJ          NUMBER,
  MJJE          NUMBER,
  SFHJ          NUMBER,
  HJJE          NUMBER,
  JJAJLX        VARCHAR2(50),
  SFJZDX        VARCHAR2(20),
  SFJZDXLX      VARCHAR2(50),
  SSQQ          BLOB,
  SSLY          BLOB,
  BZ            BLOB,
  SJHM          VARCHAR2(20),
  BDLX          VARCHAR2(30),
  BDJE          NUMBER,
  BQFY          NUMBER,
  FYJDFY        NUMBER,
  SFSJZSCQ      NUMBER,
  BQQFSJGB      NUMBER,
  YSBDJE        NUMBER,
  LABS          DATE,
  LARQ          VARCHAR2(40),
  ESLAAH        NUMBER,
  ESAJBH        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_MSZSDJ
  is '民事再审登记';
comment on column SSXT_MSZSDJ.FYBM
  is '法院编码';
comment on column SSXT_MSZSDJ.AJBS
  is '案件标识';
comment on column SSXT_MSZSDJ.DJFY
  is '登记法院';
comment on column SSXT_MSZSDJ.DJFYJB
  is '登记法院级别';
comment on column SSXT_MSZSDJ.YSFYCLR
  is '原审法院处理人';
comment on column SSXT_MSZSDJ.ESFYCLR
  is '二审法院处理人';
comment on column SSXT_MSZSDJ.AJLBBS
  is '案件类别标识';
comment on column SSXT_MSZSDJ.AJLBBSS
  is '案件类别标识s';
comment on column SSXT_MSZSDJ.SPCX
  is '审判程序';
comment on column SSXT_MSZSDJ.AZ
  is '案字';
comment on column SSXT_MSZSDJ.DSRHB
  is '当事人（合并）';
comment on column SSXT_MSZSDJ.SPJS
  is '审批结束';
comment on column SSXT_MSZSDJ.DJR
  is '登记人';
comment on column SSXT_MSZSDJ.DJBM
  is '登记部门';
comment on column SSXT_MSZSDJ.DJRQ
  is '登记日期';
comment on column SSXT_MSZSDJ.AJLY
  is '案件来源';
comment on column SSXT_MSZSDJ.YSCPLX
  is '原审裁判类型';
comment on column SSXT_MSZSDJ.CDZSRQ
  is '裁定再审日期';
comment on column SSXT_MSZSDJ.CDZSFLWSBH
  is '裁定再审法律文书编号';
comment on column SSXT_MSZSDJ.JDLADZSSQSCRQ
  is '决定立案对再审申请审查日期';
comment on column SSXT_MSZSDJ.YSXCPAY
  is '原生效裁判案由';
comment on column SSXT_MSZSDJ.YSXCPFY
  is '原生效裁判法院';
comment on column SSXT_MSZSDJ.YSXAH
  is '原生效案号';
comment on column SSXT_MSZSDJ.YSXRQ
  is '原生效日期';
comment on column SSXT_MSZSDJ.LAAY
  is '立案案由';
comment on column SSXT_MSZSDJ.LAAYBM
  is '立案案由编码';
comment on column SSXT_MSZSDJ.LAAYZS
  is '立案案由注释';
comment on column SSXT_MSZSDJ.WSQK
  is '五涉情况';
comment on column SSXT_MSZSDJ.JZSL
  is '卷宗数量';
comment on column SSXT_MSZSDJ.KSJGMC
  is '抗诉机关名称';
comment on column SSXT_MSZSDJ.TCKSRQ
  is '提出抗诉日期';
comment on column SSXT_MSZSDJ.KSSBH
  is '抗诉书编号';
comment on column SSXT_MSZSDJ.SSBDJE
  is '上诉标的金额';
comment on column SSXT_MSZSDJ.YSSLF
  is '应收受理费';
comment on column SSXT_MSZSDJ.YJSLF
  is '预交受理费';
comment on column SSXT_MSZSDJ.JFRQ
  is '缴费日期';
comment on column SSXT_MSZSDJ.SFJJ
  is '是否减交';
comment on column SSXT_MSZSDJ.JJJE
  is '减交金额';
comment on column SSXT_MSZSDJ.SFMJ
  is '是否免交';
comment on column SSXT_MSZSDJ.MJJE
  is '免交金额';
comment on column SSXT_MSZSDJ.SFHJ
  is '是否缓交';
comment on column SSXT_MSZSDJ.HJJE
  is '缓交金额';
comment on column SSXT_MSZSDJ.JJAJLX
  is '减交案件类型';
comment on column SSXT_MSZSDJ.SFJZDX
  is '司法救助对象';
comment on column SSXT_MSZSDJ.SFJZDXLX
  is '司法救助对象类型';
comment on column SSXT_MSZSDJ.SSQQ
  is '诉讼请求';
comment on column SSXT_MSZSDJ.SSLY
  is '诉讼理由';
comment on column SSXT_MSZSDJ.BZ
  is '备注';
comment on column SSXT_MSZSDJ.SJHM
  is '收据号码';
comment on column SSXT_MSZSDJ.BDLX
  is '标的类型';
comment on column SSXT_MSZSDJ.BDJE
  is '标的金额';
comment on column SSXT_MSZSDJ.BQFY
  is '保全费用';
comment on column SSXT_MSZSDJ.FYJDFY
  is '法医鉴定费用';
comment on column SSXT_MSZSDJ.SFSJZSCQ
  is '是否涉及知识产权';
comment on column SSXT_MSZSDJ.BQQFSJGB
  is '被侵权方涉及国别';
comment on column SSXT_MSZSDJ.YSBDJE
  is '原审标的金额(元)';
comment on column SSXT_MSZSDJ.LABS
  is '立案标识';
comment on column SSXT_MSZSDJ.LARQ
  is '立案日期';
comment on column SSXT_MSZSDJ.ESLAAH
  is '二审立案案号';
comment on column SSXT_MSZSDJ.ESAJBH
  is '二审案件编号';

prompt
prompt Creating table SSXT_PJQK
prompt ========================
prompt
create table SSXT_PJQK
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  PJQK        NUMBER,
  WZYY        NUMBER,
  PCZX        NUMBER,
  HQZX        NUMBER,
  PCZXN       NUMBER,
  PCZXY       NUMBER,
  PCHXN       NUMBER,
  PCHXY       NUMBER,
  FJXZL       NUMBER,
  FJXZL2      NUMBER,
  BDZZQLN     NUMBER,
  BDZZQLY     NUMBER,
  FJSE        NUMBER,
  DWFJSE      NUMBER,
  MSCCSE      NUMBER,
  BDZZQLZS    NUMBER,
  FDMSCLJG    VARCHAR2(100),
  FDMSPCJE    NUMBER,
  WCGP        NUMBER,
  GPYY        NUMBER,
  GPQK        VARCHAR2(100),
  CPSX        NUMBER,
  FHLX        NUMBER,
  BHRQ        DATE,
  HZFY        VARCHAR2(100),
  HZRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_PJQK
  is '判决情况';
comment on column SSXT_PJQK.FYBM
  is '法院编码';
comment on column SSXT_PJQK.BH
  is '编号';
comment on column SSXT_PJQK.AJBS
  is '案件标识';
comment on column SSXT_PJQK.PJQK
  is '判决情况';
comment on column SSXT_PJQK.WZYY
  is '无罪原因';
comment on column SSXT_PJQK.PCZX
  is '判处主刑';
comment on column SSXT_PJQK.HQZX
  is '缓期执行';
comment on column SSXT_PJQK.PCZXN
  is '判处主刑年';
comment on column SSXT_PJQK.PCZXY
  is '判处主刑月';
comment on column SSXT_PJQK.PCHXN
  is '判处缓刑年';
comment on column SSXT_PJQK.PCHXY
  is '判处缓刑月';
comment on column SSXT_PJQK.FJXZL
  is '附加刑种类';
comment on column SSXT_PJQK.FJXZL2
  is '附加刑种类2';
comment on column SSXT_PJQK.BDZZQLN
  is '剥夺政治权利年';
comment on column SSXT_PJQK.BDZZQLY
  is '剥夺政治权利月';
comment on column SSXT_PJQK.FJSE
  is '罚金数额';
comment on column SSXT_PJQK.DWFJSE
  is '单位罚金数额';
comment on column SSXT_PJQK.MSCCSE
  is '没收财产数额';
comment on column SSXT_PJQK.BDZZQLZS
  is '剥夺政治权利终身';
comment on column SSXT_PJQK.FDMSCLJG
  is '附带民诉处理结果';
comment on column SSXT_PJQK.FDMSPCJE
  is '附带民诉赔偿金额';
comment on column SSXT_PJQK.WCGP
  is '维持改判';
comment on column SSXT_PJQK.GPYY
  is '改判原因';
comment on column SSXT_PJQK.GPQK
  is '改判情况';
comment on column SSXT_PJQK.CPSX
  is '裁判生效';
comment on column SSXT_PJQK.FHLX
  is '复核类型';
comment on column SSXT_PJQK.BHRQ
  is '报核日期';
comment on column SSXT_PJQK.HZFY
  is '核准法院';
comment on column SSXT_PJQK.HZRQ
  is '核准日期';

prompt
prompt Creating table SSXT_QSQK
prompt ========================
prompt
create table SSXT_QSQK
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  QSBS        NUMBER,
  AJBS        NUMBER,
  YRQ         DATE,
  YCS         VARCHAR2(100),
  FDMS        NUMBER,
  FFSDCWJZ    NUMBER,
  QZCSZL      NUMBER,
  CQQZCSRQ    DATE,
  BZR         VARCHAR2(40),
  BZJE        NUMBER,
  FZJEWFJS    NUMBER,
  FZJE        NUMBER,
  ZFZ         NUMBER,
  ZLJ         NUMBER,
  LF          NUMBER,
  SZBF        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_QSQK
  is '起诉情况';
comment on column SSXT_QSQK.FYBM
  is '法院编码';
comment on column SSXT_QSQK.QSBS
  is '起诉标识';
comment on column SSXT_QSQK.AJBS
  is '案件标识';
comment on column SSXT_QSQK.YRQ
  is '羁押日期';
comment on column SSXT_QSQK.YCS
  is '羁押场所';
comment on column SSXT_QSQK.FDMS
  is '附带民诉';
comment on column SSXT_QSQK.FFSDCWJZ
  is '非法所得财物价值';
comment on column SSXT_QSQK.QZCSZL
  is '强制措施种类';
comment on column SSXT_QSQK.CQQZCSRQ
  is '采取强制措施日期';
comment on column SSXT_QSQK.BZR
  is '保证人';
comment on column SSXT_QSQK.BZJE
  is '保证金额';
comment on column SSXT_QSQK.FZJEWFJS
  is '犯罪金额无法计算';
comment on column SSXT_QSQK.FZJE
  is '犯罪金额';
comment on column SSXT_QSQK.ZFZ
  is '曾犯罪';
comment on column SSXT_QSQK.ZLJ
  is '曾劳教';
comment on column SSXT_QSQK.LF
  is '累犯';
comment on column SSXT_QSQK.SZBF
  is '数罪并罚';

prompt
prompt Creating table SSXT_STWJ
prompt ========================
prompt
create table SSXT_STWJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  AJBS        NUMBER,
  BH          NUMBER,
  WJMC        VARCHAR2(255),
  STWJM       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_STWJ
  is '实体文件';
comment on column SSXT_STWJ.FYBM
  is '法院编码';
comment on column SSXT_STWJ.AJBS
  is '案件标识';
comment on column SSXT_STWJ.BH
  is '编号';
comment on column SSXT_STWJ.WJMC
  is '文件名称';
comment on column SSXT_STWJ.STWJM
  is '实体文件名';

prompt
prompt Creating table SSXT_XSESDJ
prompt ==========================
prompt
create table SSXT_XSESDJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  AJBS        NUMBER,
  DJFY        VARCHAR2(200),
  DJFYJB      VARCHAR2(30),
  YSFYCLR     VARCHAR2(30),
  ESFYCLR     VARCHAR2(200),
  AJLBBS      VARCHAR2(20),
  SPCX        VARCHAR2(20),
  AZ          BLOB,
  DSRHB       VARCHAR2(200),
  SFSPJS      NUMBER,
  DJR         VARCHAR2(30),
  DJBM        DATE,
  DJRQ        VARCHAR2(10),
  AJLX        VARCHAR2(30),
  ESAJLY      DATE,
  TCS         VARCHAR2(40),
  KSJG        VARCHAR2(250),
  KSSBH       NUMBER,
  JZSL        NUMBER,
  YSFYYSAJRQ  VARCHAR2(30),
  ESAJLX      VARCHAR2(40),
  YSFY        VARCHAR2(40),
  YSAH        VARCHAR2(250),
  LAAY        VARCHAR2(20),
  LAAYBM      VARCHAR2(20),
  LAAYZS      VARCHAR2(250),
  LAAY1       VARCHAR2(250),
  LAAY2       VARCHAR2(250),
  LAAY3       VARCHAR2(250),
  LAAY4       VARCHAR2(250),
  AJGK        BLOB,
  BZ          BLOB,
  FDMSSS      NUMBER,
  KSR         VARCHAR2(200),
  SJZSCQ      NUMBER,
  LABS        NUMBER,
  LARQ        DATE,
  ESLAAH      VARCHAR2(40),
  ESAJBH      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_XSESDJ
  is '刑事二审登记';
comment on column SSXT_XSESDJ.FYBM
  is '法院编码';
comment on column SSXT_XSESDJ.AJBS
  is '案件标识';
comment on column SSXT_XSESDJ.DJFY
  is '登记法院';
comment on column SSXT_XSESDJ.DJFYJB
  is '登记法院级别';
comment on column SSXT_XSESDJ.YSFYCLR
  is '原审法院处理人';
comment on column SSXT_XSESDJ.ESFYCLR
  is '二审法院处理人';
comment on column SSXT_XSESDJ.AJLBBS
  is '案件类别标识';
comment on column SSXT_XSESDJ.SPCX
  is '审判程序';
comment on column SSXT_XSESDJ.AZ
  is '案字';
comment on column SSXT_XSESDJ.DSRHB
  is '当事人（合并）';
comment on column SSXT_XSESDJ.SFSPJS
  is '是否审批结束';
comment on column SSXT_XSESDJ.DJR
  is '登记人';
comment on column SSXT_XSESDJ.DJBM
  is '登记部门';
comment on column SSXT_XSESDJ.DJRQ
  is '登记日期';
comment on column SSXT_XSESDJ.AJLX
  is '案件类型';
comment on column SSXT_XSESDJ.ESAJLY
  is '二审案件来源';
comment on column SSXT_XSESDJ.TCS
  is '提出上(抗)诉日期';
comment on column SSXT_XSESDJ.KSJG
  is '抗诉机关';
comment on column SSXT_XSESDJ.KSSBH
  is '抗诉书编号';
comment on column SSXT_XSESDJ.JZSL
  is '卷宗数量';
comment on column SSXT_XSESDJ.YSFYYSAJRQ
  is '一审法院移送案卷日期';
comment on column SSXT_XSESDJ.ESAJLX
  is '二审案件类型';
comment on column SSXT_XSESDJ.YSFY
  is '原审法院';
comment on column SSXT_XSESDJ.YSAH
  is '原审案号';
comment on column SSXT_XSESDJ.LAAY
  is '立案案由';
comment on column SSXT_XSESDJ.LAAYBM
  is '立案案由编码';
comment on column SSXT_XSESDJ.LAAYZS
  is '立案案由注释';
comment on column SSXT_XSESDJ.LAAY1
  is '立案案由1';
comment on column SSXT_XSESDJ.LAAY2
  is '立案案由2';
comment on column SSXT_XSESDJ.LAAY3
  is '立案案由3';
comment on column SSXT_XSESDJ.LAAY4
  is '立案案由4';
comment on column SSXT_XSESDJ.AJGK
  is '案件概况';
comment on column SSXT_XSESDJ.BZ
  is '备注';
comment on column SSXT_XSESDJ.FDMSSS
  is '附带民事诉讼';
comment on column SSXT_XSESDJ.KSR
  is '抗诉人';
comment on column SSXT_XSESDJ.SJZSCQ
  is '涉及知识产权';
comment on column SSXT_XSESDJ.LABS
  is '立案标识';
comment on column SSXT_XSESDJ.LARQ
  is '立案日期';
comment on column SSXT_XSESDJ.ESLAAH
  is '二审立案案号';
comment on column SSXT_XSESDJ.ESAJBH
  is '二审案件编号';

prompt
prompt Creating table SSXT_XSZSDJ
prompt ==========================
prompt
create table SSXT_XSZSDJ
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  AJBS         NUMBER,
  DJFY         VARCHAR2(100),
  DJFYJB       VARCHAR2(20),
  YSFYCLR      VARCHAR2(30),
  ESFYCLR      VARCHAR2(30),
  AJLBBS       VARCHAR2(20),
  SPCX         VARCHAR2(10),
  AZ           VARCHAR2(30),
  DSRHB        BLOB,
  SFSPJS       NUMBER,
  DJR          VARCHAR2(30),
  DJBM         VARCHAR2(30),
  DJRQ         DATE,
  AJLY         VARCHAR2(30),
  JDLAJXSSSCRI DATE,
  JDZSFLWSBH   VARCHAR2(250),
  JDZSRQ       DATE,
  JZSL         NUMBER,
  YSXRQ        DATE,
  YSXCPAY      VARCHAR2(100),
  YSCPLX       VARCHAR2(20),
  YSXCPFY      VARCHAR2(40),
  YSXAH        VARCHAR2(40),
  LAAY         VARCHAR2(250),
  LAAYBM       VARCHAR2(20),
  LAAYZS       VARCHAR2(250),
  LAAY1        VARCHAR2(250),
  LAAY2        VARCHAR2(250),
  LAAY3        VARCHAR2(250),
  LAAY4        VARCHAR2(250),
  AJGK         BLOB,
  BZ           BLOB,
  SJZSCQ       NUMBER,
  SFLA         NUMBER,
  LARQ         DATE,
  ESLAAH       VARCHAR2(40),
  ESAJBH       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_XSZSDJ
  is '刑事再审登记';
comment on column SSXT_XSZSDJ.FYBM
  is '法院编码';
comment on column SSXT_XSZSDJ.AJBS
  is '案件标识';
comment on column SSXT_XSZSDJ.DJFY
  is '登记法院';
comment on column SSXT_XSZSDJ.DJFYJB
  is '登记法院级别';
comment on column SSXT_XSZSDJ.YSFYCLR
  is '原审法院处理人';
comment on column SSXT_XSZSDJ.ESFYCLR
  is '二审法院处理人';
comment on column SSXT_XSZSDJ.AJLBBS
  is '案件类别标识';
comment on column SSXT_XSZSDJ.SPCX
  is '审判程序';
comment on column SSXT_XSZSDJ.AZ
  is '案字';
comment on column SSXT_XSZSDJ.DSRHB
  is '当事人（合并）';
comment on column SSXT_XSZSDJ.SFSPJS
  is '是否审批结束';
comment on column SSXT_XSZSDJ.DJR
  is '登记人';
comment on column SSXT_XSZSDJ.DJBM
  is '登记部门';
comment on column SSXT_XSZSDJ.DJRQ
  is '登记日期';
comment on column SSXT_XSZSDJ.AJLY
  is '案件来源';
comment on column SSXT_XSZSDJ.JDLAJXSSSCRI
  is '决定立案进行申诉';
comment on column SSXT_XSZSDJ.JDZSFLWSBH
  is '决定再审法律文书编号';
comment on column SSXT_XSZSDJ.JDZSRQ
  is '决定再审日期';
comment on column SSXT_XSZSDJ.JZSL
  is '卷宗数量';
comment on column SSXT_XSZSDJ.YSXRQ
  is '原生效日期';
comment on column SSXT_XSZSDJ.YSXCPAY
  is '原生效裁判案由';
comment on column SSXT_XSZSDJ.YSCPLX
  is '原审裁判类型';
comment on column SSXT_XSZSDJ.YSXCPFY
  is '原生效裁判法院';
comment on column SSXT_XSZSDJ.YSXAH
  is '原生效案号';
comment on column SSXT_XSZSDJ.LAAY
  is '立案案由';
comment on column SSXT_XSZSDJ.LAAYBM
  is '立案案由编码';
comment on column SSXT_XSZSDJ.LAAYZS
  is '立案案由注释';
comment on column SSXT_XSZSDJ.LAAY1
  is '立案案由1';
comment on column SSXT_XSZSDJ.LAAY2
  is '立案案由2';
comment on column SSXT_XSZSDJ.LAAY3
  is '立案案由3';
comment on column SSXT_XSZSDJ.LAAY4
  is '立案案由4';
comment on column SSXT_XSZSDJ.AJGK
  is '案件概况';
comment on column SSXT_XSZSDJ.BZ
  is '备注';
comment on column SSXT_XSZSDJ.SJZSCQ
  is '涉及知识产权';
comment on column SSXT_XSZSDJ.SFLA
  is '是否立案';
comment on column SSXT_XSZSDJ.LARQ
  is '立案日期';
comment on column SSXT_XSZSDJ.ESLAAH
  is '二审立案案号';
comment on column SSXT_XSZSDJ.ESAJBH
  is '二审案件编号';

prompt
prompt Creating table SSXT_XZDSR
prompt =========================
prompt
create table SSXT_XZDSR
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  AJBS        NUMBER,
  DSRBS       NUMBER,
  LX          NUMBER,
  YSSSDW      NUMBER,
  ESSSDW      NUMBER,
  ZSSSDW      NUMBER,
  XMHDWMC     VARCHAR2(100),
  XB          NUMBER,
  GJ          NUMBER,
  MZ          NUMBER,
  NL          NUMBER,
  ZY          NUMBER,
  WHCD        NUMBER,
  SFZJZL      NUMBER,
  SFZJHM      VARCHAR2(30),
  TSSLHBL     NUMBER,
  ZZJGDM      VARCHAR2(10),
  DWXZ        NUMBER,
  YZBM        VARCHAR2(10),
  LXDH        VARCHAR2(30),
  DZ          VARCHAR2(100),
  FDDBR       VARCHAR2(40),
  DBRZJZL     NUMBER,
  DBRZJHM     VARCHAR2(30),
  DLRXM1      VARCHAR2(40),
  DLRZW1      VARCHAR2(40),
  DLRLX1      NUMBER,
  DLRXM2      VARCHAR2(40),
  DLRZW2      VARCHAR2(40),
  DLRLX2      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_XZDSR
  is '行政当事人';
comment on column SSXT_XZDSR.FYBM
  is '法院编码';
comment on column SSXT_XZDSR.AJBS
  is '案件标识';
comment on column SSXT_XZDSR.DSRBS
  is '当事人标识';
comment on column SSXT_XZDSR.LX
  is '类型';
comment on column SSXT_XZDSR.YSSSDW
  is '一审诉讼地位';
comment on column SSXT_XZDSR.ESSSDW
  is '二审诉讼地位';
comment on column SSXT_XZDSR.ZSSSDW
  is '再审诉讼地位';
comment on column SSXT_XZDSR.XMHDWMC
  is '姓名或单位名称';
comment on column SSXT_XZDSR.XB
  is '性别';
comment on column SSXT_XZDSR.GJ
  is '国籍';
comment on column SSXT_XZDSR.MZ
  is '民族';
comment on column SSXT_XZDSR.NL
  is '年龄';
comment on column SSXT_XZDSR.ZY
  is '职业';
comment on column SSXT_XZDSR.WHCD
  is '文化程度';
comment on column SSXT_XZDSR.SFZJZL
  is '身份证件种类';
comment on column SSXT_XZDSR.SFZJHM
  is '身份证件号码';
comment on column SSXT_XZDSR.TSSLHBL
  is '特殊生理或病理';
comment on column SSXT_XZDSR.ZZJGDM
  is '组织机构代码';
comment on column SSXT_XZDSR.DWXZ
  is '单位性质';
comment on column SSXT_XZDSR.YZBM
  is '邮政编码';
comment on column SSXT_XZDSR.LXDH
  is '联系电话';
comment on column SSXT_XZDSR.DZ
  is '地址';
comment on column SSXT_XZDSR.FDDBR
  is '法定代表人';
comment on column SSXT_XZDSR.DBRZJZL
  is '代表人证件种类';
comment on column SSXT_XZDSR.DBRZJHM
  is '代表人证件号码';
comment on column SSXT_XZDSR.DLRXM1
  is '代理人姓名1';
comment on column SSXT_XZDSR.DLRZW1
  is '代理人职务1';
comment on column SSXT_XZDSR.DLRLX1
  is '代理人类型1';
comment on column SSXT_XZDSR.DLRXM2
  is '代理人姓名2';
comment on column SSXT_XZDSR.DLRZW2
  is '代理人职务2';
comment on column SSXT_XZDSR.DLRLX2
  is '代理人类型2';

prompt
prompt Creating table SSXT_XZESAJ
prompt ==========================
prompt
create table SSXT_XZESAJ
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  AJBS         NUMBER,
  DJFY         VARCHAR2(100),
  DJFYJB       VARCHAR2(200),
  YSFYCLR      VARCHAR2(30),
  ESFYCLR      VARCHAR2(30),
  AJLBBS       VARCHAR2(200),
  SPCX         VARCHAR2(10),
  AZ           VARCHAR2(12),
  DSRHB        BLOB,
  SFSPJS       NUMBER,
  DJR          VARCHAR2(30),
  DJBM         VARCHAR2(30),
  DJRQ         DATE,
  SSAJLX       VARCHAR2(30),
  YSXCPFY      VARCHAR2(40),
  YSXAH        VARCHAR2(40),
  TCSSRQ       DATE,
  SDYSFYYSAJRQ DATE,
  PCBD         NUMBER,
  LAAY         VARCHAR2(250),
  LAAYBM       VARCHAR2(20),
  LAAYZS       VARCHAR2(250),
  TQXZPCFS     VARCHAR2(60),
  WSQK         VARCHAR2(40),
  JZSL         NUMBER,
  YSSLF        NUMBER,
  YJSLF        NUMBER,
  JFRQ         DATE,
  SFJJ         NUMBER,
  JJJE         NUMBER,
  SFMJ         NUMBER,
  MJJE         NUMBER,
  SFHJ         NUMBER,
  HJJE         NUMBER,
  SFCCBQ       NUMBER,
  SFZJBQ       NUMBER,
  JJAJLX       VARCHAR2(80),
  SFJZDX       VARCHAR2(50),
  SFJZDXLX     VARCHAR2(20),
  SSQQ         BLOB,
  SSLY         BLOB,
  BZ           BLOB,
  QTSSF        NUMBER,
  SJHM         VARCHAR2(20),
  BDLX         VARCHAR2(30),
  BDJE         NUMBER,
  SFSJZSCQ     NUMBER,
  BQQFSJGB     VARCHAR2(50),
  LABS         NUMBER,
  LARQ         DATE,
  ESLAAH       VARCHAR2(40),
  ESAJBH       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_XZESAJ
  is '行政二审案件';
comment on column SSXT_XZESAJ.FYBM
  is '法院编码';
comment on column SSXT_XZESAJ.AJBS
  is '案件标识';
comment on column SSXT_XZESAJ.DJFY
  is '登记法院';
comment on column SSXT_XZESAJ.DJFYJB
  is '登记法院级别';
comment on column SSXT_XZESAJ.YSFYCLR
  is '原审法院处理人';
comment on column SSXT_XZESAJ.ESFYCLR
  is '二审法院处理人';
comment on column SSXT_XZESAJ.AJLBBS
  is '案件类别标识';
comment on column SSXT_XZESAJ.SPCX
  is '审判程序';
comment on column SSXT_XZESAJ.AZ
  is '案字';
comment on column SSXT_XZESAJ.DSRHB
  is '当事人（合并）';
comment on column SSXT_XZESAJ.SFSPJS
  is '是否审批结束';
comment on column SSXT_XZESAJ.DJR
  is '登记人';
comment on column SSXT_XZESAJ.DJBM
  is '登记部门';
comment on column SSXT_XZESAJ.DJRQ
  is '登记日期';
comment on column SSXT_XZESAJ.SSAJLX
  is '上诉案件类型';
comment on column SSXT_XZESAJ.YSXCPFY
  is '原生效裁判法院';
comment on column SSXT_XZESAJ.YSXAH
  is '原生效案号';
comment on column SSXT_XZESAJ.TCSSRQ
  is '提出上诉日期';
comment on column SSXT_XZESAJ.SDYSFYYSAJRQ
  is '收到一审法院移送案卷日期';
comment on column SSXT_XZESAJ.PCBD
  is '赔偿标的';
comment on column SSXT_XZESAJ.LAAY
  is '立案案由';
comment on column SSXT_XZESAJ.LAAYBM
  is '立案案由编码';
comment on column SSXT_XZESAJ.LAAYZS
  is '立案案由注释';
comment on column SSXT_XZESAJ.TQXZPCFS
  is '提起行政赔偿方式';
comment on column SSXT_XZESAJ.WSQK
  is '五涉情况';
comment on column SSXT_XZESAJ.JZSL
  is '卷宗数量';
comment on column SSXT_XZESAJ.YSSLF
  is '应收受理费';
comment on column SSXT_XZESAJ.YJSLF
  is '预交受理费';
comment on column SSXT_XZESAJ.JFRQ
  is '缴费日期';
comment on column SSXT_XZESAJ.SFJJ
  is '是否减交';
comment on column SSXT_XZESAJ.JJJE
  is '减交金额';
comment on column SSXT_XZESAJ.SFMJ
  is '是否免交';
comment on column SSXT_XZESAJ.MJJE
  is '免交金额';
comment on column SSXT_XZESAJ.SFHJ
  is '是否缓交';
comment on column SSXT_XZESAJ.HJJE
  is '缓交金额';
comment on column SSXT_XZESAJ.SFCCBQ
  is '是否财产保全';
comment on column SSXT_XZESAJ.SFZJBQ
  is '是否证据保全';
comment on column SSXT_XZESAJ.JJAJLX
  is '减交案件类型';
comment on column SSXT_XZESAJ.SFJZDX
  is '司法救助对象';
comment on column SSXT_XZESAJ.SFJZDXLX
  is '司法救助对象类型';
comment on column SSXT_XZESAJ.SSQQ
  is '诉讼请求';
comment on column SSXT_XZESAJ.SSLY
  is '诉讼理由';
comment on column SSXT_XZESAJ.BZ
  is '备注';
comment on column SSXT_XZESAJ.QTSSF
  is '其他诉讼费';
comment on column SSXT_XZESAJ.SJHM
  is '收据号码';
comment on column SSXT_XZESAJ.BDLX
  is '标的类型';
comment on column SSXT_XZESAJ.BDJE
  is '标的金额';
comment on column SSXT_XZESAJ.SFSJZSCQ
  is '是否涉及知识产权';
comment on column SSXT_XZESAJ.BQQFSJGB
  is '被侵权方涉及国别';
comment on column SSXT_XZESAJ.LABS
  is '立案标识';
comment on column SSXT_XZESAJ.LARQ
  is '立案日期';
comment on column SSXT_XZESAJ.ESLAAH
  is '二审立案案号';
comment on column SSXT_XZESAJ.ESAJBH
  is '二审案件编号';

prompt
prompt Creating table SSXT_XZZSAJ
prompt ==========================
prompt
create table SSXT_XZZSAJ
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  AJBS         NUMBER,
  DJFY         VARCHAR2(100),
  DJFYJB       VARCHAR2(200),
  YSFYCLR      VARCHAR2(30),
  ESFYCLR      VARCHAR2(30),
  AJLBBS       VARCHAR2(200),
  SPCX         VARCHAR2(10),
  AZ           VARCHAR2(12),
  DSRHB        BLOB,
  SPJS         NUMBER,
  DJR          VARCHAR2(30),
  DJBM         VARCHAR2(30),
  DJRQ         DATE,
  AJLY         VARCHAR2(30),
  YSCPLX       VARCHAR2(20),
  YSXCPAY      VARCHAR2(100),
  YSXCPFY      VARCHAR2(40),
  YSXAH        VARCHAR2(40),
  YSXRQ        DATE,
  CDZSFLWSBH   VARCHAR2(250),
  KSJGHSQZSR   VARCHAR2(40),
  JZSLS        NUMBER,
  TCKSRQ       DATE,
  KSSBH        VARCHAR2(30),
  JZSL         NUMBER,
  LAAY         VARCHAR2(250),
  LAAYBM       VARCHAR2(20),
  LAAYZS       VARCHAR2(250),
  TQXZPCDFS    VARCHAR2(60),
  YSXPJQDDPCJE NUMBER,
  YSSLF        NUMBER,
  YJSLF        NUMBER,
  JFRQ         DATE,
  SFJJ         NUMBER,
  JJJE         NUMBER,
  SFMJ         NUMBER,
  MJJE         NUMBER,
  SFHJ         NUMBER,
  HJJE         NUMBER,
  JJAJLX       VARCHAR2(80),
  SFJZDX       VARCHAR2(50),
  SFJZDXLX     VARCHAR2(20),
  SSQQ         BLOB,
  SSLY         BLOB,
  BZ           BLOB,
  QTSSF        NUMBER,
  SJHM         VARCHAR2(20),
  BDLX         VARCHAR2(30),
  BDJE         NUMBER,
  SFSJZSCQ     NUMBER,
  BQQFSJGB     VARCHAR2(50),
  LABS         NUMBER,
  LARQ         DATE,
  ESLAAH       VARCHAR2(40),
  ESAJBH       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_XZZSAJ
  is '行政再审案件';
comment on column SSXT_XZZSAJ.FYBM
  is '法院编码';
comment on column SSXT_XZZSAJ.AJBS
  is '案件标识';
comment on column SSXT_XZZSAJ.DJFY
  is '登记法院';
comment on column SSXT_XZZSAJ.DJFYJB
  is '登记法院级别';
comment on column SSXT_XZZSAJ.YSFYCLR
  is '原审法院处理人';
comment on column SSXT_XZZSAJ.ESFYCLR
  is '二审法院处理人';
comment on column SSXT_XZZSAJ.AJLBBS
  is '案件类别标识';
comment on column SSXT_XZZSAJ.SPCX
  is '审判程序';
comment on column SSXT_XZZSAJ.AZ
  is '案字';
comment on column SSXT_XZZSAJ.DSRHB
  is '当事人（合并）';
comment on column SSXT_XZZSAJ.SPJS
  is '审批结束';
comment on column SSXT_XZZSAJ.DJR
  is '登记人';
comment on column SSXT_XZZSAJ.DJBM
  is '登记部门';
comment on column SSXT_XZZSAJ.DJRQ
  is '登记日期';
comment on column SSXT_XZZSAJ.AJLY
  is '案件来源';
comment on column SSXT_XZZSAJ.YSCPLX
  is '原审裁判类型';
comment on column SSXT_XZZSAJ.YSXCPAY
  is '原生效裁判案由';
comment on column SSXT_XZZSAJ.YSXCPFY
  is '原生效裁判法院';
comment on column SSXT_XZZSAJ.YSXAH
  is '原生效案号';
comment on column SSXT_XZZSAJ.YSXRQ
  is '原生效日期';
comment on column SSXT_XZZSAJ.CDZSFLWSBH
  is '裁定再审法律文书编号';
comment on column SSXT_XZZSAJ.KSJGHSQZSR
  is '抗诉机关或申请再审人';
comment on column SSXT_XZZSAJ.JZSLS
  is '卷宗数量s';
comment on column SSXT_XZZSAJ.TCKSRQ
  is '提出抗诉日期';
comment on column SSXT_XZZSAJ.KSSBH
  is '抗诉书编号';
comment on column SSXT_XZZSAJ.JZSL
  is '卷宗数量';
comment on column SSXT_XZZSAJ.LAAY
  is '立案案由';
comment on column SSXT_XZZSAJ.LAAYBM
  is '立案案由编码';
comment on column SSXT_XZZSAJ.LAAYZS
  is '立案案由注释';
comment on column SSXT_XZZSAJ.TQXZPCDFS
  is '提起行政赔偿的方式';
comment on column SSXT_XZZSAJ.YSXPJQDDPCJE
  is '原生效判决确定的赔偿金额(元)';
comment on column SSXT_XZZSAJ.YSSLF
  is '应收受理费';
comment on column SSXT_XZZSAJ.YJSLF
  is '预交受理费';
comment on column SSXT_XZZSAJ.JFRQ
  is '缴费日期';
comment on column SSXT_XZZSAJ.SFJJ
  is '是否减交';
comment on column SSXT_XZZSAJ.JJJE
  is '减交金额';
comment on column SSXT_XZZSAJ.SFMJ
  is '是否免交';
comment on column SSXT_XZZSAJ.MJJE
  is '免交金额';
comment on column SSXT_XZZSAJ.SFHJ
  is '是否缓交';
comment on column SSXT_XZZSAJ.HJJE
  is '缓交金额';
comment on column SSXT_XZZSAJ.JJAJLX
  is '减交案件类型';
comment on column SSXT_XZZSAJ.SFJZDX
  is '司法救助对象';
comment on column SSXT_XZZSAJ.SFJZDXLX
  is '司法救助对象类型';
comment on column SSXT_XZZSAJ.SSQQ
  is '诉讼请求';
comment on column SSXT_XZZSAJ.SSLY
  is '诉讼理由';
comment on column SSXT_XZZSAJ.BZ
  is '备注';
comment on column SSXT_XZZSAJ.QTSSF
  is '其他诉讼费';
comment on column SSXT_XZZSAJ.SJHM
  is '收据号码';
comment on column SSXT_XZZSAJ.BDLX
  is '标的类型';
comment on column SSXT_XZZSAJ.BDJE
  is '标的金额';
comment on column SSXT_XZZSAJ.SFSJZSCQ
  is '是否涉及知识产权';
comment on column SSXT_XZZSAJ.BQQFSJGB
  is '被侵权方涉及国别';
comment on column SSXT_XZZSAJ.LABS
  is '立案标识';
comment on column SSXT_XZZSAJ.LARQ
  is '立案日期';
comment on column SSXT_XZZSAJ.ESLAAH
  is '二审立案案号';
comment on column SSXT_XZZSAJ.ESAJBH
  is '二审案件编号';

prompt
prompt Creating table SSXT_YSPJQK
prompt ==========================
prompt
create table SSXT_YSPJQK
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  PJQK        NUMBER,
  WZYY        NUMBER,
  PCZX        NUMBER,
  HQZX        NUMBER,
  PCZXN       NUMBER,
  PCZXY       NUMBER,
  HXN         NUMBER,
  HXY         NUMBER,
  FJXZL       NUMBER,
  FJXZL2      NUMBER,
  BDZZQLN     NUMBER,
  BDZZQLY     NUMBER,
  BDZZQLZS    NUMBER,
  MSCCSE      NUMBER,
  FJSE        NUMBER,
  FDMSCLJG    VARCHAR2(100),
  FDMSPCJE    NUMBER,
  DWFJSE      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_YSPJQK
  is '原审判决情况(二审、复核、再审等用)';
comment on column SSXT_YSPJQK.FYBM
  is '法院编码';
comment on column SSXT_YSPJQK.BH
  is '编号';
comment on column SSXT_YSPJQK.AJBS
  is '案件标识';
comment on column SSXT_YSPJQK.PJQK
  is '判决情况';
comment on column SSXT_YSPJQK.WZYY
  is '无罪原因';
comment on column SSXT_YSPJQK.PCZX
  is '判处主刑';
comment on column SSXT_YSPJQK.HQZX
  is '缓期执行';
comment on column SSXT_YSPJQK.PCZXN
  is '判处主刑年';
comment on column SSXT_YSPJQK.PCZXY
  is '判处主刑月';
comment on column SSXT_YSPJQK.HXN
  is '缓刑年';
comment on column SSXT_YSPJQK.HXY
  is '缓刑月';
comment on column SSXT_YSPJQK.FJXZL
  is '附加刑种类';
comment on column SSXT_YSPJQK.FJXZL2
  is '附加刑种类2';
comment on column SSXT_YSPJQK.BDZZQLN
  is '剥夺政治权利年';
comment on column SSXT_YSPJQK.BDZZQLY
  is '剥夺政治权利月';
comment on column SSXT_YSPJQK.BDZZQLZS
  is '剥夺政治权利终身';
comment on column SSXT_YSPJQK.MSCCSE
  is '没收财产数额';
comment on column SSXT_YSPJQK.FJSE
  is '罚金数额';
comment on column SSXT_YSPJQK.FDMSCLJG
  is '附带民诉处理结果';
comment on column SSXT_YSPJQK.FDMSPCJE
  is '附带民诉赔偿金额';
comment on column SSXT_YSPJQK.DWFJSE
  is '单位罚金数额';

prompt
prompt Creating table SSXT_ZXAJDJB
prompt ===========================
prompt
create table SSXT_ZXAJDJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  AJBS        NUMBER,
  XFBH        NUMBER,
  LCMC        VARCHAR2(150),
  KSRQ        DATE,
  JSRQ        DATE,
  BM          VARCHAR2(20),
  XM          VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SSXT_ZXAJDJB
  is '执行案件登记表';
comment on column SSXT_ZXAJDJB.FYBM
  is '法院编码';
comment on column SSXT_ZXAJDJB.AJBS
  is '案件标识';
comment on column SSXT_ZXAJDJB.XFBH
  is '信访编号';
comment on column SSXT_ZXAJDJB.LCMC
  is '流程名称';
comment on column SSXT_ZXAJDJB.KSRQ
  is '开始日期';
comment on column SSXT_ZXAJDJB.JSRQ
  is '结束日期';
comment on column SSXT_ZXAJDJB.BM
  is '部门';
comment on column SSXT_ZXAJDJB.XM
  is '姓名';

prompt
prompt Creating table SWHXT_LCHYJLXX
prompt =============================
prompt
create table SWHXT_LCHYJLXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  SWHBS       NUMBER,
  ND          NUMBER,
  NDDJCTL     NUMBER,
  TLCS        NUMBER,
  ZCRBS       NUMBER,
  ZCR         VARCHAR2(40),
  CJWY        VARCHAR2(250),
  CJRS        NUMBER,
  QJWY        VARCHAR2(250),
  QJRS        NUMBER,
  JLRBS       NUMBER,
  JLR         VARCHAR2(40),
  HYJL        BLOB,
  HYJD        BLOB,
  LXRY        VARCHAR2(250),
  TLJSSJ      DATE,
  HYDD        VARCHAR2(100),
  AJXZ        VARCHAR2(20),
  HYYT        VARCHAR2(100),
  GAYJ        VARCHAR2(20),
  AJLY        VARCHAR2(40),
  SWHYJCS     NUMBER,
  JL          VARCHAR2(50),
  JLXS        VARCHAR2(50),
  JLZY        VARCHAR2(100),
  YHYTYJ      VARCHAR2(20),
  SWHJDZY     VARCHAR2(100),
  XCGZ        VARCHAR2(100),
  ZM          VARCHAR2(100),
  ZX          VARCHAR2(50),
  FJX         VARCHAR2(50),
  JCXM        BLOB,
  ZRRBS       NUMBER,
  ZRR         VARCHAR2(40),
  HBRBS       NUMBER,
  HBR         VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SWHXT_LCHYJLXX
  is '历次会议记录信息';
comment on column SWHXT_LCHYJLXX.FYBM
  is '法院编码';
comment on column SWHXT_LCHYJLXX.XH
  is '序号';
comment on column SWHXT_LCHYJLXX.SWHBS
  is '审委会标识';
comment on column SWHXT_LCHYJLXX.ND
  is '年度';
comment on column SWHXT_LCHYJLXX.NDDJCTL
  is '年度第几次讨论';
comment on column SWHXT_LCHYJLXX.TLCS
  is '讨论次数';
comment on column SWHXT_LCHYJLXX.ZCRBS
  is '主持人标识';
comment on column SWHXT_LCHYJLXX.ZCR
  is '主持人';
comment on column SWHXT_LCHYJLXX.CJWY
  is '参加委员';
comment on column SWHXT_LCHYJLXX.CJRS
  is '参加人数';
comment on column SWHXT_LCHYJLXX.QJWY
  is '请假委员';
comment on column SWHXT_LCHYJLXX.QJRS
  is '请假人数';
comment on column SWHXT_LCHYJLXX.JLRBS
  is '记录人标识';
comment on column SWHXT_LCHYJLXX.JLR
  is '记录人';
comment on column SWHXT_LCHYJLXX.HYJL
  is '会议记录';
comment on column SWHXT_LCHYJLXX.HYJD
  is '会议决定';
comment on column SWHXT_LCHYJLXX.LXRY
  is '列席人员';
comment on column SWHXT_LCHYJLXX.TLJSSJ
  is '讨论结束时间';
comment on column SWHXT_LCHYJLXX.HYDD
  is '会议地点';
comment on column SWHXT_LCHYJLXX.AJXZ
  is '案件性质';
comment on column SWHXT_LCHYJLXX.HYYT
  is '会议议题';
comment on column SWHXT_LCHYJLXX.GAYJ
  is '个案研究';
comment on column SWHXT_LCHYJLXX.AJLY
  is '案件来源';
comment on column SWHXT_LCHYJLXX.SWHYJCS
  is '审委会研究次数';
comment on column SWHXT_LCHYJLXX.JL
  is '结论';
comment on column SWHXT_LCHYJLXX.JLXS
  is '结论形式';
comment on column SWHXT_LCHYJLXX.JLZY
  is '结论摘要';
comment on column SWHXT_LCHYJLXX.YHYTYJ
  is '与合议庭意见';
comment on column SWHXT_LCHYJLXX.SWHJDZY
  is '审委会决定摘要';
comment on column SWHXT_LCHYJLXX.XCGZ
  is '形成规则';
comment on column SWHXT_LCHYJLXX.ZM
  is '罪名';
comment on column SWHXT_LCHYJLXX.ZX
  is '主刑';
comment on column SWHXT_LCHYJLXX.FJX
  is '附加刑';
comment on column SWHXT_LCHYJLXX.JCXM
  is '奖惩项目';
comment on column SWHXT_LCHYJLXX.ZRRBS
  is '责任人标识';
comment on column SWHXT_LCHYJLXX.ZRR
  is '责任人';
comment on column SWHXT_LCHYJLXX.HBRBS
  is '汇报人标识';
comment on column SWHXT_LCHYJLXX.HBR
  is '汇报人';

prompt
prompt Creating table SWHXT_QZJLXX
prompt ===========================
prompt
create table SWHXT_QZJLXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  SWHBS       NUMBER,
  QZRBS       NUMBER,
  QZRMC       VARCHAR2(40),
  QZYJ        VARCHAR2(250),
  QZRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SWHXT_QZJLXX
  is '签字记录信息';
comment on column SWHXT_QZJLXX.FYBM
  is '法院编码';
comment on column SWHXT_QZJLXX.XH
  is '序号';
comment on column SWHXT_QZJLXX.SWHBS
  is '审委会标识';
comment on column SWHXT_QZJLXX.QZRBS
  is '签字人标识';
comment on column SWHXT_QZJLXX.QZRMC
  is '签字人名称';
comment on column SWHXT_QZJLXX.QZYJ
  is '签字意见';
comment on column SWHXT_QZJLXX.QZRQ
  is '签字日期';

prompt
prompt Creating table SWHXT_SWHTLFJ
prompt ============================
prompt
create table SWHXT_SWHTLFJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  SWHBS       NUMBER,
  CLLX        VARCHAR2(20),
  CLMC        VARCHAR2(100),
  GLBH        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SWHXT_SWHTLFJ
  is '审委会讨论附件';
comment on column SWHXT_SWHTLFJ.FYBM
  is '法院编码';
comment on column SWHXT_SWHTLFJ.XH
  is '序号';
comment on column SWHXT_SWHTLFJ.SWHBS
  is '审委会标识';
comment on column SWHXT_SWHTLFJ.CLLX
  is '材料类型';
comment on column SWHXT_SWHTLFJ.CLMC
  is '材料名称';
comment on column SWHXT_SWHTLFJ.GLBH
  is '关联编号';

prompt
prompt Creating table SWHXT_SWHZTXX
prompt ============================
prompt
create table SWHXT_SWHZTXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SWHBS       NUMBER,
  SWHBH       VARCHAR2(20),
  AJBS        NUMBER,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  CBRQ        DATE,
  CBDW        VARCHAR2(100),
  BPXM        VARCHAR2(100),
  AJLX        VARCHAR2(20),
  SJ          VARCHAR2(20),
  HJ          VARCHAR2(20),
  DJDWTYD     BLOB,
  TQLY        VARCHAR2(200),
  TQTLSX      VARCHAR2(200),
  APRQ        DATE,
  SWHJDSJ     DATE,
  HYJD        BLOB,
  JLRBS       NUMBER,
  JLR         VARCHAR2(40),
  ZCRBS       NUMBER,
  ZCR         VARCHAR2(40),
  LXRY        VARCHAR2(250),
  BZ          BLOB,
  SPR1BS      NUMBER,
  SPR1        VARCHAR2(40),
  SPR1SFPZ    NUMBER,
  SPR1SPYJ    BLOB,
  SPR1SPRQ    DATE,
  SPR2BS      NUMBER,
  SPR2        VARCHAR2(40),
  SPR2SFPZ    NUMBER,
  SPR2SPYJ    BLOB,
  SPR2SPRQ    DATE,
  SPR3BS      NUMBER,
  SPR3        VARCHAR2(40),
  SPR3SFPZ    NUMBER,
  SPR3SPYJ    BLOB,
  SPR3SPRQ    DATE,
  SPR4BS      NUMBER,
  SPR4        VARCHAR2(40),
  SPR4SPRQ    NUMBER,
  SPR4SPYJ    BLOB,
  YCQFRQ      DATE,
  APRBS       NUMBER,
  APR         VARCHAR2(40),
  SFFSAPR     NUMBER,
  SFBYAP      NUMBER,
  SFFSQZ      NUMBER,
  JSRQ        DATE,
  TLJG        BLOB,
  BYAPLY      VARCHAR2(250),
  GDSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SWHXT_SWHZTXX
  is '审委会主体信息';
comment on column SWHXT_SWHZTXX.FYBM
  is '法院编码';
comment on column SWHXT_SWHZTXX.SWHBS
  is '审委会标识';
comment on column SWHXT_SWHZTXX.SWHBH
  is '审委会编号';
comment on column SWHXT_SWHZTXX.AJBS
  is '案件标识';
comment on column SWHXT_SWHZTXX.CBRBS
  is '呈报人标识';
comment on column SWHXT_SWHZTXX.CBR
  is '呈报人';
comment on column SWHXT_SWHZTXX.CBRQ
  is '呈报日期';
comment on column SWHXT_SWHZTXX.CBDW
  is '呈报单位';
comment on column SWHXT_SWHZTXX.BPXM
  is '报批项目';
comment on column SWHXT_SWHZTXX.AJLX
  is '案件类型';
comment on column SWHXT_SWHZTXX.SJ
  is '审级';
comment on column SWHXT_SWHZTXX.HJ
  is '缓急';
comment on column SWHXT_SWHZTXX.DJDWTYD
  is '待决定问题要点';
comment on column SWHXT_SWHZTXX.TQLY
  is '提请理由';
comment on column SWHXT_SWHZTXX.TQTLSX
  is '提请讨论事项';
comment on column SWHXT_SWHZTXX.APRQ
  is '安排日期';
comment on column SWHXT_SWHZTXX.SWHJDSJ
  is '审委会决定时间';
comment on column SWHXT_SWHZTXX.HYJD
  is '会议决定';
comment on column SWHXT_SWHZTXX.JLRBS
  is '记录人标识';
comment on column SWHXT_SWHZTXX.JLR
  is '记录人';
comment on column SWHXT_SWHZTXX.ZCRBS
  is '主持人标识';
comment on column SWHXT_SWHZTXX.ZCR
  is '主持人';
comment on column SWHXT_SWHZTXX.LXRY
  is '列席人员';
comment on column SWHXT_SWHZTXX.BZ
  is '备注';
comment on column SWHXT_SWHZTXX.SPR1BS
  is '审批人1标识';
comment on column SWHXT_SWHZTXX.SPR1
  is '审批人1';
comment on column SWHXT_SWHZTXX.SPR1SFPZ
  is '审批人1是否批准';
comment on column SWHXT_SWHZTXX.SPR1SPYJ
  is '审批人1审批意见';
comment on column SWHXT_SWHZTXX.SPR1SPRQ
  is '审批人1审批日期';
comment on column SWHXT_SWHZTXX.SPR2BS
  is '审批人2标识';
comment on column SWHXT_SWHZTXX.SPR2
  is '审批人2';
comment on column SWHXT_SWHZTXX.SPR2SFPZ
  is '审批人2是否批准';
comment on column SWHXT_SWHZTXX.SPR2SPYJ
  is '审批人2审批意见';
comment on column SWHXT_SWHZTXX.SPR2SPRQ
  is '审批人2审批日期';
comment on column SWHXT_SWHZTXX.SPR3BS
  is '审批人3标识';
comment on column SWHXT_SWHZTXX.SPR3
  is '审批人3';
comment on column SWHXT_SWHZTXX.SPR3SFPZ
  is '审批人3是否批准';
comment on column SWHXT_SWHZTXX.SPR3SPYJ
  is '审批人3审批意见';
comment on column SWHXT_SWHZTXX.SPR3SPRQ
  is '审批人3审批日期';
comment on column SWHXT_SWHZTXX.SPR4BS
  is '审批人4标识';
comment on column SWHXT_SWHZTXX.SPR4
  is '审批人4';
comment on column SWHXT_SWHZTXX.SPR4SPRQ
  is '审批人4审批日期';
comment on column SWHXT_SWHZTXX.SPR4SPYJ
  is '审批人4审批意见';
comment on column SWHXT_SWHZTXX.YCQFRQ
  is '院长签发日期';
comment on column SWHXT_SWHZTXX.APRBS
  is '安排人标识';
comment on column SWHXT_SWHZTXX.APR
  is '安排人';
comment on column SWHXT_SWHZTXX.SFFSAPR
  is '是否发送安排人';
comment on column SWHXT_SWHZTXX.SFBYAP
  is '是否不予安排';
comment on column SWHXT_SWHZTXX.SFFSQZ
  is '是否发送签字';
comment on column SWHXT_SWHZTXX.JSRQ
  is '结束日期';
comment on column SWHXT_SWHZTXX.TLJG
  is '讨论结果';
comment on column SWHXT_SWHZTXX.BYAPLY
  is '不予安排理由';
comment on column SWHXT_SWHZTXX.GDSJ
  is '归档时间';

prompt
prompt Creating table TXLXT_GRDHB
prompt ==========================
prompt
create table TXLXT_GRDHB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  DHBZRBS     NUMBER,
  DHBZRXM     VARCHAR2(40),
  FYMC        VARCHAR2(100),
  XM          VARCHAR2(40),
  DH          VARCHAR2(20),
  TJSJ        DATE,
  DW          VARCHAR2(200),
  DZ          VARCHAR2(200),
  ZJ          VARCHAR2(3),
  QT          VARCHAR2(200),
  SSFZ        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXLXT_GRDHB
  is '个人电话薄';
comment on column TXLXT_GRDHB.FYBM
  is '法院编码';
comment on column TXLXT_GRDHB.BH
  is '编号';
comment on column TXLXT_GRDHB.DHBZRBS
  is '电话薄主人标识';
comment on column TXLXT_GRDHB.DHBZRXM
  is '电话薄主人姓名';
comment on column TXLXT_GRDHB.FYMC
  is '法院名称';
comment on column TXLXT_GRDHB.XM
  is '姓名';
comment on column TXLXT_GRDHB.DH
  is '电话';
comment on column TXLXT_GRDHB.TJSJ
  is '添加时间';
comment on column TXLXT_GRDHB.DW
  is '单位';
comment on column TXLXT_GRDHB.DZ
  is '地址';
comment on column TXLXT_GRDHB.ZJ
  is '座机';
comment on column TXLXT_GRDHB.QT
  is '其它';
comment on column TXLXT_GRDHB.SSFZ
  is '所属分组';

prompt
prompt Creating table TXLXT_GRDHBFZ
prompt ============================
prompt
create table TXLXT_GRDHBFZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  DHBZRBS     NUMBER,
  FZMC        VARCHAR2(50),
  FYMC        VARCHAR2(100),
  PXYXJ       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXLXT_GRDHBFZ
  is '个人电话薄分组';
comment on column TXLXT_GRDHBFZ.FYBM
  is '法院编码';
comment on column TXLXT_GRDHBFZ.BH
  is '编号';
comment on column TXLXT_GRDHBFZ.DHBZRBS
  is '电话薄主人标识';
comment on column TXLXT_GRDHBFZ.FZMC
  is '分组名称';
comment on column TXLXT_GRDHBFZ.FYMC
  is '法院名称';
comment on column TXLXT_GRDHBFZ.PXYXJ
  is '排序优先级';

prompt
prompt Creating table TXLXT_LYXXB
prompt ==========================
prompt
create table TXLXT_LYXXB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  LYBH        NUMBER,
  BMMC        VARCHAR2(100),
  FYMC        VARCHAR2(100),
  SSBM        VARCHAR2(100),
  RYBS        NUMBER,
  RYXM        VARCHAR2(40),
  LYNR        VARCHAR2(200),
  HFNR        VARCHAR2(200),
  LYSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXLXT_LYXXB
  is '留言信息表';
comment on column TXLXT_LYXXB.FYBM
  is '法院编码';
comment on column TXLXT_LYXXB.LYBH
  is '留言编号';
comment on column TXLXT_LYXXB.BMMC
  is '部门名称';
comment on column TXLXT_LYXXB.FYMC
  is '法院名称';
comment on column TXLXT_LYXXB.SSBM
  is '所属部门';
comment on column TXLXT_LYXXB.RYBS
  is '人员标识';
comment on column TXLXT_LYXXB.RYXM
  is '人员姓名';
comment on column TXLXT_LYXXB.LYNR
  is '留言内容';
comment on column TXLXT_LYXXB.HFNR
  is '回复内容';
comment on column TXLXT_LYXXB.LYSJ
  is '留言时间';

prompt
prompt Creating table TXLXT_XX
prompt =======================
prompt
create table TXLXT_XX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  ZJ          NUMBER,
  FYMC        VARCHAR2(100),
  BMMC        VARCHAR2(100),
  RYXMBS      NUMBER,
  RYXM        VARCHAR2(40),
  ZB          VARCHAR2(50),
  BGSDH       VARCHAR2(30),
  FJH         VARCHAR2(20),
  ZZDH        VARCHAR2(30),
  YDDH        VARCHAR2(20),
  CJRCJR      NUMBER,
  CJR         VARCHAR2(40),
  CJRQ        DATE,
  ZHYCGXR     VARCHAR2(40),
  ZHYCGXRQ    DATE,
  ZHYCCXR     VARCHAR2(40),
  ZHYCCXRQ    DATE,
  CXCS        NUMBER,
  FJHFJH      VARCHAR2(40),
  PX          NUMBER,
  SFGKYDDH    NUMBER,
  SFGKZZDH    NUMBER,
  CJRCJRS     VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXLXT_XX
  is '信息';
comment on column TXLXT_XX.FYBM
  is '法院编码';
comment on column TXLXT_XX.ZJ
  is '主键';
comment on column TXLXT_XX.FYMC
  is '法院名称';
comment on column TXLXT_XX.BMMC
  is '部门名称';
comment on column TXLXT_XX.RYXMBS
  is '人员姓名标识';
comment on column TXLXT_XX.RYXM
  is '人员姓名';
comment on column TXLXT_XX.ZB
  is '职别';
comment on column TXLXT_XX.BGSDH
  is '办公室电话';
comment on column TXLXT_XX.FJH
  is '分机号';
comment on column TXLXT_XX.ZZDH
  is '住宅电话';
comment on column TXLXT_XX.YDDH
  is '移动电话';
comment on column TXLXT_XX.CJRCJR
  is '创建人cjr';
comment on column TXLXT_XX.CJR
  is '创建人';
comment on column TXLXT_XX.CJRQ
  is '创建日期';
comment on column TXLXT_XX.ZHYCGXR
  is '最后一次更新人';
comment on column TXLXT_XX.ZHYCGXRQ
  is '最后一次更新日期';
comment on column TXLXT_XX.ZHYCCXR
  is '最后一次查询人';
comment on column TXLXT_XX.ZHYCCXRQ
  is '最后一次查询日期';
comment on column TXLXT_XX.CXCS
  is '查询次数';
comment on column TXLXT_XX.FJHFJH
  is '房间号fjh';
comment on column TXLXT_XX.PX
  is '排序';
comment on column TXLXT_XX.SFGKYDDH
  is '是否公开移动电话';
comment on column TXLXT_XX.SFGKZZDH
  is '是否公开住宅电话';
comment on column TXLXT_XX.CJRCJRS
  is '创建人cjrs';

prompt
prompt Creating table XFXT_CFDFH
prompt =========================
prompt
create table XFXT_CFDFH
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  XFR         VARCHAR2(100),
  DSR         VARCHAR2(200),
  BH          VARCHAR2(50),
  RQ          DATE,
  YJ          VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_CFDFH
  is '初访答复函';
comment on column XFXT_CFDFH.FYBM
  is '法院编码';
comment on column XFXT_CFDFH.XFBS
  is '信访标识';
comment on column XFXT_CFDFH.XH
  is '序号';
comment on column XFXT_CFDFH.XFR
  is '信访人';
comment on column XFXT_CFDFH.DSR
  is '当事人';
comment on column XFXT_CFDFH.BH
  is '编号';
comment on column XFXT_CFDFH.RQ
  is '日期';
comment on column XFXT_CFDFH.YJ
  is '意见';

prompt
prompt Creating table XFXT_CFJDHFD
prompt ===========================
prompt
create table XFXT_CFJDHFD
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  WDBH        VARCHAR2(100),
  SSR         VARCHAR2(40),
  DHHM        VARCHAR2(50),
  BSSR        VARCHAR2(40),
  YPSJ        DATE,
  AJXZ        VARCHAR2(40),
  YPAH        VARCHAR2(50),
  YPHYT       VARCHAR2(40),
  LXR         VARCHAR2(40),
  XFLXR       VARCHAR2(40),
  XFLXDH      VARCHAR2(50),
  YYJDSJ      DATE,
  JDDD        VARCHAR2(100),
  JFCY        VARCHAR2(100),
  CLYJ        VARCHAR2(200),
  SQRYJ       VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_CFJDHFD
  is '初访接待回复单';
comment on column XFXT_CFJDHFD.FYBM
  is '法院编码';
comment on column XFXT_CFJDHFD.XFBS
  is '信访标识';
comment on column XFXT_CFJDHFD.XH
  is '序号';
comment on column XFXT_CFJDHFD.WDBH
  is '文档编号';
comment on column XFXT_CFJDHFD.SSR
  is '申诉人';
comment on column XFXT_CFJDHFD.DHHM
  is '电话号码';
comment on column XFXT_CFJDHFD.BSSR
  is '被申诉人';
comment on column XFXT_CFJDHFD.YPSJ
  is '原判时间';
comment on column XFXT_CFJDHFD.AJXZ
  is '案件性质';
comment on column XFXT_CFJDHFD.YPAH
  is '原判案号';
comment on column XFXT_CFJDHFD.YPHYT
  is '原判合议庭';
comment on column XFXT_CFJDHFD.LXR
  is '联系人';
comment on column XFXT_CFJDHFD.XFLXR
  is '信访联系人';
comment on column XFXT_CFJDHFD.XFLXDH
  is '信访联系电话';
comment on column XFXT_CFJDHFD.YYJDSJ
  is '预约接待时间';
comment on column XFXT_CFJDHFD.JDDD
  is '接待地点';
comment on column XFXT_CFJDHFD.JFCY
  is '接访成员';
comment on column XFXT_CFJDHFD.CLYJ
  is '处理意见';
comment on column XFXT_CFJDHFD.SQRYJ
  is '申请人意见';

prompt
prompt Creating table XFXT_CFJDTZD
prompt ===========================
prompt
create table XFXT_CFJDTZD
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  YSYG        VARCHAR2(200),
  YSBG        VARCHAR2(200),
  YPAH        VARCHAR2(50),
  YHYT        VARCHAR2(40),
  JASJ        DATE,
  SSR         VARCHAR2(40),
  DH          VARCHAR2(50),
  BSSR        VARCHAR2(40),
  XFFGBS      NUMBER,
  XFFG        VARCHAR2(40),
  TZRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_CFJDTZD
  is '初访接待通知单';
comment on column XFXT_CFJDTZD.FYBM
  is '法院编码';
comment on column XFXT_CFJDTZD.XFBS
  is '信访标识';
comment on column XFXT_CFJDTZD.XH
  is '序号';
comment on column XFXT_CFJDTZD.BH
  is '编号';
comment on column XFXT_CFJDTZD.YSYG
  is '原审原告';
comment on column XFXT_CFJDTZD.YSBG
  is '原审被告';
comment on column XFXT_CFJDTZD.YPAH
  is '原判案号';
comment on column XFXT_CFJDTZD.YHYT
  is '原合议庭';
comment on column XFXT_CFJDTZD.JASJ
  is '结案时间';
comment on column XFXT_CFJDTZD.SSR
  is '申诉人';
comment on column XFXT_CFJDTZD.DH
  is '电话';
comment on column XFXT_CFJDTZD.BSSR
  is '被申诉人';
comment on column XFXT_CFJDTZD.XFFGBS
  is '信访法官标识';
comment on column XFXT_CFJDTZD.XFFG
  is '信访法官';
comment on column XFXT_CFJDTZD.TZRQ
  is '通知日期';

prompt
prompt Creating table XFXT_CZJL
prompt ========================
prompt
create table XFXT_CZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  JDBH        NUMBER,
  JDMC        VARCHAR2(100),
  FSRBS       NUMBER,
  FSR         VARCHAR2(40),
  FSSJ        DATE,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40),
  JSSJ        DATE,
  FSBZ        NUMBER,
  XHS         NUMBER,
  SFJJ        NUMBER,
  SFSC        NUMBER,
  SFCL        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_CZJL
  is '操作记录';
comment on column XFXT_CZJL.FYBM
  is '法院编码';
comment on column XFXT_CZJL.XFBS
  is '信访标识';
comment on column XFXT_CZJL.XH
  is '序号';
comment on column XFXT_CZJL.JDBH
  is '节点编号';
comment on column XFXT_CZJL.JDMC
  is '节点名称';
comment on column XFXT_CZJL.FSRBS
  is '发送人标识';
comment on column XFXT_CZJL.FSR
  is '发送人';
comment on column XFXT_CZJL.FSSJ
  is '发送时间';
comment on column XFXT_CZJL.JSRBS
  is '接收人标识';
comment on column XFXT_CZJL.JSR
  is '接收人';
comment on column XFXT_CZJL.JSSJ
  is '接收时间';
comment on column XFXT_CZJL.FSBZ
  is '发送标志';
comment on column XFXT_CZJL.XHS
  is '序号s';
comment on column XFXT_CZJL.SFJJ
  is '是否紧急';
comment on column XFXT_CZJL.SFSC
  is '是否收藏';
comment on column XFXT_CZJL.SFCL
  is '是否处理';

prompt
prompt Creating table XFXT_LCXFDJ
prompt ==========================
prompt
create table XFXT_LCXFDJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  XFSJ        DATE,
  XFCS        NUMBER,
  SFJTF       NUMBER,
  LFRS        NUMBER,
  SFGJF       NUMBER,
  GJFRS       NUMBER,
  SFLDJD      NUMBER,
  JDR         VARCHAR2(40),
  CLJG        VARCHAR2(250),
  FYQK        BLOB,
  NH          NUMBER,
  AZ          VARCHAR2(40),
  HS          NUMBER,
  BZ          VARCHAR2(250),
  ZFLB        VARCHAR2(20),
  ZFYJ        BLOB,
  SFYJF       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_LCXFDJ
  is '历次信访登记';
comment on column XFXT_LCXFDJ.FYBM
  is '法院编码';
comment on column XFXT_LCXFDJ.XFBS
  is '信访标识';
comment on column XFXT_LCXFDJ.XH
  is '序号';
comment on column XFXT_LCXFDJ.XFSJ
  is '信访时间';
comment on column XFXT_LCXFDJ.XFCS
  is '信访次数';
comment on column XFXT_LCXFDJ.SFJTF
  is '是否集体访';
comment on column XFXT_LCXFDJ.LFRS
  is '来访人数';
comment on column XFXT_LCXFDJ.SFGJF
  is '是否过激访';
comment on column XFXT_LCXFDJ.GJFRS
  is '过激访人数';
comment on column XFXT_LCXFDJ.SFLDJD
  is '是否领导接待';
comment on column XFXT_LCXFDJ.JDR
  is '接待人';
comment on column XFXT_LCXFDJ.CLJG
  is '处理结果';
comment on column XFXT_LCXFDJ.FYQK
  is '反映情况';
comment on column XFXT_LCXFDJ.NH
  is '年号';
comment on column XFXT_LCXFDJ.AZ
  is '案字';
comment on column XFXT_LCXFDJ.HS
  is '号数';
comment on column XFXT_LCXFDJ.BZ
  is '备注';
comment on column XFXT_LCXFDJ.ZFLB
  is '重访类别';
comment on column XFXT_LCXFDJ.ZFYJ
  is '重访意见';
comment on column XFXT_LCXFDJ.SFYJF
  is '是否越级访';

prompt
prompt Creating table XFXT_LCXFSJFY
prompt ============================
prompt
create table XFXT_LCXFSJFY
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  FYMC        VARCHAR2(100),
  XFRQ        DATE,
  ZFRQ        DATE,
  CLJG        VARCHAR2(100),
  CLR         VARCHAR2(100),
  XFCS        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_LCXFSJFY
  is '历次信访涉及法院';
comment on column XFXT_LCXFSJFY.FYBM
  is '法院编码';
comment on column XFXT_LCXFSJFY.XFBS
  is '信访标识';
comment on column XFXT_LCXFSJFY.XH
  is '序号';
comment on column XFXT_LCXFSJFY.FYMC
  is '法院名称';
comment on column XFXT_LCXFSJFY.XFRQ
  is '信访日期';
comment on column XFXT_LCXFSJFY.ZFRQ
  is '重访日期';
comment on column XFXT_LCXFSJFY.CLJG
  is '处理机关';
comment on column XFXT_LCXFSJFY.CLR
  is '处理人';
comment on column XFXT_LCXFSJFY.XFCS
  is '信访次数';

prompt
prompt Creating table XFXT_TZTZS
prompt =========================
prompt
create table XFXT_TZTZS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  WDBH        VARCHAR2(100),
  TZDX        VARCHAR2(100),
  YG          VARCHAR2(200),
  BG          VARCHAR2(200),
  BFPJDSR     VARCHAR2(200),
  CDJG        VARCHAR2(100),
  SXWSBH      VARCHAR2(50),
  SXWSLB      VARCHAR2(20),
  TZSJ        DATE,
  TZDD        VARCHAR2(100),
  TZRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_TZTZS
  is '听证通知书';
comment on column XFXT_TZTZS.FYBM
  is '法院编码';
comment on column XFXT_TZTZS.XFBS
  is '信访标识';
comment on column XFXT_TZTZS.XH
  is '序号';
comment on column XFXT_TZTZS.WDBH
  is '文档编号';
comment on column XFXT_TZTZS.TZDX
  is '通知对象';
comment on column XFXT_TZTZS.YG
  is '原告';
comment on column XFXT_TZTZS.BG
  is '被告';
comment on column XFXT_TZTZS.BFPJDSR
  is '不服判决当事人';
comment on column XFXT_TZTZS.CDJG
  is '裁定机构';
comment on column XFXT_TZTZS.SXWSBH
  is '生效文书编号';
comment on column XFXT_TZTZS.SXWSLB
  is '生效文书类别';
comment on column XFXT_TZTZS.TZSJ
  is '听证时间';
comment on column XFXT_TZTZS.TZDD
  is '听证地点';
comment on column XFXT_TZTZS.TZRQ
  is '通知日期';

prompt
prompt Creating table XFXT_XFDSRJL
prompt ===========================
prompt
create table XFXT_XFDSRJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  SSDW        VARCHAR2(40),
  MC          VARCHAR2(250),
  DWFZR       VARCHAR2(40),
  DWSYZ       VARCHAR2(40),
  XB          VARCHAR2(10),
  NL          NUMBER,
  MZ          VARCHAR2(40),
  SF          VARCHAR2(40),
  WHCD        VARCHAR2(100),
  DZ          VARCHAR2(250),
  CSRQ        DATE,
  BZ          VARCHAR2(250),
  CS          NUMBER,
  PJQK        VARCHAR2(250),
  WZYY        VARCHAR2(250),
  SFBDZZQLZS  NUMBER,
  ZXLX        VARCHAR2(250),
  XQN         NUMBER,
  XQY         NUMBER,
  XQR         NUMBER,
  HXQN        NUMBER,
  HXQY        NUMBER,
  HXQR        NUMBER,
  FJX1        VARCHAR2(250),
  FJX2        VARCHAR2(250),
  MSCCJE      NUMBER,
  FJ          NUMBER,
  BDZZQLN     NUMBER,
  BDZZQLY     NUMBER,
  BDZZQLR     NUMBER,
  FDMSQK      VARCHAR2(250),
  FDMSJE      NUMBER,
  LXFS        VARCHAR2(250),
  SFRDDB      NUMBER,
  SFZXWY      NUMBER,
  SFZMRS      NUMBER,
  JZD         VARCHAR2(250),
  PJQKHB      BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_XFDSRJL
  is '信访当事人记录';
comment on column XFXT_XFDSRJL.FYBM
  is '法院编码';
comment on column XFXT_XFDSRJL.XFBS
  is '信访标识';
comment on column XFXT_XFDSRJL.XH
  is '序号';
comment on column XFXT_XFDSRJL.SSDW
  is '诉讼地位';
comment on column XFXT_XFDSRJL.MC
  is '名称';
comment on column XFXT_XFDSRJL.DWFZR
  is '单位负责人';
comment on column XFXT_XFDSRJL.DWSYZ
  is '单位所有制';
comment on column XFXT_XFDSRJL.XB
  is '性别';
comment on column XFXT_XFDSRJL.NL
  is '年龄';
comment on column XFXT_XFDSRJL.MZ
  is '民族';
comment on column XFXT_XFDSRJL.SF
  is '身份';
comment on column XFXT_XFDSRJL.WHCD
  is '文化程度';
comment on column XFXT_XFDSRJL.DZ
  is '地址';
comment on column XFXT_XFDSRJL.CSRQ
  is '出生日期';
comment on column XFXT_XFDSRJL.BZ
  is '备注';
comment on column XFXT_XFDSRJL.CS
  is '次数';
comment on column XFXT_XFDSRJL.PJQK
  is '判决情况';
comment on column XFXT_XFDSRJL.WZYY
  is '无罪原因';
comment on column XFXT_XFDSRJL.SFBDZZQLZS
  is '是否剥夺政治权利终身';
comment on column XFXT_XFDSRJL.ZXLX
  is '主刑类型';
comment on column XFXT_XFDSRJL.XQN
  is '刑期年';
comment on column XFXT_XFDSRJL.XQY
  is '刑期月';
comment on column XFXT_XFDSRJL.XQR
  is '刑期日';
comment on column XFXT_XFDSRJL.HXQN
  is '缓刑期年';
comment on column XFXT_XFDSRJL.HXQY
  is '缓刑期月';
comment on column XFXT_XFDSRJL.HXQR
  is '缓刑期日';
comment on column XFXT_XFDSRJL.FJX1
  is '附加刑1';
comment on column XFXT_XFDSRJL.FJX2
  is '附加刑2';
comment on column XFXT_XFDSRJL.MSCCJE
  is '民事财产金额';
comment on column XFXT_XFDSRJL.FJ
  is '罚金';
comment on column XFXT_XFDSRJL.BDZZQLN
  is '剥夺政治权利 年';
comment on column XFXT_XFDSRJL.BDZZQLY
  is '剥夺政治权利 月';
comment on column XFXT_XFDSRJL.BDZZQLR
  is '剥夺政治权利 日';
comment on column XFXT_XFDSRJL.FDMSQK
  is '附带没收情况';
comment on column XFXT_XFDSRJL.FDMSJE
  is '附带没收金额';
comment on column XFXT_XFDSRJL.LXFS
  is '联系方式';
comment on column XFXT_XFDSRJL.SFRDDB
  is '是否人大代表';
comment on column XFXT_XFDSRJL.SFZXWY
  is '是否政协委员';
comment on column XFXT_XFDSRJL.SFZMRS
  is '是否知名人士';
comment on column XFXT_XFDSRJL.JZD
  is '居住地';
comment on column XFXT_XFDSRJL.PJQKHB
  is '判决情况（合并）';

prompt
prompt Creating table XFXT_XFHFH
prompt =========================
prompt
create table XFXT_XFHFH
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  WDBH        VARCHAR2(100),
  XFR         VARCHAR2(100),
  YG          VARCHAR2(200),
  BG          VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_XFHFH
  is '信访回复函';
comment on column XFXT_XFHFH.FYBM
  is '法院编码';
comment on column XFXT_XFHFH.XFBS
  is '信访标识';
comment on column XFXT_XFHFH.XH
  is '序号';
comment on column XFXT_XFHFH.WDBH
  is '文档编号';
comment on column XFXT_XFHFH.XFR
  is '信访人';
comment on column XFXT_XFHFH.YG
  is '原告';
comment on column XFXT_XFHFH.BG
  is '被告';

prompt
prompt Creating table XFXT_XFJDAP
prompt ==========================
prompt
create table XFXT_XFJDAP
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  SXH         NUMBER,
  ND          NUMBER,
  HS          NUMBER,
  JDRBS       NUMBER,
  JDR         VARCHAR2(40),
  KSSJ        DATE,
  KHSJ        DATE,
  XFAH        VARCHAR2(50),
  JDDD        VARCHAR2(100),
  DJRQ        DATE,
  DJR         VARCHAR2(40),
  BZ          VARCHAR2(200),
  LFRXM       BLOB,
  CJRY        VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_XFJDAP
  is '信访接待安排';
comment on column XFXT_XFJDAP.FYBM
  is '法院编码';
comment on column XFXT_XFJDAP.XFBS
  is '信访标识';
comment on column XFXT_XFJDAP.XH
  is '序号';
comment on column XFXT_XFJDAP.SXH
  is '顺序号';
comment on column XFXT_XFJDAP.ND
  is '年度';
comment on column XFXT_XFJDAP.HS
  is '号数';
comment on column XFXT_XFJDAP.JDRBS
  is '接待人标识';
comment on column XFXT_XFJDAP.JDR
  is '接待人';
comment on column XFXT_XFJDAP.KSSJ
  is '开始时间';
comment on column XFXT_XFJDAP.KHSJ
  is '开会时间';
comment on column XFXT_XFJDAP.XFAH
  is '信访案号';
comment on column XFXT_XFJDAP.JDDD
  is '接待地点';
comment on column XFXT_XFJDAP.DJRQ
  is '登记日期';
comment on column XFXT_XFJDAP.DJR
  is '登记人';
comment on column XFXT_XFJDAP.BZ
  is '备注';
comment on column XFXT_XFJDAP.LFRXM
  is '来访人姓名';
comment on column XFXT_XFJDAP.CJRY
  is '参加人员';

prompt
prompt Creating table XFXT_XFJDSPB
prompt ===========================
prompt
create table XFXT_XFJDSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  LXLFR       VARCHAR2(200),
  YSAH        VARCHAR2(50),
  YSFY        VARCHAR2(100),
  CBRYJ       VARCHAR2(250),
  FYNR        BLOB,
  SQLY        BLOB,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(40),
  JCSFPZ      NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     BLOB,
  YCSPR       NUMBER,
  YCSFPZ      VARCHAR2(40),
  YCSPYJ      NUMBER,
  YCSPRQ      VARCHAR2(200),
  JDLD        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_XFJDSPB
  is '信访接待审批表';
comment on column XFXT_XFJDSPB.FYBM
  is '法院编码';
comment on column XFXT_XFJDSPB.XFBS
  is '信访标识';
comment on column XFXT_XFJDSPB.XH
  is '序号';
comment on column XFXT_XFJDSPB.BH
  is '编号';
comment on column XFXT_XFJDSPB.LXLFR
  is '来信来访人';
comment on column XFXT_XFJDSPB.YSAH
  is '原审案号';
comment on column XFXT_XFJDSPB.YSFY
  is '原审法院';
comment on column XFXT_XFJDSPB.CBRYJ
  is '承办人意见';
comment on column XFXT_XFJDSPB.FYNR
  is '反映内容';
comment on column XFXT_XFJDSPB.SQLY
  is '申请理由';
comment on column XFXT_XFJDSPB.JCSPRBS
  is '局长审批人标识';
comment on column XFXT_XFJDSPB.JCSPR
  is '局长审批人';
comment on column XFXT_XFJDSPB.JCSFPZ
  is '局长是否批准';
comment on column XFXT_XFJDSPB.JCSPYJ
  is '局长审批意见';
comment on column XFXT_XFJDSPB.JCSPRQ
  is '局长审批日期';
comment on column XFXT_XFJDSPB.YCSPRBS
  is '院长审批人标识';
comment on column XFXT_XFJDSPB.YCSPR
  is '院长审批人';
comment on column XFXT_XFJDSPB.YCSFPZ
  is '院长是否批准';
comment on column XFXT_XFJDSPB.YCSPYJ
  is '院长审批意见';
comment on column XFXT_XFJDSPB.YCSPRQ
  is '院长审批日期';
comment on column XFXT_XFJDSPB.JDLD
  is '接待领导';

prompt
prompt Creating table XFXT_XFLCXX
prompt ==========================
prompt
create table XFXT_XFLCXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  LCBH        NUMBER,
  LCMC        VARCHAR2(100),
  JCTJ        BLOB,
  TSTS        NUMBER,
  ZRRBS       NUMBER,
  ZRR         VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_XFLCXX
  is '信访流程信息';
comment on column XFXT_XFLCXX.FYBM
  is '法院编码';
comment on column XFXT_XFLCXX.LCBH
  is '流程编号';
comment on column XFXT_XFLCXX.LCMC
  is '流程名称';
comment on column XFXT_XFLCXX.JCTJ
  is '检查条件';
comment on column XFXT_XFLCXX.TSTS
  is '提示天数';
comment on column XFXT_XFLCXX.ZRRBS
  is '责任人标识';
comment on column XFXT_XFLCXX.ZRR
  is '责任人';

prompt
prompt Creating table XFXT_XFRZJL
prompt ==========================
prompt
create table XFXT_XFRZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  LCMC        VARCHAR2(200),
  KSRQ        DATE,
  JSRQ        DATE,
  BM          VARCHAR2(100),
  RYBS        NUMBER,
  RYXM        VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_XFRZJL
  is '信访日志记录';
comment on column XFXT_XFRZJL.FYBM
  is '法院编码';
comment on column XFXT_XFRZJL.XFBS
  is '信访标识';
comment on column XFXT_XFRZJL.XH
  is '序号';
comment on column XFXT_XFRZJL.LCMC
  is '流程名称';
comment on column XFXT_XFRZJL.KSRQ
  is '开始日期';
comment on column XFXT_XFRZJL.JSRQ
  is '结束日期';
comment on column XFXT_XFRZJL.BM
  is '部门';
comment on column XFXT_XFRZJL.RYBS
  is '人员标识';
comment on column XFXT_XFRZJL.RYXM
  is '人员姓名';

prompt
prompt Creating table XFXT_XFSJAH
prompt ==========================
prompt
create table XFXT_XFSJAH
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  SJ          DATE,
  YSFY        VARCHAR2(100),
  NH          NUMBER,
  FYJC        VARCHAR2(20),
  AZ          VARCHAR2(20),
  HS          NUMBER,
  FH          NUMBER,
  AJZT        VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_XFSJAH
  is '信访涉及案号';
comment on column XFXT_XFSJAH.FYBM
  is '法院编码';
comment on column XFXT_XFSJAH.XFBS
  is '信访标识';
comment on column XFXT_XFSJAH.XH
  is '序号';
comment on column XFXT_XFSJAH.SJ
  is '时间';
comment on column XFXT_XFSJAH.YSFY
  is '原审法院';
comment on column XFXT_XFSJAH.NH
  is '年号';
comment on column XFXT_XFSJAH.FYJC
  is '法院简称';
comment on column XFXT_XFSJAH.AZ
  is '案字';
comment on column XFXT_XFSJAH.HS
  is '号数';
comment on column XFXT_XFSJAH.FH
  is '副号';
comment on column XFXT_XFSJAH.AJZT
  is '案件状态';

prompt
prompt Creating table XFXT_XFSTWJ
prompt ==========================
prompt
create table XFXT_XFSTWJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  WJMC        VARCHAR2(255),
  STWJM       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_XFSTWJ
  is '信访实体文件';
comment on column XFXT_XFSTWJ.FYBM
  is '法院编码';
comment on column XFXT_XFSTWJ.XFBS
  is '信访标识';
comment on column XFXT_XFSTWJ.XH
  is '序号';
comment on column XFXT_XFSTWJ.WJMC
  is '文件名称';
comment on column XFXT_XFSTWJ.STWJM
  is '实体文件名';

prompt
prompt Creating table XFXT_XFYQSQB
prompt ===========================
prompt
create table XFXT_XFYQSQB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  WDBH        VARCHAR2(100),
  SJ          DATE,
  JTDD        VARCHAR2(100),
  JTRBS       NUMBER,
  JTR         VARCHAR2(40),
  SJYBS       NUMBER,
  SJY         VARCHAR2(40),
  LFR         VARCHAR2(100),
  ZCR         VARCHAR2(100),
  JTJG        BLOB,
  BZ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_XFYQSQB
  is '信访延期申请表';
comment on column XFXT_XFYQSQB.FYBM
  is '法院编码';
comment on column XFXT_XFYQSQB.XFBS
  is '信访标识';
comment on column XFXT_XFYQSQB.XH
  is '序号';
comment on column XFXT_XFYQSQB.WDBH
  is '文档编号';
comment on column XFXT_XFYQSQB.SJ
  is '时间';
comment on column XFXT_XFYQSQB.JTDD
  is '接谈地点';
comment on column XFXT_XFYQSQB.JTRBS
  is '接谈人标识';
comment on column XFXT_XFYQSQB.JTR
  is '接谈人';
comment on column XFXT_XFYQSQB.SJYBS
  is '书记员标识';
comment on column XFXT_XFYQSQB.SJY
  is '书记员';
comment on column XFXT_XFYQSQB.LFR
  is '来访人';
comment on column XFXT_XFYQSQB.ZCR
  is '在场人';
comment on column XFXT_XFYQSQB.JTJG
  is '接谈结果';
comment on column XFXT_XFYQSQB.BZ
  is '备注';

prompt
prompt Creating table XFXT_XFZFJL
prompt ==========================
prompt
create table XFXT_XFZFJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  FSFYMC      VARCHAR2(100),
  JSFYMC      VARCHAR2(100),
  FSSJ        DATE,
  XXFH        NUMBER,
  JSRQ        DATE,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_XFZFJL
  is '信访转发记录';
comment on column XFXT_XFZFJL.FYBM
  is '法院编码';
comment on column XFXT_XFZFJL.XFBS
  is '信访标识';
comment on column XFXT_XFZFJL.XH
  is '序号';
comment on column XFXT_XFZFJL.FSFYMC
  is '发送法院名称';
comment on column XFXT_XFZFJL.JSFYMC
  is '接收法院名称';
comment on column XFXT_XFZFJL.FSSJ
  is '发送时间';
comment on column XFXT_XFZFJL.XXFH
  is '新信访号';
comment on column XFXT_XFZFJL.JSRQ
  is '接收日期';
comment on column XFXT_XFZFJL.JSRBS
  is '接收人标识';
comment on column XFXT_XFZFJL.JSR
  is '接收人';

prompt
prompt Creating table XFXT_XFZTXX
prompt ==========================
prompt
create table XFXT_XFZTXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  AJLB        VARCHAR2(20),
  BT          VARCHAR2(250),
  BH          VARCHAR2(40),
  NH          NUMBER,
  FYJC        VARCHAR2(20),
  AZ          VARCHAR2(40),
  HS          NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  LAAY        VARCHAR2(200),
  CBSPT       VARCHAR2(100),
  XFLY        VARCHAR2(100),
  XFSY        VARCHAR2(100),
  SFLM        NUMBER,
  SFSJJGJB    NUMBER,
  JBDW        VARCHAR2(200),
  JBLDPSNR    VARCHAR2(250),
  SFXFZJ      NUMBER,
  SFYJWK      NUMBER,
  SSDQ        VARCHAR2(40),
  QSSJ        DATE,
  SFHFBLJG    NUMBER,
  BLFS        VARCHAR2(40),
  AJZT        VARCHAR2(40),
  AJCBR       VARCHAR2(40),
  WTLX        VARCHAR2(40),
  FYWTSJFY    VARCHAR2(100),
  SJBM        VARCHAR2(100),
  JDRBS       NUMBER,
  JDR         VARCHAR2(40),
  SJWT        VARCHAR2(200),
  ZCDD        VARCHAR2(100),
  SYNR        BLOB,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  FYZYNR      BLOB,
  SJSYAH      BLOB,
  SXFY        VARCHAR2(100),
  SJSXAH      VARCHAR2(100),
  SFJA        NUMBER,
  JARQ        DATE,
  JAFS        VARCHAR2(200),
  BLQK        BLOB,
  LDPSNR      VARCHAR2(200),
  JABZ        VARCHAR2(100),
  DSR         VARCHAR2(200),
  BZ          VARCHAR2(200),
  XFCS        NUMBER,
  SFXS        NUMBER,
  SFJZ        NUMBER,
  JZJE        NUMBER,
  ZLAAH       VARCHAR2(100),
  ZLARQ       DATE,
  SFBA        NUMBER,
  ZLABH       NUMBER,
  XFFYJC      VARCHAR2(50),
  XJLY        VARCHAR2(20),
  SFGJF       NUMBER,
  GJFRS       NUMBER,
  SFSGCL      NUMBER,
  SGCLRS      NUMBER,
  JDAPBH      NUMBER,
  SFSQJD      NUMBER,
  SFQF        NUMBER,
  SFYCJD      NUMBER,
  SFTCJD      NUMBER,
  XFRS        NUMBER,
  LMRS        NUMBER,
  BLJSQX      DATE,
  SFYJF       NUMBER,
  SFSQJDS     NUMBER,
  JDRZW       VARCHAR2(100),
  XFZT        VARCHAR2(20),
  CLYJ        BLOB,
  CFSFJA      NUMBER,
  CFJARQ      DATE,
  CFNH        NUMBER,
  CFFYJC      VARCHAR2(50),
  CFAZ        VARCHAR2(40),
  CFHS        NUMBER,
  SJFY        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_XFZTXX
  is '信访主体信息';
comment on column XFXT_XFZTXX.FYBM
  is '法院编码';
comment on column XFXT_XFZTXX.XFBS
  is '信访标识';
comment on column XFXT_XFZTXX.AJLB
  is '案件类别';
comment on column XFXT_XFZTXX.BT
  is '标题';
comment on column XFXT_XFZTXX.BH
  is '编号';
comment on column XFXT_XFZTXX.NH
  is '年号';
comment on column XFXT_XFZTXX.FYJC
  is '法院简称';
comment on column XFXT_XFZTXX.AZ
  is '案字';
comment on column XFXT_XFZTXX.HS
  is '号数';
comment on column XFXT_XFZTXX.DJRBS
  is '登记人标识';
comment on column XFXT_XFZTXX.DJR
  is '登记人';
comment on column XFXT_XFZTXX.DJRQ
  is '登记日期';
comment on column XFXT_XFZTXX.LAAY
  is '立案案由';
comment on column XFXT_XFZTXX.CBSPT
  is '承办审判庭';
comment on column XFXT_XFZTXX.XFLY
  is '信访来源';
comment on column XFXT_XFZTXX.XFSY
  is '信访事由';
comment on column XFXT_XFZTXX.SFLM
  is '是否联名';
comment on column XFXT_XFZTXX.SFSJJGJB
  is '是否上级机关交办';
comment on column XFXT_XFZTXX.JBDW
  is '交办单位';
comment on column XFXT_XFZTXX.JBLDPSNR
  is '交办领导批示内容';
comment on column XFXT_XFZTXX.SFXFZJ
  is '是否信访终结';
comment on column XFXT_XFZTXX.SFYJWK
  is '是否移交稳控';
comment on column XFXT_XFZTXX.SSDQ
  is '所属地区';
comment on column XFXT_XFZTXX.QSSJ
  is '签收时间';
comment on column XFXT_XFZTXX.SFHFBLJG
  is '是否回复办理结果';
comment on column XFXT_XFZTXX.BLFS
  is '办理方式';
comment on column XFXT_XFZTXX.AJZT
  is '案件状态';
comment on column XFXT_XFZTXX.AJCBR
  is '案件承办人';
comment on column XFXT_XFZTXX.WTLX
  is '问题类型';
comment on column XFXT_XFZTXX.FYWTSJFY
  is '反映问题涉及法院';
comment on column XFXT_XFZTXX.SJBM
  is '涉及部门';
comment on column XFXT_XFZTXX.JDRBS
  is '接待人标识';
comment on column XFXT_XFZTXX.JDR
  is '接待人';
comment on column XFXT_XFZTXX.SJWT
  is '涉及问题';
comment on column XFXT_XFZTXX.ZCDD
  is '转处地点';
comment on column XFXT_XFZTXX.SYNR
  is '释疑内容';
comment on column XFXT_XFZTXX.CBRBS
  is '承办人标识';
comment on column XFXT_XFZTXX.CBR
  is '承办人';
comment on column XFXT_XFZTXX.FYZYNR
  is '反映主要内容';
comment on column XFXT_XFZTXX.SJSYAH
  is '涉及所有案号';
comment on column XFXT_XFZTXX.SXFY
  is '生效法院';
comment on column XFXT_XFZTXX.SJSXAH
  is '涉及生效案号';
comment on column XFXT_XFZTXX.SFJA
  is '是否结案';
comment on column XFXT_XFZTXX.JARQ
  is '结案日期';
comment on column XFXT_XFZTXX.JAFS
  is '结案方式';
comment on column XFXT_XFZTXX.BLQK
  is '办理情况';
comment on column XFXT_XFZTXX.LDPSNR
  is '领导批示内容';
comment on column XFXT_XFZTXX.JABZ
  is '结案备注';
comment on column XFXT_XFZTXX.DSR
  is '当事人';
comment on column XFXT_XFZTXX.BZ
  is '备注';
comment on column XFXT_XFZTXX.XFCS
  is '信访次数';
comment on column XFXT_XFZTXX.SFXS
  is '是否息诉';
comment on column XFXT_XFZTXX.SFJZ
  is '是否救助';
comment on column XFXT_XFZTXX.JZJE
  is '救助金额';
comment on column XFXT_XFZTXX.ZLAAH
  is '转立案案号';
comment on column XFXT_XFZTXX.ZLARQ
  is '转立案日期';
comment on column XFXT_XFZTXX.SFBA
  is '是否包案';
comment on column XFXT_XFZTXX.ZLABH
  is '转立案编号';
comment on column XFXT_XFZTXX.XFFYJC
  is '信访法院简称';
comment on column XFXT_XFZTXX.XJLY
  is '信件来源';
comment on column XFXT_XFZTXX.SFGJF
  is '是否过激访';
comment on column XFXT_XFZTXX.GJFRS
  is '过激访人数';
comment on column XFXT_XFZTXX.SFSGCL
  is '是否受过处理';
comment on column XFXT_XFZTXX.SGCLRS
  is '受过处理人数';
comment on column XFXT_XFZTXX.JDAPBH
  is '接待安排编号';
comment on column XFXT_XFZTXX.SFSQJD
  is '是否申请接待';
comment on column XFXT_XFZTXX.SFQF
  is '是否遣返';
comment on column XFXT_XFZTXX.SFYCJD
  is '是否院长接待';
comment on column XFXT_XFZTXX.SFTCJD
  is '是否庭长接待';
comment on column XFXT_XFZTXX.XFRS
  is '信访人数';
comment on column XFXT_XFZTXX.LMRS
  is '联名人数';
comment on column XFXT_XFZTXX.BLJSQX
  is '办理结束期限';
comment on column XFXT_XFZTXX.SFYJF
  is '是否越级访';
comment on column XFXT_XFZTXX.SFSQJDS
  is '是否申请接待s';
comment on column XFXT_XFZTXX.JDRZW
  is '接待人职务';
comment on column XFXT_XFZTXX.XFZT
  is '信访状态';
comment on column XFXT_XFZTXX.CLYJ
  is '处理意见';
comment on column XFXT_XFZTXX.CFSFJA
  is '初访是否结案';
comment on column XFXT_XFZTXX.CFJARQ
  is '初访结案日期';
comment on column XFXT_XFZTXX.CFNH
  is '初访年号';
comment on column XFXT_XFZTXX.CFFYJC
  is '初访法院简称';
comment on column XFXT_XFZTXX.CFAZ
  is '初访案字';
comment on column XFXT_XFZTXX.CFHS
  is '初访号数';
comment on column XFXT_XFZTXX.SJFY
  is '上级法院';

prompt
prompt Creating table XFXT_XSTZS
prompt =========================
prompt
create table XFXT_XSTZS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  XFR         VARCHAR2(200),
  YG          VARCHAR2(200),
  BG          VARCHAR2(200),
  XFLY        VARCHAR2(200),
  CDJG        VARCHAR2(100),
  SXWSBH      VARCHAR2(50),
  SXWSLB      VARCHAR2(20),
  TZRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XFXT_XSTZS
  is '息诉通知书';
comment on column XFXT_XSTZS.FYBM
  is '法院编码';
comment on column XFXT_XSTZS.XFBS
  is '信访标识';
comment on column XFXT_XSTZS.XH
  is '序号';
comment on column XFXT_XSTZS.BH
  is '编号';
comment on column XFXT_XSTZS.XFR
  is '信访人';
comment on column XFXT_XSTZS.YG
  is '原告';
comment on column XFXT_XSTZS.BG
  is '被告';
comment on column XFXT_XSTZS.XFLY
  is '信访理由';
comment on column XFXT_XSTZS.CDJG
  is '裁定机构';
comment on column XFXT_XSTZS.SXWSBH
  is '生效文书编号';
comment on column XFXT_XSTZS.SXWSLB
  is '生效文书类别';
comment on column XFXT_XSTZS.TZRQ
  is '通知日期';

prompt
prompt Creating table XZGLXT_LXXX
prompt ==========================
prompt
create table XZGLXT_LXXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SXBH        NUMBER,
  BT          VARCHAR2(100),
  FSRBS       NUMBER,
  FSR         VARCHAR2(40),
  JSBM        VARCHAR2(50),
  JSRBS       NUMBER,
  JSR         VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XZGLXT_LXXX
  is '立项消息';
comment on column XZGLXT_LXXX.FYBM
  is '法院编码';
comment on column XZGLXT_LXXX.BH
  is '编号';
comment on column XZGLXT_LXXX.SXBH
  is '事项编号';
comment on column XZGLXT_LXXX.BT
  is '标题';
comment on column XZGLXT_LXXX.FSRBS
  is '发送人标识';
comment on column XZGLXT_LXXX.FSR
  is '发送人';
comment on column XZGLXT_LXXX.JSBM
  is '接收部门';
comment on column XZGLXT_LXXX.JSRBS
  is '接收人标识';
comment on column XZGLXT_LXXX.JSR
  is '接收人';

prompt
prompt Creating table XZGLXT_SXCXSPB
prompt =============================
prompt
create table XZGLXT_SXCXSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SXBS        NUMBER,
  NR          BLOB,
  SJ          DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XZGLXT_SXCXSPB
  is '事项撤销审批表';
comment on column XZGLXT_SXCXSPB.FYBM
  is '法院编码';
comment on column XZGLXT_SXCXSPB.BH
  is '编号';
comment on column XZGLXT_SXCXSPB.SXBS
  is '事项标识';
comment on column XZGLXT_SXCXSPB.NR
  is '内容';
comment on column XZGLXT_SXCXSPB.SJ
  is '时间';

prompt
prompt Creating table XZGLXT_SXJDXX
prompt ============================
prompt
create table XZGLXT_SXJDXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SXBS        NUMBER,
  BT          VARCHAR2(150),
  BM          VARCHAR2(50),
  RYBS        NUMBER,
  XM          VARCHAR2(40),
  ZT          VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XZGLXT_SXJDXX
  is '事项进度信息';
comment on column XZGLXT_SXJDXX.FYBM
  is '法院编码';
comment on column XZGLXT_SXJDXX.BH
  is '编号';
comment on column XZGLXT_SXJDXX.SXBS
  is '事项标识';
comment on column XZGLXT_SXJDXX.BT
  is '标题';
comment on column XZGLXT_SXJDXX.BM
  is '部门';
comment on column XZGLXT_SXJDXX.RYBS
  is '人员标识';
comment on column XZGLXT_SXJDXX.XM
  is '姓名';
comment on column XZGLXT_SXJDXX.ZT
  is '状态';

prompt
prompt Creating table XZGLXT_SXJDXX2
prompt =============================
prompt
create table XZGLXT_SXJDXX2
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SXBS        NUMBER,
  DBNR        BLOB,
  DBRBS       NUMBER,
  DBR         VARCHAR2(40),
  SJ          DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XZGLXT_SXJDXX2
  is '事项进度信息2';
comment on column XZGLXT_SXJDXX2.FYBM
  is '法院编码';
comment on column XZGLXT_SXJDXX2.BH
  is '编号';
comment on column XZGLXT_SXJDXX2.SXBS
  is '事项标识';
comment on column XZGLXT_SXJDXX2.DBNR
  is '督办内容';
comment on column XZGLXT_SXJDXX2.DBRBS
  is '督办人标识';
comment on column XZGLXT_SXJDXX2.DBR
  is '督办人';
comment on column XZGLXT_SXJDXX2.SJ
  is '时间';

prompt
prompt Creating table XZGLXT_SXLCRZXX
prompt ==============================
prompt
create table XZGLXT_SXLCRZXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SXBS        NUMBER,
  LCBH        NUMBER,
  LCMC        VARCHAR2(100),
  FSRBS       NUMBER,
  FSR         VARCHAR2(40),
  FSSJ        DATE,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40),
  JSSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XZGLXT_SXLCRZXX
  is '事项流程日志信息';
comment on column XZGLXT_SXLCRZXX.FYBM
  is '法院编码';
comment on column XZGLXT_SXLCRZXX.BH
  is '编号';
comment on column XZGLXT_SXLCRZXX.SXBS
  is '事项标识';
comment on column XZGLXT_SXLCRZXX.LCBH
  is '流程编号';
comment on column XZGLXT_SXLCRZXX.LCMC
  is '流程名称';
comment on column XZGLXT_SXLCRZXX.FSRBS
  is '发送人标识';
comment on column XZGLXT_SXLCRZXX.FSR
  is '发送人';
comment on column XZGLXT_SXLCRZXX.FSSJ
  is '发送时间';
comment on column XZGLXT_SXLCRZXX.JSRBS
  is '接收人标识';
comment on column XZGLXT_SXLCRZXX.JSR
  is '接收人';
comment on column XZGLXT_SXLCRZXX.JSSJ
  is '接收时间';

prompt
prompt Creating table XZGLXT_SXST
prompt ==========================
prompt
create table XZGLXT_SXST
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SXBS        NUMBER,
  XH          NUMBER,
  WJMC        VARCHAR2(255),
  STWJM       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XZGLXT_SXST
  is '事项实体';
comment on column XZGLXT_SXST.FYBM
  is '法院编码';
comment on column XZGLXT_SXST.SXBS
  is '事项标识';
comment on column XZGLXT_SXST.XH
  is '序号';
comment on column XZGLXT_SXST.WJMC
  is '文件名称';
comment on column XZGLXT_SXST.STWJM
  is '实体文件名';

prompt
prompt Creating table XZGLXT_SXZTXX
prompt ============================
prompt
create table XZGLXT_SXZTXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SXBS        NUMBER,
  SXXZ        VARCHAR2(40),
  SXLX        VARCHAR2(40),
  BH          VARCHAR2(30),
  JLRBS       NUMBER,
  JLR         VARCHAR2(40),
  LXSJ        DATE,
  WCSJ        DATE,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  CBRBM       VARCHAR2(50),
  SPLDBS      NUMBER,
  SPLD        VARCHAR2(40),
  GZL         NUMBER,
  GZND        VARCHAR2(40),
  XBBM        VARCHAR2(50),
  XBRBS       NUMBER,
  XBR         VARCHAR2(40),
  PJSJ        DATE,
  PJGZL       VARCHAR2(40),
  PJGZXL      VARCHAR2(40),
  PLGZXG      VARCHAR2(40),
  PJGWZL      VARCHAR2(40),
  PJQTKD      VARCHAR2(100),
  BZ          BLOB,
  SFYQ        NUMBER,
  YQTS        NUMBER,
  SFZZ        NUMBER,
  ZZTS        NUMBER,
  SFDB        NUMBER,
  ZTPJ        VARCHAR2(40),
  SXZT        VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XZGLXT_SXZTXX
  is '事项主体信息';
comment on column XZGLXT_SXZTXX.FYBM
  is '法院编码';
comment on column XZGLXT_SXZTXX.SXBS
  is '事项标识';
comment on column XZGLXT_SXZTXX.SXXZ
  is '事项性质';
comment on column XZGLXT_SXZTXX.SXLX
  is '事项类型';
comment on column XZGLXT_SXZTXX.BH
  is '编号';
comment on column XZGLXT_SXZTXX.JLRBS
  is '建立人标识';
comment on column XZGLXT_SXZTXX.JLR
  is '建立人';
comment on column XZGLXT_SXZTXX.LXSJ
  is '立项时间';
comment on column XZGLXT_SXZTXX.WCSJ
  is '完成时间';
comment on column XZGLXT_SXZTXX.CBRBS
  is '承办人标识';
comment on column XZGLXT_SXZTXX.CBR
  is '承办人';
comment on column XZGLXT_SXZTXX.CBRBM
  is '承办人部门';
comment on column XZGLXT_SXZTXX.SPLDBS
  is '审批领导标识';
comment on column XZGLXT_SXZTXX.SPLD
  is '审批领导';
comment on column XZGLXT_SXZTXX.GZL
  is '工作量';
comment on column XZGLXT_SXZTXX.GZND
  is '工作难度';
comment on column XZGLXT_SXZTXX.XBBM
  is '协办部门';
comment on column XZGLXT_SXZTXX.XBRBS
  is '协办人标识';
comment on column XZGLXT_SXZTXX.XBR
  is '协办人';
comment on column XZGLXT_SXZTXX.PJSJ
  is '评价时间';
comment on column XZGLXT_SXZTXX.PJGZL
  is '评价工作量';
comment on column XZGLXT_SXZTXX.PJGZXL
  is '评价工作效率';
comment on column XZGLXT_SXZTXX.PLGZXG
  is '评论工作效果';
comment on column XZGLXT_SXZTXX.PJGWZL
  is '评价公文质量';
comment on column XZGLXT_SXZTXX.PJQTKD
  is '评价其他肯定';
comment on column XZGLXT_SXZTXX.BZ
  is '备注';
comment on column XZGLXT_SXZTXX.SFYQ
  is '是否延期';
comment on column XZGLXT_SXZTXX.YQTS
  is '延期天数';
comment on column XZGLXT_SXZTXX.SFZZ
  is '是否中止';
comment on column XZGLXT_SXZTXX.ZZTS
  is '中止天数';
comment on column XZGLXT_SXZTXX.SFDB
  is '是否督办';
comment on column XZGLXT_SXZTXX.ZTPJ
  is '总体评价';
comment on column XZGLXT_SXZTXX.SXZT
  is '事项状态';

prompt
prompt Creating table XZGLXT_XBRXX
prompt ===========================
prompt
create table XZGLXT_XBRXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SXBS        NUMBER,
  XBRBS       NUMBER,
  XBRMC       VARCHAR2(40),
  XBRBM       VARCHAR2(50),
  XBZT        VARCHAR2(20),
  JLSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XZGLXT_XBRXX
  is '协办人信息';
comment on column XZGLXT_XBRXX.FYBM
  is '法院编码';
comment on column XZGLXT_XBRXX.BH
  is '编号';
comment on column XZGLXT_XBRXX.SXBS
  is '事项标识';
comment on column XZGLXT_XBRXX.XBRBS
  is '协办人标识';
comment on column XZGLXT_XBRXX.XBRMC
  is '协办人名称';
comment on column XZGLXT_XBRXX.XBRBM
  is '协办人部门';
comment on column XZGLXT_XBRXX.XBZT
  is '协办状态';
comment on column XZGLXT_XBRXX.JLSJ
  is '建立时间';

prompt
prompt Creating table XZGLXT_YQSPB
prompt ===========================
prompt
create table XZGLXT_YQSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SXBS        NUMBER,
  YQLY        BLOB,
  YQTS        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XZGLXT_YQSPB
  is '延期审批表';
comment on column XZGLXT_YQSPB.FYBM
  is '法院编码';
comment on column XZGLXT_YQSPB.BH
  is '编号';
comment on column XZGLXT_YQSPB.SXBS
  is '事项标识';
comment on column XZGLXT_YQSPB.YQLY
  is '延期理由';
comment on column XZGLXT_YQSPB.YQTS
  is '延期天数';

prompt
prompt Creating table XZGLXT_YSSPB
prompt ===========================
prompt
create table XZGLXT_YSSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  SXBS        NUMBER,
  NR          BLOB,
  RYYBS       NUMBER,
  RYXM        VARCHAR2(40),
  SJ          DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XZGLXT_YSSPB
  is '移送审批表';
comment on column XZGLXT_YSSPB.FYBM
  is '法院编码';
comment on column XZGLXT_YSSPB.BH
  is '编号';
comment on column XZGLXT_YSSPB.SXBS
  is '事项标识';
comment on column XZGLXT_YSSPB.NR
  is '内容';
comment on column XZGLXT_YSSPB.RYYBS
  is '人员与标识';
comment on column XZGLXT_YSSPB.RYXM
  is '人员姓名';
comment on column XZGLXT_YSSPB.SJ
  is '时间';

prompt
prompt Creating table YCBGHXT_HYAPXX
prompt =============================
prompt
create table YCBGHXT_HYAPXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  HYBS        NUMBER,
  YCBGHZJ     NUMBER,
  NH          NUMBER,
  XH          NUMBER,
  APRQ        DATE,
  APRBS       NUMBER,
  APR         VARCHAR2(40),
  HYKSSJ      DATE,
  HYJSSJ      DATE,
  ZCRBS       NUMBER,
  ZCR         VARCHAR2(40),
  CJWY        VARCHAR2(250),
  CJRS        NUMBER,
  QJWY        VARCHAR2(250),
  QJRS        NUMBER,
  LXRY        VARCHAR2(250),
  HYDD        VARCHAR2(250),
  JLRBS       NUMBER,
  JLR         VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YCBGHXT_HYAPXX
  is '会议安排信息';
comment on column YCBGHXT_HYAPXX.FYBM
  is '法院编码';
comment on column YCBGHXT_HYAPXX.HYBS
  is '会议标识';
comment on column YCBGHXT_HYAPXX.YCBGHZJ
  is '院长办公会主键';
comment on column YCBGHXT_HYAPXX.NH
  is '年号';
comment on column YCBGHXT_HYAPXX.XH
  is '序号';
comment on column YCBGHXT_HYAPXX.APRQ
  is '安排日期';
comment on column YCBGHXT_HYAPXX.APRBS
  is '安排人标识';
comment on column YCBGHXT_HYAPXX.APR
  is '安排人';
comment on column YCBGHXT_HYAPXX.HYKSSJ
  is '会议开始时间';
comment on column YCBGHXT_HYAPXX.HYJSSJ
  is '会议结束时间';
comment on column YCBGHXT_HYAPXX.ZCRBS
  is '主持人标识';
comment on column YCBGHXT_HYAPXX.ZCR
  is '主持人';
comment on column YCBGHXT_HYAPXX.CJWY
  is '参加委员';
comment on column YCBGHXT_HYAPXX.CJRS
  is '参加人数';
comment on column YCBGHXT_HYAPXX.QJWY
  is '请假委员';
comment on column YCBGHXT_HYAPXX.QJRS
  is '请假人数';
comment on column YCBGHXT_HYAPXX.LXRY
  is '列席人员';
comment on column YCBGHXT_HYAPXX.HYDD
  is '会议地点';
comment on column YCBGHXT_HYAPXX.JLRBS
  is '记录人标识';
comment on column YCBGHXT_HYAPXX.JLR
  is '记录人';

prompt
prompt Creating table YCBGHXT_YCBGHCHRY
prompt ================================
prompt
create table YCBGHXT_YCBGHCHRY
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  RYBS        NUMBER,
  RYXM        VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YCBGHXT_YCBGHCHRY
  is '院长办公会参会人员';
comment on column YCBGHXT_YCBGHCHRY.FYBM
  is '法院编码';
comment on column YCBGHXT_YCBGHCHRY.XH
  is '序号';
comment on column YCBGHXT_YCBGHCHRY.RYBS
  is '人员标识';
comment on column YCBGHXT_YCBGHCHRY.RYXM
  is '人员姓名';

prompt
prompt Creating table YCBGHXT_YCBGHXX
prompt ==============================
prompt
create table YCBGHXT_YCBGHXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  YCBGHBS     NUMBER,
  BH          VARCHAR2(20),
  GWBS        NUMBER,
  YTBT        VARCHAR2(250),
  YTBH        VARCHAR2(50),
  NGRBS       NUMBER,
  NGR         VARCHAR2(40),
  HBRBS       NUMBER,
  HBR         VARCHAR2(40),
  CBRQ        DATE,
  CBDW        VARCHAR2(50),
  HYKSSJ      DATE,
  GWDYSPRBS   NUMBER,
  GWDYSPR     VARCHAR2(40),
  THBZ        NUMBER,
  STWJM       VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YCBGHXT_YCBGHXX
  is '院长办公会信息';
comment on column YCBGHXT_YCBGHXX.FYBM
  is '法院编码';
comment on column YCBGHXT_YCBGHXX.YCBGHBS
  is '院长办公会标识';
comment on column YCBGHXT_YCBGHXX.BH
  is '编号';
comment on column YCBGHXT_YCBGHXX.GWBS
  is '公文标识';
comment on column YCBGHXT_YCBGHXX.YTBT
  is '议题标题';
comment on column YCBGHXT_YCBGHXX.YTBH
  is '议题编号';
comment on column YCBGHXT_YCBGHXX.NGRBS
  is '拟稿人标识';
comment on column YCBGHXT_YCBGHXX.NGR
  is '拟稿人';
comment on column YCBGHXT_YCBGHXX.HBRBS
  is '汇报人标识';
comment on column YCBGHXT_YCBGHXX.HBR
  is '汇报人';
comment on column YCBGHXT_YCBGHXX.CBRQ
  is '呈报日期';
comment on column YCBGHXT_YCBGHXX.CBDW
  is '呈报单位';
comment on column YCBGHXT_YCBGHXX.HYKSSJ
  is '会议开始时间';
comment on column YCBGHXT_YCBGHXX.GWDYSPRBS
  is '公文第一审批人标识';
comment on column YCBGHXT_YCBGHXX.GWDYSPR
  is '公文第一审批人';
comment on column YCBGHXT_YCBGHXX.THBZ
  is '退回标志';
comment on column YCBGHXT_YCBGHXX.STWJM
  is '实体文件名';

prompt
prompt Creating table YCBGHXT_YCBGHZXRYJL
prompt ==================================
prompt
create table YCBGHXT_YCBGHZXRYJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  HYAPBS      NUMBER,
  RYBS        NUMBER,
  RYXM        VARCHAR2(40),
  DLSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YCBGHXT_YCBGHZXRYJL
  is '院长办公会在线人员记录';
comment on column YCBGHXT_YCBGHZXRYJL.FYBM
  is '法院编码';
comment on column YCBGHXT_YCBGHZXRYJL.XH
  is '序号';
comment on column YCBGHXT_YCBGHZXRYJL.HYAPBS
  is '会议安排标识';
comment on column YCBGHXT_YCBGHZXRYJL.RYBS
  is '人员标识';
comment on column YCBGHXT_YCBGHZXRYJL.RYXM
  is '人员姓名';
comment on column YCBGHXT_YCBGHZXRYJL.DLSJ
  is '登录时间';

prompt
prompt Creating table YJXT_YJJSXX
prompt ==========================
prompt
create table YJXT_YJJSXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  JSBS        NUMBER,
  YJBS        NUMBER,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40),
  YDBZ        NUMBER,
  YDSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YJXT_YJJSXX
  is '邮件接收信息';
comment on column YJXT_YJJSXX.FYBM
  is '法院编码';
comment on column YJXT_YJJSXX.JSBS
  is '接收标识';
comment on column YJXT_YJJSXX.YJBS
  is '邮件标识';
comment on column YJXT_YJJSXX.JSRBS
  is '接收人标识';
comment on column YJXT_YJJSXX.JSR
  is '接收人';
comment on column YJXT_YJJSXX.YDBZ
  is '阅读标志';
comment on column YJXT_YJJSXX.YDSJ
  is '阅读时间';

prompt
prompt Creating table YJXT_YJXX
prompt ========================
prompt
create table YJXT_YJXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  FJBS        NUMBER,
  YJBS        NUMBER,
  WJM         VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YJXT_YJXX
  is '邮件信息';
comment on column YJXT_YJXX.FYBM
  is '法院编码';
comment on column YJXT_YJXX.FJBS
  is '附件标识';
comment on column YJXT_YJXX.YJBS
  is '邮件标识';
comment on column YJXT_YJXX.WJM
  is '文件名';

prompt
prompt Creating table YJXT_YJXX2
prompt =========================
prompt
create table YJXT_YJXX2
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  YJBS        NUMBER,
  BMMC        VARCHAR2(100),
  FSRBS       NUMBER,
  FSR         VARCHAR2(40),
  BT          VARCHAR2(250),
  NR          BLOB,
  FSRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YJXT_YJXX2
  is '邮件信息2';
comment on column YJXT_YJXX2.FYBM
  is '法院编码';
comment on column YJXT_YJXX2.YJBS
  is '邮件标识';
comment on column YJXT_YJXX2.BMMC
  is '部门名称';
comment on column YJXT_YJXX2.FSRBS
  is '发送人标识';
comment on column YJXT_YJXX2.FSR
  is '发送人';
comment on column YJXT_YJXX2.BT
  is '标题';
comment on column YJXT_YJXX2.NR
  is '内容';
comment on column YJXT_YJXX2.FSRQ
  is '发送日期';

prompt
prompt Creating table YZGZAP_APXX
prompt ==========================
prompt
create table YZGZAP_APXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  APBS        NUMBER,
  GZRQ        DATE,
  GZSJ        DATE,
  GZSX        VARCHAR2(250),
  SYFW        VARCHAR2(20),
  RYBS        NUMBER,
  RY          VARCHAR2(40),
  APRBS       NUMBER,
  APR         VARCHAR2(40),
  SXWBS       NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YZGZAP_APXX
  is '安排信息';
comment on column YZGZAP_APXX.FYBM
  is '法院编码';
comment on column YZGZAP_APXX.APBS
  is '安排标识';
comment on column YZGZAP_APXX.GZRQ
  is '工作日期';
comment on column YZGZAP_APXX.GZSJ
  is '工作时间';
comment on column YZGZAP_APXX.GZSX
  is '工作事项';
comment on column YZGZAP_APXX.SYFW
  is '适用范围';
comment on column YZGZAP_APXX.RYBS
  is '人员标识';
comment on column YZGZAP_APXX.RY
  is '人员';
comment on column YZGZAP_APXX.APRBS
  is '安排人标识';
comment on column YZGZAP_APXX.APR
  is '安排人';
comment on column YZGZAP_APXX.SXWBS
  is '上下午标识';

prompt
prompt Creating table ZXDBXT_DBLZJL
prompt ============================
prompt
create table ZXDBXT_DBLZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  DBBS        NUMBER,
  GZMC        VARCHAR2(100),
  FSRBS       NUMBER,
  FSR         VARCHAR2(40),
  FSSJ        DATE,
  JSRBS       NUMBER,
  JSR         VARCHAR2(40),
  JSSJ        DATE,
  FSBS        NUMBER,
  SFJJ        NUMBER,
  SFSC        NUMBER,
  SFCL        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXDBXT_DBLZJL
  is '督办流转记录';
comment on column ZXDBXT_DBLZJL.FYBM
  is '法院编码';
comment on column ZXDBXT_DBLZJL.XH
  is '序号';
comment on column ZXDBXT_DBLZJL.DBBS
  is '督办标识';
comment on column ZXDBXT_DBLZJL.GZMC
  is '工作名称';
comment on column ZXDBXT_DBLZJL.FSRBS
  is '发送人标识';
comment on column ZXDBXT_DBLZJL.FSR
  is '发送人';
comment on column ZXDBXT_DBLZJL.FSSJ
  is '发送时间';
comment on column ZXDBXT_DBLZJL.JSRBS
  is '接收人标识';
comment on column ZXDBXT_DBLZJL.JSR
  is '接收人';
comment on column ZXDBXT_DBLZJL.JSSJ
  is '接收时间';
comment on column ZXDBXT_DBLZJL.FSBS
  is '发送标识';
comment on column ZXDBXT_DBLZJL.SFJJ
  is '是否紧急';
comment on column ZXDBXT_DBLZJL.SFSC
  is '是否收藏';
comment on column ZXDBXT_DBLZJL.SFCL
  is '是否处理';

prompt
prompt Creating table ZXDBXT_DBRZJL
prompt ============================
prompt
create table ZXDBXT_DBRZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  DBBS        NUMBER,
  LCMC        VARCHAR2(100),
  KSRQ        DATE,
  JSRQ        DATE,
  BM          VARCHAR2(100),
  RYBS        NUMBER,
  RYXM        VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXDBXT_DBRZJL
  is '督办日志记录';
comment on column ZXDBXT_DBRZJL.FYBM
  is '法院编码';
comment on column ZXDBXT_DBRZJL.XH
  is '序号';
comment on column ZXDBXT_DBRZJL.DBBS
  is '督办标识';
comment on column ZXDBXT_DBRZJL.LCMC
  is '流程名称';
comment on column ZXDBXT_DBRZJL.KSRQ
  is '开始日期';
comment on column ZXDBXT_DBRZJL.JSRQ
  is '结束日期';
comment on column ZXDBXT_DBRZJL.BM
  is '部门';
comment on column ZXDBXT_DBRZJL.RYBS
  is '人员标识';
comment on column ZXDBXT_DBRZJL.RYXM
  is '人员姓名';

prompt
prompt Creating table ZXDBXT_DBST
prompt ==========================
prompt
create table ZXDBXT_DBST
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  DBBS        NUMBER,
  XH          NUMBER,
  STLX        VARCHAR2(10),
  WJMC        VARCHAR2(255),
  STWJM       BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXDBXT_DBST
  is '督办实体';
comment on column ZXDBXT_DBST.FYBM
  is '法院编码';
comment on column ZXDBXT_DBST.DBBS
  is '督办标识';
comment on column ZXDBXT_DBST.XH
  is '序号';
comment on column ZXDBXT_DBST.STLX
  is '实体类型';
comment on column ZXDBXT_DBST.WJMC
  is '文件名称';
comment on column ZXDBXT_DBST.STWJM
  is '实体文件名';

prompt
prompt Creating table ZXDBXT_ZXDBZTXX
prompt ==============================
prompt
create table ZXDBXT_ZXDBZTXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  DBBS        NUMBER,
  DCDBLB      NUMBER,
  LWBT        VARCHAR2(250),
  DBWH        VARCHAR2(100),
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  LWBH        VARCHAR2(100),
  LWDW        VARCHAR2(250),
  SJFY        VARCHAR2(100),
  SJAH        VARCHAR2(50),
  YAJCBR      VARCHAR2(40),
  SQR         VARCHAR2(200),
  BZXR        VARCHAR2(200),
  FYNR        BLOB,
  PSLD        VARCHAR2(40),
  PSDW        VARCHAR2(100),
  PSRQ        DATE,
  PSNR        BLOB,
  DBJSRQ      DATE,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  CBBM        VARCHAR2(100),
  LJBZ        NUMBER,
  LJRQ        DATE,
  SFTQGD      NUMBER,
  TQGDRQ      DATE,
  SFGD        NUMBER,
  SFYQ        NUMBER,
  GDH         VARCHAR2(50),
  GDRQ        DATE,
  SQYCBJQX    NUMBER,
  SJAJBH      NUMBER,
  DBHFRQ      DATE,
  ZXZM        VARCHAR2(50),
  ZXCM        VARCHAR2(50),
  SFLRZB      NUMBER,
  QQLB        VARCHAR2(40),
  CJ          VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXDBXT_ZXDBZTXX
  is '执行督办主体信息';
comment on column ZXDBXT_ZXDBZTXX.FYBM
  is '法院编码';
comment on column ZXDBXT_ZXDBZTXX.DBBS
  is '督办标识';
comment on column ZXDBXT_ZXDBZTXX.DCDBLB
  is '督查督办类别';
comment on column ZXDBXT_ZXDBZTXX.LWBT
  is '来文标题';
comment on column ZXDBXT_ZXDBZTXX.DBWH
  is '督办文号';
comment on column ZXDBXT_ZXDBZTXX.DJRBS
  is '登记人标识';
comment on column ZXDBXT_ZXDBZTXX.DJR
  is '登记人';
comment on column ZXDBXT_ZXDBZTXX.DJRQ
  is '登记日期';
comment on column ZXDBXT_ZXDBZTXX.LWBH
  is '来文编号';
comment on column ZXDBXT_ZXDBZTXX.LWDW
  is '来文单位';
comment on column ZXDBXT_ZXDBZTXX.SJFY
  is '涉及法院';
comment on column ZXDBXT_ZXDBZTXX.SJAH
  is '涉及案号';
comment on column ZXDBXT_ZXDBZTXX.YAJCBR
  is '原案件承办人';
comment on column ZXDBXT_ZXDBZTXX.SQR
  is '申请人';
comment on column ZXDBXT_ZXDBZTXX.BZXR
  is '被执行人';
comment on column ZXDBXT_ZXDBZTXX.FYNR
  is '反映内容';
comment on column ZXDBXT_ZXDBZTXX.PSLD
  is '批示领导';
comment on column ZXDBXT_ZXDBZTXX.PSDW
  is '批示单位';
comment on column ZXDBXT_ZXDBZTXX.PSRQ
  is '批示日期';
comment on column ZXDBXT_ZXDBZTXX.PSNR
  is '批示内容';
comment on column ZXDBXT_ZXDBZTXX.DBJSRQ
  is '督办结束日期';
comment on column ZXDBXT_ZXDBZTXX.CBRBS
  is '承办人标识';
comment on column ZXDBXT_ZXDBZTXX.CBR
  is '承办人';
comment on column ZXDBXT_ZXDBZTXX.CBBM
  is '承办部门';
comment on column ZXDBXT_ZXDBZTXX.LJBZ
  is '了结标志';
comment on column ZXDBXT_ZXDBZTXX.LJRQ
  is '了结日期';
comment on column ZXDBXT_ZXDBZTXX.SFTQGD
  is '是否提请归档';
comment on column ZXDBXT_ZXDBZTXX.TQGDRQ
  is '提请归档日期';
comment on column ZXDBXT_ZXDBZTXX.SFGD
  is '是否归档';
comment on column ZXDBXT_ZXDBZTXX.SFYQ
  is '是否延期';
comment on column ZXDBXT_ZXDBZTXX.GDH
  is '归档号';
comment on column ZXDBXT_ZXDBZTXX.GDRQ
  is '归档日期';
comment on column ZXDBXT_ZXDBZTXX.SQYCBJQX
  is '申请延长办结期限';
comment on column ZXDBXT_ZXDBZTXX.SJAJBH
  is '涉及案件编号';
comment on column ZXDBXT_ZXDBZTXX.DBHFRQ
  is '督办回复日期';
comment on column ZXDBXT_ZXDBZTXX.ZXZM
  is '执行组名';
comment on column ZXDBXT_ZXDBZTXX.ZXCM
  is '执行处名';
comment on column ZXDBXT_ZXDBZTXX.SFLRZB
  is '是否列入周报';
comment on column ZXDBXT_ZXDBZTXX.QQLB
  is '请求类别';
comment on column ZXDBXT_ZXDBZTXX.CJ
  is '层级';

prompt
prompt Creating table ZXPGXT_AJXX
prompt ==========================
prompt
create table ZXPGXT_AJXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  AJBS        NUMBER,
  FYNAJBS     NUMBER,
  AH          VARCHAR2(50),
  ND          NUMBER,
  FYJC        VARCHAR2(20),
  AZ          VARCHAR2(20),
  HS          NUMBER,
  AJLB        VARCHAR2(20),
  SPCX        VARCHAR2(20),
  SYCX        VARCHAR2(20),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  CBSPT       VARCHAR2(50),
  LARQ        DATE,
  JARQ        DATE,
  GDRQ        DATE,
  SDESSZRQ    DATE,
  SFCL        NUMBER,
  SFLA        NUMBER,
  SFJA        NUMBER,
  JAFS        VARCHAR2(50),
  ZXAJ        NUMBER,
  GKSP        NUMBER,
  ESJAFS      VARCHAR2(50),
  FHZSYY      VARCHAR2(250),
  SFPSYCY     NUMBER,
  SFCS        NUMBER,
  LFRQ        DATE,
  KTTZ        NUMBER,
  KTTZCS      NUMBER,
  SFSX        NUMBER,
  BYAJ        NUMBER,
  SABD        NUMBER,
  JABD        NUMBER,
  FDSX        NUMBER,
  FDKCSJ      NUMBER,
  CXTS        NUMBER,
  ZRTS        NUMBER,
  SZH         NUMBER,
  KTCD        NUMBER,
  SFZZG       NUMBER,
  DQSFZZ      NUMBER,
  GXYY        NUMBER,
  SSRQ        DATE,
  ZSRQ        DATE,
  AJLY        VARCHAR2(20),
  SDSZRQS     DATE,
  SJYBS       NUMBER,
  SJY         VARCHAR2(40),
  SPCBS       NUMBER,
  SPC         VARCHAR2(40),
  SFSFLH      NUMBER,
  ZSJAFS      VARCHAR2(50),
  ZSJARQ      DATE,
  ESJARQ      DATE,
  DTXP        NUMBER,
  WSQK        NUMBER,
  SJFYSDCS    NUMBER,
  LAAY        VARCHAR2(200),
  JAAY        VARCHAR2(200),
  YSFY        VARCHAR2(100),
  YSAH        VARCHAR2(50),
  SFZRR       NUMBER,
  MSAJ        NUMBER,
  YCBT        VARCHAR2(50),
  YCBR        VARCHAR2(40),
  XSTZJSRQ    DATE,
  JLGXRQ      DATE,
  SXJSRQ      DATE,
  SDSZRQ      DATE,
  FDMSJAFS    VARCHAR2(200),
  SFYQ        NUMBER,
  YQTS        NUMBER,
  SFKC        NUMBER,
  KCTS        NUMBER,
  ZZTS        NUMBER,
  FDMSSS      NUMBER,
  WSPCAJ      NUMBER,
  PCDF        FLOAT,
  SCZZRQ      DATE,
  ZHZZRQ      DATE,
  PCLB        VARCHAR2(20),
  LARBS       NUMBER,
  LAR         VARCHAR2(40),
  LABM        VARCHAR2(50),
  YSLABM      VARCHAR2(50),
  YSLAR       VARCHAR2(40),
  AJSXRQ      DATE,
  SFFHAJ      NUMBER,
  SFLABG      NUMBER,
  YSSFLQGLAJ  NUMBER,
  SFLQGLAJ    NUMBER,
  GPYY        VARCHAR2(200),
  SSAJLX      VARCHAR2(50),
  YSJAFS      VARCHAR2(50),
  SFCA        NUMBER,
  FJXZL       VARCHAR2(20),
  XZPCTQFS    VARCHAR2(20),
  CSLY        VARCHAR2(50),
  GKKTGG      NUMBER,
  GKJDPGGG    NUMBER,
  GKJDPGRQ    NUMBER,
  GKLA        NUMBER,
  GKSPGKSP    NUMBER,
  GKWS        NUMBER,
  GKZJ        NUMBER,
  SSAJYSCLRQ  DATE,
  GKLASH      NUMBER,
  GKSPSH      NUMBER,
  GKWSSH      NUMBER,
  GKZJSH      NUMBER,
  SJRQ        DATE,
  GKSPXXRQ    DATE,
  GKCPWSRQ    DATE,
  GKZJRQ      DATE,
  GKZXXXRQ    DATE,
  KTGGRQ      DATE,
  ZXAJBDLX    VARCHAR2(50),
  YSSPC       VARCHAR2(40),
  DTJSZX      NUMBER,
  QTSSLB      VARCHAR2(50),
  ZJBCZXAJ    NUMBER,
  ESTJRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXPGXT_AJXX
  is '案件信息';
comment on column ZXPGXT_AJXX.FYBM
  is '法院编码';
comment on column ZXPGXT_AJXX.AJBS
  is '案件标识';
comment on column ZXPGXT_AJXX.FYNAJBS
  is '法院内案件标识';
comment on column ZXPGXT_AJXX.AH
  is '案号';
comment on column ZXPGXT_AJXX.ND
  is '年度';
comment on column ZXPGXT_AJXX.FYJC
  is '法院简称';
comment on column ZXPGXT_AJXX.AZ
  is '案字';
comment on column ZXPGXT_AJXX.HS
  is '号数';
comment on column ZXPGXT_AJXX.AJLB
  is '案件类别';
comment on column ZXPGXT_AJXX.SPCX
  is '审判程序';
comment on column ZXPGXT_AJXX.SYCX
  is '适用程序';
comment on column ZXPGXT_AJXX.CBRBS
  is '承办人标识';
comment on column ZXPGXT_AJXX.CBR
  is '承办人';
comment on column ZXPGXT_AJXX.CBSPT
  is '承办审判庭';
comment on column ZXPGXT_AJXX.LARQ
  is '立案日期';
comment on column ZXPGXT_AJXX.JARQ
  is '结案日期';
comment on column ZXPGXT_AJXX.GDRQ
  is '归档日期';
comment on column ZXPGXT_AJXX.SDESSZRQ
  is '收到二审诉状日期(上诉日期)';
comment on column ZXPGXT_AJXX.SFCL
  is '是否处理';
comment on column ZXPGXT_AJXX.SFLA
  is '是否立案';
comment on column ZXPGXT_AJXX.SFJA
  is '是否结案';
comment on column ZXPGXT_AJXX.JAFS
  is '结案方式';
comment on column ZXPGXT_AJXX.ZXAJ
  is '执行案件';
comment on column ZXPGXT_AJXX.GKSP
  is '公开审判';
comment on column ZXPGXT_AJXX.ESJAFS
  is '二审结案方式';
comment on column ZXPGXT_AJXX.FHZSYY
  is '发回重审原因';
comment on column ZXPGXT_AJXX.SFPSYCY
  is '是否陪审员参与';
comment on column ZXPGXT_AJXX.SFCS
  is '上访次数';
comment on column ZXPGXT_AJXX.LFRQ
  is '来访日期';
comment on column ZXPGXT_AJXX.KTTZ
  is '开庭听政';
comment on column ZXPGXT_AJXX.KTTZCS
  is '开庭/听证次数';
comment on column ZXPGXT_AJXX.SFSX
  is '是否生效';
comment on column ZXPGXT_AJXX.BYAJ
  is '本院案件';
comment on column ZXPGXT_AJXX.SABD
  is '收案标的';
comment on column ZXPGXT_AJXX.JABD
  is '结案标的';
comment on column ZXPGXT_AJXX.FDSX
  is '法定审限';
comment on column ZXPGXT_AJXX.FDKCSJ
  is '法定扣除时间';
comment on column ZXPGXT_AJXX.CXTS
  is '超限天数';
comment on column ZXPGXT_AJXX.ZRTS
  is '自然天数';
comment on column ZXPGXT_AJXX.SZH
  is '三暂缓';
comment on column ZXPGXT_AJXX.KTCD
  is '口头裁定';
comment on column ZXPGXT_AJXX.SFZZG
  is '是否中止过';
comment on column ZXPGXT_AJXX.DQSFZZ
  is '当前是否中止';
comment on column ZXPGXT_AJXX.GXYY
  is '管辖异议';
comment on column ZXPGXT_AJXX.SSRQ
  is '申诉日期';
comment on column ZXPGXT_AJXX.ZSRQ
  is '再审日期';
comment on column ZXPGXT_AJXX.AJLY
  is '案件来源';
comment on column ZXPGXT_AJXX.SDSZRQS
  is '收到诉状日期s';
comment on column ZXPGXT_AJXX.SJYBS
  is '书记员标识';
comment on column ZXPGXT_AJXX.SJY
  is '书记员';
comment on column ZXPGXT_AJXX.SPCBS
  is '审判长标识';
comment on column ZXPGXT_AJXX.SPC
  is '审判长';
comment on column ZXPGXT_AJXX.SFSFLH
  is '是否上访老户';
comment on column ZXPGXT_AJXX.ZSJAFS
  is '再审结案方式';
comment on column ZXPGXT_AJXX.ZSJARQ
  is '再审结案日期';
comment on column ZXPGXT_AJXX.ESJARQ
  is '二审结案日期';
comment on column ZXPGXT_AJXX.DTXP
  is '当庭宣判';
comment on column ZXPGXT_AJXX.WSQK
  is '五涉情况';
comment on column ZXPGXT_AJXX.SJFYSDCS
  is '上级法院收到次数';
comment on column ZXPGXT_AJXX.LAAY
  is '立案案由';
comment on column ZXPGXT_AJXX.JAAY
  is '结案案由';
comment on column ZXPGXT_AJXX.YSFY
  is '原审法院';
comment on column ZXPGXT_AJXX.YSAH
  is '原审案号';
comment on column ZXPGXT_AJXX.SFZRR
  is '是否自然人';
comment on column ZXPGXT_AJXX.MSAJ
  is '民商案件';
comment on column ZXPGXT_AJXX.YCBT
  is '原承办庭';
comment on column ZXPGXT_AJXX.YCBR
  is '原承办人';
comment on column ZXPGXT_AJXX.XSTZJSRQ
  is '刑事退侦结束日期';
comment on column ZXPGXT_AJXX.JLGXRQ
  is '记录更新日期';
comment on column ZXPGXT_AJXX.SXJSRQ
  is '审限结束日期';
comment on column ZXPGXT_AJXX.SDSZRQ
  is '收到诉状日期';
comment on column ZXPGXT_AJXX.FDMSJAFS
  is '附带民事结案方式';
comment on column ZXPGXT_AJXX.SFYQ
  is '是否延期';
comment on column ZXPGXT_AJXX.YQTS
  is '延期天数';
comment on column ZXPGXT_AJXX.SFKC
  is '是否扣除';
comment on column ZXPGXT_AJXX.KCTS
  is '扣除天数';
comment on column ZXPGXT_AJXX.ZZTS
  is '中止天数';
comment on column ZXPGXT_AJXX.FDMSSS
  is '附带民事诉讼';
comment on column ZXPGXT_AJXX.WSPCAJ
  is '文书评查案件';
comment on column ZXPGXT_AJXX.PCDF
  is '评查得分';
comment on column ZXPGXT_AJXX.SCZZRQ
  is '首次中止日期';
comment on column ZXPGXT_AJXX.ZHZZRQ
  is '最后中止日期';
comment on column ZXPGXT_AJXX.PCLB
  is '赔偿类别';
comment on column ZXPGXT_AJXX.LARBS
  is '立案人标识';
comment on column ZXPGXT_AJXX.LAR
  is '立案人';
comment on column ZXPGXT_AJXX.LABM
  is '立案部门';
comment on column ZXPGXT_AJXX.YSLABM
  is '原审立案部门';
comment on column ZXPGXT_AJXX.YSLAR
  is '原审立案人';
comment on column ZXPGXT_AJXX.AJSXRQ
  is '案件生效日期';
comment on column ZXPGXT_AJXX.SFFHAJ
  is '是否复核案件';
comment on column ZXPGXT_AJXX.SFLABG
  is '是否立案变更';
comment on column ZXPGXT_AJXX.YSSFLQGLAJ
  is '原审是否两权管理案件';
comment on column ZXPGXT_AJXX.SFLQGLAJ
  is '是否两权管理案件';
comment on column ZXPGXT_AJXX.GPYY
  is '改判原因';
comment on column ZXPGXT_AJXX.SSAJLX
  is '上诉案件类型';
comment on column ZXPGXT_AJXX.YSJAFS
  is '原审结案方式';
comment on column ZXPGXT_AJXX.SFCA
  is '是否错案';
comment on column ZXPGXT_AJXX.FJXZL
  is '附加刑种类';
comment on column ZXPGXT_AJXX.XZPCTQFS
  is '行政赔偿提请方式';
comment on column ZXPGXT_AJXX.CSLY
  is '撤诉理由';
comment on column ZXPGXT_AJXX.GKKTGG
  is '公开开庭公告';
comment on column ZXPGXT_AJXX.GKJDPGGG
  is '公开鉴定评估公告';
comment on column ZXPGXT_AJXX.GKJDPGRQ
  is '公开鉴定评估日期';
comment on column ZXPGXT_AJXX.GKLA
  is '公开立案';
comment on column ZXPGXT_AJXX.GKSPGKSP
  is '公开视频gksp';
comment on column ZXPGXT_AJXX.GKWS
  is '公开文书';
comment on column ZXPGXT_AJXX.GKZJ
  is '公开证据';
comment on column ZXPGXT_AJXX.SSAJYSCLRQ
  is '上诉案件移送材料日期';
comment on column ZXPGXT_AJXX.GKLASH
  is '公开立案审核';
comment on column ZXPGXT_AJXX.GKSPSH
  is '公开视频审核';
comment on column ZXPGXT_AJXX.GKWSSH
  is '公开文书审核';
comment on column ZXPGXT_AJXX.GKZJSH
  is '公开证据审核';
comment on column ZXPGXT_AJXX.SJRQ
  is '送卷日期';
comment on column ZXPGXT_AJXX.GKSPXXRQ
  is '公开视频信息日期';
comment on column ZXPGXT_AJXX.GKCPWSRQ
  is '公开裁判文书日期';
comment on column ZXPGXT_AJXX.GKZJRQ
  is '公开证据日期';
comment on column ZXPGXT_AJXX.GKZXXXRQ
  is '公开执行信息日期';
comment on column ZXPGXT_AJXX.KTGGRQ
  is '开庭公告日期';
comment on column ZXPGXT_AJXX.ZXAJBDLX
  is '执行案件标的类型';
comment on column ZXPGXT_AJXX.YSSPC
  is '原审审判长';
comment on column ZXPGXT_AJXX.DTJSZX
  is '当庭即时执行';
comment on column ZXPGXT_AJXX.QTSSLB
  is '其他诉讼类别';
comment on column ZXPGXT_AJXX.ZJBCZXAJ
  is '终结本次执行案件';
comment on column ZXPGXT_AJXX.ESTJRQ
  is '二审退卷日期';

prompt
prompt Creating table ZXPGXT_LXLFXX
prompt ============================
prompt
create table ZXPGXT_LXLFXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XFBS        NUMBER,
  FYXFBS      NUMBER,
  XFRQ        DATE,
  XFCS        NUMBER,
  SJRS        NUMBER,
  XFSJFY      VARCHAR2(250),
  XFSJAH      VARCHAR2(250),
  XGAJ        VARCHAR2(250),
  SFMSAJ      NUMBER,
  AJLX        VARCHAR2(20),
  SJYBABM     VARCHAR2(100),
  XFLX        VARCHAR2(50),
  SJBM        VARCHAR2(100),
  XFLY        VARCHAR2(50),
  SJCBR       VARCHAR2(40),
  XFRXM       VARCHAR2(100),
  AY          VARCHAR2(50),
  SHJB        NUMBER,
  SJSPC       VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXPGXT_LXLFXX
  is '来信来访信息';
comment on column ZXPGXT_LXLFXX.FYBM
  is '法院编码';
comment on column ZXPGXT_LXLFXX.XFBS
  is '信访标识';
comment on column ZXPGXT_LXLFXX.FYXFBS
  is '法院信访标识';
comment on column ZXPGXT_LXLFXX.XFRQ
  is '信访日期';
comment on column ZXPGXT_LXLFXX.XFCS
  is '信访次数';
comment on column ZXPGXT_LXLFXX.SJRS
  is '涉及人数';
comment on column ZXPGXT_LXLFXX.XFSJFY
  is '信访涉及法院';
comment on column ZXPGXT_LXLFXX.XFSJAH
  is '信访涉及案号';
comment on column ZXPGXT_LXLFXX.XGAJ
  is '相关案件';
comment on column ZXPGXT_LXLFXX.SFMSAJ
  is '是否民商案件';
comment on column ZXPGXT_LXLFXX.AJLX
  is '案件类型';
comment on column ZXPGXT_LXLFXX.SJYBABM
  is '涉及原办案部门';
comment on column ZXPGXT_LXLFXX.XFLX
  is '信访类型';
comment on column ZXPGXT_LXLFXX.SJBM
  is '涉及部门';
comment on column ZXPGXT_LXLFXX.XFLY
  is '信访来源';
comment on column ZXPGXT_LXLFXX.SJCBR
  is '涉及承办人';
comment on column ZXPGXT_LXLFXX.XFRXM
  is '信访人姓名';
comment on column ZXPGXT_LXLFXX.AY
  is '案由';
comment on column ZXPGXT_LXLFXX.SHJB
  is '审核级别';
comment on column ZXPGXT_LXLFXX.SJSPC
  is '涉及审判长';

prompt
prompt Creating table ZXPGXT_RYXX
prompt ==========================
prompt
create table ZXPGXT_RYXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  RYBS        NUMBER,
  SFFG        NUMBER,
  SFZXG       NUMBER,
  SFGZRY      NUMBER,
  SFZXGZRY    NUMBER,
  QZTP        BLOB,
  DLID        NUMBER,
  YHM         VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXPGXT_RYXX
  is '人员信息';
comment on column ZXPGXT_RYXX.FYBM
  is '法院编码';
comment on column ZXPGXT_RYXX.RYBS
  is '人员标识';
comment on column ZXPGXT_RYXX.SFFG
  is '是否法官';
comment on column ZXPGXT_RYXX.SFZXG
  is '是否执行官';
comment on column ZXPGXT_RYXX.SFGZRY
  is '是否工作人员';
comment on column ZXPGXT_RYXX.SFZXGZRY
  is '是否执行工作人员';
comment on column ZXPGXT_RYXX.QZTP
  is '签字图片';
comment on column ZXPGXT_RYXX.DLID
  is '登录ID';
comment on column ZXPGXT_RYXX.YHM
  is '用户名';

prompt
prompt Creating table ZXPGXT_ZBQZDY
prompt ============================
prompt
create table ZXPGXT_ZBQZDY
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  DYBS        NUMBER,
  ZBMC        VARCHAR2(100),
  ZBSYFW      VARCHAR2(200),
  XH          NUMBER,
  ZBFL        VARCHAR2(20),
  ZBDY        BLOB,
  ZBMS        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXPGXT_ZBQZDY
  is '指标取值定义';
comment on column ZXPGXT_ZBQZDY.FYBM
  is '法院编码';
comment on column ZXPGXT_ZBQZDY.DYBS
  is '定义标识';
comment on column ZXPGXT_ZBQZDY.ZBMC
  is '指标名称';
comment on column ZXPGXT_ZBQZDY.ZBSYFW
  is '指标适用范围';
comment on column ZXPGXT_ZBQZDY.XH
  is '序号';
comment on column ZXPGXT_ZBQZDY.ZBFL
  is '指标分类';
comment on column ZXPGXT_ZBQZDY.ZBDY
  is '指标定义';
comment on column ZXPGXT_ZBQZDY.ZBMS
  is '指标描述';

prompt
prompt Creating table ZXPGXT_ZBSJJL
prompt ============================
prompt
create table ZXPGXT_ZBSJJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SJBS        NUMBER,
  ZBBH        NUMBER,
  ZBM         VARCHAR2(50),
  BM          VARCHAR2(100),
  RY          VARCHAR2(40),
  N           NUMBER,
  Y           NUMBER,
  R           NUMBER,
  BY1         VARCHAR2(250),
  BY2         VARCHAR2(250),
  BY3         VARCHAR2(250),
  ZBSJ        FLOAT,
  CJSJ        DATE,
  QZLY        BLOB,
  PM          NUMBER,
  ZBJB        NUMBER,
  PGLB        NUMBER,
  ZXZ         FLOAT,
  ZDZ         FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXPGXT_ZBSJJL
  is '指标数据记录';
comment on column ZXPGXT_ZBSJJL.FYBM
  is '法院编码';
comment on column ZXPGXT_ZBSJJL.SJBS
  is '数据标识';
comment on column ZXPGXT_ZBSJJL.ZBBH
  is '指标编号';
comment on column ZXPGXT_ZBSJJL.ZBM
  is '指标名';
comment on column ZXPGXT_ZBSJJL.BM
  is '部门';
comment on column ZXPGXT_ZBSJJL.RY
  is '人员';
comment on column ZXPGXT_ZBSJJL.N
  is '年';
comment on column ZXPGXT_ZBSJJL.Y
  is '月';
comment on column ZXPGXT_ZBSJJL.R
  is '日';
comment on column ZXPGXT_ZBSJJL.BY1
  is '备用1';
comment on column ZXPGXT_ZBSJJL.BY2
  is '备用2';
comment on column ZXPGXT_ZBSJJL.BY3
  is '备用3';
comment on column ZXPGXT_ZBSJJL.ZBSJ
  is '指标数据';
comment on column ZXPGXT_ZBSJJL.CJSJ
  is '创建时间';
comment on column ZXPGXT_ZBSJJL.QZLY
  is '取值来源';
comment on column ZXPGXT_ZBSJJL.PM
  is '排名';
comment on column ZXPGXT_ZBSJJL.ZBJB
  is '指标级别';
comment on column ZXPGXT_ZBSJJL.PGLB
  is '评估类别';
comment on column ZXPGXT_ZBSJJL.ZXZ
  is '最小值';
comment on column ZXPGXT_ZBSJJL.ZDZ
  is '最大值';

prompt
prompt Creating table ZXPGXT_ZBSJJLRZ
prompt ==============================
prompt
create table ZXPGXT_ZBSJJLRZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  RZBS        NUMBER,
  BSKHQJ      VARCHAR2(50),
  FYMC        VARCHAR2(100),
  ZBM         VARCHAR2(100),
  ZBZ         FLOAT,
  BM          VARCHAR2(100),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  KSRQ        DATE,
  JSRQ        DATE,
  CJRQ        DATE,
  QZLY        BLOB,
  PM          NUMBER,
  ZBJB        NUMBER,
  ZBLB        VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXPGXT_ZBSJJLRZ
  is '指标数据记录日志';
comment on column ZXPGXT_ZBSJJLRZ.FYBM
  is '法院编码';
comment on column ZXPGXT_ZBSJJLRZ.RZBS
  is '日志标识';
comment on column ZXPGXT_ZBSJJLRZ.BSKHQJ
  is '标识考核区间';
comment on column ZXPGXT_ZBSJJLRZ.FYMC
  is '法院名称';
comment on column ZXPGXT_ZBSJJLRZ.ZBM
  is '指标名';
comment on column ZXPGXT_ZBSJJLRZ.ZBZ
  is '指标值';
comment on column ZXPGXT_ZBSJJLRZ.BM
  is '部门';
comment on column ZXPGXT_ZBSJJLRZ.CBRBS
  is '承办人标识';
comment on column ZXPGXT_ZBSJJLRZ.CBR
  is '承办人';
comment on column ZXPGXT_ZBSJJLRZ.KSRQ
  is '开始日期';
comment on column ZXPGXT_ZBSJJLRZ.JSRQ
  is '结束日期';
comment on column ZXPGXT_ZBSJJLRZ.CJRQ
  is '创建日期';
comment on column ZXPGXT_ZBSJJLRZ.QZLY
  is '取值来源';
comment on column ZXPGXT_ZBSJJLRZ.PM
  is '排名';
comment on column ZXPGXT_ZBSJJLRZ.ZBJB
  is '指标级别';
comment on column ZXPGXT_ZBSJJLRZ.ZBLB
  is '指标类别';

prompt
prompt Creating table ZXPGXT_ZBXX
prompt ==========================
prompt
create table ZXPGXT_ZBXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  ZBBH        NUMBER,
  ZBM         VARCHAR2(50),
  BM          VARCHAR2(100),
  RY          VARCHAR2(40),
  N           NUMBER,
  Y           NUMBER,
  R           NUMBER,
  BY1         VARCHAR2(250),
  BY2         VARCHAR2(250),
  BY3         VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXPGXT_ZBXX
  is '指标信息';
comment on column ZXPGXT_ZBXX.FYBM
  is '法院编码';
comment on column ZXPGXT_ZBXX.ZBBH
  is '指标编号';
comment on column ZXPGXT_ZBXX.ZBM
  is '指标名';
comment on column ZXPGXT_ZBXX.BM
  is '部门';
comment on column ZXPGXT_ZBXX.RY
  is '人员';
comment on column ZXPGXT_ZBXX.N
  is '年';
comment on column ZXPGXT_ZBXX.Y
  is '月';
comment on column ZXPGXT_ZBXX.R
  is '日';
comment on column ZXPGXT_ZBXX.BY1
  is '备用1';
comment on column ZXPGXT_ZBXX.BY2
  is '备用2';
comment on column ZXPGXT_ZBXX.BY3
  is '备用3';

prompt
prompt Creating table ZXWWJKXT_XMLBMMXB
prompt ================================
prompt
create table ZXWWJKXT_XMLBMMXB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SXH         NUMBER,
  ZBBH        NUMBER,
  XH          NUMBER,
  KZ          VARCHAR2(20),
  DM          NUMBER,
  MC          VARCHAR2(250),
  SJDM        VARCHAR2(50),
  FJM         VARCHAR2(50),
  LX          VARCHAR2(100),
  SM          VARCHAR2(250),
  DMLX        VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXWWJKXT_XMLBMMXB
  is 'XML编码明细表';
comment on column ZXWWJKXT_XMLBMMXB.FYBM
  is '法院编码';
comment on column ZXWWJKXT_XMLBMMXB.SXH
  is '顺序号';
comment on column ZXWWJKXT_XMLBMMXB.ZBBH
  is '主表编号';
comment on column ZXWWJKXT_XMLBMMXB.XH
  is '序号';
comment on column ZXWWJKXT_XMLBMMXB.KZ
  is '扩展';
comment on column ZXWWJKXT_XMLBMMXB.DM
  is '代码';
comment on column ZXWWJKXT_XMLBMMXB.MC
  is '名称';
comment on column ZXWWJKXT_XMLBMMXB.SJDM
  is '设计代码';
comment on column ZXWWJKXT_XMLBMMXB.FJM
  is '附件名';
comment on column ZXWWJKXT_XMLBMMXB.LX
  is '类型';
comment on column ZXWWJKXT_XMLBMMXB.SM
  is '说明';
comment on column ZXWWJKXT_XMLBMMXB.DMLX
  is '代码类型';

prompt
prompt Creating table ZXWWJKXT_XMLBMZB
prompt ===============================
prompt
create table ZXWWJKXT_XMLBMZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  DMLX        VARCHAR2(50),
  MC          VARCHAR2(250),
  DM          VARCHAR2(50),
  SM          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXWWJKXT_XMLBMZB
  is 'XML编码主表';
comment on column ZXWWJKXT_XMLBMZB.FYBM
  is '法院编码';
comment on column ZXWWJKXT_XMLBMZB.BH
  is '编号';
comment on column ZXWWJKXT_XMLBMZB.DMLX
  is '代码类型';
comment on column ZXWWJKXT_XMLBMZB.MC
  is '名称';
comment on column ZXWWJKXT_XMLBMZB.DM
  is '代码';
comment on column ZXWWJKXT_XMLBMZB.SM
  is '说明';

prompt
prompt Creating table ZXWWJKXT_ZXJKBDYXX
prompt =================================
prompt
create table ZXWWJKXT_ZXJKBDYXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  SXH         NUMBER,
  DMLX        VARCHAR2(50),
  SM          VARCHAR2(250),
  DM          VARCHAR2(50),
  SJ          VARCHAR2(255),
  SFYX        NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXWWJKXT_ZXJKBDYXX
  is '执行接口表定义信息';
comment on column ZXWWJKXT_ZXJKBDYXX.FYBM
  is '法院编码';
comment on column ZXWWJKXT_ZXJKBDYXX.SXH
  is '顺序号';
comment on column ZXWWJKXT_ZXJKBDYXX.DMLX
  is '代码类型';
comment on column ZXWWJKXT_ZXJKBDYXX.SM
  is '说明';
comment on column ZXWWJKXT_ZXJKBDYXX.DM
  is '代码';
comment on column ZXWWJKXT_ZXJKBDYXX.SJ
  is '数据';
comment on column ZXWWJKXT_ZXJKBDYXX.SFYX
  is '是否有效';

prompt
prompt Creating table ZXWWJKXT_ZXJKBDYXX2
prompt ==================================
prompt
create table ZXWWJKXT_ZXJKBDYXX2
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BBH         NUMBER,
  ZDBH        NUMBER,
  XMLM        VARCHAR2(50),
  ZDM         VARCHAR2(50),
  ZDLX        VARCHAR2(250),
  DM          VARCHAR2(250),
  ZWM         VARCHAR2(50),
  SFYXK       NUMBER,
  SFYXSC      NUMBER,
  SFYXBZ      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXWWJKXT_ZXJKBDYXX2
  is '执行接口表定义信息2';
comment on column ZXWWJKXT_ZXJKBDYXX2.FYBM
  is '法院编码';
comment on column ZXWWJKXT_ZXJKBDYXX2.BBH
  is '表编号';
comment on column ZXWWJKXT_ZXJKBDYXX2.ZDBH
  is '字段编号';
comment on column ZXWWJKXT_ZXJKBDYXX2.XMLM
  is 'xml名';
comment on column ZXWWJKXT_ZXJKBDYXX2.ZDM
  is '字段名';
comment on column ZXWWJKXT_ZXJKBDYXX2.ZDLX
  is '字段类型';
comment on column ZXWWJKXT_ZXJKBDYXX2.DM
  is '代码';
comment on column ZXWWJKXT_ZXJKBDYXX2.ZWM
  is '中文名';
comment on column ZXWWJKXT_ZXJKBDYXX2.SFYXK
  is '是否允许空';
comment on column ZXWWJKXT_ZXJKBDYXX2.SFYXSC
  is '是否允许删除';
comment on column ZXWWJKXT_ZXJKBDYXX2.SFYXBZ
  is '是否有效标志';

prompt
prompt Creating table ZXWWJKXT_ZXJKBDYXX3
prompt ==================================
prompt
create table ZXWWJKXT_ZXJKBDYXX3
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BBH         NUMBER,
  XMLM        VARCHAR2(50),
  BM          VARCHAR2(50),
  TJ          VARCHAR2(50),
  ZWM         VARCHAR2(50),
  GJZ1        VARCHAR2(20),
  GJZ2        VARCHAR2(20),
  SFYXBZ      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXWWJKXT_ZXJKBDYXX3
  is '执行接口表定义信息3';
comment on column ZXWWJKXT_ZXJKBDYXX3.FYBM
  is '法院编码';
comment on column ZXWWJKXT_ZXJKBDYXX3.BBH
  is '表编号';
comment on column ZXWWJKXT_ZXJKBDYXX3.XMLM
  is 'xml名';
comment on column ZXWWJKXT_ZXJKBDYXX3.BM
  is '表名';
comment on column ZXWWJKXT_ZXJKBDYXX3.TJ
  is '条件';
comment on column ZXWWJKXT_ZXJKBDYXX3.ZWM
  is '中文名';
comment on column ZXWWJKXT_ZXJKBDYXX3.GJZ1
  is '关键字1';
comment on column ZXWWJKXT_ZXJKBDYXX3.GJZ2
  is '关键字2';
comment on column ZXWWJKXT_ZXJKBDYXX3.SFYXBZ
  is '是否有效标志';

prompt
prompt Creating table ZXXT_AKBZJHFDSQRSXHYYJJL
prompt =======================================
prompt
create table ZXXT_AKBZJHFDSQRSXHYYJJL
(
  ID                    VARCHAR2(36) not null,
  REG_TIME              DATE not null,
  UPDATE_TIME           DATE not null,
  DEPT_CODE             VARCHAR2(20) not null,
  APP_CODE              VARCHAR2(20) not null,
  FYBM                  NUMBER,
  XH                    NUMBER,
  AJBH                  NUMBER,
  SQR                   VARCHAR2(250),
  BZXR                  VARCHAR2(250),
  AKBZJHFDSQRSXHYYJJLSJ DATE,
  DD                    VARCHAR2(250),
  CJR                   VARCHAR2(250),
  CBRBS                 NUMBER,
  CBR                   VARCHAR2(40),
  JLRBS                 NUMBER,
  JLR                   VARCHAR2(40),
  AKQK                  BLOB,
  CBRYJ                 BLOB,
  HYQK                  BLOB,
  YJYJ                  BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_AKBZJHFDSQRSXHYYJJL
  is '案款不直接划付到申请人事项合议研究记录';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.FYBM
  is '法院编码';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.XH
  is '序号';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.AJBH
  is '案件编号';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.SQR
  is '申请人';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.BZXR
  is '被执行人';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.AKBZJHFDSQRSXHYYJJLSJ
  is '案款不直接划付到申请人事项合议研究记录时间';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.DD
  is '地点';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.CJR
  is '参加人';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.CBRBS
  is '承办人标识';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.CBR
  is '承办人';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.JLRBS
  is '记录人标识';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.JLR
  is '记录人';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.AKQK
  is '案款情况';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.CBRYJ
  is '承办人意见';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.HYQK
  is '合议情况';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.YJYJ
  is '研究意见';

prompt
prompt Creating table ZXXT_AKHBTZS
prompt ===========================
prompt
create table ZXXT_AKHBTZS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  CCMC        VARCHAR2(250),
  QZCSNR      VARCHAR2(50),
  DW          VARCHAR2(100),
  BCXR        VARCHAR2(100),
  CXR         VARCHAR2(100),
  CXNR        VARCHAR2(250),
  XHAK        VARCHAR2(100),
  XYAK        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_AKHBTZS
  is '案款划拨通知书';
comment on column ZXXT_AKHBTZS.FYBM
  is '法院编码';
comment on column ZXXT_AKHBTZS.XH
  is '序号';
comment on column ZXXT_AKHBTZS.BH
  is '编号';
comment on column ZXXT_AKHBTZS.CCMC
  is '财产名称';
comment on column ZXXT_AKHBTZS.QZCSNR
  is '强制措施内容';
comment on column ZXXT_AKHBTZS.DW
  is '单位';
comment on column ZXXT_AKHBTZS.BCXR
  is '被查询人';
comment on column ZXXT_AKHBTZS.CXR
  is '查询人';
comment on column ZXXT_AKHBTZS.CXNR
  is '查询内容';
comment on column ZXXT_AKHBTZS.XHAK
  is '现划案款';
comment on column ZXXT_AKHBTZS.XYAK
  is '现余案款';

prompt
prompt Creating table ZXXT_AWRYY
prompt =========================
prompt
create table ZXXT_AWRYY
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(10),
  DJRQ        DATE,
  YYR         VARCHAR2(250),
  YYNR        VARCHAR2(250),
  TCRQ        DATE,
  BZ          VARCHAR2(250),
  SCSX        VARCHAR2(250),
  SCCBRBS     NUMBER,
  SCCBR       VARCHAR2(40),
  SCJG        VARCHAR2(250),
  CDRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_AWRYY
  is '案外人异议';
comment on column ZXXT_AWRYY.FYBM
  is '法院编码';
comment on column ZXXT_AWRYY.XH
  is '序号';
comment on column ZXXT_AWRYY.BH
  is '编号';
comment on column ZXXT_AWRYY.KPLB
  is '卡片类别';
comment on column ZXXT_AWRYY.DJRBS
  is '登记人标识';
comment on column ZXXT_AWRYY.DJR
  is '登记人';
comment on column ZXXT_AWRYY.DJRQ
  is '登记日期';
comment on column ZXXT_AWRYY.YYR
  is '异议人';
comment on column ZXXT_AWRYY.YYNR
  is '异议内容';
comment on column ZXXT_AWRYY.TCRQ
  is '提出日期';
comment on column ZXXT_AWRYY.BZ
  is '备注';
comment on column ZXXT_AWRYY.SCSX
  is '审查事项';
comment on column ZXXT_AWRYY.SCCBRBS
  is '审查承办人标识';
comment on column ZXXT_AWRYY.SCCBR
  is '审查承办人';
comment on column ZXXT_AWRYY.SCJG
  is '审查结果';
comment on column ZXXT_AWRYY.CDRQ
  is '裁定日期';

prompt
prompt Creating table ZXXT_BBJDFSPB
prompt ============================
prompt
create table ZXXT_BBJDFSPB
(
  ID             VARCHAR2(36) not null,
  REG_TIME       DATE not null,
  UPDATE_TIME    DATE not null,
  DEPT_CODE      VARCHAR2(20) not null,
  APP_CODE       VARCHAR2(20) not null,
  FYBM           NUMBER,
  XH             NUMBER,
  WDBH           VARCHAR2(100),
  AJBH           NUMBER,
  DXXBZFCYRXM    VARCHAR2(100),
  SFZHM          VARCHAR2(30),
  ZJLXJHM        VARCHAR2(50),
  ZJCYRZZ        VARCHAR2(250),
  SBSJ           DATE,
  SQRQ           DATE,
  LXFS           VARCHAR2(200),
  ZJYXQ          DATE,
  CQHZCS         VARCHAR2(250),
  SYJFLYJ        VARCHAR2(250),
  SBDWJCBRQ      VARCHAR2(250),
  BLJGBLRBLSJJJG VARCHAR2(250),
  BH             VARCHAR2(250),
  XM             VARCHAR2(250),
  XB             VARCHAR2(10),
  ZYM            VARCHAR2(250),
  MZ             VARCHAR2(50),
  WHCD           VARCHAR2(50),
  HYZK           VARCHAR2(10),
  SFZHMSFZ       VARCHAR2(30),
  CSD            VARCHAR2(250),
  CSRQ           DATE,
  CRJZJMCJHM     VARCHAR2(200),
  GZDW           VARCHAR2(250),
  DH             VARCHAR2(50),
  XZZ            VARCHAR2(250),
  HKSZD          VARCHAR2(250),
  TBBAQXKS       DATE,
  TBBAQXJS       DATE,
  BASY           BLOB,
  FLYJ           BLOB,
  DWSC           VARCHAR2(250),
  TBBAJGYJ       VARCHAR2(250),
  TBRQ           DATE,
  LXR            VARCHAR2(50),
  LXDH           VARCHAR2(250),
  SFFSZHC        NUMBER,
  FSZHCSJ        DATE,
  ZHCJS          NUMBER,
  ZHCJSSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_BBJDFSPB
  is '报备及吊废审批表';
comment on column ZXXT_BBJDFSPB.FYBM
  is '法院编码';
comment on column ZXXT_BBJDFSPB.XH
  is '序号';
comment on column ZXXT_BBJDFSPB.WDBH
  is '文档编号';
comment on column ZXXT_BBJDFSPB.AJBH
  is '案件编号';
comment on column ZXXT_BBJDFSPB.DXXBZFCYRXM
  is '吊销、宣布作废持有人姓名';
comment on column ZXXT_BBJDFSPB.SFZHM
  is '身份证号码';
comment on column ZXXT_BBJDFSPB.ZJLXJHM
  is '证件类型及号码';
comment on column ZXXT_BBJDFSPB.ZJCYRZZ
  is '证件持有人住址';
comment on column ZXXT_BBJDFSPB.SBSJ
  is '申报时间';
comment on column ZXXT_BBJDFSPB.SQRQ
  is '申请日期';
comment on column ZXXT_BBJDFSPB.LXFS
  is '联系方式';
comment on column ZXXT_BBJDFSPB.ZJYXQ
  is '证件有效期';
comment on column ZXXT_BBJDFSPB.CQHZCS
  is '采取何种措施';
comment on column ZXXT_BBJDFSPB.SYJFLYJ
  is '事由及法律依据';
comment on column ZXXT_BBJDFSPB.SBDWJCBRQ
  is '申报单位及呈报日期';
comment on column ZXXT_BBJDFSPB.BLJGBLRBLSJJJG
  is '办理经过（办理人、办理时间及结果）';
comment on column ZXXT_BBJDFSPB.BH
  is '编号';
comment on column ZXXT_BBJDFSPB.XM
  is '姓名';
comment on column ZXXT_BBJDFSPB.XB
  is '性别';
comment on column ZXXT_BBJDFSPB.ZYM
  is '曾用名';
comment on column ZXXT_BBJDFSPB.MZ
  is '民族';
comment on column ZXXT_BBJDFSPB.WHCD
  is '文化程度';
comment on column ZXXT_BBJDFSPB.HYZK
  is '婚姻状况';
comment on column ZXXT_BBJDFSPB.SFZHMSFZ
  is '身份证号码身份证';
comment on column ZXXT_BBJDFSPB.CSD
  is '出生地';
comment on column ZXXT_BBJDFSPB.CSRQ
  is '出生日期';
comment on column ZXXT_BBJDFSPB.CRJZJMCJHM
  is '出入境证件名称及号码';
comment on column ZXXT_BBJDFSPB.GZDW
  is '工作单位';
comment on column ZXXT_BBJDFSPB.DH
  is '电 话';
comment on column ZXXT_BBJDFSPB.XZZ
  is '现 住 址';
comment on column ZXXT_BBJDFSPB.HKSZD
  is '户口所在地';
comment on column ZXXT_BBJDFSPB.TBBAQXKS
  is '通报备案期限开始';
comment on column ZXXT_BBJDFSPB.TBBAQXJS
  is '通报备案期限结束';
comment on column ZXXT_BBJDFSPB.BASY
  is '备案事由';
comment on column ZXXT_BBJDFSPB.FLYJ
  is '法律依据';
comment on column ZXXT_BBJDFSPB.DWSC
  is '对外说辞';
comment on column ZXXT_BBJDFSPB.TBBAJGYJ
  is '通报备案机关意见';
comment on column ZXXT_BBJDFSPB.TBRQ
  is '填表日期';
comment on column ZXXT_BBJDFSPB.LXR
  is '联 系 人';
comment on column ZXXT_BBJDFSPB.LXDH
  is '联系电话';
comment on column ZXXT_BBJDFSPB.SFFSZHC
  is '是否发送综合处';
comment on column ZXXT_BBJDFSPB.FSZHCSJ
  is '发送综合处时间';
comment on column ZXXT_BBJDFSPB.ZHCJS
  is '综合处接收';
comment on column ZXXT_BBJDFSPB.ZHCJSSJ
  is '综合处接收时间';

prompt
prompt Creating table ZXXT_BGJCYZXCSSXHYYJJL
prompt =====================================
prompt
create table ZXXT_BGJCYZXCSSXHYYJJL
(
  ID                  VARCHAR2(36) not null,
  REG_TIME            DATE not null,
  UPDATE_TIME         DATE not null,
  DEPT_CODE           VARCHAR2(20) not null,
  APP_CODE            VARCHAR2(20) not null,
  FYBM                NUMBER,
  BH                  NUMBER,
  AJBH                NUMBER,
  SQR                 VARCHAR2(250),
  BZXR                VARCHAR2(250),
  BGJCYZXCSSXHYYJJLSJ DATE,
  DD                  VARCHAR2(250),
  CJR                 VARCHAR2(250),
  CBRBS               NUMBER,
  CBR                 VARCHAR2(40),
  JLRBS               NUMBER,
  JLR                 VARCHAR2(40),
  AQQK                BLOB,
  CBRYJ               BLOB,
  HYQK                BLOB,
  YJYJ                BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_BGJCYZXCSSXHYYJJL
  is '变更、解除原执行措施事项合议研究记录';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.FYBM
  is '法院编码';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.BH
  is '编号';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.AJBH
  is '案件编号';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.SQR
  is '申请人';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.BZXR
  is '被执行人';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.BGJCYZXCSSXHYYJJLSJ
  is '变更、解除原执行措施事项合议研究记录时间';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.DD
  is '地点';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.CJR
  is '参加人';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.CBRBS
  is '承办人标识';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.CBR
  is '承办人';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.JLRBS
  is '记录人标识';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.JLR
  is '记录人';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.AQQK
  is '案情情况';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.CBRYJ
  is '承办人意见';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.HYQK
  is '合议情况';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.YJYJ
  is '研究意见';

prompt
prompt Creating table ZXXT_BGSQZXRJZJBGBZXRSXHYJL
prompt ==========================================
prompt
create table ZXXT_BGSQZXRJZJBGBZXRSXHYJL
(
  ID                     VARCHAR2(36) not null,
  REG_TIME               DATE not null,
  UPDATE_TIME            DATE not null,
  DEPT_CODE              VARCHAR2(20) not null,
  APP_CODE               VARCHAR2(20) not null,
  FYBM                   NUMBER,
  BH                     NUMBER,
  WDBH                   VARCHAR2(100),
  AJBH                   NUMBER,
  SQR                    VARCHAR2(250),
  BZXR                   VARCHAR2(250),
  BGSQZXRJZJBGBZXRSXHYSJ DATE,
  DD                     VARCHAR2(250),
  CJR                    VARCHAR2(250),
  CBRBS                  NUMBER,
  CBR                    VARCHAR2(40),
  JLRBS                  NUMBER,
  JLR                    VARCHAR2(40),
  AQQK                   BLOB,
  CBRYJ                  BLOB,
  HYQK                   BLOB,
  YJYJ                   BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_BGSQZXRJZJBGBZXRSXHYJL
  is '变更申请执行人及追加、变更被执行人事项合议记录';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.FYBM
  is '法院编码';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.BH
  is '编号';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.WDBH
  is '文档编号';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.AJBH
  is '案件编号';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.SQR
  is '申请人';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.BZXR
  is '被执行人';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.BGSQZXRJZJBGBZXRSXHYSJ
  is '变更申请执行人及追加、变更被执行人事项合议时间';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.DD
  is '地点';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.CJR
  is '参加人';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.CBRBS
  is '承办人标识';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.CBR
  is '承办人';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.JLRBS
  is '记录人标识';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.JLR
  is '记录人';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.AQQK
  is '案情情况';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.CBRYJ
  is '承办人意见';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.HYQK
  is '合议情况';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.YJYJ
  is '研究意见';

prompt
prompt Creating table ZXXT_BMJL
prompt ========================
prompt
create table ZXXT_BMJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  BMYY        VARCHAR2(250),
  BDWQD       VARCHAR2(250),
  SYQR        VARCHAR2(250),
  CKJG        NUMBER,
  BMKSRQ      DATE,
  BMZE        NUMBER,
  BMJG        VARCHAR2(250),
  BMJSRQ      DATE,
  MSRMC       VARCHAR2(250),
  BZ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_BMJL
  is '变卖记录';
comment on column ZXXT_BMJL.FYBM
  is '法院编码';
comment on column ZXXT_BMJL.XH
  is '序号';
comment on column ZXXT_BMJL.BH
  is '编号';
comment on column ZXXT_BMJL.KPLB
  is '卡片类别';
comment on column ZXXT_BMJL.DJRBS
  is '登记人标识';
comment on column ZXXT_BMJL.DJR
  is '登记人';
comment on column ZXXT_BMJL.DJRQ
  is '登记日期';
comment on column ZXXT_BMJL.BMYY
  is '变卖原因';
comment on column ZXXT_BMJL.BDWQD
  is '标的物清单';
comment on column ZXXT_BMJL.SYQR
  is '所有权人';
comment on column ZXXT_BMJL.CKJG
  is '参考价格';
comment on column ZXXT_BMJL.BMKSRQ
  is '变卖开始日期';
comment on column ZXXT_BMJL.BMZE
  is '变卖总额';
comment on column ZXXT_BMJL.BMJG
  is '变卖结果';
comment on column ZXXT_BMJL.BMJSRQ
  is '变卖结束日期';
comment on column ZXXT_BMJL.MSRMC
  is '买受人名称';
comment on column ZXXT_BMJL.BZ
  is '备注';

prompt
prompt Creating table ZXXT_BMSPB
prompt =========================
prompt
create table ZXXT_BMSPB
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  BH           NUMBER,
  WDBH         VARCHAR2(100),
  AJBH         NUMBER,
  SQR          VARCHAR2(250),
  AH           VARCHAR2(50),
  CCQS         VARCHAR2(100),
  ZXZYJ        VARCHAR2(250),
  BMSQRQ       DATE,
  BD           NUMBER,
  PGJG         VARCHAR2(100),
  BMSFJSQZXRSQ VARCHAR2(100),
  JYBMJ        NUMBER,
  BMPJWZ       VARCHAR2(250),
  BZXR         VARCHAR2(100),
  BMPCQK       VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_BMSPB
  is '变卖审批表';
comment on column ZXXT_BMSPB.FYBM
  is '法院编码';
comment on column ZXXT_BMSPB.BH
  is '编号';
comment on column ZXXT_BMSPB.WDBH
  is '文档编号';
comment on column ZXXT_BMSPB.AJBH
  is '案件编号';
comment on column ZXXT_BMSPB.SQR
  is '申请人';
comment on column ZXXT_BMSPB.AH
  is '案号';
comment on column ZXXT_BMSPB.CCQS
  is '财产权属';
comment on column ZXXT_BMSPB.ZXZYJ
  is '执行组意见';
comment on column ZXXT_BMSPB.BMSQRQ
  is '变卖申请日期';
comment on column ZXXT_BMSPB.BD
  is '标    的';
comment on column ZXXT_BMSPB.PGJG
  is '评估价格';
comment on column ZXXT_BMSPB.BMSFJSQZXRSQ
  is '变卖是否经申请执行人申请';
comment on column ZXXT_BMSPB.JYBMJ
  is '建议变卖价';
comment on column ZXXT_BMSPB.BMPJWZ
  is '变卖品及位置';
comment on column ZXXT_BMSPB.BZXR
  is '被执行人';
comment on column ZXXT_BMSPB.BMPCQK
  is '变卖品瑕疵情况';

prompt
prompt Creating table ZXXT_BYCZSPB
prompt ===========================
prompt
create table ZXXT_BYCZSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  AJBH        VARCHAR2(100),
  AY          VARCHAR2(250),
  AH          VARCHAR2(50),
  BZXR        VARCHAR2(250),
  LASJ        DATE,
  SQR         VARCHAR2(100),
  DKZCFCCQK   VARCHAR2(250),
  BYCZLY      VARCHAR2(250),
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_BYCZSPB
  is '不宜处置审批表';
comment on column ZXXT_BYCZSPB.FYBM
  is '法院编码';
comment on column ZXXT_BYCZSPB.XH
  is '序号';
comment on column ZXXT_BYCZSPB.AJBH
  is '案件编号';
comment on column ZXXT_BYCZSPB.AY
  is '案由';
comment on column ZXXT_BYCZSPB.AH
  is '案号';
comment on column ZXXT_BYCZSPB.BZXR
  is '被执行人';
comment on column ZXXT_BYCZSPB.LASJ
  is '立案时间';
comment on column ZXXT_BYCZSPB.SQR
  is '申请人';
comment on column ZXXT_BYCZSPB.DKZCFCCQK
  is '调控组查封财产情况';
comment on column ZXXT_BYCZSPB.BYCZLY
  is '不宜处置理由';
comment on column ZXXT_BYCZSPB.BZ
  is '备注';

prompt
prompt Creating table ZXXT_BYTJZXMYTJSPB
prompt =================================
prompt
create table ZXXT_BYTJZXMYTJSPB
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  XH           NUMBER,
  BH           VARCHAR2(100),
  AJBH         NUMBER,
  SQR          NUMBER,
  BZXR         VARCHAR2(250),
  CBRYJ        VARCHAR2(250),
  BYTJZXMYTJYY VARCHAR2(250),
  QTXYSMDQK    BLOB,
  ZCSPR        VARCHAR2(40),
  ZCSFPZ       NUMBER,
  ZCSPYJ       VARCHAR2(200),
  ZCSPRQ       DATE,
  CCSPR        VARCHAR2(40),
  CCSFPZ       NUMBER,
  CCSPYJ       VARCHAR2(200),
  CCSPRQ       DATE,
  JCSPR        VARCHAR2(40),
  JCSFPZ       NUMBER,
  JCCSPYJ      VARCHAR2(200),
  JCSPRQ       DATE,
  YCSPR        VARCHAR2(40),
  YCSFPZ       NUMBER,
  YCSPYJ       VARCHAR2(200),
  YCSPRQ       DATE,
  SFFSZHC      NUMBER,
  FSZHCSJ      DATE,
  ZHCJS        NUMBER,
  ZHCJSSJ      DATE,
  SFFHCBR      NUMBER,
  FHCBRSJ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_BYTJZXMYTJSPB
  is '不予提交征信免于提交审批表';
comment on column ZXXT_BYTJZXMYTJSPB.FYBM
  is '法院编码';
comment on column ZXXT_BYTJZXMYTJSPB.XH
  is '序号';
comment on column ZXXT_BYTJZXMYTJSPB.BH
  is '编号';
comment on column ZXXT_BYTJZXMYTJSPB.AJBH
  is '案件编号';
comment on column ZXXT_BYTJZXMYTJSPB.SQR
  is '申请人';
comment on column ZXXT_BYTJZXMYTJSPB.BZXR
  is '被执行人';
comment on column ZXXT_BYTJZXMYTJSPB.CBRYJ
  is '承办人意见';
comment on column ZXXT_BYTJZXMYTJSPB.BYTJZXMYTJYY
  is '不予提交征信免于提交原因';
comment on column ZXXT_BYTJZXMYTJSPB.QTXYSMDQK
  is '其他需要说明的情况';
comment on column ZXXT_BYTJZXMYTJSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_BYTJZXMYTJSPB.ZCSFPZ
  is '组长是否批准';
comment on column ZXXT_BYTJZXMYTJSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_BYTJZXMYTJSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_BYTJZXMYTJSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_BYTJZXMYTJSPB.CCSFPZ
  is '处长是否批准';
comment on column ZXXT_BYTJZXMYTJSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_BYTJZXMYTJSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_BYTJZXMYTJSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_BYTJZXMYTJSPB.JCSFPZ
  is '局长是否批准';
comment on column ZXXT_BYTJZXMYTJSPB.JCCSPYJ
  is '局长长审批意见';
comment on column ZXXT_BYTJZXMYTJSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_BYTJZXMYTJSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_BYTJZXMYTJSPB.YCSFPZ
  is '院长是否批准';
comment on column ZXXT_BYTJZXMYTJSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_BYTJZXMYTJSPB.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_BYTJZXMYTJSPB.SFFSZHC
  is '是否发送综合处';
comment on column ZXXT_BYTJZXMYTJSPB.FSZHCSJ
  is '发送综合处时间';
comment on column ZXXT_BYTJZXMYTJSPB.ZHCJS
  is '综合处接收';
comment on column ZXXT_BYTJZXMYTJSPB.ZHCJSSJ
  is '综合处接收时间';
comment on column ZXXT_BYTJZXMYTJSPB.SFFHCBR
  is '是否返回承办人';
comment on column ZXXT_BYTJZXMYTJSPB.FHCBRSJ
  is '返回承办人时间';

prompt
prompt Creating table ZXXT_BYZX
prompt ========================
prompt
create table ZXXT_BYZX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(10),
  DJRQ        DATE,
  BYZXYY      VARCHAR2(250),
  CDRQ        DATE,
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_BYZX
  is '不予执行';
comment on column ZXXT_BYZX.FYBM
  is '法院编码';
comment on column ZXXT_BYZX.XH
  is '序号';
comment on column ZXXT_BYZX.BH
  is '编号';
comment on column ZXXT_BYZX.KPLB
  is '卡片类别';
comment on column ZXXT_BYZX.DJRBS
  is '登记人标识';
comment on column ZXXT_BYZX.DJR
  is '登记人';
comment on column ZXXT_BYZX.DJRQ
  is '登记日期';
comment on column ZXXT_BYZX.BYZXYY
  is '不予执行原因';
comment on column ZXXT_BYZX.CDRQ
  is '裁定日期';
comment on column ZXXT_BYZX.BZ
  is '备注';

prompt
prompt Creating table ZXXT_BZXRCCSBHS
prompt ==============================
prompt
create table ZXXT_BZXRCCSBHS
(
  ID                VARCHAR2(36) not null,
  REG_TIME          DATE not null,
  UPDATE_TIME       DATE not null,
  DEPT_CODE         VARCHAR2(20) not null,
  APP_CODE          VARCHAR2(20) not null,
  FYBM              NUMBER,
  XH                VARCHAR2(100),
  BH                NUMBER,
  AJBH              NUMBER,
  SFSB              NUMBER,
  BZXRSFJXCCSB      NUMBER,
  DBZXRCQFK         NUMBER,
  JL                VARCHAR2(50),
  QT                VARCHAR2(250),
  WCQ               VARCHAR2(250),
  BZXRCCSBQKSFRS    NUMBER,
  SFDSBSSCCCQKZCSSF NUMBER,
  SFDSBSSCCCQKZCS   NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_BZXRCCSBHS
  is '被执行人财产申报核实';
comment on column ZXXT_BZXRCCSBHS.FYBM
  is '法院编码';
comment on column ZXXT_BZXRCCSBHS.XH
  is '序号';
comment on column ZXXT_BZXRCCSBHS.BH
  is '编号';
comment on column ZXXT_BZXRCCSBHS.AJBH
  is '案件编号';
comment on column ZXXT_BZXRCCSBHS.SFSB
  is '是否申报';
comment on column ZXXT_BZXRCCSBHS.BZXRSFJXCCSB
  is '被执行人是否进行财产申报';
comment on column ZXXT_BZXRCCSBHS.DBZXRCQFK
  is '对被执行人采取罚款';
comment on column ZXXT_BZXRCCSBHS.JL
  is '拘留';
comment on column ZXXT_BZXRCCSBHS.QT
  is '其他';
comment on column ZXXT_BZXRCCSBHS.WCQ
  is '未采取';
comment on column ZXXT_BZXRCCSBHS.BZXRCCSBQKSFRS
  is '被执行人财产申报情况是否如实';
comment on column ZXXT_BZXRCCSBHS.SFDSBSSCCCQKZCSSF
  is '是否对申报属实财产采取控制措施sf';
comment on column ZXXT_BZXRCCSBHS.SFDSBSSCCCQKZCS
  is '是否对申报属实财产采取控制措施';

prompt
prompt Creating table ZXXT_CAGXZB
prompt ==========================
prompt
create table ZXXT_CAGXZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  CABH        NUMBER,
  AJBH        NUMBER,
  GLAJBH      NUMBER,
  GLRQ        VARCHAR2(50),
  DSR         VARCHAR2(200),
  GLDSR       VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CAGXZB
  is '串案关系子表';
comment on column ZXXT_CAGXZB.FYBM
  is '法院编码';
comment on column ZXXT_CAGXZB.CABH
  is '串案编号';
comment on column ZXXT_CAGXZB.AJBH
  is '案件编号';
comment on column ZXXT_CAGXZB.GLAJBH
  is '关联案件编号';
comment on column ZXXT_CAGXZB.GLRQ
  is '关联日期';
comment on column ZXXT_CAGXZB.DSR
  is '当事人';
comment on column ZXXT_CAGXZB.GLDSR
  is '关联当事人';

prompt
prompt Creating table ZXXT_CBXXBGSPB
prompt =============================
prompt
create table ZXXT_CBXXBGSPB
(
  ID               VARCHAR2(36) not null,
  REG_TIME         DATE not null,
  UPDATE_TIME      DATE not null,
  DEPT_CODE        VARCHAR2(20) not null,
  APP_CODE         VARCHAR2(20) not null,
  FYBM             NUMBER,
  WDBH             VARCHAR2(100),
  BH               NUMBER,
  AJBH             NUMBER,
  SQR              VARCHAR2(250),
  BZXR             VARCHAR2(250),
  CBRYJ            VARCHAR2(250),
  WBCBXXSCBGWBCBYY BLOB,
  QTXYSMDQK        BLOB,
  TQSPSXSCHBG      BLOB,
  ZCSPR            VARCHAR2(40),
  ZCSFPZ           NUMBER,
  ZCSPYJ           VARCHAR2(200),
  ZCSPRQ           DATE,
  CCSPR            VARCHAR2(40),
  CCSFPZ           NUMBER,
  CCSPYJ           VARCHAR2(200),
  CCSPRQ           DATE,
  JCSPR            VARCHAR2(40),
  JCSFPZ           NUMBER,
  JCCSPYJ          VARCHAR2(200),
  JCSPRQ           DATE,
  YCSPR            VARCHAR2(40),
  YCSFPZ           NUMBER,
  YCSPYJ           VARCHAR2(200),
  YCSPRQ           DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CBXXBGSPB
  is '错报信息变更审批表';
comment on column ZXXT_CBXXBGSPB.FYBM
  is '法院编码';
comment on column ZXXT_CBXXBGSPB.WDBH
  is '文档编号';
comment on column ZXXT_CBXXBGSPB.BH
  is '编号';
comment on column ZXXT_CBXXBGSPB.AJBH
  is '案件编号';
comment on column ZXXT_CBXXBGSPB.SQR
  is '申请人';
comment on column ZXXT_CBXXBGSPB.BZXR
  is '被执行人';
comment on column ZXXT_CBXXBGSPB.CBRYJ
  is '承办人意见';
comment on column ZXXT_CBXXBGSPB.WBCBXXSCBGWBCBYY
  is '误报、错报信息删除、变更，误报、错报原因';
comment on column ZXXT_CBXXBGSPB.QTXYSMDQK
  is '其他需要说明的情况';
comment on column ZXXT_CBXXBGSPB.TQSPSXSCHBG
  is '提请审批事项（删除或变更）';
comment on column ZXXT_CBXXBGSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_CBXXBGSPB.ZCSFPZ
  is '组长是否批准';
comment on column ZXXT_CBXXBGSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_CBXXBGSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_CBXXBGSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_CBXXBGSPB.CCSFPZ
  is '处长是否批准';
comment on column ZXXT_CBXXBGSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_CBXXBGSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_CBXXBGSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_CBXXBGSPB.JCSFPZ
  is '局长是否批准';
comment on column ZXXT_CBXXBGSPB.JCCSPYJ
  is '局长长审批意见';
comment on column ZXXT_CBXXBGSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_CBXXBGSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_CBXXBGSPB.YCSFPZ
  is '院长是否批准';
comment on column ZXXT_CBXXBGSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_CBXXBGSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_CCBGB
prompt =========================
prompt
create table ZXXT_CCBGB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  WDBH        VARCHAR2(100),
  BH          NUMBER,
  AJBH        NUMBER,
  BGSJ        DATE,
  YJSJ        DATE,
  CCKSSJ      DATE,
  CCJSSJ      DATE,
  JBAQ        BLOB,
  CCSY        VARCHAR2(250),
  CCRY        VARCHAR2(100),
  JTGJ        VARCHAR2(100),
  CCDZ        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CCBGB
  is '出差报告表';
comment on column ZXXT_CCBGB.FYBM
  is '法院编码';
comment on column ZXXT_CCBGB.WDBH
  is '文档编号';
comment on column ZXXT_CCBGB.BH
  is '编号';
comment on column ZXXT_CCBGB.AJBH
  is '案件编号';
comment on column ZXXT_CCBGB.BGSJ
  is '报告时间';
comment on column ZXXT_CCBGB.YJSJ
  is '预计时间';
comment on column ZXXT_CCBGB.CCKSSJ
  is '出差开始时间';
comment on column ZXXT_CCBGB.CCJSSJ
  is '出差结束时间';
comment on column ZXXT_CCBGB.JBAQ
  is '基本案情';
comment on column ZXXT_CCBGB.CCSY
  is '出差事由';
comment on column ZXXT_CCBGB.CCRY
  is '出差人员';
comment on column ZXXT_CCBGB.JTGJ
  is '交通工具';
comment on column ZXXT_CCBGB.CCDZ
  is '出差地址';

prompt
prompt Creating table ZXXT_CCPMTLJL
prompt ============================
prompt
create table ZXXT_CCPMTLJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  TLSJ        DATE,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  LASJ        DATE,
  DZ          VARCHAR2(250),
  ZCRBS       NUMBER,
  ZCR         VARCHAR2(40),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CJRY        VARCHAR2(250),
  CBRJSAQ     VARCHAR2(250),
  TLSX        VARCHAR2(250),
  TLJG        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CCPMTLJL
  is '财产拍卖讨论记录';
comment on column ZXXT_CCPMTLJL.FYBM
  is '法院编码';
comment on column ZXXT_CCPMTLJL.XH
  is '序号';
comment on column ZXXT_CCPMTLJL.BH
  is '编号';
comment on column ZXXT_CCPMTLJL.TLSJ
  is '讨论时间';
comment on column ZXXT_CCPMTLJL.CBRBS
  is '承办人标识';
comment on column ZXXT_CCPMTLJL.CBR
  is '承办人';
comment on column ZXXT_CCPMTLJL.LASJ
  is '立案时间';
comment on column ZXXT_CCPMTLJL.DZ
  is '地址';
comment on column ZXXT_CCPMTLJL.ZCRBS
  is '主持人标识';
comment on column ZXXT_CCPMTLJL.ZCR
  is '主持人';
comment on column ZXXT_CCPMTLJL.SQR
  is '申请人';
comment on column ZXXT_CCPMTLJL.BZXR
  is '被执行人';
comment on column ZXXT_CCPMTLJL.CJRY
  is '参加人员';
comment on column ZXXT_CCPMTLJL.CBRJSAQ
  is '承办人介绍案情';
comment on column ZXXT_CCPMTLJL.TLSX
  is '讨论事项';
comment on column ZXXT_CCPMTLJL.TLJG
  is '讨论结果';

prompt
prompt Creating table ZXXT_CCSPB
prompt =========================
prompt
create table ZXXT_CCSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  WDBH        VARCHAR2(100),
  AJBH        NUMBER,
  CCDD        VARCHAR2(100),
  YJSJ        DATE,
  CCKSSJ      DATE,
  CCJSSJ      DATE,
  JBAQ        BLOB,
  CCSY        VARCHAR2(250),
  CCRY        VARCHAR2(100),
  JTGJ        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CCSPB
  is '出差审批表';
comment on column ZXXT_CCSPB.FYBM
  is '法院编码';
comment on column ZXXT_CCSPB.BH
  is '编号';
comment on column ZXXT_CCSPB.WDBH
  is '文档编号';
comment on column ZXXT_CCSPB.AJBH
  is '案件编号';
comment on column ZXXT_CCSPB.CCDD
  is '出差地点';
comment on column ZXXT_CCSPB.YJSJ
  is '预计时间';
comment on column ZXXT_CCSPB.CCKSSJ
  is '出差开始时间';
comment on column ZXXT_CCSPB.CCJSSJ
  is '出差结束时间';
comment on column ZXXT_CCSPB.JBAQ
  is '基本案情';
comment on column ZXXT_CCSPB.CCSY
  is '出差事由';
comment on column ZXXT_CCSPB.CCRY
  is '出差人员';
comment on column ZXXT_CCSPB.JTGJ
  is '交通工具';

prompt
prompt Creating table ZXXT_CCXS
prompt ========================
prompt
create table ZXXT_CCXS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  CCZL        VARCHAR2(100),
  CCMC        VARCHAR2(40),
  CXSJ        DATE,
  CXJG        VARCHAR2(200),
  KHX         VARCHAR2(100),
  CKHM        VARCHAR2(40),
  CKZH        VARCHAR2(40),
  CKBZ        VARCHAR2(40),
  CKJE        NUMBER,
  DSRMC       VARCHAR2(200),
  SYQR        VARCHAR2(200),
  XSSS        NUMBER,
  BZ          VARCHAR2(200),
  CCSYR       VARCHAR2(200),
  CCXS        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CCXS
  is '财产详述';
comment on column ZXXT_CCXS.FYBM
  is '法院编码';
comment on column ZXXT_CCXS.XH
  is '序号';
comment on column ZXXT_CCXS.BH
  is '编号';
comment on column ZXXT_CCXS.CCZL
  is '财产种类';
comment on column ZXXT_CCXS.CCMC
  is '财产名称';
comment on column ZXXT_CCXS.CXSJ
  is '查询时间';
comment on column ZXXT_CCXS.CXJG
  is '查询结果';
comment on column ZXXT_CCXS.KHX
  is '开户行';
comment on column ZXXT_CCXS.CKHM
  is '存款户名';
comment on column ZXXT_CCXS.CKZH
  is '存款账号';
comment on column ZXXT_CCXS.CKBZ
  is '存款币种';
comment on column ZXXT_CCXS.CKJE
  is '存款金额';
comment on column ZXXT_CCXS.DSRMC
  is '当事人名称';
comment on column ZXXT_CCXS.SYQR
  is '所有权人';
comment on column ZXXT_CCXS.XSSS
  is '线索属实';
comment on column ZXXT_CCXS.BZ
  is '备注';
comment on column ZXXT_CCXS.CCSYR
  is '财产所有人';
comment on column ZXXT_CCXS.CCXS
  is '财产详述';

prompt
prompt Creating table ZXXT_CFJL
prompt ========================
prompt
create table ZXXT_CFJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(100),
  BH          NUMBER,
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(10),
  RQ          DATE,
  CFLX        VARCHAR2(250),
  TQFS        VARCHAR2(250),
  CFWSYR      VARCHAR2(250),
  QD          BLOB,
  ZXBDE       NUMBER,
  CFSXDD      DATE,
  CFJMRQ      DATE,
  DD          VARCHAR2(250),
  FF          VARCHAR2(250),
  BGRBS       NUMBER,
  BGR         VARCHAR2(250),
  BGDD        VARCHAR2(250),
  BZ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CFJL
  is '查封记录';
comment on column ZXXT_CFJL.FYBM
  is '法院编码';
comment on column ZXXT_CFJL.XH
  is '序号';
comment on column ZXXT_CFJL.BH
  is '编号';
comment on column ZXXT_CFJL.KPLB
  is '卡片类别';
comment on column ZXXT_CFJL.DJRBS
  is '登记人标识';
comment on column ZXXT_CFJL.DJR
  is '登记人';
comment on column ZXXT_CFJL.RQ
  is '日期';
comment on column ZXXT_CFJL.CFLX
  is '查封类型';
comment on column ZXXT_CFJL.TQFS
  is '提请方式';
comment on column ZXXT_CFJL.CFWSYR
  is '查封物所有人';
comment on column ZXXT_CFJL.QD
  is '清单';
comment on column ZXXT_CFJL.ZXBDE
  is '执行标的额';
comment on column ZXXT_CFJL.CFSXDD
  is '查封生效地点';
comment on column ZXXT_CFJL.CFJMRQ
  is '查封届满日期';
comment on column ZXXT_CFJL.DD
  is '地点';
comment on column ZXXT_CFJL.FF
  is '方法';
comment on column ZXXT_CFJL.BGRBS
  is '保管人标识';
comment on column ZXXT_CFJL.BGR
  is '保管人';
comment on column ZXXT_CFJL.BGDD
  is '保管地点';
comment on column ZXXT_CFJL.BZ
  is '备注';

prompt
prompt Creating table ZXXT_CHPGJL
prompt ==========================
prompt
create table ZXXT_CHPGJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  WDBH        VARCHAR2(100),
  BH          NUMBER,
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  PMJG        VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(250),
  BZ          VARCHAR2(250),
  CHLY        VARCHAR2(250),
  BZQX        VARCHAR2(100),
  ZCSPR       VARCHAR2(40),
  ZCSFPZSFSP  NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPR       VARCHAR2(40),
  CCSFPZ      NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPR       VARCHAR2(40),
  JCSFPZ      NUMBER,
  JCCSPYJ     VARCHAR2(200),
  JCSPRQJCSP  DATE,
  YCSPR       VARCHAR2(40),
  YCSFPZ      NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  ZCSPRZZSP   VARCHAR2(40),
  ZCSFPZ      NUMBER,
  ZCSPYJSPYJ  VARCHAR2(200),
  CCMC        VARCHAR2(250),
  CCXS        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CHPGJL
  is '撤回评估记录';
comment on column ZXXT_CHPGJL.FYBM
  is '法院编码';
comment on column ZXXT_CHPGJL.WDBH
  is '文档编号';
comment on column ZXXT_CHPGJL.BH
  is '编号';
comment on column ZXXT_CHPGJL.SQR
  is '申请人';
comment on column ZXXT_CHPGJL.BZXR
  is '被执行人';
comment on column ZXXT_CHPGJL.PMJG
  is '拍卖机构';
comment on column ZXXT_CHPGJL.CBRBS
  is '承办人标识';
comment on column ZXXT_CHPGJL.CBR
  is '承办人';
comment on column ZXXT_CHPGJL.BZ
  is '备注';
comment on column ZXXT_CHPGJL.CHLY
  is '撤回理由';
comment on column ZXXT_CHPGJL.BZQX
  is '补正期限';
comment on column ZXXT_CHPGJL.ZCSPR
  is '组长审批人';
comment on column ZXXT_CHPGJL.ZCSFPZSFSP
  is '组长是否批准sfsp';
comment on column ZXXT_CHPGJL.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_CHPGJL.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_CHPGJL.CCSPR
  is '处长审批人';
comment on column ZXXT_CHPGJL.CCSFPZ
  is '处长是否批准';
comment on column ZXXT_CHPGJL.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_CHPGJL.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_CHPGJL.JCSPR
  is '局长审批人';
comment on column ZXXT_CHPGJL.JCSFPZ
  is '局长是否批准';
comment on column ZXXT_CHPGJL.JCCSPYJ
  is '局长长审批意见';
comment on column ZXXT_CHPGJL.JCSPRQJCSP
  is '局长审批日期jcsp';
comment on column ZXXT_CHPGJL.YCSPR
  is '院长审批人';
comment on column ZXXT_CHPGJL.YCSFPZ
  is '院长是否批准';
comment on column ZXXT_CHPGJL.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_CHPGJL.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_CHPGJL.ZCSPRZZSP
  is '组长审批人zzsp';
comment on column ZXXT_CHPGJL.ZCSFPZ
  is '组长是否批准';
comment on column ZXXT_CHPGJL.ZCSPYJSPYJ
  is '组长审批意见spyj';
comment on column ZXXT_CHPGJL.CCMC
  is '财产名称';
comment on column ZXXT_CHPGJL.CCXS
  is '财产详述';

prompt
prompt Creating table ZXXT_CHPGSPB
prompt ===========================
prompt
create table ZXXT_CHPGSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(100),
  BH          NUMBER,
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(100),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  CCMC        VARCHAR2(250),
  BZ          VARCHAR2(250),
  CHPGLY      VARCHAR2(250),
  CCXS        BLOB,
  ZCSPR       VARCHAR2(40),
  ZCSFPZ      NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPR       VARCHAR2(40),
  CCSFPZ      NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPR       VARCHAR2(40),
  JCSFPZ      NUMBER,
  JCCSPYJ     VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPR       VARCHAR2(40),
  YCSFPZ      NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CHPGSPB
  is '撤回评估审批表';
comment on column ZXXT_CHPGSPB.FYBM
  is '法院编码';
comment on column ZXXT_CHPGSPB.XH
  is '序号';
comment on column ZXXT_CHPGSPB.BH
  is '编号';
comment on column ZXXT_CHPGSPB.SQR
  is '申请人';
comment on column ZXXT_CHPGSPB.BZXR
  is '被执行人';
comment on column ZXXT_CHPGSPB.CBRBS
  is '承办人标识';
comment on column ZXXT_CHPGSPB.CBR
  is '承办人';
comment on column ZXXT_CHPGSPB.CCMC
  is '财产名称';
comment on column ZXXT_CHPGSPB.BZ
  is '备注';
comment on column ZXXT_CHPGSPB.CHPGLY
  is '撤回评估理由';
comment on column ZXXT_CHPGSPB.CCXS
  is '财产详述';
comment on column ZXXT_CHPGSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_CHPGSPB.ZCSFPZ
  is '组长是否批准';
comment on column ZXXT_CHPGSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_CHPGSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_CHPGSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_CHPGSPB.CCSFPZ
  is '处长是否批准';
comment on column ZXXT_CHPGSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_CHPGSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_CHPGSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_CHPGSPB.JCSFPZ
  is '局长是否批准';
comment on column ZXXT_CHPGSPB.JCCSPYJ
  is '局长长审批意见';
comment on column ZXXT_CHPGSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_CHPGSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_CHPGSPB.YCSFPZ
  is '院长是否批准';
comment on column ZXXT_CHPGSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_CHPGSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_CHPGWTS
prompt ===========================
prompt
create table ZXXT_CHPGWTS
(
  ID           VARCHAR2(36) not null,
  REG_TIME     DATE not null,
  UPDATE_TIME  DATE not null,
  DEPT_CODE    VARCHAR2(20) not null,
  APP_CODE     VARCHAR2(20) not null,
  FYBM         NUMBER,
  XH           NUMBER,
  BH           VARCHAR2(100),
  AJBH         NUMBER,
  CHPGNR       BLOB,
  YCSPRQ       DATE,
  JCSPRQ       DATE,
  BDWQD        VARCHAR2(250),
  SQRQ         DATE,
  ZCSPR        VARCHAR2(40),
  ZCSFPZ       NUMBER,
  ZCSPYJ       VARCHAR2(200),
  ZCSPRQ       DATE,
  CCSPR        VARCHAR2(40),
  CCSFPZ       NUMBER,
  CCSPYJ       VARCHAR2(200),
  CCSPRQ       DATE,
  JCSPR        VARCHAR2(40),
  JCSFPZ       NUMBER,
  JCCSPYJ      VARCHAR2(200),
  SPJCSPRQJZPS DATE,
  YCSPR        VARCHAR2(40),
  YCSPYJ       VARCHAR2(200),
  JSSJ         DATE,
  BDW          VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CHPGWTS
  is '撤回评估委托书';
comment on column ZXXT_CHPGWTS.FYBM
  is '法院编码';
comment on column ZXXT_CHPGWTS.XH
  is '序号';
comment on column ZXXT_CHPGWTS.BH
  is '编号';
comment on column ZXXT_CHPGWTS.AJBH
  is '案件编号';
comment on column ZXXT_CHPGWTS.CHPGNR
  is '撤回评估内容';
comment on column ZXXT_CHPGWTS.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_CHPGWTS.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_CHPGWTS.BDWQD
  is '标的物清单';
comment on column ZXXT_CHPGWTS.SQRQ
  is '申请日期';
comment on column ZXXT_CHPGWTS.ZCSPR
  is '组长审批人';
comment on column ZXXT_CHPGWTS.ZCSFPZ
  is '组长是否批准';
comment on column ZXXT_CHPGWTS.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_CHPGWTS.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_CHPGWTS.CCSPR
  is '处长审批人';
comment on column ZXXT_CHPGWTS.CCSFPZ
  is '处长是否批准';
comment on column ZXXT_CHPGWTS.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_CHPGWTS.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_CHPGWTS.JCSPR
  is '局长审批人';
comment on column ZXXT_CHPGWTS.JCSFPZ
  is '局长是否批准';
comment on column ZXXT_CHPGWTS.JCCSPYJ
  is '局长长审批意见';
comment on column ZXXT_CHPGWTS.SPJCSPRQJZPS
  is 'sp局长审批日期jzps';
comment on column ZXXT_CHPGWTS.YCSPR
  is '院长审批人';
comment on column ZXXT_CHPGWTS.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_CHPGWTS.JSSJ
  is '接收时间';
comment on column ZXXT_CHPGWTS.BDW
  is '标的物';

prompt
prompt Creating table ZXXT_CHPM
prompt ========================
prompt
create table ZXXT_CHPM
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CHLY        VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(250),
  BZ          VARCHAR2(250),
  PMJG        VARCHAR2(250),
  SQRQ        DATE,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CHPM
  is '撤回拍卖';
comment on column ZXXT_CHPM.FYBM
  is '法院编码';
comment on column ZXXT_CHPM.XH
  is '序号';
comment on column ZXXT_CHPM.BH
  is '编号';
comment on column ZXXT_CHPM.SQR
  is '申请人';
comment on column ZXXT_CHPM.BZXR
  is '被执行人';
comment on column ZXXT_CHPM.CHLY
  is '撤回理由';
comment on column ZXXT_CHPM.CBRBS
  is '承办人标识';
comment on column ZXXT_CHPM.CBR
  is '承办人';
comment on column ZXXT_CHPM.BZ
  is '备注';
comment on column ZXXT_CHPM.PMJG
  is '拍卖结果';
comment on column ZXXT_CHPM.SQRQ
  is '申请日期';
comment on column ZXXT_CHPM.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_CHPM.ZCSPR
  is '组长审批人';
comment on column ZXXT_CHPM.ZCPZ
  is '组长批准';
comment on column ZXXT_CHPM.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_CHPM.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_CHPM.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_CHPM.CCSPR
  is '处长审批人';
comment on column ZXXT_CHPM.CCPZ
  is '处长批准';
comment on column ZXXT_CHPM.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_CHPM.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_CHPM.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_CHPM.JCSPR
  is '局长审批人';
comment on column ZXXT_CHPM.JCPZ
  is '局长批准';
comment on column ZXXT_CHPM.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_CHPM.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_CHPM.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_CHPM.YCSPR
  is '院长审批人';
comment on column ZXXT_CHPM.YCPZ
  is '院长批准';
comment on column ZXXT_CHPM.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_CHPM.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_CHPMWTS
prompt ===========================
prompt
create table ZXXT_CHPMWTS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(100),
  AJBH        NUMBER,
  SQZXR       VARCHAR2(250),
  BZXR        VARCHAR2(100),
  AY          VARCHAR2(100),
  PMJG        VARCHAR2(250),
  CHYY        VARCHAR2(250),
  BZXRCCQK    VARCHAR2(100),
  TXRQ        DATE,
  SQRQ        DATE,
  ZCSPR       VARCHAR2(40),
  ZCSFPZ      NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPR       VARCHAR2(40),
  CCSFPZ      NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPR       VARCHAR2(40),
  JCSFPZ      NUMBER,
  JCCSPYJ     VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPR       VARCHAR2(40),
  YCSFPZ      NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  JSRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CHPMWTS
  is '撤回拍卖委托书';
comment on column ZXXT_CHPMWTS.FYBM
  is '法院编码';
comment on column ZXXT_CHPMWTS.XH
  is '序号';
comment on column ZXXT_CHPMWTS.AJBH
  is '案件编号';
comment on column ZXXT_CHPMWTS.SQZXR
  is '申请执行人';
comment on column ZXXT_CHPMWTS.BZXR
  is '被执行人';
comment on column ZXXT_CHPMWTS.AY
  is '案由';
comment on column ZXXT_CHPMWTS.PMJG
  is '拍卖机构';
comment on column ZXXT_CHPMWTS.CHYY
  is '撤回原因';
comment on column ZXXT_CHPMWTS.BZXRCCQK
  is '被执行人财产情况';
comment on column ZXXT_CHPMWTS.TXRQ
  is '填写日期';
comment on column ZXXT_CHPMWTS.SQRQ
  is '申请日期';
comment on column ZXXT_CHPMWTS.ZCSPR
  is '组长审批人';
comment on column ZXXT_CHPMWTS.ZCSFPZ
  is '组长是否批准';
comment on column ZXXT_CHPMWTS.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_CHPMWTS.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_CHPMWTS.CCSPR
  is '处长审批人';
comment on column ZXXT_CHPMWTS.CCSFPZ
  is '处长是否批准';
comment on column ZXXT_CHPMWTS.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_CHPMWTS.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_CHPMWTS.JCSPR
  is '局长审批人';
comment on column ZXXT_CHPMWTS.JCSFPZ
  is '局长是否批准';
comment on column ZXXT_CHPMWTS.JCCSPYJ
  is '局长长审批意见';
comment on column ZXXT_CHPMWTS.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_CHPMWTS.YCSPR
  is '院长审批人';
comment on column ZXXT_CHPMWTS.YCSFPZ
  is '院长是否批准';
comment on column ZXXT_CHPMWTS.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_CHPMWTS.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_CHPMWTS.JSRQ
  is '接收日期';

prompt
prompt Creating table ZXXT_CQQZCSSPB
prompt =============================
prompt
create table ZXXT_CQQZCSSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  AH          NUMBER,
  CBRBS       NUMBER,
  CBR         VARCHAR2(250),
  BD          VARCHAR2(250),
  TBSJ        DATE,
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  XXDFLWS     VARCHAR2(250),
  CQQZCSFS    VARCHAR2(250),
  CQQZCSDLY   VARCHAR2(250),
  DSRLXDH     VARCHAR2(250),
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  FJCSPRBS    NUMBER,
  FJCSPR      VARCHAR2(20),
  FJCPZ       NUMBER,
  FJCSPYJ     VARCHAR2(200),
  FJCSPRQ     DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CQQZCSSPB
  is '采取强制措施审批表';
comment on column ZXXT_CQQZCSSPB.FYBM
  is '法院编码';
comment on column ZXXT_CQQZCSSPB.XH
  is '序号';
comment on column ZXXT_CQQZCSSPB.BH
  is '编号';
comment on column ZXXT_CQQZCSSPB.AH
  is '案号';
comment on column ZXXT_CQQZCSSPB.CBRBS
  is '承办人标识';
comment on column ZXXT_CQQZCSSPB.CBR
  is '承办人';
comment on column ZXXT_CQQZCSSPB.BD
  is '标的';
comment on column ZXXT_CQQZCSSPB.TBSJ
  is '填表时间';
comment on column ZXXT_CQQZCSSPB.SQR
  is '申请人';
comment on column ZXXT_CQQZCSSPB.BZXR
  is '被执行人';
comment on column ZXXT_CQQZCSSPB.XXDFLWS
  is '需携带法律文书';
comment on column ZXXT_CQQZCSSPB.CQQZCSFS
  is '采取强制措施方式';
comment on column ZXXT_CQQZCSSPB.CQQZCSDLY
  is '采取强制措施的理由';
comment on column ZXXT_CQQZCSSPB.DSRLXDH
  is '当事人联系电话';
comment on column ZXXT_CQQZCSSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_CQQZCSSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_CQQZCSSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_CQQZCSSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_CQQZCSSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_CQQZCSSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_CQQZCSSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_CQQZCSSPB.CCPZ
  is '处长批准';
comment on column ZXXT_CQQZCSSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_CQQZCSSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_CQQZCSSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_CQQZCSSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_CQQZCSSPB.JCPZ
  is '局长批准';
comment on column ZXXT_CQQZCSSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_CQQZCSSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_CQQZCSSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_CQQZCSSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_CQQZCSSPB.YCPZ
  is '院长批准';
comment on column ZXXT_CQQZCSSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_CQQZCSSPB.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_CQQZCSSPB.FJCSPRBS
  is '副局长审批人标识';
comment on column ZXXT_CQQZCSSPB.FJCSPR
  is '副局长审批人';
comment on column ZXXT_CQQZCSSPB.FJCPZ
  is '副局长批准';
comment on column ZXXT_CQQZCSSPB.FJCSPYJ
  is '副局长审批意见';
comment on column ZXXT_CQQZCSSPB.FJCSPRQ
  is '副局长审批日期';

prompt
prompt Creating table ZXXT_CQQZCSSPB2
prompt ==============================
prompt
create table ZXXT_CQQZCSSPB2
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(100),
  BH          NUMBER,
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  BZ          BLOB,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  CQQZCSFS    VARCHAR2(250),
  CQQZCSLY    VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CQQZCSSPB2
  is '采取强制措施审批表2';
comment on column ZXXT_CQQZCSSPB2.FYBM
  is '法院编码';
comment on column ZXXT_CQQZCSSPB2.XH
  is '序号';
comment on column ZXXT_CQQZCSSPB2.BH
  is '编号';
comment on column ZXXT_CQQZCSSPB2.KPLB
  is '卡片类别';
comment on column ZXXT_CQQZCSSPB2.DJRBS
  is '登记人标识';
comment on column ZXXT_CQQZCSSPB2.DJR
  is '登记人';
comment on column ZXXT_CQQZCSSPB2.DJRQ
  is '登记日期';
comment on column ZXXT_CQQZCSSPB2.BZ
  is '备注';
comment on column ZXXT_CQQZCSSPB2.CBRBS
  is '承办人标识';
comment on column ZXXT_CQQZCSSPB2.CBR
  is '承办人';
comment on column ZXXT_CQQZCSSPB2.CQQZCSFS
  is '采取强制措施方式';
comment on column ZXXT_CQQZCSSPB2.CQQZCSLY
  is '采取强制措施理由';

prompt
prompt Creating table ZXXT_CWSKDJ
prompt ==========================
prompt
create table ZXXT_CWSKDJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  NH          NUMBER,
  FYJC        VARCHAR2(10),
  AZ          VARCHAR2(10),
  HS          NUMBER,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  SKZL        VARCHAR2(40),
  SKRQ        DATE,
  SKDX        VARCHAR2(100),
  SKJE        NUMBER,
  SJHM        VARCHAR2(100),
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  QRRBS       NUMBER,
  QRR         VARCHAR2(40),
  QRRQ        DATE,
  CBSPT       VARCHAR2(50),
  YSRQ        DATE,
  KJAKSJSJ    DATE,
  LDCBYJ      VARCHAR2(250),
  LDCBRQ      DATE,
  LDCBRBS     NUMBER,
  LDCBR       VARCHAR2(40),
  CBRHFYJ     VARCHAR2(250),
  CBRHFRQ     DATE,
  HFRBS       NUMBER,
  HFR         VARCHAR2(40),
  SFBZJ       NUMBER,
  ZRAKSJ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CWSKDJ
  is '财务收款登记';
comment on column ZXXT_CWSKDJ.FYBM
  is '法院编码';
comment on column ZXXT_CWSKDJ.XH
  is '序号';
comment on column ZXXT_CWSKDJ.BH
  is '编号';
comment on column ZXXT_CWSKDJ.NH
  is '年号';
comment on column ZXXT_CWSKDJ.FYJC
  is '法院简称';
comment on column ZXXT_CWSKDJ.AZ
  is '案字';
comment on column ZXXT_CWSKDJ.HS
  is '号数';
comment on column ZXXT_CWSKDJ.CBRBS
  is '承办人标识';
comment on column ZXXT_CWSKDJ.CBR
  is '承办人';
comment on column ZXXT_CWSKDJ.SKZL
  is '收款种类';
comment on column ZXXT_CWSKDJ.SKRQ
  is '收款日期';
comment on column ZXXT_CWSKDJ.SKDX
  is '收款对象';
comment on column ZXXT_CWSKDJ.SKJE
  is '收款金额';
comment on column ZXXT_CWSKDJ.SJHM
  is '收据号码';
comment on column ZXXT_CWSKDJ.DJRBS
  is '登记人标识';
comment on column ZXXT_CWSKDJ.DJR
  is '登记人';
comment on column ZXXT_CWSKDJ.DJRQ
  is '登记日期';
comment on column ZXXT_CWSKDJ.QRRBS
  is '确认人标识';
comment on column ZXXT_CWSKDJ.QRR
  is '确认人';
comment on column ZXXT_CWSKDJ.QRRQ
  is '确认日期';
comment on column ZXXT_CWSKDJ.CBSPT
  is '承办审判庭';
comment on column ZXXT_CWSKDJ.YSRQ
  is '原审日期';
comment on column ZXXT_CWSKDJ.KJAKSJSJ
  is '开具案款收据时间';
comment on column ZXXT_CWSKDJ.LDCBYJ
  is '领导催办意见';
comment on column ZXXT_CWSKDJ.LDCBRQ
  is '领导催办日期';
comment on column ZXXT_CWSKDJ.LDCBRBS
  is '领导催办人标识';
comment on column ZXXT_CWSKDJ.LDCBR
  is '领导催办人';
comment on column ZXXT_CWSKDJ.CBRHFYJ
  is '承办人回复意见';
comment on column ZXXT_CWSKDJ.CBRHFRQ
  is '承办人回复日期';
comment on column ZXXT_CWSKDJ.HFRBS
  is '回复人标识';
comment on column ZXXT_CWSKDJ.HFR
  is '回复人';
comment on column ZXXT_CWSKDJ.SFBZJ
  is '是否保证金';
comment on column ZXXT_CWSKDJ.ZRAKSJ
  is '转入案款时间';

prompt
prompt Creating table ZXXT_CXPGSPB
prompt ===========================
prompt
create table ZXXT_CXPGSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  CBRBS       NUMBER,
  CBR         VARCHAR2(250),
  KZCCSJ      DATE,
  LABD        VARCHAR2(100),
  PGQXKS      DATE,
  PGQXJS      DATE,
  PGQX        VARCHAR2(250),
  PGBCXRQ     DATE,
  CCMC        VARCHAR2(250),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CXPGYY      VARCHAR2(250),
  CXPGLY      VARCHAR2(250),
  CCXS        BLOB,
  DSRLXFS     VARCHAR2(250),
  ZCSPR       VARCHAR2(40),
  ZCSFPZ      NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPR       VARCHAR2(40),
  CCSFPZ      NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPR       VARCHAR2(40),
  JCSFPZ      NUMBER,
  JCCSPYJ     VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPR       VARCHAR2(40),
  YCSFPZ      NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CXPGSPB
  is '撤销评估审批表';
comment on column ZXXT_CXPGSPB.FYBM
  is '法院编码';
comment on column ZXXT_CXPGSPB.XH
  is '序号';
comment on column ZXXT_CXPGSPB.BH
  is '编号';
comment on column ZXXT_CXPGSPB.CBRBS
  is '承办人标识';
comment on column ZXXT_CXPGSPB.CBR
  is '承办人';
comment on column ZXXT_CXPGSPB.KZCCSJ
  is '控制财产时间';
comment on column ZXXT_CXPGSPB.LABD
  is '立案标的';
comment on column ZXXT_CXPGSPB.PGQXKS
  is '评估期限开始';
comment on column ZXXT_CXPGSPB.PGQXJS
  is '评估期限结束';
comment on column ZXXT_CXPGSPB.PGQX
  is '评估期限';
comment on column ZXXT_CXPGSPB.PGBCXRQ
  is '评估被撤销日期';
comment on column ZXXT_CXPGSPB.CCMC
  is '财产名称';
comment on column ZXXT_CXPGSPB.SQR
  is '申请人';
comment on column ZXXT_CXPGSPB.BZXR
  is '被执行人';
comment on column ZXXT_CXPGSPB.CXPGYY
  is '撤销评估原因';
comment on column ZXXT_CXPGSPB.CXPGLY
  is '撤销评估理由';
comment on column ZXXT_CXPGSPB.CCXS
  is '财产详述';
comment on column ZXXT_CXPGSPB.DSRLXFS
  is '当事人联系方式';
comment on column ZXXT_CXPGSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_CXPGSPB.ZCSFPZ
  is '组长是否批准';
comment on column ZXXT_CXPGSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_CXPGSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_CXPGSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_CXPGSPB.CCSFPZ
  is '处长是否批准';
comment on column ZXXT_CXPGSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_CXPGSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_CXPGSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_CXPGSPB.JCSFPZ
  is '局长是否批准';
comment on column ZXXT_CXPGSPB.JCCSPYJ
  is '局长长审批意见';
comment on column ZXXT_CXPGSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_CXPGSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_CXPGSPB.YCSFPZ
  is '院长是否批准';
comment on column ZXXT_CXPGSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_CXPGSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_CYFPYASXHYYJJL
prompt ==================================
prompt
create table ZXXT_CYFPYASXHYYJJL
(
  ID                    VARCHAR2(36) not null,
  REG_TIME              DATE not null,
  UPDATE_TIME           DATE not null,
  DEPT_CODE             VARCHAR2(20) not null,
  APP_CODE              VARCHAR2(20) not null,
  FYBM                  NUMBER,
  XH                    NUMBER,
  WDBH                  VARCHAR2(100),
  SQR                   VARCHAR2(250),
  CYFPYASXHYYJSJCYFPYBA DATE,
  DD                    VARCHAR2(250),
  CBRBS                 NUMBER,
  CJR                   VARCHAR2(250),
  CBRBSCBR              NUMBER,
  CBR                   VARCHAR2(250),
  JLRBS                 NUMBER,
  JLR                   VARCHAR2(250),
  AQQK                  BLOB,
  CBRYJ                 BLOB,
  HYQK                  BLOB,
  YJYJ                  BLOB,
  CYFPYASXHYYJSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_CYFPYASXHYYJJL
  is '参与分配预案事项合议研究记录';
comment on column ZXXT_CYFPYASXHYYJJL.FYBM
  is '法院编码';
comment on column ZXXT_CYFPYASXHYYJJL.XH
  is '序号';
comment on column ZXXT_CYFPYASXHYYJJL.WDBH
  is '文档编号';
comment on column ZXXT_CYFPYASXHYYJJL.SQR
  is '申请人';
comment on column ZXXT_CYFPYASXHYYJJL.CYFPYASXHYYJSJCYFPYBA
  is '参与分配预案事项合议研究时间cyfpyba';
comment on column ZXXT_CYFPYASXHYYJJL.DD
  is '地点';
comment on column ZXXT_CYFPYASXHYYJJL.CBRBS
  is '参办人标识';
comment on column ZXXT_CYFPYASXHYYJJL.CJR
  is '参加人';
comment on column ZXXT_CYFPYASXHYYJJL.CBRBSCBR
  is '承办人标识cbr';
comment on column ZXXT_CYFPYASXHYYJJL.CBR
  is '承办人';
comment on column ZXXT_CYFPYASXHYYJJL.JLRBS
  is '记录人标识';
comment on column ZXXT_CYFPYASXHYYJJL.JLR
  is '记录人';
comment on column ZXXT_CYFPYASXHYYJJL.AQQK
  is '案情情况';
comment on column ZXXT_CYFPYASXHYYJJL.CBRYJ
  is '承办人意见';
comment on column ZXXT_CYFPYASXHYYJJL.HYQK
  is '合议情况';
comment on column ZXXT_CYFPYASXHYYJJL.YJYJ
  is '研究意见';
comment on column ZXXT_CYFPYASXHYYJJL.CYFPYASXHYYJSJ
  is '参与分配预案事项合议研究时间';

prompt
prompt Creating table ZXXT_DCJL
prompt ========================
prompt
create table ZXXT_DCJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(100),
  BH          NUMBER,
  KPLB        NUMBER,
  DJR         VARCHAR2(40),
  DJRBS       NUMBER,
  DJRQ        DATE,
  BDCR        VARCHAR2(200),
  DCSJ        DATE,
  DCDD        VARCHAR2(240),
  DCNR        VARCHAR2(240),
  DCJG        VARCHAR2(100),
  JSRQ        DATE,
  CLJG        VARCHAR2(240)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_DCJL
  is '调查记录';
comment on column ZXXT_DCJL.FYBM
  is '法院编码';
comment on column ZXXT_DCJL.XH
  is '序号';
comment on column ZXXT_DCJL.BH
  is '编号';
comment on column ZXXT_DCJL.KPLB
  is '卡片类别';
comment on column ZXXT_DCJL.DJR
  is '登记人';
comment on column ZXXT_DCJL.DJRBS
  is '登记人标识';
comment on column ZXXT_DCJL.DJRQ
  is '登记日期';
comment on column ZXXT_DCJL.BDCR
  is '被调查人';
comment on column ZXXT_DCJL.DCSJ
  is '调查时间';
comment on column ZXXT_DCJL.DCDD
  is '调查地点';
comment on column ZXXT_DCJL.DCNR
  is '调查内容';
comment on column ZXXT_DCJL.DCJG
  is '调查结果';
comment on column ZXXT_DCJL.JSRQ
  is '结束日期';
comment on column ZXXT_DCJL.CLJG
  is '处理结果';

prompt
prompt Creating table ZXXT_DCQK
prompt ========================
prompt
create table ZXXT_DCQK
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  DCSJ        DATE,
  DCYY        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_DCQK
  is '调查情况';
comment on column ZXXT_DCQK.FYBM
  is '法院编码';
comment on column ZXXT_DCQK.XH
  is '序号';
comment on column ZXXT_DCQK.BH
  is '编号';
comment on column ZXXT_DCQK.DCSJ
  is '调查时间';
comment on column ZXXT_DCQK.DCYY
  is '调查原因';

prompt
prompt Creating table ZXXT_DQZQZXJL
prompt ============================
prompt
create table ZXXT_DQZQZXJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(100),
  BH          NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  KPLB        NUMBER,
  DJRQ        DATE,
  LY          VARCHAR2(250),
  DSR         VARCHAR2(250),
  BZ          BLOB,
  YYRQ        DATE,
  YYNR        VARCHAR2(250),
  YYCLJG      VARCHAR2(250),
  KBBCLDYY    VARCHAR2(250),
  CDRQ        DATE,
  QDDZQSE     NUMBER,
  CDNR        VARCHAR2(250),
  BZBZ        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_DQZQZXJL
  is '到期债权执行记录';
comment on column ZXXT_DQZQZXJL.FYBM
  is '法院编码';
comment on column ZXXT_DQZQZXJL.XH
  is '序号';
comment on column ZXXT_DQZQZXJL.BH
  is '编号';
comment on column ZXXT_DQZQZXJL.DJRBS
  is '登记人标识';
comment on column ZXXT_DQZQZXJL.DJR
  is '登记人';
comment on column ZXXT_DQZQZXJL.KPLB
  is '卡片类别';
comment on column ZXXT_DQZQZXJL.DJRQ
  is '登记日期';
comment on column ZXXT_DQZQZXJL.LY
  is '理由';
comment on column ZXXT_DQZQZXJL.DSR
  is '当事人';
comment on column ZXXT_DQZQZXJL.BZ
  is '备注';
comment on column ZXXT_DQZQZXJL.YYRQ
  is '异议日期';
comment on column ZXXT_DQZQZXJL.YYNR
  is '异议内容';
comment on column ZXXT_DQZQZXJL.YYCLJG
  is '异议处理结果';
comment on column ZXXT_DQZQZXJL.KBBCLDYY
  is '抗辩不成立的原因';
comment on column ZXXT_DQZQZXJL.CDRQ
  is '裁定日期';
comment on column ZXXT_DQZQZXJL.QDDZQSE
  is '确定的债权数额';
comment on column ZXXT_DQZQZXJL.CDNR
  is '裁定内容';
comment on column ZXXT_DQZQZXJL.BZBZ
  is '备注bz';

prompt
prompt Creating table ZXXT_DXWDZXJL
prompt ============================
prompt
create table ZXXT_DXWDZXJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(100),
  BH          NUMBER,
  XWDNR       VARCHAR2(250),
  ZXRQ        DATE,
  ZXQK        VARCHAR2(250),
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_DXWDZXJL
  is '对行为的执行记录';
comment on column ZXXT_DXWDZXJL.FYBM
  is '法院编码';
comment on column ZXXT_DXWDZXJL.XH
  is '序号';
comment on column ZXXT_DXWDZXJL.BH
  is '编号';
comment on column ZXXT_DXWDZXJL.XWDNR
  is '行为的内容';
comment on column ZXXT_DXWDZXJL.ZXRQ
  is '执行日期';
comment on column ZXXT_DXWDZXJL.ZXQK
  is '执行情况';
comment on column ZXXT_DXWDZXJL.BZ
  is '备注';

prompt
prompt Creating table ZXXT_GCJLB
prompt =========================
prompt
create table ZXXT_GCJLB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XFBH        NUMBER,
  JDBH        NUMBER,
  JDMC        VARCHAR2(100),
  FSRBS       NUMBER,
  FSRJSR      VARCHAR2(40),
  FSSJ        DATE,
  JSRBSJSRBS  NUMBER,
  JSR         VARCHAR2(40),
  SFCL        NUMBER,
  JSSJ        DATE,
  FSBZ        NUMBER,
  XH          NUMBER,
  SFJJ        NUMBER,
  SFSC        NUMBER,
  JSRBS       NUMBER,
  JSRJSR      VARCHAR2(40),
  SFCLSFCL    NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_GCJLB
  is '过程记录表';
comment on column ZXXT_GCJLB.FYBM
  is '法院编码';
comment on column ZXXT_GCJLB.BH
  is '编号';
comment on column ZXXT_GCJLB.XFBH
  is '信访编号';
comment on column ZXXT_GCJLB.JDBH
  is '节点标号';
comment on column ZXXT_GCJLB.JDMC
  is '节点名称';
comment on column ZXXT_GCJLB.FSRBS
  is '发送人标识';
comment on column ZXXT_GCJLB.FSRJSR
  is '发送人jsr';
comment on column ZXXT_GCJLB.FSSJ
  is '发送时间';
comment on column ZXXT_GCJLB.JSRBSJSRBS
  is '接收人标识jsrbs';
comment on column ZXXT_GCJLB.JSR
  is '接收人';
comment on column ZXXT_GCJLB.SFCL
  is '是否处理';
comment on column ZXXT_GCJLB.JSSJ
  is '接收时间';
comment on column ZXXT_GCJLB.FSBZ
  is '发送标志';
comment on column ZXXT_GCJLB.XH
  is '序号';
comment on column ZXXT_GCJLB.SFJJ
  is '是否紧急';
comment on column ZXXT_GCJLB.SFSC
  is '是否收藏';
comment on column ZXXT_GCJLB.JSRBS
  is '接收人标识';
comment on column ZXXT_GCJLB.JSRJSR
  is '接收人jsr';
comment on column ZXXT_GCJLB.SFCLSFCL
  is '是否处理sfcl';

prompt
prompt Creating table ZXXT_GLAJPGPMJL
prompt ==============================
prompt
create table ZXXT_GLAJPGPMJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  GLAJBS      NUMBER,
  GLAH        VARCHAR2(40),
  WSLB        VARCHAR2(30),
  AJZT        VARCHAR2(20),
  RQ          DATE,
  BDW         VARCHAR2(250),
  CLRBS       NUMBER,
  CLR         VARCHAR2(30)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_GLAJPGPMJL
  is '关联案件评估拍卖记录';
comment on column ZXXT_GLAJPGPMJL.FYBM
  is '法院编码';
comment on column ZXXT_GLAJPGPMJL.XH
  is '序号';
comment on column ZXXT_GLAJPGPMJL.BH
  is '编号';
comment on column ZXXT_GLAJPGPMJL.GLAJBS
  is '关联案件标识';
comment on column ZXXT_GLAJPGPMJL.GLAH
  is '关联案号';
comment on column ZXXT_GLAJPGPMJL.WSLB
  is '文书类别';
comment on column ZXXT_GLAJPGPMJL.AJZT
  is '案件状态';
comment on column ZXXT_GLAJPGPMJL.RQ
  is '日期';
comment on column ZXXT_GLAJPGPMJL.BDW
  is '标的物';
comment on column ZXXT_GLAJPGPMJL.CLRBS
  is '处理人标识';
comment on column ZXXT_GLAJPGPMJL.CLR
  is '处理人';

prompt
prompt Creating table ZXXT_GSDJDC
prompt ==========================
prompt
create table ZXXT_GSDJDC
(
  ID              VARCHAR2(36) not null,
  REG_TIME        DATE not null,
  UPDATE_TIME     DATE not null,
  DEPT_CODE       VARCHAR2(20) not null,
  APP_CODE        VARCHAR2(20) not null,
  FYBM            NUMBER,
  XH              NUMBER,
  BH              VARCHAR2(100),
  XZDCGSDJJG      VARCHAR2(250),
  DCRBS           NUMBER,
  DCR             VARCHAR2(250),
  DCSJ            DATE,
  BZXR            VARCHAR2(250),
  SFZCCCCFKYDMSCD NUMBER,
  CCCFKYDMSCDSWH  VARCHAR2(250),
  BZ              BLOB,
  CCDCQK          VARCHAR2(250),
  CCCQK           VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_GSDJDC
  is '工商登记调查';
comment on column ZXXT_GSDJDC.FYBM
  is '法院编码';
comment on column ZXXT_GSDJDC.XH
  is '序号';
comment on column ZXXT_GSDJDC.BH
  is '编号';
comment on column ZXXT_GSDJDC.XZDCGSDJJG
  is '协助调查工商登记机关';
comment on column ZXXT_GSDJDC.DCRBS
  is '调查人标识';
comment on column ZXXT_GSDJDC.DCR
  is '调查人';
comment on column ZXXT_GSDJDC.DCSJ
  is '调查时间';
comment on column ZXXT_GSDJDC.BZXR
  is '被执行人';
comment on column ZXXT_GSDJDC.SFZCCCCFKYDMSCD
  is '是覅作出财产查封、扣押的民事裁定';
comment on column ZXXT_GSDJDC.CCCFKYDMSCDSWH
  is '财产查封、扣押的民事裁定书文号';
comment on column ZXXT_GSDJDC.BZ
  is '备注';
comment on column ZXXT_GSDJDC.CCDCQK
  is '财产调查情况';
comment on column ZXXT_GSDJDC.CCCQK
  is '财产瑕疵情况';

prompt
prompt Creating table ZXXT_HFPGSPB
prompt ===========================
prompt
create table ZXXT_HFPGSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  AY          VARCHAR2(250),
  AH          VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(250),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CCMC        VARCHAR2(250),
  BZ          VARCHAR2(250),
  CCXS        BLOB,
  HFLY        BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_HFPGSPB
  is '恢复评估审批表';
comment on column ZXXT_HFPGSPB.FYBM
  is '法院编码';
comment on column ZXXT_HFPGSPB.XH
  is '序号';
comment on column ZXXT_HFPGSPB.BH
  is '编号';
comment on column ZXXT_HFPGSPB.AY
  is '案由';
comment on column ZXXT_HFPGSPB.AH
  is '案号';
comment on column ZXXT_HFPGSPB.CBRBS
  is '承办人标识';
comment on column ZXXT_HFPGSPB.CBR
  is '承办人';
comment on column ZXXT_HFPGSPB.SQR
  is '申请人';
comment on column ZXXT_HFPGSPB.BZXR
  is '被执行人';
comment on column ZXXT_HFPGSPB.CCMC
  is '财产名称';
comment on column ZXXT_HFPGSPB.BZ
  is '备注';
comment on column ZXXT_HFPGSPB.CCXS
  is '财产详述';
comment on column ZXXT_HFPGSPB.HFLY
  is '恢复理由';
comment on column ZXXT_HFPGSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_HFPGSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_HFPGSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_HFPGSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_HFPGSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_HFPGSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_HFPGSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_HFPGSPB.CCPZ
  is '处长批准';
comment on column ZXXT_HFPGSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_HFPGSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_HFPGSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_HFPGSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_HFPGSPB.JCPZ
  is '局长批准';
comment on column ZXXT_HFPGSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_HFPGSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_HFPGSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_HFPGSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_HFPGSPB.YCPZ
  is '院长批准';
comment on column ZXXT_HFPGSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_HFPGSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_HFPM
prompt ========================
prompt
create table ZXXT_HFPM
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(250),
  SYQR        VARCHAR2(250),
  HFLY        VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  PMJG        VARCHAR2(250),
  SQSJ        DATE,
  BDWQD       VARCHAR2(250),
  TZSQR       VARCHAR2(250),
  TZAY        VARCHAR2(250),
  TZCCQK      VARCHAR2(100),
  TZHFLY      VARCHAR2(250),
  TZPMJG      VARCHAR2(250),
  TZZTSJ      DATE,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  BZXR        VARCHAR2(250),
  ZTKSSJ      DATE,
  BZXRCCQK    VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_HFPM
  is '恢复拍卖';
comment on column ZXXT_HFPM.FYBM
  is '法院编码';
comment on column ZXXT_HFPM.XH
  is '序号';
comment on column ZXXT_HFPM.BH
  is '编号';
comment on column ZXXT_HFPM.SQR
  is '申请人';
comment on column ZXXT_HFPM.SYQR
  is '所有权人';
comment on column ZXXT_HFPM.HFLY
  is '恢复理由';
comment on column ZXXT_HFPM.CBRBS
  is '承办人标识';
comment on column ZXXT_HFPM.CBR
  is '承办人';
comment on column ZXXT_HFPM.PMJG
  is '拍卖价格';
comment on column ZXXT_HFPM.SQSJ
  is '申请时间';
comment on column ZXXT_HFPM.BDWQD
  is '标的物清单';
comment on column ZXXT_HFPM.TZSQR
  is '停止申请人';
comment on column ZXXT_HFPM.TZAY
  is '停止案由';
comment on column ZXXT_HFPM.TZCCQK
  is '停止财产情况';
comment on column ZXXT_HFPM.TZHFLY
  is '停止恢复理由';
comment on column ZXXT_HFPM.TZPMJG
  is '停止拍卖机构';
comment on column ZXXT_HFPM.TZZTSJ
  is '停止暂停时间';
comment on column ZXXT_HFPM.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_HFPM.ZCSPR
  is '组长审批人';
comment on column ZXXT_HFPM.ZCPZ
  is '组长批准';
comment on column ZXXT_HFPM.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_HFPM.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_HFPM.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_HFPM.CCSPR
  is '处长审批人';
comment on column ZXXT_HFPM.CCPZ
  is '处长批准';
comment on column ZXXT_HFPM.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_HFPM.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_HFPM.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_HFPM.JCSPR
  is '局长审批人';
comment on column ZXXT_HFPM.JCPZ
  is '局长批准';
comment on column ZXXT_HFPM.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_HFPM.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_HFPM.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_HFPM.YCSPR
  is '院长审批人';
comment on column ZXXT_HFPM.YCPZ
  is '院长批准';
comment on column ZXXT_HFPM.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_HFPM.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_HFPM.BZXR
  is '被执行人';
comment on column ZXXT_HFPM.ZTKSSJ
  is '暂停开始时间';
comment on column ZXXT_HFPM.BZXRCCQK
  is '被执行人财产情况';

prompt
prompt Creating table ZXXT_HFPM1
prompt =========================
prompt
create table ZXXT_HFPM1
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        VARCHAR2(250),
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        VARCHAR2(100),
  HFLY        VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  BZ          VARCHAR2(250),
  PMJG        VARCHAR2(250),
  SQRQ        DATE,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_HFPM1
  is '恢复拍卖1';
comment on column ZXXT_HFPM1.FYBM
  is '法院编码';
comment on column ZXXT_HFPM1.XH
  is '序号';
comment on column ZXXT_HFPM1.BH
  is '编号';
comment on column ZXXT_HFPM1.KPLB
  is '卡片类别';
comment on column ZXXT_HFPM1.DJRBS
  is '登记人标识';
comment on column ZXXT_HFPM1.DJR
  is '登记人';
comment on column ZXXT_HFPM1.DJRQ
  is '登记日期';
comment on column ZXXT_HFPM1.HFLY
  is '恢复理由';
comment on column ZXXT_HFPM1.CBRBS
  is '承办人标识';
comment on column ZXXT_HFPM1.CBR
  is '承办人';
comment on column ZXXT_HFPM1.BZ
  is '备注';
comment on column ZXXT_HFPM1.PMJG
  is '拍卖结果';
comment on column ZXXT_HFPM1.SQRQ
  is '申请日期';
comment on column ZXXT_HFPM1.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_HFPM1.ZCSPR
  is '组长审批人';
comment on column ZXXT_HFPM1.ZCPZ
  is '组长批准';
comment on column ZXXT_HFPM1.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_HFPM1.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_HFPM1.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_HFPM1.CCSPR
  is '处长审批人';
comment on column ZXXT_HFPM1.CCPZ
  is '处长批准';
comment on column ZXXT_HFPM1.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_HFPM1.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_HFPM1.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_HFPM1.JCSPR
  is '局长审批人';
comment on column ZXXT_HFPM1.JCPZ
  is '局长批准';
comment on column ZXXT_HFPM1.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_HFPM1.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_HFPM1.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_HFPM1.YCSPR
  is '院长审批人';
comment on column ZXXT_HFPM1.YCPZ
  is '院长批准';
comment on column ZXXT_HFPM1.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_HFPM1.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_HFPMSPB
prompt ===========================
prompt
create table ZXXT_HFPMSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  SYQR        VARCHAR2(250),
  BZQK        VARCHAR2(100),
  HFPMLY      VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(250),
  BZ          VARCHAR2(250),
  PMJG        VARCHAR2(250),
  SQRQ        DATE,
  CCMC        VARCHAR2(250),
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_HFPMSPB
  is '恢复拍卖审批表';
comment on column ZXXT_HFPMSPB.FYBM
  is '法院编码';
comment on column ZXXT_HFPMSPB.XH
  is '序号';
comment on column ZXXT_HFPMSPB.BH
  is '编号';
comment on column ZXXT_HFPMSPB.SQR
  is '申请人';
comment on column ZXXT_HFPMSPB.BZXR
  is '被执行人';
comment on column ZXXT_HFPMSPB.SYQR
  is '所有权人';
comment on column ZXXT_HFPMSPB.BZQK
  is '备注情况';
comment on column ZXXT_HFPMSPB.HFPMLY
  is '恢复拍卖理由';
comment on column ZXXT_HFPMSPB.CBRBS
  is '承办人标识';
comment on column ZXXT_HFPMSPB.CBR
  is '承办人';
comment on column ZXXT_HFPMSPB.BZ
  is '备注';
comment on column ZXXT_HFPMSPB.PMJG
  is '拍卖机构';
comment on column ZXXT_HFPMSPB.SQRQ
  is '申请日期';
comment on column ZXXT_HFPMSPB.CCMC
  is '财产名称';
comment on column ZXXT_HFPMSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_HFPMSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_HFPMSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_HFPMSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_HFPMSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_HFPMSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_HFPMSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_HFPMSPB.CCPZ
  is '处长批准';
comment on column ZXXT_HFPMSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_HFPMSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_HFPMSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_HFPMSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_HFPMSPB.JCPZ
  is '局长批准';
comment on column ZXXT_HFPMSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_HFPMSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_HFPMSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_HFPMSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_HFPMSPB.YCPZ
  is '院长批准';
comment on column ZXXT_HFPMSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_HFPMSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_HFTJZXXTSPB
prompt ===============================
prompt
create table ZXXT_HFTJZXXTSPB
(
  ID            VARCHAR2(36) not null,
  REG_TIME      DATE not null,
  UPDATE_TIME   DATE not null,
  DEPT_CODE     VARCHAR2(20) not null,
  APP_CODE      VARCHAR2(20) not null,
  FYBM          NUMBER,
  XH            NUMBER,
  BH            VARCHAR2(100),
  SQR           VARCHAR2(250),
  BZXR          VARCHAR2(250),
  CBRYJ         VARCHAR2(250),
  HFTJZXYMYTJYY BLOB,
  QTXYSMDQK     BLOB,
  HFTJYY        BLOB,
  ZCSPRBS       NUMBER,
  ZCSPR         VARCHAR2(20),
  ZCPZ          NUMBER,
  ZCSPYJ        VARCHAR2(200),
  ZCSPRQ        DATE,
  CCSPRBS       NUMBER,
  CCSPR         VARCHAR2(20),
  CCPZ          NUMBER,
  CCSPYJ        VARCHAR2(200),
  CCSPRQ        DATE,
  JCSPRBS       NUMBER,
  JCSPR         VARCHAR2(20),
  JCPZ          NUMBER,
  JCSPYJ        VARCHAR2(200),
  JCSPRQ        DATE,
  YCSPRBS       NUMBER,
  YCSPR         VARCHAR2(20),
  YCPZ          NUMBER,
  YCSPYJ        VARCHAR2(200),
  YCSPRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_HFTJZXXTSPB
  is '恢复提交征信系统审批表';
comment on column ZXXT_HFTJZXXTSPB.FYBM
  is '法院编码';
comment on column ZXXT_HFTJZXXTSPB.XH
  is '序号';
comment on column ZXXT_HFTJZXXTSPB.BH
  is '编号';
comment on column ZXXT_HFTJZXXTSPB.SQR
  is '申请人';
comment on column ZXXT_HFTJZXXTSPB.BZXR
  is '被执行人';
comment on column ZXXT_HFTJZXXTSPB.CBRYJ
  is '承办人意见';
comment on column ZXXT_HFTJZXXTSPB.HFTJZXYMYTJYY
  is '恢复提交征信原免于提交原因';
comment on column ZXXT_HFTJZXXTSPB.QTXYSMDQK
  is '其他需要说明的情况';
comment on column ZXXT_HFTJZXXTSPB.HFTJYY
  is '恢复提交原因';
comment on column ZXXT_HFTJZXXTSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_HFTJZXXTSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_HFTJZXXTSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_HFTJZXXTSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_HFTJZXXTSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_HFTJZXXTSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_HFTJZXXTSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_HFTJZXXTSPB.CCPZ
  is '处长批准';
comment on column ZXXT_HFTJZXXTSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_HFTJZXXTSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_HFTJZXXTSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_HFTJZXXTSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_HFTJZXXTSPB.JCPZ
  is '局长批准';
comment on column ZXXT_HFTJZXXTSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_HFTJZXXTSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_HFTJZXXTSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_HFTJZXXTSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_HFTJZXXTSPB.YCPZ
  is '院长批准';
comment on column ZXXT_HFTJZXXTSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_HFTJZXXTSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_JASPB
prompt =========================
prompt
create table ZXXT_JASPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  CBRYJ       VARCHAR2(200),
  SQRQ        DATE,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  FJCSPRBS    NUMBER,
  FJCSPR      VARCHAR2(20),
  FJCPZ       NUMBER,
  FJCSPYJ     VARCHAR2(200),
  FJCSPRQ     DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_JASPB
  is '结案审批表';
comment on column ZXXT_JASPB.FYBM
  is '法院编码';
comment on column ZXXT_JASPB.XH
  is '序号';
comment on column ZXXT_JASPB.BH
  is '编号';
comment on column ZXXT_JASPB.CBRBS
  is '承办人标识';
comment on column ZXXT_JASPB.CBR
  is '承办人';
comment on column ZXXT_JASPB.CBRYJ
  is '承办人意见';
comment on column ZXXT_JASPB.SQRQ
  is '申请日期';
comment on column ZXXT_JASPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_JASPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_JASPB.ZCPZ
  is '组长批准';
comment on column ZXXT_JASPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_JASPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_JASPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_JASPB.CCSPR
  is '处长审批人';
comment on column ZXXT_JASPB.CCPZ
  is '处长批准';
comment on column ZXXT_JASPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_JASPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_JASPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_JASPB.JCSPR
  is '局长审批人';
comment on column ZXXT_JASPB.JCPZ
  is '局长批准';
comment on column ZXXT_JASPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_JASPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_JASPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_JASPB.YCSPR
  is '院长审批人';
comment on column ZXXT_JASPB.YCPZ
  is '院长批准';
comment on column ZXXT_JASPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_JASPB.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_JASPB.FJCSPRBS
  is '副局长审批人标识';
comment on column ZXXT_JASPB.FJCSPR
  is '副局长审批人';
comment on column ZXXT_JASPB.FJCPZ
  is '副局长批准';
comment on column ZXXT_JASPB.FJCSPYJ
  is '副局长审批意见';
comment on column ZXXT_JASPB.FJCSPRQ
  is '副局长审批日期';

prompt
prompt Creating table ZXXT_JBAJSPB
prompt ===========================
prompt
create table ZXXT_JBAJSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  AY          VARCHAR2(250),
  AH          VARCHAR2(250),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  LASJ        DATE,
  SJ          DATE,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_JBAJSPB
  is '交办案件审批表';
comment on column ZXXT_JBAJSPB.FYBM
  is '法院编码';
comment on column ZXXT_JBAJSPB.XH
  is '序号';
comment on column ZXXT_JBAJSPB.BH
  is '编号';
comment on column ZXXT_JBAJSPB.AY
  is '案由';
comment on column ZXXT_JBAJSPB.AH
  is '案号';
comment on column ZXXT_JBAJSPB.SQR
  is '申请人';
comment on column ZXXT_JBAJSPB.BZXR
  is '被执行人';
comment on column ZXXT_JBAJSPB.LASJ
  is '立案时间';
comment on column ZXXT_JBAJSPB.SJ
  is '时间';
comment on column ZXXT_JBAJSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_JBAJSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_JBAJSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_JBAJSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_JBAJSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_JBAJSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_JBAJSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_JBAJSPB.CCPZ
  is '处长批准';
comment on column ZXXT_JBAJSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_JBAJSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_JBAJSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_JBAJSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_JBAJSPB.JCPZ
  is '局长批准';
comment on column ZXXT_JBAJSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_JBAJSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_JBAJSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_JBAJSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_JBAJSPB.YCPZ
  is '院长批准';
comment on column ZXXT_JBAJSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_JBAJSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_JBAJSPB2
prompt ============================
prompt
create table ZXXT_JBAJSPB2
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  AY          VARCHAR2(250),
  AH          VARCHAR2(250),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  LARQ        DATE,
  JBYY        VARCHAR2(100),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  NJBFY       VARCHAR2(250),
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_JBAJSPB2
  is '交办案件审批表2';
comment on column ZXXT_JBAJSPB2.FYBM
  is '法院编码';
comment on column ZXXT_JBAJSPB2.XH
  is '序号';
comment on column ZXXT_JBAJSPB2.BH
  is '编号';
comment on column ZXXT_JBAJSPB2.AY
  is '案由';
comment on column ZXXT_JBAJSPB2.AH
  is '案号';
comment on column ZXXT_JBAJSPB2.SQR
  is '申请人';
comment on column ZXXT_JBAJSPB2.BZXR
  is '被执行人';
comment on column ZXXT_JBAJSPB2.LARQ
  is '立案日期';
comment on column ZXXT_JBAJSPB2.JBYY
  is '交办原因';
comment on column ZXXT_JBAJSPB2.CBRBS
  is '承办人标识';
comment on column ZXXT_JBAJSPB2.CBR
  is '承办人';
comment on column ZXXT_JBAJSPB2.NJBFY
  is '拟交办法院';
comment on column ZXXT_JBAJSPB2.BZ
  is '备注';

prompt
prompt Creating table ZXXT_JCCFKYDJDQZZXCSCDS
prompt ======================================
prompt
create table ZXXT_JCCFKYDJDQZZXCSCDS
(
  ID            VARCHAR2(36) not null,
  REG_TIME      DATE not null,
  UPDATE_TIME   DATE not null,
  DEPT_CODE     VARCHAR2(20) not null,
  APP_CODE      VARCHAR2(20) not null,
  FYBM          NUMBER,
  XH            NUMBER,
  BH            VARCHAR2(100),
  SQZXR         VARCHAR2(250),
  BZXR          VARCHAR2(250),
  ZXYBS         NUMBER,
  ZXY           VARCHAR2(40),
  ZXRJBXX       VARCHAR2(250),
  BZXRJBXX      VARCHAR2(250),
  ZCCDRQ        DATE,
  CDXZ          VARCHAR2(250),
  CCMCSEDQK     VARCHAR2(250),
  JCQZZXCSSSHLY VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_JCCFKYDJDQZZXCSCDS
  is '解除查封、扣押、冻结等强制执行措施裁定书';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.FYBM
  is '法院编码';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.XH
  is '序号';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.BH
  is '编号';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.SQZXR
  is '申请执行人';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.BZXR
  is '被执行人';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.ZXYBS
  is '执行员标识';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.ZXY
  is '执行员';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.ZXRJBXX
  is '执行人基本信息';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.BZXRJBXX
  is '被执行人基本信息';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.ZCCDRQ
  is '做出裁定日期';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.CDXZ
  is '裁定性质';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.CCMCSEDQK
  is '财产名称、数额等情况';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.JCQZZXCSSSHLY
  is '解除强制执行措施事实和理由';

prompt
prompt Creating table ZXXT_JL
prompt ======================
prompt
create table ZXXT_JL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  BJLR        VARCHAR2(250),
  JLDD        VARCHAR2(250),
  YY          DATE,
  KSRQ        DATE,
  JLDQR       DATE,
  JJRQ        VARCHAR2(250),
  JJYY        BLOB,
  BZ          VARCHAR2(250),
  FYNR        DATE,
  DFRQ        VARCHAR2(250),
  FYFY        VARCHAR2(250),
  FYJG        VARCHAR2(250),
  CLJG        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_JL
  is '拘留(解除拘留)记录表';
comment on column ZXXT_JL.FYBM
  is '法院编码';
comment on column ZXXT_JL.XH
  is '序号';
comment on column ZXXT_JL.BH
  is '编号';
comment on column ZXXT_JL.BJLR
  is '被拘留人';
comment on column ZXXT_JL.JLDD
  is '拘留地点';
comment on column ZXXT_JL.YY
  is '原因';
comment on column ZXXT_JL.KSRQ
  is '开始日期';
comment on column ZXXT_JL.JLDQR
  is '拘留到期日';
comment on column ZXXT_JL.JJRQ
  is '解拘日期';
comment on column ZXXT_JL.JJYY
  is '解拘原因';
comment on column ZXXT_JL.BZ
  is '备注';
comment on column ZXXT_JL.FYNR
  is '复议内容';
comment on column ZXXT_JL.DFRQ
  is '答复日期';
comment on column ZXXT_JL.FYFY
  is '复议法院';
comment on column ZXXT_JL.FYJG
  is '复议结果';
comment on column ZXXT_JL.CLJG
  is '处理结果';

prompt
prompt Creating table ZXXT_JWHYJJL
prompt ===========================
prompt
create table ZXXT_JWHYJJL
(
  ID            VARCHAR2(36) not null,
  REG_TIME      DATE not null,
  UPDATE_TIME   DATE not null,
  DEPT_CODE     VARCHAR2(20) not null,
  APP_CODE      VARCHAR2(20) not null,
  FYBM          NUMBER,
  XH            NUMBER,
  BH            VARCHAR2(100),
  SQZXRJBQK     VARCHAR2(250),
  BZXRJBQK      VARCHAR2(250),
  ZXXLJWHYJJLSJ DATE,
  DD            VARCHAR2(250),
  CJRBS         NUMBER,
  CJR           VARCHAR2(250),
  CBRBS         NUMBER,
  CBR           VARCHAR2(40),
  JLRBS         NUMBER,
  JLR           VARCHAR2(250),
  AQQK          BLOB,
  CBRYJ         BLOB,
  HYQK          BLOB,
  TXNR          BLOB,
  YJYJ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_JWHYJJL
  is '局务会意见记录';
comment on column ZXXT_JWHYJJL.FYBM
  is '法院编码';
comment on column ZXXT_JWHYJJL.XH
  is '序号';
comment on column ZXXT_JWHYJJL.BH
  is '编号';
comment on column ZXXT_JWHYJJL.SQZXRJBQK
  is '申请执行人基本情况';
comment on column ZXXT_JWHYJJL.BZXRJBQK
  is '被执行人基本情况';
comment on column ZXXT_JWHYJJL.ZXXLJWHYJJLSJ
  is '执行效率局务会研究记录时间';
comment on column ZXXT_JWHYJJL.DD
  is '地点';
comment on column ZXXT_JWHYJJL.CJRBS
  is '参加人标识';
comment on column ZXXT_JWHYJJL.CJR
  is '参加人';
comment on column ZXXT_JWHYJJL.CBRBS
  is '承办人标识';
comment on column ZXXT_JWHYJJL.CBR
  is '承办人';
comment on column ZXXT_JWHYJJL.JLRBS
  is '记录人标识';
comment on column ZXXT_JWHYJJL.JLR
  is '记录人';
comment on column ZXXT_JWHYJJL.AQQK
  is '案情情况';
comment on column ZXXT_JWHYJJL.CBRYJ
  is '承办人意见';
comment on column ZXXT_JWHYJJL.HYQK
  is '合议情况';
comment on column ZXXT_JWHYJJL.TXNR
  is '填写内容';
comment on column ZXXT_JWHYJJL.YJYJ
  is '研究意见';

prompt
prompt Creating table ZXXT_JXZTPGSPB
prompt =============================
prompt
create table ZXXT_JXZTPGSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  AY          VARCHAR2(250),
  AH          VARCHAR2(250),
  LASJ        DATE,
  ZTPGLY      VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(100),
  BZ          VARCHAR2(250),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CCMC        VARCHAR2(250),
  CCXS        BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  HFRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_JXZTPGSPB
  is '继续暂停评估审批表';
comment on column ZXXT_JXZTPGSPB.FYBM
  is '法院编码';
comment on column ZXXT_JXZTPGSPB.XH
  is '序号';
comment on column ZXXT_JXZTPGSPB.BH
  is '编号';
comment on column ZXXT_JXZTPGSPB.AY
  is '案由';
comment on column ZXXT_JXZTPGSPB.AH
  is '案号';
comment on column ZXXT_JXZTPGSPB.LASJ
  is '立案时间';
comment on column ZXXT_JXZTPGSPB.ZTPGLY
  is '暂停评估理由';
comment on column ZXXT_JXZTPGSPB.CBRBS
  is '承办人标识';
comment on column ZXXT_JXZTPGSPB.CBR
  is '承办人';
comment on column ZXXT_JXZTPGSPB.BZ
  is '备注';
comment on column ZXXT_JXZTPGSPB.SQR
  is '申请人';
comment on column ZXXT_JXZTPGSPB.BZXR
  is '被执行人';
comment on column ZXXT_JXZTPGSPB.CCMC
  is '财产名称';
comment on column ZXXT_JXZTPGSPB.CCXS
  is '财产详述';
comment on column ZXXT_JXZTPGSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_JXZTPGSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_JXZTPGSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_JXZTPGSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_JXZTPGSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_JXZTPGSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_JXZTPGSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_JXZTPGSPB.CCPZ
  is '处长批准';
comment on column ZXXT_JXZTPGSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_JXZTPGSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_JXZTPGSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_JXZTPGSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_JXZTPGSPB.JCPZ
  is '局长批准';
comment on column ZXXT_JXZTPGSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_JXZTPGSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_JXZTPGSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_JXZTPGSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_JXZTPGSPB.YCPZ
  is '院长批准';
comment on column ZXXT_JXZTPGSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_JXZTPGSPB.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_JXZTPGSPB.HFRQ
  is '回复日期';

prompt
prompt Creating table ZXXT_JXZTPM
prompt ==========================
prompt
create table ZXXT_JXZTPM
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  ZTTS        NUMBER,
  CCMC        VARCHAR2(250),
  ZTPMLY      VARCHAR2(250),
  PMJG        NUMBER,
  BZ          VARCHAR2(250),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CCXS        BLOB,
  ZCSPRBSZZSP NUMBER,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_JXZTPM
  is '继续暂停拍卖';
comment on column ZXXT_JXZTPM.FYBM
  is '法院编码';
comment on column ZXXT_JXZTPM.XH
  is '序号';
comment on column ZXXT_JXZTPM.BH
  is '编号';
comment on column ZXXT_JXZTPM.ZTTS
  is '暂停天数';
comment on column ZXXT_JXZTPM.CCMC
  is '财产名称';
comment on column ZXXT_JXZTPM.ZTPMLY
  is '暂停拍卖理由';
comment on column ZXXT_JXZTPM.PMJG
  is '拍卖价格';
comment on column ZXXT_JXZTPM.BZ
  is '备注';
comment on column ZXXT_JXZTPM.SQR
  is '申请人';
comment on column ZXXT_JXZTPM.BZXR
  is '被执行人';
comment on column ZXXT_JXZTPM.CCXS
  is '财产详述';
comment on column ZXXT_JXZTPM.ZCSPRBSZZSP
  is '组长审批人标识zzsp';
comment on column ZXXT_JXZTPM.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_JXZTPM.ZCSPR
  is '组长审批人';
comment on column ZXXT_JXZTPM.ZCPZ
  is '组长批准';
comment on column ZXXT_JXZTPM.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_JXZTPM.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_JXZTPM.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_JXZTPM.CCSPR
  is '处长审批人';
comment on column ZXXT_JXZTPM.CCPZ
  is '处长批准';
comment on column ZXXT_JXZTPM.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_JXZTPM.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_JXZTPM.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_JXZTPM.JCSPR
  is '局长审批人';
comment on column ZXXT_JXZTPM.JCPZ
  is '局长批准';
comment on column ZXXT_JXZTPM.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_JXZTPM.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_JXZTPM.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_JXZTPM.YCSPR
  is '院长审批人';
comment on column ZXXT_JXZTPM.YCPZ
  is '院长批准';
comment on column ZXXT_JXZTPM.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_JXZTPM.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_JZLB
prompt ========================
prompt
create table ZXXT_JZLB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  AJBS        NUMBER,
  XH          NUMBER,
  WJMC        DATE,
  STWJM       VARCHAR2(100),
  LWBH        VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_JZLB
  is '卷宗列表';
comment on column ZXXT_JZLB.FYBM
  is '法院编码';
comment on column ZXXT_JZLB.BH
  is '编号';
comment on column ZXXT_JZLB.AJBS
  is '案件标识';
comment on column ZXXT_JZLB.XH
  is '序号';
comment on column ZXXT_JZLB.WJMC
  is '文件名称';
comment on column ZXXT_JZLB.STWJM
  is '实体文件名';
comment on column ZXXT_JZLB.LWBH
  is '来文编号';

prompt
prompt Creating table ZXXT_KLTQGRSRCKJL
prompt ================================
prompt
create table ZXXT_KLTQGRSRCKJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  LB          VARCHAR2(250),
  BZXR        VARCHAR2(250),
  XZYWR       VARCHAR2(250),
  TQRQ        DATE,
  TQZH        VARCHAR2(250),
  TQKLJE      NUMBER,
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_KLTQGRSRCKJL
  is '扣留 提取个人收入 存款记录';
comment on column ZXXT_KLTQGRSRCKJL.FYBM
  is '法院编码';
comment on column ZXXT_KLTQGRSRCKJL.XH
  is '序号';
comment on column ZXXT_KLTQGRSRCKJL.BH
  is '编号';
comment on column ZXXT_KLTQGRSRCKJL.LB
  is '类别';
comment on column ZXXT_KLTQGRSRCKJL.BZXR
  is '被执行人';
comment on column ZXXT_KLTQGRSRCKJL.XZYWR
  is '协助义务人';
comment on column ZXXT_KLTQGRSRCKJL.TQRQ
  is '提取日期';
comment on column ZXXT_KLTQGRSRCKJL.TQZH
  is '提取帐号';
comment on column ZXXT_KLTQGRSRCKJL.TQKLJE
  is '提取扣留金额';
comment on column ZXXT_KLTQGRSRCKJL.BZ
  is '备注';

prompt
prompt Creating table ZXXT_LXDSRDQZQSXHYYJJL
prompt =====================================
prompt
create table ZXXT_LXDSRDQZQSXHYYJJL
(
  ID                  VARCHAR2(36) not null,
  REG_TIME            DATE not null,
  UPDATE_TIME         DATE not null,
  DEPT_CODE           VARCHAR2(20) not null,
  APP_CODE            VARCHAR2(20) not null,
  FYBM                NUMBER,
  XH                  NUMBER,
  BH                  VARCHAR2(100),
  SQR                 VARCHAR2(250),
  BZXR                VARCHAR2(250),
  LXDSRDQZQSXHYYJJLSJ DATE,
  DD                  VARCHAR2(250),
  CJRBS               NUMBER,
  CJR                 VARCHAR2(250),
  CBRBS               NUMBER,
  CBR                 VARCHAR2(40),
  JLRBS               NUMBER,
  JLR                 VARCHAR2(40),
  AQQK                BLOB,
  CBRYJ               BLOB,
  HYQK                BLOB,
  YJYJ                BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_LXDSRDQZQSXHYYJJL
  is '履行第三人到期债权事项合议研究记录';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.FYBM
  is '法院编码';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.XH
  is '序号';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.BH
  is '编号';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.SQR
  is '申请人';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.BZXR
  is '被执行人';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.LXDSRDQZQSXHYYJJLSJ
  is '履行第三人到期债权事项合议研究记录时间';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.DD
  is '地点';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.CJRBS
  is '参加人标识';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.CJR
  is '参加人';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.CBRBS
  is '承办人标识';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.CBR
  is '承办人';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.JLRBS
  is '记录人标识';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.JLR
  is '记录人';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.AQQK
  is '案情情况';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.CBRYJ
  is '承办人意见';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.HYQK
  is '合议情况';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.YJYJ
  is '研究意见';

prompt
prompt Creating table ZXXT_LXXW
prompt ========================
prompt
create table ZXXT_LXXW
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  LXSJ        DATE,
  LXXW        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_LXXW
  is '履行行为';
comment on column ZXXT_LXXW.FYBM
  is '法院编码';
comment on column ZXXT_LXXW.XH
  is '序号';
comment on column ZXXT_LXXW.BH
  is '编号';
comment on column ZXXT_LXXW.LXSJ
  is '履行时间';
comment on column ZXXT_LXXW.LXXW
  is '履行行为';

prompt
prompt Creating table ZXXT_PCZRJL
prompt ==========================
prompt
create table ZXXT_PCZRJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  PCZRR       VARCHAR2(250),
  PCYY        VARCHAR2(250),
  PCJE        NUMBER,
  CDPCRQ      DATE,
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_PCZRJL
  is '赔偿责任记录';
comment on column ZXXT_PCZRJL.FYBM
  is '法院编码';
comment on column ZXXT_PCZRJL.XH
  is '序号';
comment on column ZXXT_PCZRJL.BH
  is '编号';
comment on column ZXXT_PCZRJL.PCZRR
  is '赔偿责任人';
comment on column ZXXT_PCZRJL.PCYY
  is '赔偿原因';
comment on column ZXXT_PCZRJL.PCJE
  is '赔偿金额';
comment on column ZXXT_PCZRJL.CDPCRQ
  is '裁定赔偿日期';
comment on column ZXXT_PCZRJL.BZ
  is '备注';

prompt
prompt Creating table ZXXT_PGBZ
prompt ========================
prompt
create table ZXXT_PGBZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(250),
  SYQR        VARCHAR2(250),
  BZQX        VARCHAR2(250),
  BZLY        VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(250),
  PGJG        VARCHAR2(250),
  BZ          VARCHAR2(250),
  BDWQD       VARCHAR2(250),
  SQRQ        DATE,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  BZYY        VARCHAR2(250),
  PGSX        DATE,
  AY          VARCHAR2(250),
  CBRLXFS     VARCHAR2(250),
  PGBD        VARCHAR2(250),
  FYSDBZBGRQ  DATE,
  NRZY        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_PGBZ
  is '评估补正';
comment on column ZXXT_PGBZ.FYBM
  is '法院编码';
comment on column ZXXT_PGBZ.XH
  is '序号';
comment on column ZXXT_PGBZ.BH
  is '编号';
comment on column ZXXT_PGBZ.SQR
  is '申请人';
comment on column ZXXT_PGBZ.SYQR
  is '所有权人';
comment on column ZXXT_PGBZ.BZQX
  is '补正期限';
comment on column ZXXT_PGBZ.BZLY
  is '补正理由';
comment on column ZXXT_PGBZ.CBRBS
  is '承办人标识';
comment on column ZXXT_PGBZ.CBR
  is '承办人';
comment on column ZXXT_PGBZ.PGJG
  is '评估机构';
comment on column ZXXT_PGBZ.BZ
  is '备注';
comment on column ZXXT_PGBZ.BDWQD
  is '标的物清单';
comment on column ZXXT_PGBZ.SQRQ
  is '申请日期';
comment on column ZXXT_PGBZ.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_PGBZ.ZCSPR
  is '组长审批人';
comment on column ZXXT_PGBZ.ZCPZ
  is '组长批准';
comment on column ZXXT_PGBZ.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_PGBZ.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_PGBZ.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_PGBZ.CCSPR
  is '处长审批人';
comment on column ZXXT_PGBZ.CCPZ
  is '处长批准';
comment on column ZXXT_PGBZ.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_PGBZ.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_PGBZ.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_PGBZ.JCSPR
  is '局长审批人';
comment on column ZXXT_PGBZ.JCPZ
  is '局长批准';
comment on column ZXXT_PGBZ.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_PGBZ.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_PGBZ.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_PGBZ.YCSPR
  is '院长审批人';
comment on column ZXXT_PGBZ.YCPZ
  is '院长批准';
comment on column ZXXT_PGBZ.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_PGBZ.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_PGBZ.BZYY
  is '补正原因';
comment on column ZXXT_PGBZ.PGSX
  is '评估时限';
comment on column ZXXT_PGBZ.AY
  is '案由';
comment on column ZXXT_PGBZ.CBRLXFS
  is '承办人联系方式';
comment on column ZXXT_PGBZ.PGBD
  is '评估标的';
comment on column ZXXT_PGBZ.FYSDBZBGRQ
  is '法院收到补正报告日期';
comment on column ZXXT_PGBZ.NRZY
  is '内容摘要';

prompt
prompt Creating table ZXXT_PGBZ1
prompt =========================
prompt
create table ZXXT_PGBZ1
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  BZQX        VARCHAR2(250),
  BZLY        VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  PGJG        VARCHAR2(250),
  SQRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_PGBZ1
  is '评估补正1';
comment on column ZXXT_PGBZ1.FYBM
  is '法院编码';
comment on column ZXXT_PGBZ1.XH
  is '序号';
comment on column ZXXT_PGBZ1.BH
  is '编号';
comment on column ZXXT_PGBZ1.SQR
  is '申请人';
comment on column ZXXT_PGBZ1.BZXR
  is '被执行人';
comment on column ZXXT_PGBZ1.BZQX
  is '补正期限';
comment on column ZXXT_PGBZ1.BZLY
  is '补正理由';
comment on column ZXXT_PGBZ1.CBRBS
  is '承办人标识';
comment on column ZXXT_PGBZ1.CBR
  is '承办人';
comment on column ZXXT_PGBZ1.PGJG
  is '评估结果';
comment on column ZXXT_PGBZ1.SQRQ
  is '申请日期';

prompt
prompt Creating table ZXXT_PGCXTZ
prompt ==========================
prompt
create table ZXXT_PGCXTZ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  BCXZL       VARCHAR2(250),
  BCXRQ       DATE,
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CXLY        VARCHAR2(250),
  BZ          BLOB,
  CCMC        VARCHAR2(250),
  CCXS        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_PGCXTZ
  is '评估撤销停止';
comment on column ZXXT_PGCXTZ.FYBM
  is '法院编码';
comment on column ZXXT_PGCXTZ.XH
  is '序号';
comment on column ZXXT_PGCXTZ.BH
  is '编号';
comment on column ZXXT_PGCXTZ.BCXZL
  is '被撤销种类';
comment on column ZXXT_PGCXTZ.BCXRQ
  is '被撤销日期';
comment on column ZXXT_PGCXTZ.SQR
  is '申请人';
comment on column ZXXT_PGCXTZ.BZXR
  is '被执行人';
comment on column ZXXT_PGCXTZ.CXLY
  is '撤销理由';
comment on column ZXXT_PGCXTZ.BZ
  is '备注';
comment on column ZXXT_PGCXTZ.CCMC
  is '财产名称';
comment on column ZXXT_PGCXTZ.CCXS
  is '财产详述';

prompt
prompt Creating table ZXXT_PGJL
prompt ========================
prompt
create table ZXXT_PGJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  BDWQD       VARCHAR2(250),
  SYQR        VARCHAR2(250),
  PGJGMC      VARCHAR2(250),
  XDFS        VARCHAR2(250),
  PGKSRQ      DATE,
  FYSDYYHFRQ  DATE,
  FYSDRQ      DATE,
  PGJSRQ      DATE,
  PGJGBZ      BLOB,
  YYR         VARCHAR2(250),
  TCYYRQ      DATE,
  YYNR        VARCHAR2(250),
  CLRQ        DATE,
  CLJG        VARCHAR2(250),
  YYBZ        BLOB,
  PGKSSJ      DATE,
  PGJSSJ      DATE,
  PGQX        VARCHAR2(50),
  PGYY        VARCHAR2(250),
  PGBD        VARCHAR2(250),
  CCZK        VARCHAR2(250),
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  KZCCSJ      VARCHAR2(100),
  LABD        NUMBER,
  CBRLXFS     VARCHAR2(100),
  CCMC        VARCHAR2(250),
  CCXS        BLOB,
  PGQXKS      DATE,
  PGQXJS      DATE,
  ZTYSPGLY    VARCHAR2(250),
  ZHYSPGLY    VARCHAR2(250),
  PGJG        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_PGJL
  is '评估记录';
comment on column ZXXT_PGJL.FYBM
  is '法院编码';
comment on column ZXXT_PGJL.XH
  is '序号';
comment on column ZXXT_PGJL.BH
  is '编号';
comment on column ZXXT_PGJL.KPLB
  is '卡片类别';
comment on column ZXXT_PGJL.DJRBS
  is '登记人标识';
comment on column ZXXT_PGJL.DJR
  is '登记人';
comment on column ZXXT_PGJL.DJRQ
  is '登记日期';
comment on column ZXXT_PGJL.BDWQD
  is '标的物清单';
comment on column ZXXT_PGJL.SYQR
  is '所有权人';
comment on column ZXXT_PGJL.PGJGMC
  is '评估机构名称';
comment on column ZXXT_PGJL.XDFS
  is '选定方式';
comment on column ZXXT_PGJL.PGKSRQ
  is '评估开始日期';
comment on column ZXXT_PGJL.FYSDYYHFRQ
  is '法院收到异议回复日期';
comment on column ZXXT_PGJL.FYSDRQ
  is '法院收到日期';
comment on column ZXXT_PGJL.PGJSRQ
  is '评估结束日期';
comment on column ZXXT_PGJL.PGJGBZ
  is '评估机构备注';
comment on column ZXXT_PGJL.YYR
  is '异议人';
comment on column ZXXT_PGJL.TCYYRQ
  is '提出异议日期';
comment on column ZXXT_PGJL.YYNR
  is '异议内容';
comment on column ZXXT_PGJL.CLRQ
  is '处理日期';
comment on column ZXXT_PGJL.CLJG
  is '处理结果';
comment on column ZXXT_PGJL.YYBZ
  is '异议备注';
comment on column ZXXT_PGJL.PGKSSJ
  is '评估开始时间';
comment on column ZXXT_PGJL.PGJSSJ
  is '评估结束时间';
comment on column ZXXT_PGJL.PGQX
  is '评估期限';
comment on column ZXXT_PGJL.PGYY
  is '评估原因';
comment on column ZXXT_PGJL.PGBD
  is '评估标的';
comment on column ZXXT_PGJL.CCZK
  is '财产状况';
comment on column ZXXT_PGJL.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_PGJL.ZCSPR
  is '组长审批人';
comment on column ZXXT_PGJL.ZCPZ
  is '组长批准';
comment on column ZXXT_PGJL.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_PGJL.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_PGJL.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_PGJL.CCSPR
  is '处长审批人';
comment on column ZXXT_PGJL.CCPZ
  is '处长批准';
comment on column ZXXT_PGJL.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_PGJL.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_PGJL.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_PGJL.JCSPR
  is '局长审批人';
comment on column ZXXT_PGJL.JCPZ
  is '局长批准';
comment on column ZXXT_PGJL.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_PGJL.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_PGJL.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_PGJL.YCSPR
  is '院长审批人';
comment on column ZXXT_PGJL.YCPZ
  is '院长批准';
comment on column ZXXT_PGJL.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_PGJL.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_PGJL.KZCCSJ
  is '控制财产时间';
comment on column ZXXT_PGJL.LABD
  is '立案标的';
comment on column ZXXT_PGJL.CBRLXFS
  is '承办人联系方式';
comment on column ZXXT_PGJL.CCMC
  is '财产名称';
comment on column ZXXT_PGJL.CCXS
  is '财产详述';
comment on column ZXXT_PGJL.PGQXKS
  is '评估期限开始';
comment on column ZXXT_PGJL.PGQXJS
  is '评估期限结束';
comment on column ZXXT_PGJL.ZTYSPGLY
  is '暂停移送评估理由';
comment on column ZXXT_PGJL.ZHYSPGLY
  is '暂缓移送评估理由';
comment on column ZXXT_PGJL.PGJG
  is '评估机构';

prompt
prompt Creating table ZXXT_PGPMLCJL
prompt ============================
prompt
create table ZXXT_PGPMLCJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  CCMC        VARCHAR2(100),
  SJ          VARCHAR2(20),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  JLSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_PGPMLCJL
  is '评估拍卖流程记录';
comment on column ZXXT_PGPMLCJL.FYBM
  is '法院编码';
comment on column ZXXT_PGPMLCJL.XH
  is '　序号';
comment on column ZXXT_PGPMLCJL.BH
  is '编号';
comment on column ZXXT_PGPMLCJL.CCMC
  is '财产名称';
comment on column ZXXT_PGPMLCJL.SJ
  is '时间';
comment on column ZXXT_PGPMLCJL.CBRBS
  is '承办人标识';
comment on column ZXXT_PGPMLCJL.CBR
  is '承办人';
comment on column ZXXT_PGPMLCJL.JLSJ
  is '记录时间';

prompt
prompt Creating table ZXXT_PGSXHYYJ
prompt ============================
prompt
create table ZXXT_PGSXHYYJ
(
  ID              VARCHAR2(36) not null,
  REG_TIME        DATE not null,
  UPDATE_TIME     DATE not null,
  DEPT_CODE       VARCHAR2(20) not null,
  APP_CODE        VARCHAR2(20) not null,
  FYBM            NUMBER,
  XH              NUMBER,
  BH              VARCHAR2(100),
  ZXAJPGSXHYYJSQR VARCHAR2(250),
  BZXRXX          VARCHAR2(250),
  SJ              DATE,
  ZXAJPGSXHYYJDD  VARCHAR2(250),
  JLRBSJLRBS      NUMBER,
  JLRJLR          VARCHAR2(40),
  CBRYJJLRYJ      VARCHAR2(250),
  JLR             VARCHAR2(40),
  JLRBS           NUMBER,
  AQQK            BLOB,
  CBRYJ           BLOB,
  HYQK            BLOB,
  YJYJ            BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_PGSXHYYJ
  is '评估事项合议研究';
comment on column ZXXT_PGSXHYYJ.FYBM
  is '法院编码';
comment on column ZXXT_PGSXHYYJ.XH
  is '序号';
comment on column ZXXT_PGSXHYYJ.BH
  is '编号';
comment on column ZXXT_PGSXHYYJ.ZXAJPGSXHYYJSQR
  is '执行案件评估事项合议研究申请人';
comment on column ZXXT_PGSXHYYJ.BZXRXX
  is '被执行人信息';
comment on column ZXXT_PGSXHYYJ.SJ
  is '时间';
comment on column ZXXT_PGSXHYYJ.ZXAJPGSXHYYJDD
  is '执行案件评估事项合议研究地点';
comment on column ZXXT_PGSXHYYJ.JLRBSJLRBS
  is '记录人标识jlrbs';
comment on column ZXXT_PGSXHYYJ.JLRJLR
  is '记录人jlr';
comment on column ZXXT_PGSXHYYJ.CBRYJJLRYJ
  is '承办人意见jlryj';
comment on column ZXXT_PGSXHYYJ.JLR
  is '记录人';
comment on column ZXXT_PGSXHYYJ.JLRBS
  is '记录人标识';
comment on column ZXXT_PGSXHYYJ.AQQK
  is '案情情况';
comment on column ZXXT_PGSXHYYJ.CBRYJ
  is '承办人意见';
comment on column ZXXT_PGSXHYYJ.HYQK
  is '合议情况';
comment on column ZXXT_PGSXHYYJ.YJYJ
  is '研究意见';

prompt
prompt Creating table ZXXT_PMDZSPB
prompt ===========================
prompt
create table ZXXT_PMDZSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CCMC        VARCHAR2(250),
  PMKSFDZ     VARCHAR2(250),
  PMCJJG      NUMBER,
  SJDZJE      NUMBER,
  SJDZSJ      DATE,
  PMCJSJ      DATE,
  PMJG        VARCHAR2(250),
  MSRMC       VARCHAR2(250),
  CBRQKSM     BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  FJCSPRBS    NUMBER,
  FJCSPR      VARCHAR2(20),
  FJCPZ       NUMBER,
  FJCSPYJ     VARCHAR2(200),
  FJCSPRQ     DATE,
  SFFS        NUMBER,
  FSRQ        DATE,
  SFJS        NUMBER,
  JSRQ        DATE,
  SFFH        NUMBER,
  FHRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_PMDZSPB
  is '拍卖到账审批表';
comment on column ZXXT_PMDZSPB.FYBM
  is '法院编码';
comment on column ZXXT_PMDZSPB.XH
  is '序号';
comment on column ZXXT_PMDZSPB.BH
  is '编号';
comment on column ZXXT_PMDZSPB.SQR
  is '申请人';
comment on column ZXXT_PMDZSPB.BZXR
  is '被执行人';
comment on column ZXXT_PMDZSPB.CCMC
  is '财产名称';
comment on column ZXXT_PMDZSPB.PMKSFDZ
  is '拍卖款是否到账';
comment on column ZXXT_PMDZSPB.PMCJJG
  is '拍卖成交价格';
comment on column ZXXT_PMDZSPB.SJDZJE
  is '实际到账金额';
comment on column ZXXT_PMDZSPB.SJDZSJ
  is '实际到账时间';
comment on column ZXXT_PMDZSPB.PMCJSJ
  is '拍卖成交时间';
comment on column ZXXT_PMDZSPB.PMJG
  is '拍卖机构';
comment on column ZXXT_PMDZSPB.MSRMC
  is '买受人名称';
comment on column ZXXT_PMDZSPB.CBRQKSM
  is '承办人情况说明';
comment on column ZXXT_PMDZSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_PMDZSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_PMDZSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_PMDZSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_PMDZSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_PMDZSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_PMDZSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_PMDZSPB.CCPZ
  is '处长批准';
comment on column ZXXT_PMDZSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_PMDZSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_PMDZSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_PMDZSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_PMDZSPB.JCPZ
  is '局长批准';
comment on column ZXXT_PMDZSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_PMDZSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_PMDZSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_PMDZSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_PMDZSPB.YCPZ
  is '院长批准';
comment on column ZXXT_PMDZSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_PMDZSPB.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_PMDZSPB.FJCSPRBS
  is '副局长审批人标识';
comment on column ZXXT_PMDZSPB.FJCSPR
  is '副局长审批人';
comment on column ZXXT_PMDZSPB.FJCPZ
  is '副局长批准';
comment on column ZXXT_PMDZSPB.FJCSPYJ
  is '副局长审批意见';
comment on column ZXXT_PMDZSPB.FJCSPRQ
  is '副局长审批日期';
comment on column ZXXT_PMDZSPB.SFFS
  is '是否发送';
comment on column ZXXT_PMDZSPB.FSRQ
  is '发送日期';
comment on column ZXXT_PMDZSPB.SFJS
  is '是否结束';
comment on column ZXXT_PMDZSPB.JSRQ
  is '结束日期';
comment on column ZXXT_PMDZSPB.SFFH
  is '是否符合';
comment on column ZXXT_PMDZSPB.FHRQ
  is '发回日期';

prompt
prompt Creating table ZXXT_PMJL
prompt ========================
prompt
create table ZXXT_PMJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(100),
  BH          NUMBER,
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(10),
  DJRQ        DATE,
  BDWQD       VARCHAR2(250),
  SYQR        VARCHAR2(250),
  PMJGMC      VARCHAR2(250),
  PMJGZSD     VARCHAR2(250),
  XDFS        VARCHAR2(250),
  PMKSRQ      DATE,
  PGJG        NUMBER,
  GGFBRQ      DATE,
  SCJZ        NUMBER,
  PMJG        NUMBER,
  PMRQ        DATE,
  PMCS        VARCHAR2(250),
  PMJGSS      VARCHAR2(250),
  CJJG        NUMBER,
  HRJE        NUMBER,
  HRRQ        DATE,
  PMJSRQ      DATE,
  PMBZ        BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  PGYYCLQK    VARCHAR2(250),
  PGJGPGJG    VARCHAR2(100),
  PGBGSFSD    NUMBER,
  PGSFTCYY    NUMBER,
  JYBLJ       VARCHAR2(250),
  CCMC        BLOB,
  CCXS        VARCHAR2(100),
  ZXZYJ       BLOB,
  PGJSRQ      DATE,
  BD          VARCHAR2(250),
  PPCQK       BLOB,
  CBRLXFS     VARCHAR2(250),
  LASJ        DATE,
  PMJGPMJG    VARCHAR2(250),
  SF1YHY      NUMBER,
  PPZK        VARCHAR2(100),
  TZYY        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_PMJL
  is '拍卖记录';
comment on column ZXXT_PMJL.FYBM
  is '法院编码';
comment on column ZXXT_PMJL.XH
  is '序号';
comment on column ZXXT_PMJL.BH
  is '编号';
comment on column ZXXT_PMJL.KPLB
  is '卡片类别';
comment on column ZXXT_PMJL.DJRBS
  is '登记人标识';
comment on column ZXXT_PMJL.DJR
  is '登记人';
comment on column ZXXT_PMJL.DJRQ
  is '登记日期';
comment on column ZXXT_PMJL.BDWQD
  is '标的物清单';
comment on column ZXXT_PMJL.SYQR
  is '所有权人';
comment on column ZXXT_PMJL.PMJGMC
  is '拍卖机构名称';
comment on column ZXXT_PMJL.PMJGZSD
  is '拍卖机构住所地';
comment on column ZXXT_PMJL.XDFS
  is '选定方式';
comment on column ZXXT_PMJL.PMKSRQ
  is '拍卖开始日期';
comment on column ZXXT_PMJL.PGJG
  is '评估价格';
comment on column ZXXT_PMJL.GGFBRQ
  is '公告发布日期';
comment on column ZXXT_PMJL.SCJZ
  is '市场价值';
comment on column ZXXT_PMJL.PMJG
  is '拍卖价格';
comment on column ZXXT_PMJL.PMRQ
  is '拍卖日期';
comment on column ZXXT_PMJL.PMCS
  is '拍卖次数';
comment on column ZXXT_PMJL.PMJGSS
  is '拍卖结果ss';
comment on column ZXXT_PMJL.CJJG
  is '成交价格';
comment on column ZXXT_PMJL.HRJE
  is '划入金额';
comment on column ZXXT_PMJL.HRRQ
  is '划入日期';
comment on column ZXXT_PMJL.PMJSRQ
  is '拍卖结束日期';
comment on column ZXXT_PMJL.PMBZ
  is '拍卖备注';
comment on column ZXXT_PMJL.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_PMJL.ZCSPR
  is '组长审批人';
comment on column ZXXT_PMJL.ZCPZ
  is '组长批准';
comment on column ZXXT_PMJL.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_PMJL.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_PMJL.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_PMJL.CCSPR
  is '处长审批人';
comment on column ZXXT_PMJL.CCPZ
  is '处长批准';
comment on column ZXXT_PMJL.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_PMJL.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_PMJL.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_PMJL.JCSPR
  is '局长审批人';
comment on column ZXXT_PMJL.JCPZ
  is '局长批准';
comment on column ZXXT_PMJL.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_PMJL.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_PMJL.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_PMJL.YCSPR
  is '院长审批人';
comment on column ZXXT_PMJL.YCPZ
  is '院长批准';
comment on column ZXXT_PMJL.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_PMJL.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_PMJL.PGYYCLQK
  is '评估异议处理情况';
comment on column ZXXT_PMJL.PGJGPGJG
  is '评估价格pgjg';
comment on column ZXXT_PMJL.PGBGSFSD
  is '评估报告是否送达';
comment on column ZXXT_PMJL.PGSFTCYY
  is '评估是否提出异议';
comment on column ZXXT_PMJL.JYBLJ
  is '建议保留价';
comment on column ZXXT_PMJL.CCMC
  is '财产名称';
comment on column ZXXT_PMJL.CCXS
  is '财产详述';
comment on column ZXXT_PMJL.ZXZYJ
  is '执行组意见';
comment on column ZXXT_PMJL.PGJSRQ
  is '评估结束日期';
comment on column ZXXT_PMJL.BD
  is '标的';
comment on column ZXXT_PMJL.PPCQK
  is '拍品瑕疵情况';
comment on column ZXXT_PMJL.CBRLXFS
  is '承办人联系方式';
comment on column ZXXT_PMJL.LASJ
  is '立案时间';
comment on column ZXXT_PMJL.PMJGPMJG
  is '拍卖结果pmjg';
comment on column ZXXT_PMJL.SF1YHY
  is '是否1已合议';
comment on column ZXXT_PMJL.PPZK
  is '拍品状况';
comment on column ZXXT_PMJL.TZYY
  is '停止原因';

prompt
prompt Creating table ZXXT_PMKQRS
prompt ==========================
prompt
create table ZXXT_PMKQRS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CCMC        VARCHAR2(250),
  PMJG        VARCHAR2(250),
  CJJG        NUMBER,
  HRJE        NUMBER,
  HRRQ        DATE,
  PMJSRQ      DATE,
  BZ          VARCHAR2(250),
  MSRMC       VARCHAR2(250),
  CCXS        BLOB,
  PMJGPMJG    VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_PMKQRS
  is '拍卖款确认书';
comment on column ZXXT_PMKQRS.FYBM
  is '法院编码';
comment on column ZXXT_PMKQRS.XH
  is '序号';
comment on column ZXXT_PMKQRS.BH
  is '编号';
comment on column ZXXT_PMKQRS.SQR
  is '申请人';
comment on column ZXXT_PMKQRS.BZXR
  is '被执行人';
comment on column ZXXT_PMKQRS.CCMC
  is '财产名称';
comment on column ZXXT_PMKQRS.PMJG
  is '拍卖结果';
comment on column ZXXT_PMKQRS.CJJG
  is '成交价格';
comment on column ZXXT_PMKQRS.HRJE
  is '划入金额';
comment on column ZXXT_PMKQRS.HRRQ
  is '划入日期';
comment on column ZXXT_PMKQRS.PMJSRQ
  is '拍卖结束日期';
comment on column ZXXT_PMKQRS.BZ
  is '备注';
comment on column ZXXT_PMKQRS.MSRMC
  is '买受人名称';
comment on column ZXXT_PMKQRS.CCXS
  is '财产详述';
comment on column ZXXT_PMKQRS.PMJGPMJG
  is '拍卖机构pmjg';

prompt
prompt Creating table ZXXT_PMSPB
prompt =========================
prompt
create table ZXXT_PMSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  SYQR        VARCHAR2(250),
  PGJSRQ      DATE,
  PGYYCLQK    VARCHAR2(250),
  BD          VARCHAR2(250),
  PGJG        VARCHAR2(100),
  PGBGSFSD    NUMBER,
  PGSFTCYY    NUMBER,
  JYBLJ       VARCHAR2(250),
  BDWQD       VARCHAR2(250),
  SQSJ        DATE,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_PMSPB
  is '拍卖审批表';
comment on column ZXXT_PMSPB.FYBM
  is '法院编码';
comment on column ZXXT_PMSPB.XH
  is '序号';
comment on column ZXXT_PMSPB.BH
  is '编号';
comment on column ZXXT_PMSPB.SQR
  is '申请人';
comment on column ZXXT_PMSPB.BZXR
  is '被执行人';
comment on column ZXXT_PMSPB.SYQR
  is '所有权人';
comment on column ZXXT_PMSPB.PGJSRQ
  is '评估结束日期';
comment on column ZXXT_PMSPB.PGYYCLQK
  is '评估异议处理情况';
comment on column ZXXT_PMSPB.BD
  is '标的 ';
comment on column ZXXT_PMSPB.PGJG
  is '评估价格';
comment on column ZXXT_PMSPB.PGBGSFSD
  is '评估报告是否送达';
comment on column ZXXT_PMSPB.PGSFTCYY
  is '评估是否提出异议';
comment on column ZXXT_PMSPB.JYBLJ
  is '建议保留价';
comment on column ZXXT_PMSPB.BDWQD
  is '标的物清单';
comment on column ZXXT_PMSPB.SQSJ
  is '申请时间';
comment on column ZXXT_PMSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_PMSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_PMSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_PMSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_PMSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_PMSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_PMSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_PMSPB.CCPZ
  is '处长批准';
comment on column ZXXT_PMSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_PMSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_PMSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_PMSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_PMSPB.JCPZ
  is '局长批准';
comment on column ZXXT_PMSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_PMSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_PMSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_PMSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_PMSPB.YCPZ
  is '院长批准';
comment on column ZXXT_PMSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_PMSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_PMWTS
prompt =========================
prompt
create table ZXXT_PMWTS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  AH          NUMBER,
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  PMDW        VARCHAR2(250),
  PMW         VARCHAR2(100),
  PMBLJ       NUMBER,
  PMJZRQ      DATE,
  JMRBZJ      NUMBER,
  AJLXR       VARCHAR2(250),
  LXRDH       VARCHAR2(100),
  WTRQ        DATE,
  QT          BLOB,
  CCMC        VARCHAR2(250),
  GGFW        VARCHAR2(250),
  CCXS        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_PMWTS
  is '拍卖委托书';
comment on column ZXXT_PMWTS.FYBM
  is '法院编码';
comment on column ZXXT_PMWTS.XH
  is '序号';
comment on column ZXXT_PMWTS.BH
  is '编号';
comment on column ZXXT_PMWTS.AH
  is '案号';
comment on column ZXXT_PMWTS.SQR
  is '申请人';
comment on column ZXXT_PMWTS.BZXR
  is '被执行人';
comment on column ZXXT_PMWTS.PMDW
  is '拍卖单位';
comment on column ZXXT_PMWTS.PMW
  is '拍卖物';
comment on column ZXXT_PMWTS.PMBLJ
  is '拍卖保留价';
comment on column ZXXT_PMWTS.PMJZRQ
  is '拍卖截止日期';
comment on column ZXXT_PMWTS.JMRBZJ
  is '竞买人保证金';
comment on column ZXXT_PMWTS.AJLXR
  is '案件联系人';
comment on column ZXXT_PMWTS.LXRDH
  is '联系人电话';
comment on column ZXXT_PMWTS.WTRQ
  is '委托日期';
comment on column ZXXT_PMWTS.QT
  is '其他';
comment on column ZXXT_PMWTS.CCMC
  is '财产名称';
comment on column ZXXT_PMWTS.GGFW
  is '公告范围';
comment on column ZXXT_PMWTS.CCXS
  is '财产详述';

prompt
prompt Creating table ZXXT_QRCXPGSPB
prompt =============================
prompt
create table ZXXT_QRCXPGSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  CCKZSJ      DATE,
  LABD        VARCHAR2(100),
  PGBCXRQ     DATE,
  CCMC        VARCHAR2(250),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CXPGYY      VARCHAR2(250),
  QRCXLY      VARCHAR2(250),
  CCXS        BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_QRCXPGSPB
  is '确认撤销评估审批表';
comment on column ZXXT_QRCXPGSPB.FYBM
  is '法院编码';
comment on column ZXXT_QRCXPGSPB.XH
  is '序号';
comment on column ZXXT_QRCXPGSPB.BH
  is '编号';
comment on column ZXXT_QRCXPGSPB.CCKZSJ
  is '财产控制时间';
comment on column ZXXT_QRCXPGSPB.LABD
  is '立案标的';
comment on column ZXXT_QRCXPGSPB.PGBCXRQ
  is '评估被撤销日期';
comment on column ZXXT_QRCXPGSPB.CCMC
  is '财产名称';
comment on column ZXXT_QRCXPGSPB.SQR
  is '申请人';
comment on column ZXXT_QRCXPGSPB.BZXR
  is '被执行人';
comment on column ZXXT_QRCXPGSPB.CXPGYY
  is '撤销评估原因';
comment on column ZXXT_QRCXPGSPB.QRCXLY
  is '确认撤销理由';
comment on column ZXXT_QRCXPGSPB.CCXS
  is '财产详述';
comment on column ZXXT_QRCXPGSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_QRCXPGSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_QRCXPGSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_QRCXPGSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_QRCXPGSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_QRCXPGSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_QRCXPGSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_QRCXPGSPB.CCPZ
  is '处长批准';
comment on column ZXXT_QRCXPGSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_QRCXPGSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_QRCXPGSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_QRCXPGSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_QRCXPGSPB.JCPZ
  is '局长批准';
comment on column ZXXT_QRCXPGSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_QRCXPGSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_QRCXPGSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_QRCXPGSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_QRCXPGSPB.YCPZ
  is '院长批准';
comment on column ZXXT_QRCXPGSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_QRCXPGSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_QRLBS
prompt =========================
prompt
create table ZXXT_QRLBS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  AY          VARCHAR2(250),
  AH          VARCHAR2(50),
  CBRBS       NUMBER,
  CBR         VARCHAR2(250),
  CBRLXFS     VARCHAR2(250),
  BZXR        VARCHAR2(250),
  SQR         VARCHAR2(250),
  CCMC        VARCHAR2(250),
  PMJG        VARCHAR2(250),
  YPSJ        DATE,
  PMBLJ       NUMBER,
  BZ          VARCHAR2(250),
  CCXS        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_QRLBS
  is '确认流标书';
comment on column ZXXT_QRLBS.FYBM
  is '法院编码';
comment on column ZXXT_QRLBS.XH
  is '序号';
comment on column ZXXT_QRLBS.BH
  is '编号';
comment on column ZXXT_QRLBS.AY
  is '案由';
comment on column ZXXT_QRLBS.AH
  is '案号';
comment on column ZXXT_QRLBS.CBRBS
  is '承办人标识';
comment on column ZXXT_QRLBS.CBR
  is '承办人';
comment on column ZXXT_QRLBS.CBRLXFS
  is '承办人联系方式';
comment on column ZXXT_QRLBS.BZXR
  is '被执行人';
comment on column ZXXT_QRLBS.SQR
  is '申请人';
comment on column ZXXT_QRLBS.CCMC
  is '财产名称';
comment on column ZXXT_QRLBS.PMJG
  is '拍卖结果';
comment on column ZXXT_QRLBS.YPSJ
  is '一拍时间';
comment on column ZXXT_QRLBS.PMBLJ
  is '拍卖保留价';
comment on column ZXXT_QRLBS.BZ
  is '备注';
comment on column ZXXT_QRLBS.CCXS
  is '财产详述';

prompt
prompt Creating table ZXXT_QTDC
prompt ========================
prompt
create table ZXXT_QTDC
(
  ID              VARCHAR2(36) not null,
  REG_TIME        DATE not null,
  UPDATE_TIME     DATE not null,
  DEPT_CODE       VARCHAR2(20) not null,
  APP_CODE        VARCHAR2(20) not null,
  FYBM            NUMBER,
  XH              NUMBER,
  BH              VARCHAR2(100),
  XZYXDC          VARCHAR2(250),
  DCR             VARCHAR2(250),
  DCSJ            DATE,
  BZXR            VARCHAR2(250),
  SFZCCCCFKYDMSCD NUMBER,
  CCCFKYDMSCDSWH  VARCHAR2(250),
  BZ              BLOB,
  CCDCQK          VARCHAR2(250),
  CCCQK           VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_QTDC
  is '其他调查';
comment on column ZXXT_QTDC.FYBM
  is '法院编码';
comment on column ZXXT_QTDC.XH
  is '序号';
comment on column ZXXT_QTDC.BH
  is '编号';
comment on column ZXXT_QTDC.XZYXDC
  is '协助银行调查';
comment on column ZXXT_QTDC.DCR
  is '调查人';
comment on column ZXXT_QTDC.DCSJ
  is '调查时间';
comment on column ZXXT_QTDC.BZXR
  is '被执行人';
comment on column ZXXT_QTDC.SFZCCCCFKYDMSCD
  is '是否作出财产查封、扣押的民事裁定';
comment on column ZXXT_QTDC.CCCFKYDMSCDSWH
  is '财产查封、扣押的民事裁定书文号';
comment on column ZXXT_QTDC.BZ
  is '备注';
comment on column ZXXT_QTDC.CCDCQK
  is '财产调查情况';
comment on column ZXXT_QTDC.CCCQK
  is '财产瑕疵情况';

prompt
prompt Creating table ZXXT_QZXRTGBZXRCCZKJXSDJB
prompt ========================================
prompt
create table ZXXT_QZXRTGBZXRCCZKJXSDJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  TGXSR       VARCHAR2(250),
  BZXR        VARCHAR2(100),
  TGCCQK      VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_QZXRTGBZXRCCZKJXSDJB
  is '请执行人提供被执行人财产状况及线索登记表';
comment on column ZXXT_QZXRTGBZXRCCZKJXSDJB.FYBM
  is '法院编码';
comment on column ZXXT_QZXRTGBZXRCCZKJXSDJB.XH
  is '序号';
comment on column ZXXT_QZXRTGBZXRCCZKJXSDJB.BH
  is '编号';
comment on column ZXXT_QZXRTGBZXRCCZKJXSDJB.TGXSR
  is '提供线索人';
comment on column ZXXT_QZXRTGBZXRCCZKJXSDJB.BZXR
  is '被执行人';
comment on column ZXXT_QZXRTGBZXRCCZKJXSDJB.TGCCQK
  is '提供财产情况';

prompt
prompt Creating table ZXXT_RZB
prompt =======================
prompt
create table ZXXT_RZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  ZJ          NUMBER,
  ZXBH        NUMBER,
  LCMC        VARCHAR2(150),
  KSRQ        DATE,
  JSRQ        DATE,
  BM          VARCHAR2(50),
  XM          VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_RZB
  is '日志表';
comment on column ZXXT_RZB.FYBM
  is '法院编码';
comment on column ZXXT_RZB.ZJ
  is '主键';
comment on column ZXXT_RZB.ZXBH
  is '执行编号';
comment on column ZXXT_RZB.LCMC
  is '流程名称';
comment on column ZXXT_RZB.KSRQ
  is '开始日期';
comment on column ZXXT_RZB.JSRQ
  is '结束日期';
comment on column ZXXT_RZB.BM
  is '部门';
comment on column ZXXT_RZB.XM
  is '姓名';

prompt
prompt Creating table ZXXT_SDJL
prompt ========================
prompt
create table ZXXT_SDJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BHZJ        NUMBER,
  PZBH        NUMBER,
  AJBH        NUMBER,
  SDBT        VARCHAR2(100),
  SDSJ        DATE,
  JSR         VARCHAR2(40),
  JSSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_SDJL
  is '锁定记录';
comment on column ZXXT_SDJL.FYBM
  is '法院编码';
comment on column ZXXT_SDJL.BHZJ
  is '编号主键';
comment on column ZXXT_SDJL.PZBH
  is '配置编号';
comment on column ZXXT_SDJL.AJBH
  is '案件编号';
comment on column ZXXT_SDJL.SDBT
  is '锁定标题';
comment on column ZXXT_SDJL.SDSJ
  is '锁定时间';
comment on column ZXXT_SDJL.JSR
  is '解锁人';
comment on column ZXXT_SDJL.JSSJ
  is '解锁时间';

prompt
prompt Creating table ZXXT_SDPZB
prompt =========================
prompt
create table ZXXT_SDPZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  PZBH        NUMBER,
  SDBT        VARCHAR2(250),
  JCTJ        BLOB,
  JSTJ1       BLOB,
  JSTJ2       BLOB,
  JSTJ3       BLOB,
  MS          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_SDPZB
  is '锁定配置表';
comment on column ZXXT_SDPZB.FYBM
  is '法院编码';
comment on column ZXXT_SDPZB.PZBH
  is '配置编号';
comment on column ZXXT_SDPZB.SDBT
  is '锁定标题';
comment on column ZXXT_SDPZB.JCTJ
  is '检查条件';
comment on column ZXXT_SDPZB.JSTJ1
  is '解锁条件1';
comment on column ZXXT_SDPZB.JSTJ2
  is '解锁条件2';
comment on column ZXXT_SDPZB.JSTJ3
  is '解锁条件3';
comment on column ZXXT_SDPZB.MS
  is '描述';

prompt
prompt Creating table ZXXT_SFWSLSJLB
prompt =============================
prompt
create table ZXXT_SFWSLSJLB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          NUMBER,
  XWJBH       NUMBER,
  YWJBH       NUMBER,
  CJRBS       NUMBER,
  CJR         VARCHAR2(40),
  CJRQ        DATE,
  SCRBS       NUMBER,
  SCR         VARCHAR2(40),
  SCSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_SFWSLSJLB
  is '司法文书历史记录表';
comment on column ZXXT_SFWSLSJLB.FYBM
  is '法院编码';
comment on column ZXXT_SFWSLSJLB.BH
  is '编号';
comment on column ZXXT_SFWSLSJLB.XWJBH
  is '现文件编号';
comment on column ZXXT_SFWSLSJLB.YWJBH
  is '原文件编号';
comment on column ZXXT_SFWSLSJLB.CJRBS
  is '创建人标识';
comment on column ZXXT_SFWSLSJLB.CJR
  is '创建人';
comment on column ZXXT_SFWSLSJLB.CJRQ
  is '创建日期';
comment on column ZXXT_SFWSLSJLB.SCRBS
  is '删除人标识';
comment on column ZXXT_SFWSLSJLB.SCR
  is '删除人';
comment on column ZXXT_SFWSLSJLB.SCSJ
  is '删除时间';

prompt
prompt Creating table ZXXT_SJJL
prompt ========================
prompt
create table ZXXT_SJJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SJJGSJJG    VARCHAR2(250),
  SJJG        VARCHAR2(240),
  CLJG        VARCHAR2(240)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_SJJL
  is '审计记录';
comment on column ZXXT_SJJL.FYBM
  is '法院编码';
comment on column ZXXT_SJJL.XH
  is '序号';
comment on column ZXXT_SJJL.BH
  is '编号';
comment on column ZXXT_SJJL.SJJGSJJG
  is '审计结果sjjg';
comment on column ZXXT_SJJL.SJJG
  is '审计结果';
comment on column ZXXT_SJJL.CLJG
  is '处理结果';

prompt
prompt Creating table ZXXT_SJJLY
prompt =========================
prompt
create table ZXXT_SJJLY
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  CCMC        VARCHAR2(250),
  CCXS        BLOB,
  KZCCRQ      DATE,
  LABD        VARCHAR2(250),
  CBRYJ       VARCHAR2(250),
  SJKSSJ      DATE,
  SJTS        VARCHAR2(250),
  CBRLXFS     VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(250),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  SJYY        VARCHAR2(250),
  SJJSSJ      DATE,
  DSRLXDH     VARCHAR2(250),
  SFSJ        NUMBER,
  JSRQ        NUMBER,
  FHRQ        DATE,
  SFFS        NUMBER,
  FSRQ        NUMBER,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  FJCSPRBS    NUMBER,
  FJCSPR      VARCHAR2(20),
  FJCPZ       NUMBER,
  FJCSPYJ     VARCHAR2(200),
  FJCSPRQ     DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_SJJLY
  is '审计记录一';
comment on column ZXXT_SJJLY.FYBM
  is '法院编码';
comment on column ZXXT_SJJLY.XH
  is '序号';
comment on column ZXXT_SJJLY.BH
  is '编号';
comment on column ZXXT_SJJLY.CCMC
  is '财产名称';
comment on column ZXXT_SJJLY.CCXS
  is '财产详述';
comment on column ZXXT_SJJLY.KZCCRQ
  is '控制财产日期';
comment on column ZXXT_SJJLY.LABD
  is '立案标的';
comment on column ZXXT_SJJLY.CBRYJ
  is '承办人意见';
comment on column ZXXT_SJJLY.SJKSSJ
  is '审计开始时间';
comment on column ZXXT_SJJLY.SJTS
  is '审计天数';
comment on column ZXXT_SJJLY.CBRLXFS
  is '承办人联系方式';
comment on column ZXXT_SJJLY.CBRBS
  is '承办人标识';
comment on column ZXXT_SJJLY.CBR
  is '承办人';
comment on column ZXXT_SJJLY.SQR
  is '申请人';
comment on column ZXXT_SJJLY.BZXR
  is '被执行人';
comment on column ZXXT_SJJLY.SJYY
  is '审计原因';
comment on column ZXXT_SJJLY.SJJSSJ
  is '审计结束时间';
comment on column ZXXT_SJJLY.DSRLXDH
  is '当事人联系电话';
comment on column ZXXT_SJJLY.SFSJ
  is '是否审计';
comment on column ZXXT_SJJLY.JSRQ
  is '结束日期';
comment on column ZXXT_SJJLY.FHRQ
  is '发回日期';
comment on column ZXXT_SJJLY.SFFS
  is '是否发送';
comment on column ZXXT_SJJLY.FSRQ
  is '发送日期';
comment on column ZXXT_SJJLY.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_SJJLY.ZCSPR
  is '组长审批人';
comment on column ZXXT_SJJLY.ZCPZ
  is '组长批准';
comment on column ZXXT_SJJLY.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_SJJLY.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_SJJLY.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_SJJLY.CCSPR
  is '处长审批人';
comment on column ZXXT_SJJLY.CCPZ
  is '处长批准';
comment on column ZXXT_SJJLY.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_SJJLY.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_SJJLY.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_SJJLY.JCSPR
  is '局长审批人';
comment on column ZXXT_SJJLY.JCPZ
  is '局长批准';
comment on column ZXXT_SJJLY.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_SJJLY.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_SJJLY.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_SJJLY.YCSPR
  is '院长审批人';
comment on column ZXXT_SJJLY.YCPZ
  is '院长批准';
comment on column ZXXT_SJJLY.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_SJJLY.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_SJJLY.FJCSPRBS
  is '副局长审批人标识';
comment on column ZXXT_SJJLY.FJCSPR
  is '副局长审批人';
comment on column ZXXT_SJJLY.FJCPZ
  is '副局长批准';
comment on column ZXXT_SJJLY.FJCSPYJ
  is '副局长审批意见';
comment on column ZXXT_SJJLY.FJCSPRQ
  is '副局长审批日期';

prompt
prompt Creating table ZXXT_SKJL
prompt ========================
prompt
create table ZXXT_SKJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SKZL        VARCHAR2(40),
  RQ          DATE,
  SKDX        VARCHAR2(100),
  JE          NUMBER,
  SJHM        VARCHAR2(100),
  JLRBS       NUMBER,
  JLR         VARCHAR2(40),
  JLSJ        DATE,
  SFCL        NUMBER,
  QRRBS       NUMBER,
  QRR         VARCHAR2(40),
  QRRQ        DATE,
  ZY          VARCHAR2(200),
  SKYE        NUMBER,
  GLCWBH      NUMBER,
  AKLY        VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_SKJL
  is '收款记录';
comment on column ZXXT_SKJL.FYBM
  is '法院编码';
comment on column ZXXT_SKJL.XH
  is '序号';
comment on column ZXXT_SKJL.BH
  is '编号';
comment on column ZXXT_SKJL.SKZL
  is '收款种类';
comment on column ZXXT_SKJL.RQ
  is '日期';
comment on column ZXXT_SKJL.SKDX
  is '收款对象';
comment on column ZXXT_SKJL.JE
  is '金额';
comment on column ZXXT_SKJL.SJHM
  is '收据号码';
comment on column ZXXT_SKJL.JLRBS
  is '记录人标识';
comment on column ZXXT_SKJL.JLR
  is '记录人';
comment on column ZXXT_SKJL.JLSJ
  is '记录时间';
comment on column ZXXT_SKJL.SFCL
  is '是否处理';
comment on column ZXXT_SKJL.QRRBS
  is '确认人标识';
comment on column ZXXT_SKJL.QRR
  is '确认人';
comment on column ZXXT_SKJL.QRRQ
  is '确认日期';
comment on column ZXXT_SKJL.ZY
  is '摘要';
comment on column ZXXT_SKJL.SKYE
  is '收款余额';
comment on column ZXXT_SKJL.GLCWBH
  is '关联财务编号';
comment on column ZXXT_SKJL.AKLY
  is '案款来源';

prompt
prompt Creating table ZXXT_SQZXRBGJL
prompt =============================
prompt
create table ZXXT_SQZXRBGJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  CDBGRQ      DATE,
  YSQZXR      VARCHAR2(250),
  BGYY        VARCHAR2(250),
  XSQZXR      VARCHAR2(250),
  BZ          VARCHAR2(250),
  LX          VARCHAR2(100),
  CDRQ        DATE,
  ZJDXBZXRMD  VARCHAR2(250),
  BGDXBZXRMD  VARCHAR2(250),
  YY          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_SQZXRBGJL
  is '受权执行人变更记录';
comment on column ZXXT_SQZXRBGJL.FYBM
  is '法院编码';
comment on column ZXXT_SQZXRBGJL.XH
  is '序号';
comment on column ZXXT_SQZXRBGJL.BH
  is '编号';
comment on column ZXXT_SQZXRBGJL.KPLB
  is '卡片类别';
comment on column ZXXT_SQZXRBGJL.DJRBS
  is '登记人标识';
comment on column ZXXT_SQZXRBGJL.DJR
  is '登记人';
comment on column ZXXT_SQZXRBGJL.DJRQ
  is '登记日期';
comment on column ZXXT_SQZXRBGJL.CDBGRQ
  is '裁定变更日期';
comment on column ZXXT_SQZXRBGJL.YSQZXR
  is '原申请执行人';
comment on column ZXXT_SQZXRBGJL.BGYY
  is '变更原因';
comment on column ZXXT_SQZXRBGJL.XSQZXR
  is '新申请执行人';
comment on column ZXXT_SQZXRBGJL.BZ
  is '备注';
comment on column ZXXT_SQZXRBGJL.LX
  is '类型';
comment on column ZXXT_SQZXRBGJL.CDRQ
  is '裁定日期';
comment on column ZXXT_SQZXRBGJL.ZJDXBZXRMD
  is '增加的新被执行人名单';
comment on column ZXXT_SQZXRBGJL.BGDXBZXRMD
  is '变更的新被执行人名单';
comment on column ZXXT_SQZXRBGJL.YY
  is '原因';

prompt
prompt Creating table ZXXT_TDDJDC
prompt ==========================
prompt
create table ZXXT_TDDJDC
(
  ID              VARCHAR2(36) not null,
  REG_TIME        DATE not null,
  UPDATE_TIME     DATE not null,
  DEPT_CODE       VARCHAR2(20) not null,
  APP_CODE        VARCHAR2(20) not null,
  FYBM            NUMBER,
  XH              NUMBER,
  BH              VARCHAR2(100),
  XZDCTDGLJG      VARCHAR2(250),
  DCRBS           NUMBER,
  DCR             VARCHAR2(40),
  DCSJ            DATE,
  BZXR            VARCHAR2(250),
  SFZCCCCFKYDMSCD NUMBER,
  CCCFKYDMSCDSWH  VARCHAR2(250),
  BZ              BLOB,
  CCDCQK          VARCHAR2(250),
  CCCQK           VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_TDDJDC
  is '土地登记调查';
comment on column ZXXT_TDDJDC.FYBM
  is '法院编码';
comment on column ZXXT_TDDJDC.XH
  is '序号';
comment on column ZXXT_TDDJDC.BH
  is '编号';
comment on column ZXXT_TDDJDC.XZDCTDGLJG
  is '协助调查土地管理机关';
comment on column ZXXT_TDDJDC.DCRBS
  is '调查人标识';
comment on column ZXXT_TDDJDC.DCR
  is '调查人';
comment on column ZXXT_TDDJDC.DCSJ
  is '调查时间';
comment on column ZXXT_TDDJDC.BZXR
  is '被执行人';
comment on column ZXXT_TDDJDC.SFZCCCCFKYDMSCD
  is '是否作出财产查封、扣押的民事裁定';
comment on column ZXXT_TDDJDC.CCCFKYDMSCDSWH
  is '财产查封、扣押的民事裁定书文号';
comment on column ZXXT_TDDJDC.BZ
  is '备注';
comment on column ZXXT_TDDJDC.CCDCQK
  is '财产调查情况';
comment on column ZXXT_TDDJDC.CCCQK
  is '财产瑕疵情况';

prompt
prompt Creating table ZXXT_TQJWHYJBG
prompt =============================
prompt
create table ZXXT_TQJWHYJBG
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQZXR       VARCHAR2(250),
  BZXR        VARCHAR2(250),
  ZXQK        BLOB,
  XYYJSX      BLOB,
  CBRYJ       BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  SFFS        NUMBER,
  FSFSRQ      DATE,
  SFJS        NUMBER,
  JSRQ        DATE,
  TQRQ        DATE,
  CM          VARCHAR2(20),
  ZM          VARCHAR2(20),
  CBRBS       NUMBER,
  CBR         VARCHAR2(20),
  AH          VARCHAR2(100),
  WSNR        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_TQJWHYJBG
  is '提请局务会研究报告';
comment on column ZXXT_TQJWHYJBG.FYBM
  is '法院编码';
comment on column ZXXT_TQJWHYJBG.XH
  is '序号';
comment on column ZXXT_TQJWHYJBG.BH
  is '编号';
comment on column ZXXT_TQJWHYJBG.SQZXR
  is '申请执行人';
comment on column ZXXT_TQJWHYJBG.BZXR
  is '被执行人';
comment on column ZXXT_TQJWHYJBG.ZXQK
  is '执行情况';
comment on column ZXXT_TQJWHYJBG.XYYJSX
  is '需要研究事项';
comment on column ZXXT_TQJWHYJBG.CBRYJ
  is '承办人意见';
comment on column ZXXT_TQJWHYJBG.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_TQJWHYJBG.ZCSPR
  is '组长审批人';
comment on column ZXXT_TQJWHYJBG.ZCPZ
  is '组长批准';
comment on column ZXXT_TQJWHYJBG.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_TQJWHYJBG.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_TQJWHYJBG.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_TQJWHYJBG.CCSPR
  is '处长审批人';
comment on column ZXXT_TQJWHYJBG.CCPZ
  is '处长批准';
comment on column ZXXT_TQJWHYJBG.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_TQJWHYJBG.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_TQJWHYJBG.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_TQJWHYJBG.JCSPR
  is '局长审批人';
comment on column ZXXT_TQJWHYJBG.JCPZ
  is '局长批准';
comment on column ZXXT_TQJWHYJBG.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_TQJWHYJBG.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_TQJWHYJBG.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_TQJWHYJBG.YCSPR
  is '院长审批人';
comment on column ZXXT_TQJWHYJBG.YCPZ
  is '院长批准';
comment on column ZXXT_TQJWHYJBG.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_TQJWHYJBG.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_TQJWHYJBG.SFFS
  is '是否发送';
comment on column ZXXT_TQJWHYJBG.FSFSRQ
  is '发送发送日期';
comment on column ZXXT_TQJWHYJBG.SFJS
  is '是否结束';
comment on column ZXXT_TQJWHYJBG.JSRQ
  is '结束日期';
comment on column ZXXT_TQJWHYJBG.TQRQ
  is '提请日期';
comment on column ZXXT_TQJWHYJBG.CM
  is '处名';
comment on column ZXXT_TQJWHYJBG.ZM
  is '组名';
comment on column ZXXT_TQJWHYJBG.CBRBS
  is '承办人标识';
comment on column ZXXT_TQJWHYJBG.CBR
  is '承办人';
comment on column ZXXT_TQJWHYJBG.AH
  is '案号';
comment on column ZXXT_TQJWHYJBG.WSNR
  is '文书内容';

prompt
prompt Creating table ZXXT_WCCHXDKCSB
prompt ==============================
prompt
create table ZXXT_WCCHXDKCSB
(
  ID             VARCHAR2(36) not null,
  REG_TIME       DATE not null,
  UPDATE_TIME    DATE not null,
  DEPT_CODE      VARCHAR2(20) not null,
  APP_CODE       VARCHAR2(20) not null,
  FYBM           NUMBER,
  XH             NUMBER,
  BH             VARCHAR2(100),
  GSDASFDC       NUMBER,
  GSDAYWYZBG     NUMBER,
  GSDAZCZBSFDW   NUMBER,
  DWTZSFDC       NUMBER,
  YWDWTZ         NUMBER,
  YWGLGSHQY      NUMBER,
  QYSFDC         NUMBER,
  QYSFZCJY       NUMBER,
  QYSFCX         NUMBER,
  QYSFZXYYZZ     NUMBER,
  QYSFDXYYZZ     NUMBER,
  QYSFXY         NUMBER,
  SFQSBG         NUMBER,
  XLQKSFDC       NUMBER,
  SFCMXZDZ       NUMBER,
  SFCQQZCS       NUMBER,
  SFBZXRDQXLQKDC NUMBER,
  YWQQZZ         NUMBER,
  JMWYHDC        NUMBER,
  SFYDW          NUMBER,
  SFLXTX         NUMBER,
  SFDDWJXDC      NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_WCCHXDKCSB
  is '无财产后续调控措施表';
comment on column ZXXT_WCCHXDKCSB.FYBM
  is '法院编码';
comment on column ZXXT_WCCHXDKCSB.XH
  is '序号';
comment on column ZXXT_WCCHXDKCSB.BH
  is '编号';
comment on column ZXXT_WCCHXDKCSB.GSDASFDC
  is '工商档案是否调查';
comment on column ZXXT_WCCHXDKCSB.GSDAYWYZBG
  is '工商档案有无验资报告';
comment on column ZXXT_WCCHXDKCSB.GSDAZCZBSFDW
  is '工商档案注册资本是否到位';
comment on column ZXXT_WCCHXDKCSB.DWTZSFDC
  is '对外投资是否调查';
comment on column ZXXT_WCCHXDKCSB.YWDWTZ
  is '有无对外投资';
comment on column ZXXT_WCCHXDKCSB.YWGLGSHQY
  is '有无关联公司或企业';
comment on column ZXXT_WCCHXDKCSB.QYSFDC
  is '企业是否调查';
comment on column ZXXT_WCCHXDKCSB.QYSFZCJY
  is '企业是否正常经营';
comment on column ZXXT_WCCHXDKCSB.QYSFCX
  is '企业是否撤销';
comment on column ZXXT_WCCHXDKCSB.QYSFZXYYZZ
  is '企业是否注销营业执照';
comment on column ZXXT_WCCHXDKCSB.QYSFDXYYZZ
  is '企业是否吊销营业执照';
comment on column ZXXT_WCCHXDKCSB.QYSFXY
  is '企业是否歇业';
comment on column ZXXT_WCCHXDKCSB.SFQSBG
  is '是否清算报告';
comment on column ZXXT_WCCHXDKCSB.XLQKSFDC
  is '下落情况是否调查';
comment on column ZXXT_WCCHXDKCSB.SFCMXZDZ
  is '是否查明现住地址';
comment on column ZXXT_WCCHXDKCSB.SFCQQZCS
  is '是否采取强制措施';
comment on column ZXXT_WCCHXDKCSB.SFBZXRDQXLQKDC
  is '是否被执行人当前下落情况调查';
comment on column ZXXT_WCCHXDKCSB.YWQQZZ
  is '有无确切住址';
comment on column ZXXT_WCCHXDKCSB.JMWYHDC
  is '居民委员会调查';
comment on column ZXXT_WCCHXDKCSB.SFYDW
  is '是否有单位';
comment on column ZXXT_WCCHXDKCSB.SFLXTX
  is '是否离休、退休';
comment on column ZXXT_WCCHXDKCSB.SFDDWJXDC
  is '是否到单位进行调查';

prompt
prompt Creating table ZXXT_WCCKZAJZBCQQZCSSPB
prompt ======================================
prompt
create table ZXXT_WCCKZAJZBCQQZCSSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(100),
  BZXR        VARCHAR2(100),
  ZBTJZXXT    NUMBER,
  ZBCQFKCS    NUMBER,
  ZBCQJLCS    NUMBER,
  ZBCQXZCJCS  NUMBER,
  ZBCQQZCSLY  VARCHAR2(250),
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_WCCKZAJZBCQQZCSSPB
  is '无财产控制案件暂不采取强制措施审批表';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.FYBM
  is '法院编码';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.XH
  is '序号';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.BH
  is '编号';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.SQR
  is '申请人';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.BZXR
  is '被执行人';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZBTJZXXT
  is '暂不提交征信系统';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZBCQFKCS
  is '暂不采取罚款措施';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZBCQJLCS
  is '暂不采取拘留措施';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZBCQXZCJCS
  is '暂不采取限制出境措施';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZBCQQZCSLY
  is '暂不采取强制措施理由';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.CCPZ
  is '处长批准';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.JCPZ
  is '局长批准';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.YCPZ
  is '院长批准';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_WTFYHF
prompt ==========================
prompt
create table ZXXT_WTFYHF
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(100),
  BH          NUMBER,
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  HFRQ        DATE,
  HFNR        VARCHAR2(250),
  WTFYCLQK    VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_WTFYHF
  is '委托复议回复';
comment on column ZXXT_WTFYHF.FYBM
  is '法院编码';
comment on column ZXXT_WTFYHF.XH
  is '序号';
comment on column ZXXT_WTFYHF.BH
  is '编号';
comment on column ZXXT_WTFYHF.KPLB
  is '卡片类别';
comment on column ZXXT_WTFYHF.DJRBS
  is '登记人标识';
comment on column ZXXT_WTFYHF.DJR
  is '登记人';
comment on column ZXXT_WTFYHF.DJRQ
  is '登记日期';
comment on column ZXXT_WTFYHF.HFRQ
  is '回复日期';
comment on column ZXXT_WTFYHF.HFNR
  is '回复内容';
comment on column ZXXT_WTFYHF.WTFYCLQK
  is '委托法院处理情况';

prompt
prompt Creating table ZXXT_WTPMSJJK
prompt ============================
prompt
create table ZXXT_WTPMSJJK
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(100),
  PMGS        VARCHAR2(250),
  YPWTSJ      DATE,
  YPGGSJ      DATE,
  YPSJ        DATE,
  YPBLJ       NUMBER,
  YPJG        VARCHAR2(250),
  EPWTSJ      DATE,
  EPGGSJ      DATE,
  EPSJ        DATE,
  EPBLJ       NUMBER,
  EPJG        VARCHAR2(250),
  SPWTSJ      DATE,
  SPGGSJ      DATE,
  SPSJ        DATE,
  SPBLJ       NUMBER,
  SPJG        VARCHAR2(250),
  PMDZ        BLOB,
  YPDZ        VARCHAR2(200),
  EPDZ        VARCHAR2(200),
  SPDZ        VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_WTPMSJJK
  is '委托拍卖时间监控';
comment on column ZXXT_WTPMSJJK.FYBM
  is '法院编码';
comment on column ZXXT_WTPMSJJK.XH
  is '序号';
comment on column ZXXT_WTPMSJJK.BH
  is '编号';
comment on column ZXXT_WTPMSJJK.SQR
  is '申请人';
comment on column ZXXT_WTPMSJJK.BZXR
  is '被执行人';
comment on column ZXXT_WTPMSJJK.CBRBS
  is '承办人标识';
comment on column ZXXT_WTPMSJJK.CBR
  is '承办人';
comment on column ZXXT_WTPMSJJK.PMGS
  is '拍卖公司';
comment on column ZXXT_WTPMSJJK.YPWTSJ
  is '一拍委托时间';
comment on column ZXXT_WTPMSJJK.YPGGSJ
  is '一拍公告时间';
comment on column ZXXT_WTPMSJJK.YPSJ
  is '一拍时间';
comment on column ZXXT_WTPMSJJK.YPBLJ
  is '一拍保留价';
comment on column ZXXT_WTPMSJJK.YPJG
  is '一拍结果';
comment on column ZXXT_WTPMSJJK.EPWTSJ
  is '二拍委托时间';
comment on column ZXXT_WTPMSJJK.EPGGSJ
  is '二拍公告时间';
comment on column ZXXT_WTPMSJJK.EPSJ
  is '二拍时间';
comment on column ZXXT_WTPMSJJK.EPBLJ
  is '二拍保留价';
comment on column ZXXT_WTPMSJJK.EPJG
  is '二拍结果';
comment on column ZXXT_WTPMSJJK.SPWTSJ
  is '三拍委托时间';
comment on column ZXXT_WTPMSJJK.SPGGSJ
  is '三拍公告时间';
comment on column ZXXT_WTPMSJJK.SPSJ
  is '三拍时间';
comment on column ZXXT_WTPMSJJK.SPBLJ
  is '三拍保留价';
comment on column ZXXT_WTPMSJJK.SPJG
  is '三拍结果';
comment on column ZXXT_WTPMSJJK.PMDZ
  is '拍卖地址';
comment on column ZXXT_WTPMSJJK.YPDZ
  is '一拍地址';
comment on column ZXXT_WTPMSJJK.EPDZ
  is '二拍地址';
comment on column ZXXT_WTPMSJJK.SPDZ
  is '三拍地址';

prompt
prompt Creating table ZXXT_WTZX
prompt ========================
prompt
create table ZXXT_WTZX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(4),
  DJRQ        DATE,
  WTRQ        DATE,
  WTYY        VARCHAR2(250),
  STFY        VARCHAR2(250),
  BZ          VARCHAR2(250),
  ZDSJ        DATE,
  ZDFY        VARCHAR2(250),
  HFRQ        DATE,
  HFBZ        BLOB,
  WTFYCLQK    VARCHAR2(250),
  HFNR        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_WTZX
  is '委托执行';
comment on column ZXXT_WTZX.FYBM
  is '法院编码';
comment on column ZXXT_WTZX.XH
  is '序号';
comment on column ZXXT_WTZX.BH
  is '编号';
comment on column ZXXT_WTZX.KPLB
  is '卡片类别';
comment on column ZXXT_WTZX.DJRBS
  is '登记人标识';
comment on column ZXXT_WTZX.DJR
  is '登记人';
comment on column ZXXT_WTZX.DJRQ
  is '登记日期';
comment on column ZXXT_WTZX.WTRQ
  is '委托日期';
comment on column ZXXT_WTZX.WTYY
  is '委托原因';
comment on column ZXXT_WTZX.STFY
  is '受托法院';
comment on column ZXXT_WTZX.BZ
  is '备    注';
comment on column ZXXT_WTZX.ZDSJ
  is '指定时间';
comment on column ZXXT_WTZX.ZDFY
  is '指定法院';
comment on column ZXXT_WTZX.HFRQ
  is '回复日期';
comment on column ZXXT_WTZX.HFBZ
  is '回复备注';
comment on column ZXXT_WTZX.WTFYCLQK
  is '委托复议处理情况';
comment on column ZXXT_WTZX.HFNR
  is '恢复内容';

prompt
prompt Creating table ZXXT_WTZXAJDJB
prompt =============================
prompt
create table ZXXT_WTZXAJDJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  BQWTDFY     VARCHAR2(250),
  ZXYJ        VARCHAR2(250),
  WTZXDSSHLY  VARCHAR2(250),
  WTZXWSJBH   VARCHAR2(250),
  SWTFY       VARCHAR2(250),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  ZXF         NUMBER,
  BZ          VARCHAR2(250),
  WTJG        VARCHAR2(250),
  WTHDQK      VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_WTZXAJDJB
  is '委托执行案件调卷表';
comment on column ZXXT_WTZXAJDJB.FYBM
  is '法院编码';
comment on column ZXXT_WTZXAJDJB.XH
  is '序号';
comment on column ZXXT_WTZXAJDJB.BH
  is '编号';
comment on column ZXXT_WTZXAJDJB.BQWTDFY
  is '报请委托的法院';
comment on column ZXXT_WTZXAJDJB.ZXYJ
  is '执行依据';
comment on column ZXXT_WTZXAJDJB.WTZXDSSHLY
  is '委托执行的事实或理由';
comment on column ZXXT_WTZXAJDJB.WTZXWSJBH
  is '委托执行文书及编号';
comment on column ZXXT_WTZXAJDJB.SWTFY
  is '受委托法院';
comment on column ZXXT_WTZXAJDJB.SQR
  is '申请人';
comment on column ZXXT_WTZXAJDJB.BZXR
  is '被执行人';
comment on column ZXXT_WTZXAJDJB.ZXF
  is '执行费';
comment on column ZXXT_WTZXAJDJB.BZ
  is '备注';
comment on column ZXXT_WTZXAJDJB.WTJG
  is '委托结果';
comment on column ZXXT_WTZXAJDJB.WTHDQK
  is '委托后的情况';

prompt
prompt Creating table ZXXT_WTZXAJSPB
prompt =============================
prompt
create table ZXXT_WTZXAJSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  BQWTDFY     VARCHAR2(250),
  BHBH        VARCHAR2(250),
  ZXYJ        VARCHAR2(250),
  WTZXWSJBH   VARCHAR2(250),
  WTZXDSSHLY  VARCHAR2(250),
  SWTFY       VARCHAR2(250),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_WTZXAJSPB
  is '委托执行案件审批表';
comment on column ZXXT_WTZXAJSPB.FYBM
  is '法院编码';
comment on column ZXXT_WTZXAJSPB.XH
  is '序号';
comment on column ZXXT_WTZXAJSPB.BH
  is '编号';
comment on column ZXXT_WTZXAJSPB.BQWTDFY
  is '报请委托的法院';
comment on column ZXXT_WTZXAJSPB.BHBH
  is '编号bh';
comment on column ZXXT_WTZXAJSPB.ZXYJ
  is '执行依据';
comment on column ZXXT_WTZXAJSPB.WTZXWSJBH
  is '委托执行文书及编号';
comment on column ZXXT_WTZXAJSPB.WTZXDSSHLY
  is '委托执行的事实和理由';
comment on column ZXXT_WTZXAJSPB.SWTFY
  is '受委托法院';
comment on column ZXXT_WTZXAJSPB.SQR
  is '申请人';
comment on column ZXXT_WTZXAJSPB.BZXR
  is '被执行人';
comment on column ZXXT_WTZXAJSPB.BZ
  is '备注';

prompt
prompt Creating table ZXXT_XZCXCCTZS
prompt =============================
prompt
create table ZXXT_XZCXCCTZS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          VARCHAR2(100),
  XH          NUMBER,
  AY          VARCHAR2(250),
  AH          NUMBER,
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  LASJ        VARCHAR2(250),
  FWDW        VARCHAR2(100),
  BCXR        VARCHAR2(250),
  CXSY        VARCHAR2(250),
  CXR         VARCHAR2(250),
  BCXNR       VARCHAR2(250),
  RQ          DATE,
  QT          VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_XZCXCCTZS
  is '协助查询财产通知书';
comment on column ZXXT_XZCXCCTZS.FYBM
  is '法院编码';
comment on column ZXXT_XZCXCCTZS.BH
  is '编号';
comment on column ZXXT_XZCXCCTZS.XH
  is '序号';
comment on column ZXXT_XZCXCCTZS.AY
  is '案由';
comment on column ZXXT_XZCXCCTZS.AH
  is '案号';
comment on column ZXXT_XZCXCCTZS.SQR
  is '申请人';
comment on column ZXXT_XZCXCCTZS.BZXR
  is '被执行人';
comment on column ZXXT_XZCXCCTZS.LASJ
  is '立案时间';
comment on column ZXXT_XZCXCCTZS.FWDW
  is '发往单位';
comment on column ZXXT_XZCXCCTZS.BCXR
  is '被查询人';
comment on column ZXXT_XZCXCCTZS.CXSY
  is '查询事由';
comment on column ZXXT_XZCXCCTZS.CXR
  is '查询人';
comment on column ZXXT_XZCXCCTZS.BCXNR
  is '被查询内容';
comment on column ZXXT_XZCXCCTZS.RQ
  is '日期';
comment on column ZXXT_XZCXCCTZS.QT
  is '其他';

prompt
prompt Creating table ZXXT_XZCXCKTZS
prompt =============================
prompt
create table ZXXT_XZCXCKTZS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  AY          VARCHAR2(250),
  AH          NUMBER,
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  LASJ        DATE,
  FWYX        VARCHAR2(100),
  BCXDW       VARCHAR2(100),
  CXSY        VARCHAR2(250),
  CXR         VARCHAR2(250),
  BCXZH       VARCHAR2(250),
  PZR         VARCHAR2(40),
  ZBR         VARCHAR2(40),
  TFR         VARCHAR2(4),
  TXRQ        DATE,
  QT          DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_XZCXCKTZS
  is '协助查询存款通知书';
comment on column ZXXT_XZCXCKTZS.FYBM
  is '法院编码';
comment on column ZXXT_XZCXCKTZS.XH
  is '序号';
comment on column ZXXT_XZCXCKTZS.BH
  is '编号';
comment on column ZXXT_XZCXCKTZS.AY
  is '案由';
comment on column ZXXT_XZCXCKTZS.AH
  is '案号';
comment on column ZXXT_XZCXCKTZS.SQR
  is '申请人';
comment on column ZXXT_XZCXCKTZS.BZXR
  is '被执行人';
comment on column ZXXT_XZCXCKTZS.LASJ
  is '立案时间';
comment on column ZXXT_XZCXCKTZS.FWYX
  is '发往银行';
comment on column ZXXT_XZCXCKTZS.BCXDW
  is '被查询单位';
comment on column ZXXT_XZCXCKTZS.CXSY
  is '查询事由';
comment on column ZXXT_XZCXCKTZS.CXR
  is '查询人';
comment on column ZXXT_XZCXCKTZS.BCXZH
  is '被查询帐号';
comment on column ZXXT_XZCXCKTZS.PZR
  is '批准人';
comment on column ZXXT_XZCXCKTZS.ZBR
  is '准备人';
comment on column ZXXT_XZCXCKTZS.TFR
  is '填发人';
comment on column ZXXT_XZCXCKTZS.TXRQ
  is '填写日期';
comment on column ZXXT_XZCXCKTZS.QT
  is '其他';

prompt
prompt Creating table ZXXT_XZDJCKTZS
prompt =============================
prompt
create table ZXXT_XZDJCKTZS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  AY          VARCHAR2(250),
  AH          NUMBER,
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  BSQR        VARCHAR2(250),
  FWYX        VARCHAR2(250),
  CKYX        VARCHAR2(250),
  CKJE        VARCHAR2(250),
  PZR         VARCHAR2(4),
  TXRQ        DATE,
  DZ          VARCHAR2(250),
  QT          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_XZDJCKTZS
  is '协助冻结存款通知书';
comment on column ZXXT_XZDJCKTZS.FYBM
  is '法院编码';
comment on column ZXXT_XZDJCKTZS.XH
  is '序号';
comment on column ZXXT_XZDJCKTZS.BH
  is '编号';
comment on column ZXXT_XZDJCKTZS.AY
  is '案由';
comment on column ZXXT_XZDJCKTZS.AH
  is '案号';
comment on column ZXXT_XZDJCKTZS.SQR
  is '申请人';
comment on column ZXXT_XZDJCKTZS.BZXR
  is '被执行人';
comment on column ZXXT_XZDJCKTZS.BSQR
  is '被申请人';
comment on column ZXXT_XZDJCKTZS.FWYX
  is '发往银行';
comment on column ZXXT_XZDJCKTZS.CKYX
  is '存款银行';
comment on column ZXXT_XZDJCKTZS.CKJE
  is '存款金额';
comment on column ZXXT_XZDJCKTZS.PZR
  is '批准人';
comment on column ZXXT_XZDJCKTZS.TXRQ
  is '填写日期';
comment on column ZXXT_XZDJCKTZS.DZ
  is '电子';
comment on column ZXXT_XZDJCKTZS.QT
  is '其他';

prompt
prompt Creating table ZXXT_XZJL
prompt ========================
prompt
create table ZXXT_XZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(10),
  DJRQ        DATE,
  BXZR        VARCHAR2(250),
  XZYY        VARCHAR2(250),
  XZZL        VARCHAR2(250),
  XZNR        VARCHAR2(250),
  XZZXR       VARCHAR2(250),
  KSRQ        DATE,
  JCRQ        DATE,
  JCYY        VARCHAR2(250),
  JCBZ        BLOB,
  FYNR        VARCHAR2(50),
  DFRQ        DATE,
  FYFY        VARCHAR2(50),
  FYJG        VARCHAR2(250),
  CLJG        VARCHAR2(250),
  BZ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_XZJL
  is '限制记录';
comment on column ZXXT_XZJL.FYBM
  is '法院编码';
comment on column ZXXT_XZJL.XH
  is '序号';
comment on column ZXXT_XZJL.BH
  is '编号';
comment on column ZXXT_XZJL.KPLB
  is '卡片类别';
comment on column ZXXT_XZJL.DJRBS
  is '登记人标识';
comment on column ZXXT_XZJL.DJR
  is '登记人';
comment on column ZXXT_XZJL.DJRQ
  is '登记日期';
comment on column ZXXT_XZJL.BXZR
  is '被限制人';
comment on column ZXXT_XZJL.XZYY
  is '限制原因';
comment on column ZXXT_XZJL.XZZL
  is '限制种类';
comment on column ZXXT_XZJL.XZNR
  is '限制内容';
comment on column ZXXT_XZJL.XZZXR
  is '协助执行人';
comment on column ZXXT_XZJL.KSRQ
  is '开始日期';
comment on column ZXXT_XZJL.JCRQ
  is '解除日期';
comment on column ZXXT_XZJL.JCYY
  is '解除原因';
comment on column ZXXT_XZJL.JCBZ
  is '解除备注';
comment on column ZXXT_XZJL.FYNR
  is '复议内容';
comment on column ZXXT_XZJL.DFRQ
  is '答复日期';
comment on column ZXXT_XZJL.FYFY
  is '复议法院';
comment on column ZXXT_XZJL.FYJG
  is '复议结果';
comment on column ZXXT_XZJL.CLJG
  is '处理结果';
comment on column ZXXT_XZJL.BZ
  is '备注';

prompt
prompt Creating table ZXXT_XZZXXX
prompt ==========================
prompt
create table ZXXT_XZZXXX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(10),
  DJRQ        DATE,
  XZYWRLX     VARCHAR2(250),
  XZYWR       VARCHAR2(250),
  XZSX        VARCHAR2(250),
  RQ          DATE,
  SFXZ        VARCHAR2(10),
  LXQK        VARCHAR2(250),
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_XZZXXX
  is '协助执行信息';
comment on column ZXXT_XZZXXX.FYBM
  is '法院编码';
comment on column ZXXT_XZZXXX.XH
  is '序号';
comment on column ZXXT_XZZXXX.BH
  is '编号';
comment on column ZXXT_XZZXXX.KPLB
  is '卡片类别';
comment on column ZXXT_XZZXXX.DJRBS
  is '登记人标识';
comment on column ZXXT_XZZXXX.DJR
  is '登记人';
comment on column ZXXT_XZZXXX.DJRQ
  is '登记日期';
comment on column ZXXT_XZZXXX.XZYWRLX
  is '协助义务人类型';
comment on column ZXXT_XZZXXX.XZYWR
  is '协助义务人';
comment on column ZXXT_XZZXXX.XZSX
  is '协助事项';
comment on column ZXXT_XZZXXX.RQ
  is '日期';
comment on column ZXXT_XZZXXX.SFXZ
  is '是否协助';
comment on column ZXXT_XZZXXX.LXQK
  is '履行情况';
comment on column ZXXT_XZZXXX.BZ
  is '备注';

prompt
prompt Creating table ZXXT_YCCAJZQDPMSPB
prompt =================================
prompt
create table ZXXT_YCCAJZQDPMSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(100),
  BZXR        VARCHAR2(100),
  CCMC        VARCHAR2(250),
  CCXS        BLOB,
  ZBQDLY      BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_YCCAJZQDPMSPB
  is '有财产案件暂启动拍卖审批表';
comment on column ZXXT_YCCAJZQDPMSPB.FYBM
  is '法院编码';
comment on column ZXXT_YCCAJZQDPMSPB.XH
  is '序号';
comment on column ZXXT_YCCAJZQDPMSPB.BH
  is '编号';
comment on column ZXXT_YCCAJZQDPMSPB.SQR
  is '申请人';
comment on column ZXXT_YCCAJZQDPMSPB.BZXR
  is '被执行人';
comment on column ZXXT_YCCAJZQDPMSPB.CCMC
  is '财产名称';
comment on column ZXXT_YCCAJZQDPMSPB.CCXS
  is '财产详述';
comment on column ZXXT_YCCAJZQDPMSPB.ZBQDLY
  is '暂不启动理由';
comment on column ZXXT_YCCAJZQDPMSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_YCCAJZQDPMSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_YCCAJZQDPMSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_YCCAJZQDPMSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_YCCAJZQDPMSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_YCCAJZQDPMSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_YCCAJZQDPMSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_YCCAJZQDPMSPB.CCPZ
  is '处长批准';
comment on column ZXXT_YCCAJZQDPMSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_YCCAJZQDPMSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_YCCAJZQDPMSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_YCCAJZQDPMSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_YCCAJZQDPMSPB.JCPZ
  is '局长批准';
comment on column ZXXT_YCCAJZQDPMSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_YCCAJZQDPMSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_YCCAJZQDPMSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_YCCAJZQDPMSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_YCCAJZQDPMSPB.YCPZ
  is '院长批准';
comment on column ZXXT_YCCAJZQDPMSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_YCCAJZQDPMSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_YCCKZZBQDPGSPB
prompt ==================================
prompt
create table ZXXT_YCCKZZBQDPGSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(100),
  CCMC        VARCHAR2(100),
  CCXS        VARCHAR2(250),
  ZBQDLY      BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_YCCKZZBQDPGSPB
  is '有财产控制暂不启动评估审批表';
comment on column ZXXT_YCCKZZBQDPGSPB.FYBM
  is '法院编码';
comment on column ZXXT_YCCKZZBQDPGSPB.XH
  is '序号';
comment on column ZXXT_YCCKZZBQDPGSPB.BH
  is '编号';
comment on column ZXXT_YCCKZZBQDPGSPB.SQR
  is '申请人';
comment on column ZXXT_YCCKZZBQDPGSPB.CCMC
  is '财产名称';
comment on column ZXXT_YCCKZZBQDPGSPB.CCXS
  is '财产详述';
comment on column ZXXT_YCCKZZBQDPGSPB.ZBQDLY
  is '暂不启动理由';
comment on column ZXXT_YCCKZZBQDPGSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_YCCKZZBQDPGSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_YCCKZZBQDPGSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_YCCKZZBQDPGSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_YCCKZZBQDPGSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_YCCKZZBQDPGSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_YCCKZZBQDPGSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_YCCKZZBQDPGSPB.CCPZ
  is '处长批准';
comment on column ZXXT_YCCKZZBQDPGSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_YCCKZZBQDPGSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_YCCKZZBQDPGSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_YCCKZZBQDPGSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_YCCKZZBQDPGSPB.JCPZ
  is '局长批准';
comment on column ZXXT_YCCKZZBQDPGSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_YCCKZZBQDPGSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_YCCKZZBQDPGSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_YCCKZZBQDPGSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_YCCKZZBQDPGSPB.YCPZ
  is '院长批准';
comment on column ZXXT_YCCKZZBQDPGSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_YCCKZZBQDPGSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_YCCKZZBQDPMSPB
prompt ==================================
prompt
create table ZXXT_YCCKZZBQDPMSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SFYHY       NUMBER,
  SQR         VARCHAR2(100),
  BZXR        VARCHAR2(100),
  CCMC        VARCHAR2(250),
  CCXS        BLOB,
  ZBQDYPLY    BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_YCCKZZBQDPMSPB
  is '有财产控制暂不启动拍卖审批表';
comment on column ZXXT_YCCKZZBQDPMSPB.FYBM
  is '法院编码';
comment on column ZXXT_YCCKZZBQDPMSPB.XH
  is '序号';
comment on column ZXXT_YCCKZZBQDPMSPB.BH
  is '编号';
comment on column ZXXT_YCCKZZBQDPMSPB.SFYHY
  is '是否已合议';
comment on column ZXXT_YCCKZZBQDPMSPB.SQR
  is '申请人';
comment on column ZXXT_YCCKZZBQDPMSPB.BZXR
  is '被执行人';
comment on column ZXXT_YCCKZZBQDPMSPB.CCMC
  is '财产名称';
comment on column ZXXT_YCCKZZBQDPMSPB.CCXS
  is '财产详述';
comment on column ZXXT_YCCKZZBQDPMSPB.ZBQDYPLY
  is '暂不启动一拍理由';
comment on column ZXXT_YCCKZZBQDPMSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_YCCKZZBQDPMSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_YCCKZZBQDPMSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_YCCKZZBQDPMSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_YCCKZZBQDPMSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_YCCKZZBQDPMSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_YCCKZZBQDPMSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_YCCKZZBQDPMSPB.CCPZ
  is '处长批准';
comment on column ZXXT_YCCKZZBQDPMSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_YCCKZZBQDPMSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_YCCKZZBQDPMSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_YCCKZZBQDPMSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_YCCKZZBQDPMSPB.JCPZ
  is '局长批准';
comment on column ZXXT_YCCKZZBQDPMSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_YCCKZZBQDPMSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_YCCKZZBQDPMSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_YCCKZZBQDPMSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_YCCKZZBQDPMSPB.YCPZ
  is '院长批准';
comment on column ZXXT_YCCKZZBQDPMSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_YCCKZZBQDPMSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_YQPG
prompt ========================
prompt
create table ZXXT_YQPG
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(100),
  LXDH        VARCHAR2(100),
  BZXR        VARCHAR2(250),
  YQKSSJ      DATE,
  YQJSSJ      DATE,
  YQ          VARCHAR2(50),
  PGCC        VARCHAR2(250),
  SQRQ        DATE,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_YQPG
  is '延期评估';
comment on column ZXXT_YQPG.FYBM
  is '法院编码';
comment on column ZXXT_YQPG.XH
  is '序号';
comment on column ZXXT_YQPG.BH
  is '编号';
comment on column ZXXT_YQPG.SQR
  is '申请人';
comment on column ZXXT_YQPG.LXDH
  is '联系电话';
comment on column ZXXT_YQPG.BZXR
  is '被执行人';
comment on column ZXXT_YQPG.YQKSSJ
  is '延期开始时间';
comment on column ZXXT_YQPG.YQJSSJ
  is '延期结束时间';
comment on column ZXXT_YQPG.YQ
  is '延期';
comment on column ZXXT_YQPG.PGCC
  is '评估财产';
comment on column ZXXT_YQPG.SQRQ
  is '申请日期';
comment on column ZXXT_YQPG.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_YQPG.ZCSPR
  is '组长审批人';
comment on column ZXXT_YQPG.ZCPZ
  is '组长批准';
comment on column ZXXT_YQPG.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_YQPG.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_YQPG.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_YQPG.CCSPR
  is '处长审批人';
comment on column ZXXT_YQPG.CCPZ
  is '处长批准';
comment on column ZXXT_YQPG.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_YQPG.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_YQPG.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_YQPG.JCSPR
  is '局长审批人';
comment on column ZXXT_YQPG.JCPZ
  is '局长批准';
comment on column ZXXT_YQPG.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_YQPG.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_YQPG.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_YQPG.YCSPR
  is '院长审批人';
comment on column ZXXT_YQPG.YCPZ
  is '院长批准';
comment on column ZXXT_YQPG.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_YQPG.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_YQZFAKSPB
prompt =============================
prompt
create table ZXXT_YQZFAKSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  YQLY        BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  YQTS        NUMBER,
  SFFS        NUMBER,
  FSRQ        DATE,
  SFJS        NUMBER,
  JSRQ        DATE,
  SFHF        NUMBER,
  HFRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_YQZFAKSPB
  is '延期支付案款审批表';
comment on column ZXXT_YQZFAKSPB.FYBM
  is '法院编码';
comment on column ZXXT_YQZFAKSPB.XH
  is '序号';
comment on column ZXXT_YQZFAKSPB.BH
  is '编号';
comment on column ZXXT_YQZFAKSPB.YQLY
  is '延期理由';
comment on column ZXXT_YQZFAKSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_YQZFAKSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_YQZFAKSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_YQZFAKSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_YQZFAKSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_YQZFAKSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_YQZFAKSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_YQZFAKSPB.CCPZ
  is '处长批准';
comment on column ZXXT_YQZFAKSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_YQZFAKSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_YQZFAKSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_YQZFAKSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_YQZFAKSPB.JCPZ
  is '局长批准';
comment on column ZXXT_YQZFAKSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_YQZFAKSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_YQZFAKSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_YQZFAKSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_YQZFAKSPB.YCPZ
  is '院长批准';
comment on column ZXXT_YQZFAKSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_YQZFAKSPB.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_YQZFAKSPB.YQTS
  is '延期天数';
comment on column ZXXT_YQZFAKSPB.SFFS
  is '是否发送';
comment on column ZXXT_YQZFAKSPB.FSRQ
  is '发送日期';
comment on column ZXXT_YQZFAKSPB.SFJS
  is '是否结束';
comment on column ZXXT_YQZFAKSPB.JSRQ
  is '结束日期';
comment on column ZXXT_YQZFAKSPB.SFHF
  is '是否恢复';
comment on column ZXXT_YQZFAKSPB.HFRQ
  is '恢复日期';

prompt
prompt Creating table ZXXT_YWDZJL
prompt ==========================
prompt
create table ZXXT_YWDZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(4),
  DJRQ        DATE,
  DCYY        VARCHAR2(250),
  BDWQD       VARCHAR2(250),
  SYQR        VARCHAR2(250),
  BZXR        VARCHAR2(250),
  SQZXR       VARCHAR2(250),
  ZDLXJE      NUMBER,
  DCSJ        DATE,
  BZ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_YWDZJL
  is '以物抵债记录';
comment on column ZXXT_YWDZJL.FYBM
  is '法院编码';
comment on column ZXXT_YWDZJL.XH
  is '序号';
comment on column ZXXT_YWDZJL.BH
  is '编号';
comment on column ZXXT_YWDZJL.KPLB
  is '卡片类别';
comment on column ZXXT_YWDZJL.DJRBS
  is '登记人标识';
comment on column ZXXT_YWDZJL.DJR
  is '登记人';
comment on column ZXXT_YWDZJL.DJRQ
  is '登记日期';
comment on column ZXXT_YWDZJL.DCYY
  is '抵偿原因';
comment on column ZXXT_YWDZJL.BDWQD
  is '标的物清单';
comment on column ZXXT_YWDZJL.SYQR
  is '所有权人';
comment on column ZXXT_YWDZJL.BZXR
  is '被执行人';
comment on column ZXXT_YWDZJL.SQZXR
  is '申请执行人';
comment on column ZXXT_YWDZJL.ZDLXJE
  is '自动履行金额';
comment on column ZXXT_YWDZJL.DCSJ
  is '抵偿时间';
comment on column ZXXT_YWDZJL.BZ
  is '备注';

prompt
prompt Creating table ZXXT_ZCLASPB
prompt ===========================
prompt
create table ZXXT_ZCLASPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(50),
  BH          VARCHAR2(100),
  SQSJ        DATE,
  BZ          VARCHAR2(250),
  YZXQK       BLOB,
  ZCLALY      BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZCLASPB
  is '再次立案审批表';
comment on column ZXXT_ZCLASPB.FYBM
  is '法院编码';
comment on column ZXXT_ZCLASPB.XH
  is '序号';
comment on column ZXXT_ZCLASPB.BH
  is '编号';
comment on column ZXXT_ZCLASPB.SQSJ
  is '申请时间';
comment on column ZXXT_ZCLASPB.BZ
  is '备注';
comment on column ZXXT_ZCLASPB.YZXQK
  is '原执行情况';
comment on column ZXXT_ZCLASPB.ZCLALY
  is '再次立案理由';
comment on column ZXXT_ZCLASPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_ZCLASPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_ZCLASPB.ZCPZ
  is '组长批准';
comment on column ZXXT_ZCLASPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_ZCLASPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_ZCLASPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_ZCLASPB.CCSPR
  is '处长审批人';
comment on column ZXXT_ZCLASPB.CCPZ
  is '处长批准';
comment on column ZXXT_ZCLASPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_ZCLASPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_ZCLASPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_ZCLASPB.JCSPR
  is '局长审批人';
comment on column ZXXT_ZCLASPB.JCPZ
  is '局长批准';
comment on column ZXXT_ZCLASPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_ZCLASPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_ZCLASPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_ZCLASPB.YCSPR
  is '院长审批人';
comment on column ZXXT_ZCLASPB.YCPZ
  is '院长批准';
comment on column ZXXT_ZCLASPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_ZCLASPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_ZDFAPZB
prompt ===========================
prompt
create table ZXXT_ZDFAPZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BHZJ        NUMBER,
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  CM          VARCHAR2(30),
  ZM          VARCHAR2(30)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZDFAPZB
  is '自动分案配置表';
comment on column ZXXT_ZDFAPZB.FYBM
  is '法院编码';
comment on column ZXXT_ZDFAPZB.BHZJ
  is '编号（主键）';
comment on column ZXXT_ZDFAPZB.CBRBS
  is '承办人标识';
comment on column ZXXT_ZDFAPZB.CBR
  is '承办人';
comment on column ZXXT_ZDFAPZB.CM
  is '处名';
comment on column ZXXT_ZDFAPZB.ZM
  is '组名';

prompt
prompt Creating table ZXXT_ZDLXXWJL
prompt ============================
prompt
create table ZXXT_ZDLXXWJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(10),
  DJRQ        DATE,
  BZXR        VARCHAR2(250),
  SQZXR       VARCHAR2(250),
  LXBDJQ      NUMBER,
  LXBDW       VARCHAR2(250),
  LXBDXW      VARCHAR2(250),
  LXSJ        DATE,
  BZ          BLOB,
  LXFS        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZDLXXWJL
  is '自动履行行为记录';
comment on column ZXXT_ZDLXXWJL.FYBM
  is '法院编码';
comment on column ZXXT_ZDLXXWJL.XH
  is '序号';
comment on column ZXXT_ZDLXXWJL.BH
  is '编号';
comment on column ZXXT_ZDLXXWJL.KPLB
  is '卡片类别';
comment on column ZXXT_ZDLXXWJL.DJRBS
  is '登记人标识';
comment on column ZXXT_ZDLXXWJL.DJR
  is '登记人';
comment on column ZXXT_ZDLXXWJL.DJRQ
  is '登记日期';
comment on column ZXXT_ZDLXXWJL.BZXR
  is '被执行人';
comment on column ZXXT_ZDLXXWJL.SQZXR
  is '申请执行人';
comment on column ZXXT_ZDLXXWJL.LXBDJQ
  is '履行标的-金钱';
comment on column ZXXT_ZDLXXWJL.LXBDW
  is '履行标的-物';
comment on column ZXXT_ZDLXXWJL.LXBDXW
  is '履行标的-行为';
comment on column ZXXT_ZDLXXWJL.LXSJ
  is '履行时间';
comment on column ZXXT_ZDLXXWJL.BZ
  is '备注';
comment on column ZXXT_ZDLXXWJL.LXFS
  is '履行方式';

prompt
prompt Creating table ZXXT_ZDWTFY
prompt ==========================
prompt
create table ZXXT_ZDWTFY
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  ZDFY        VARCHAR2(250),
  WTFY        VARCHAR2(100),
  WTSJ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZDWTFY
  is '暂定委托法院';
comment on column ZXXT_ZDWTFY.FYBM
  is '法院编码';
comment on column ZXXT_ZDWTFY.XH
  is '序号';
comment on column ZXXT_ZDWTFY.BH
  is '编号';
comment on column ZXXT_ZDWTFY.ZDFY
  is '暂定法院';
comment on column ZXXT_ZDWTFY.WTFY
  is '委托法院';
comment on column ZXXT_ZDWTFY.WTSJ
  is '委托时间';

prompt
prompt Creating table ZXXT_ZHWTPGSPB
prompt =============================
prompt
create table ZXXT_ZHWTPGSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  AY          VARCHAR2(250),
  AH          VARCHAR2(250),
  BZXR        VARCHAR2(250),
  LASJ        DATE,
  SQR         VARCHAR2(100),
  ZHYSPGLY    BLOB,
  CBRBS       NUMBER,
  CBR         VARCHAR2(250),
  BZ          VARCHAR2(250),
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZHWTPGSPB
  is '暂缓委托评估审批表';
comment on column ZXXT_ZHWTPGSPB.FYBM
  is '法院编码';
comment on column ZXXT_ZHWTPGSPB.XH
  is '序号';
comment on column ZXXT_ZHWTPGSPB.BH
  is '编号';
comment on column ZXXT_ZHWTPGSPB.AY
  is '案由';
comment on column ZXXT_ZHWTPGSPB.AH
  is '案号';
comment on column ZXXT_ZHWTPGSPB.BZXR
  is '被执行人';
comment on column ZXXT_ZHWTPGSPB.LASJ
  is '立案时间';
comment on column ZXXT_ZHWTPGSPB.SQR
  is '申请人';
comment on column ZXXT_ZHWTPGSPB.ZHYSPGLY
  is '暂缓移送评估理由';
comment on column ZXXT_ZHWTPGSPB.CBRBS
  is '承办人标识';
comment on column ZXXT_ZHWTPGSPB.CBR
  is '承办人';
comment on column ZXXT_ZHWTPGSPB.BZ
  is '备注';
comment on column ZXXT_ZHWTPGSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_ZHWTPGSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_ZHWTPGSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_ZHWTPGSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_ZHWTPGSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_ZHWTPGSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_ZHWTPGSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_ZHWTPGSPB.CCPZ
  is '处长批准';
comment on column ZXXT_ZHWTPGSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_ZHWTPGSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_ZHWTPGSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_ZHWTPGSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_ZHWTPGSPB.JCPZ
  is '局长批准';
comment on column ZXXT_ZHWTPGSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_ZHWTPGSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_ZHWTPGSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_ZHWTPGSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_ZHWTPGSPB.YCPZ
  is '院长批准';
comment on column ZXXT_ZHWTPGSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_ZHWTPGSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_ZHZX
prompt ========================
prompt
create table ZXXT_ZHZX
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  ZHYY        VARCHAR2(250),
  ZHNR        VARCHAR2(250),
  ZHKSRQ      DATE,
  ZHJSRQ      DATE,
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZHZX
  is '暂缓执行';
comment on column ZXXT_ZHZX.FYBM
  is '法院编码';
comment on column ZXXT_ZHZX.XH
  is '序号';
comment on column ZXXT_ZHZX.BH
  is '编号';
comment on column ZXXT_ZHZX.ZHYY
  is '暂缓原因';
comment on column ZXXT_ZHZX.ZHNR
  is '暂缓内容';
comment on column ZXXT_ZHZX.ZHKSRQ
  is '暂缓开始日期';
comment on column ZXXT_ZHZX.ZHJSRQ
  is '暂缓结束日期';
comment on column ZXXT_ZHZX.BZ
  is '备注';

prompt
prompt Creating table ZXXT_ZTPGSPB
prompt ===========================
prompt
create table ZXXT_ZTPGSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  AY          VARCHAR2(250),
  AH          VARCHAR2(50),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  LASJ        DATE,
  ZTPGLY      VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(11),
  BZ          VARCHAR2(250),
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  CCMC        VARCHAR2(250),
  CCXS        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZTPGSPB
  is '暂停评估审批表';
comment on column ZXXT_ZTPGSPB.FYBM
  is '法院编码';
comment on column ZXXT_ZTPGSPB.XH
  is '序号';
comment on column ZXXT_ZTPGSPB.BH
  is '编号';
comment on column ZXXT_ZTPGSPB.AY
  is '案由';
comment on column ZXXT_ZTPGSPB.AH
  is '案号';
comment on column ZXXT_ZTPGSPB.SQR
  is '申请人';
comment on column ZXXT_ZTPGSPB.BZXR
  is '被执行人';
comment on column ZXXT_ZTPGSPB.LASJ
  is '立案时间';
comment on column ZXXT_ZTPGSPB.ZTPGLY
  is '暂停评估理由';
comment on column ZXXT_ZTPGSPB.CBRBS
  is '承办人标识';
comment on column ZXXT_ZTPGSPB.CBR
  is '承办人';
comment on column ZXXT_ZTPGSPB.BZ
  is '备注';
comment on column ZXXT_ZTPGSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_ZTPGSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_ZTPGSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_ZTPGSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_ZTPGSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_ZTPGSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_ZTPGSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_ZTPGSPB.CCPZ
  is '处长批准';
comment on column ZXXT_ZTPGSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_ZTPGSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_ZTPGSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_ZTPGSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_ZTPGSPB.JCPZ
  is '局长批准';
comment on column ZXXT_ZTPGSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_ZTPGSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_ZTPGSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_ZTPGSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_ZTPGSPB.YCPZ
  is '院长批准';
comment on column ZXXT_ZTPGSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_ZTPGSPB.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_ZTPGSPB.CCMC
  is '财产名称';
comment on column ZXXT_ZTPGSPB.CCXS
  is '财产详述';

prompt
prompt Creating table ZXXT_ZTPM
prompt ========================
prompt
create table ZXXT_ZTPM
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(100),
  SYQR        VARCHAR2(250),
  SQRQ        DATE,
  ZTSJ        DATE,
  PMJGPMJG    VARCHAR2(100),
  ZTYY        VARCHAR2(250),
  CCQK        VARCHAR2(250),
  BDWQD       VARCHAR2(250),
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE,
  PMJGMC      VARCHAR2(100),
  PMBD        VARCHAR2(250),
  ZTPMLY      VARCHAR2(250),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  BZ          VARCHAR2(250),
  BZXR        VARCHAR2(250),
  ZTTS        NUMBER,
  CCXS        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZTPM
  is '暂停拍卖';
comment on column ZXXT_ZTPM.FYBM
  is '法院编码';
comment on column ZXXT_ZTPM.XH
  is '序号';
comment on column ZXXT_ZTPM.BH
  is '编号';
comment on column ZXXT_ZTPM.SQR
  is '申请人';
comment on column ZXXT_ZTPM.SYQR
  is '所有权人';
comment on column ZXXT_ZTPM.SQRQ
  is '申请日期';
comment on column ZXXT_ZTPM.ZTSJ
  is '暂停时间';
comment on column ZXXT_ZTPM.PMJGPMJG
  is '拍卖机构、拍卖结果';
comment on column ZXXT_ZTPM.ZTYY
  is '暂停原因';
comment on column ZXXT_ZTPM.CCQK
  is '财产情况';
comment on column ZXXT_ZTPM.BDWQD
  is '标的物清单';
comment on column ZXXT_ZTPM.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_ZTPM.ZCSPR
  is '组长审批人';
comment on column ZXXT_ZTPM.ZCPZ
  is '组长批准';
comment on column ZXXT_ZTPM.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_ZTPM.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_ZTPM.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_ZTPM.CCSPR
  is '处长审批人';
comment on column ZXXT_ZTPM.CCPZ
  is '处长批准';
comment on column ZXXT_ZTPM.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_ZTPM.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_ZTPM.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_ZTPM.JCSPR
  is '局长审批人';
comment on column ZXXT_ZTPM.JCPZ
  is '局长批准';
comment on column ZXXT_ZTPM.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_ZTPM.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_ZTPM.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_ZTPM.YCSPR
  is '院长审批人';
comment on column ZXXT_ZTPM.YCPZ
  is '院长批准';
comment on column ZXXT_ZTPM.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_ZTPM.YCSPRQ
  is '院长审批日期';
comment on column ZXXT_ZTPM.PMJGMC
  is '拍买机构名称';
comment on column ZXXT_ZTPM.PMBD
  is '拍卖标的';
comment on column ZXXT_ZTPM.ZTPMLY
  is '暂停拍卖理由';
comment on column ZXXT_ZTPM.CBRBS
  is '承办人标识';
comment on column ZXXT_ZTPM.CBR
  is '承办人';
comment on column ZXXT_ZTPM.BZ
  is '备注';
comment on column ZXXT_ZTPM.BZXR
  is '被执行人';
comment on column ZXXT_ZTPM.ZTTS
  is '暂停天数';
comment on column ZXXT_ZTPM.CCXS
  is '财产详述';

prompt
prompt Creating table ZXXT_ZTPM1
prompt =========================
prompt
create table ZXXT_ZTPM1
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(100),
  BZXR        VARCHAR2(250),
  AY          VARCHAR2(250),
  SQRQ        DATE,
  ZTSJ        DATE,
  PMJG        VARCHAR2(100),
  ZTYY        VARCHAR2(250),
  CCQK        VARCHAR2(250),
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZTPM1
  is '暂停拍卖1';
comment on column ZXXT_ZTPM1.FYBM
  is '法院编码';
comment on column ZXXT_ZTPM1.XH
  is '序号';
comment on column ZXXT_ZTPM1.BH
  is '编号';
comment on column ZXXT_ZTPM1.SQR
  is '申请人';
comment on column ZXXT_ZTPM1.BZXR
  is '被执行人';
comment on column ZXXT_ZTPM1.AY
  is '案由';
comment on column ZXXT_ZTPM1.SQRQ
  is '申请日期';
comment on column ZXXT_ZTPM1.ZTSJ
  is '暂停时间';
comment on column ZXXT_ZTPM1.PMJG
  is '拍卖结果';
comment on column ZXXT_ZTPM1.ZTYY
  is '暂停原因';
comment on column ZXXT_ZTPM1.CCQK
  is '财产情况';
comment on column ZXXT_ZTPM1.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_ZTPM1.ZCSPR
  is '组长审批人';
comment on column ZXXT_ZTPM1.ZCPZ
  is '组长批准';
comment on column ZXXT_ZTPM1.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_ZTPM1.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_ZTPM1.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_ZTPM1.CCSPR
  is '处长审批人';
comment on column ZXXT_ZTPM1.CCPZ
  is '处长批准';
comment on column ZXXT_ZTPM1.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_ZTPM1.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_ZTPM1.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_ZTPM1.JCSPR
  is '局长审批人';
comment on column ZXXT_ZTPM1.JCPZ
  is '局长批准';
comment on column ZXXT_ZTPM1.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_ZTPM1.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_ZTPM1.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_ZTPM1.YCSPR
  is '院长审批人';
comment on column ZXXT_ZTPM1.YCPZ
  is '院长批准';
comment on column ZXXT_ZTPM1.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_ZTPM1.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_ZXAJBMSXHYYJJL
prompt ==================================
prompt
create table ZXXT_ZXAJBMSXHYYJJL
(
  ID              VARCHAR2(36) not null,
  REG_TIME        DATE not null,
  UPDATE_TIME     DATE not null,
  DEPT_CODE       VARCHAR2(20) not null,
  APP_CODE        VARCHAR2(20) not null,
  FYBM            NUMBER,
  BH              NUMBER,
  WDBH            VARCHAR2(100),
  AJBH            NUMBER,
  ZXAJBMSXHYYJSQR VARCHAR2(250),
  BZXR            VARCHAR2(250),
  ZXAJBMSXHYYJSJ  DATE,
  DD              VARCHAR2(250),
  CJR             VARCHAR2(250),
  CBRBS           NUMBER,
  CBR             VARCHAR2(40),
  JLRBS           NUMBER,
  JLR             VARCHAR2(40),
  AQQK            BLOB,
  CBRYJ           BLOB,
  HYQK            BLOB,
  YJYJ            BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXAJBMSXHYYJJL
  is '执行案件变卖事项合议研究记录';
comment on column ZXXT_ZXAJBMSXHYYJJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXAJBMSXHYYJJL.BH
  is '编号';
comment on column ZXXT_ZXAJBMSXHYYJJL.WDBH
  is '文档编号';
comment on column ZXXT_ZXAJBMSXHYYJJL.AJBH
  is '案件编号';
comment on column ZXXT_ZXAJBMSXHYYJJL.ZXAJBMSXHYYJSQR
  is '执行案件变卖事项合议研究申请人';
comment on column ZXXT_ZXAJBMSXHYYJJL.BZXR
  is '被执行人';
comment on column ZXXT_ZXAJBMSXHYYJJL.ZXAJBMSXHYYJSJ
  is '执行案件变卖事项合议研究时间';
comment on column ZXXT_ZXAJBMSXHYYJJL.DD
  is '地点';
comment on column ZXXT_ZXAJBMSXHYYJJL.CJR
  is '参加人';
comment on column ZXXT_ZXAJBMSXHYYJJL.CBRBS
  is '承办人标识';
comment on column ZXXT_ZXAJBMSXHYYJJL.CBR
  is '承办人';
comment on column ZXXT_ZXAJBMSXHYYJJL.JLRBS
  is '记录人标识';
comment on column ZXXT_ZXAJBMSXHYYJJL.JLR
  is '记录人';
comment on column ZXXT_ZXAJBMSXHYYJJL.AQQK
  is '案情情况';
comment on column ZXXT_ZXAJBMSXHYYJJL.CBRYJ
  is '承办人意见';
comment on column ZXXT_ZXAJBMSXHYYJJL.HYQK
  is '合议情况';
comment on column ZXXT_ZXAJBMSXHYYJJL.YJYJ
  is '研究意见';

prompt
prompt Creating table ZXXT_ZXAJDJB
prompt ===========================
prompt
create table ZXXT_ZXAJDJB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  AJBS        NUMBER,
  AJLBID      NUMBER,
  LARQ        DATE,
  AH          VARCHAR2(40),
  LAAY        VARCHAR2(100),
  FAJY        VARCHAR2(30),
  CLBM        VARCHAR2(30),
  CLRBS       NUMBER,
  CLR         VARCHAR2(30),
  SCFARQ      DATE,
  SCFARBS     NUMBER,
  SCFAR       VARCHAR2(30),
  DECFARQ     DATE,
  DECFARBS    NUMBER,
  DECFAR      VARCHAR2(30),
  JCFARQ      DATE,
  JCFARBS     NUMBER,
  JCFAR       VARCHAR2(30),
  DCJSBZ      NUMBER,
  JYCBRBS     NUMBER,
  JYCBR       VARCHAR2(30),
  DCJG        VARCHAR2(200),
  CABH        NUMBER,
  SFCAJC      NUMBER,
  DCTS        NUMBER,
  DCQXJSSJ    DATE,
  DCJSSJ      DATE,
  ZHCCBRBS    NUMBER,
  ZHCCBR      VARCHAR2(30),
  CM          VARCHAR2(20),
  ZM          VARCHAR2(20),
  FALY        VARCHAR2(40),
  JWHBLRBS    NUMBER,
  JWHBLR      VARCHAR2(40),
  CJZCBRBS    NUMBER,
  CJZCBR      VARCHAR2(40),
  ZHCZT       VARCHAR2(30),
  JCJYCBRBS   NUMBER,
  JCJYCBR     VARCHAR2(30),
  ZHCLCC      VARCHAR2(200),
  ZHCLCCSJ    DATE,
  SWLCBRBS    NUMBER,
  SWLCBR      VARCHAR2(30),
  AKYQZFJZRQ  DATE,
  AKYQZFTS    NUMBER,
  ZKJZRQ      DATE,
  CCLX        VARCHAR2(30),
  SD          NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXAJDJB
  is '执行案件登记表';
comment on column ZXXT_ZXAJDJB.FYBM
  is '法院编码';
comment on column ZXXT_ZXAJDJB.AJBS
  is '案件标识';
comment on column ZXXT_ZXAJDJB.AJLBID
  is '案件类别ID';
comment on column ZXXT_ZXAJDJB.LARQ
  is '立案日期';
comment on column ZXXT_ZXAJDJB.AH
  is '案号';
comment on column ZXXT_ZXAJDJB.LAAY
  is '立案案由';
comment on column ZXXT_ZXAJDJB.FAJY
  is '分案建议';
comment on column ZXXT_ZXAJDJB.CLBM
  is '处理部门';
comment on column ZXXT_ZXAJDJB.CLRBS
  is '处理人标识';
comment on column ZXXT_ZXAJDJB.CLR
  is '处理人';
comment on column ZXXT_ZXAJDJB.SCFARQ
  is '首次分案日期';
comment on column ZXXT_ZXAJDJB.SCFARBS
  is '首次分案人标识';
comment on column ZXXT_ZXAJDJB.SCFAR
  is '首次分案人';
comment on column ZXXT_ZXAJDJB.DECFARQ
  is '第二次分案日期';
comment on column ZXXT_ZXAJDJB.DECFARBS
  is '第二次分案人标识';
comment on column ZXXT_ZXAJDJB.DECFAR
  is '第二次分案人';
comment on column ZXXT_ZXAJDJB.JCFARQ
  is '局长分案日期';
comment on column ZXXT_ZXAJDJB.JCFARBS
  is '局长分案人标识';
comment on column ZXXT_ZXAJDJB.JCFAR
  is '局长分案人';
comment on column ZXXT_ZXAJDJB.DCJSBZ
  is '调查结束标志';
comment on column ZXXT_ZXAJDJB.JYCBRBS
  is '建议承办人标识';
comment on column ZXXT_ZXAJDJB.JYCBR
  is '建议承办人';
comment on column ZXXT_ZXAJDJB.DCJG
  is '调查结果';
comment on column ZXXT_ZXAJDJB.CABH
  is '串案编号';
comment on column ZXXT_ZXAJDJB.SFCAJC
  is '是否串案检查';
comment on column ZXXT_ZXAJDJB.DCTS
  is '调查天数';
comment on column ZXXT_ZXAJDJB.DCQXJSSJ
  is '调查期限结束时间';
comment on column ZXXT_ZXAJDJB.DCJSSJ
  is '调查结束时间';
comment on column ZXXT_ZXAJDJB.ZHCCBRBS
  is '综合处承办人标识';
comment on column ZXXT_ZXAJDJB.ZHCCBR
  is '综合处承办人';
comment on column ZXXT_ZXAJDJB.CM
  is '处名';
comment on column ZXXT_ZXAJDJB.ZM
  is '组名';
comment on column ZXXT_ZXAJDJB.FALY
  is '分案理由';
comment on column ZXXT_ZXAJDJB.JWHBLRBS
  is '局务会办理人标识';
comment on column ZXXT_ZXAJDJB.JWHBLR
  is '局务会办理人';
comment on column ZXXT_ZXAJDJB.CJZCBRBS
  is '裁决组承办人标识';
comment on column ZXXT_ZXAJDJB.CJZCBR
  is '裁决组承办人';
comment on column ZXXT_ZXAJDJB.ZHCZT
  is '综合处状态';
comment on column ZXXT_ZXAJDJB.JCJYCBRBS
  is '局长建议承办人标识';
comment on column ZXXT_ZXAJDJB.JCJYCBR
  is '局长建议承办人';
comment on column ZXXT_ZXAJDJB.ZHCLCC
  is '最后处理财产';
comment on column ZXXT_ZXAJDJB.ZHCLCCSJ
  is '最后处理财产时间';
comment on column ZXXT_ZXAJDJB.SWLCBRBS
  is '事未了承办人标识';
comment on column ZXXT_ZXAJDJB.SWLCBR
  is '事未了承办人';
comment on column ZXXT_ZXAJDJB.AKYQZFJZRQ
  is '案款延期支付截止日期';
comment on column ZXXT_ZXAJDJB.AKYQZFTS
  is '案款延期支付天数';
comment on column ZXXT_ZXAJDJB.ZKJZRQ
  is '支款截至日期';
comment on column ZXXT_ZXAJDJB.CCLX
  is '财产类型';
comment on column ZXXT_ZXAJDJB.SD
  is '锁定';

prompt
prompt Creating table ZXXT_ZXAJJRCZJDQKGZS
prompt ===================================
prompt
create table ZXXT_ZXAJJRCZJDQKGZS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          VARCHAR2(100),
  WDBH        NUMBER,
  ZXSQR       VARCHAR2(250),
  ZXSQRZXSQR  VARCHAR2(250),
  BZXSQR      VARCHAR2(250),
  ZXCBR       VARCHAR2(30),
  LXDH        VARCHAR2(100),
  ZXCCDCKZQK  BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXAJJRCZJDQKGZS
  is '执行案件进入处置阶段情况告知书';
comment on column ZXXT_ZXAJJRCZJDQKGZS.FYBM
  is '法院编码';
comment on column ZXXT_ZXAJJRCZJDQKGZS.BH
  is '编号';
comment on column ZXXT_ZXAJJRCZJDQKGZS.WDBH
  is '文档编号';
comment on column ZXXT_ZXAJJRCZJDQKGZS.ZXSQR
  is '执行申请人';
comment on column ZXXT_ZXAJJRCZJDQKGZS.ZXSQRZXSQR
  is '执行申请人zxsqr';
comment on column ZXXT_ZXAJJRCZJDQKGZS.BZXSQR
  is '被执行申请人';
comment on column ZXXT_ZXAJJRCZJDQKGZS.ZXCBR
  is '执行承办人';
comment on column ZXXT_ZXAJJRCZJDQKGZS.LXDH
  is '联系电话';
comment on column ZXXT_ZXAJJRCZJDQKGZS.ZXCCDCKZQK
  is '专项财产调查控制情况';

prompt
prompt Creating table ZXXT_ZXAJPMSXHYYJJL
prompt ==================================
prompt
create table ZXXT_ZXAJPMSXHYYJJL
(
  ID              VARCHAR2(36) not null,
  REG_TIME        DATE not null,
  UPDATE_TIME     DATE not null,
  DEPT_CODE       VARCHAR2(20) not null,
  APP_CODE        VARCHAR2(20) not null,
  FYBM            NUMBER,
  XH              NUMBER,
  BH              VARCHAR2(100),
  ZXAJPMSXHYYJSQR VARCHAR2(250),
  BZXR            DATE,
  SJ              VARCHAR2(250),
  DD              VARCHAR2(250),
  CJR             VARCHAR2(250),
  CJRBS           NUMBER,
  CBR             VARCHAR2(40),
  JLRBS           NUMBER,
  JLR             VARCHAR2(40),
  AQQK            BLOB,
  CBRYJ           BLOB,
  HYQK            BLOB,
  YJYJ            VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXAJPMSXHYYJJL
  is '执行案件拍卖事项合议研究记录';
comment on column ZXXT_ZXAJPMSXHYYJJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXAJPMSXHYYJJL.XH
  is '序号';
comment on column ZXXT_ZXAJPMSXHYYJJL.BH
  is '编号';
comment on column ZXXT_ZXAJPMSXHYYJJL.ZXAJPMSXHYYJSQR
  is '执行案件拍卖事项合议研究申请人';
comment on column ZXXT_ZXAJPMSXHYYJJL.BZXR
  is '被执行人';
comment on column ZXXT_ZXAJPMSXHYYJJL.SJ
  is '时间';
comment on column ZXXT_ZXAJPMSXHYYJJL.DD
  is '地点';
comment on column ZXXT_ZXAJPMSXHYYJJL.CJR
  is '参加人';
comment on column ZXXT_ZXAJPMSXHYYJJL.CJRBS
  is '参加人标识';
comment on column ZXXT_ZXAJPMSXHYYJJL.CBR
  is '承办人';
comment on column ZXXT_ZXAJPMSXHYYJJL.JLRBS
  is '记录人标识';
comment on column ZXXT_ZXAJPMSXHYYJJL.JLR
  is '记录人';
comment on column ZXXT_ZXAJPMSXHYYJJL.AQQK
  is '案情情况';
comment on column ZXXT_ZXAJPMSXHYYJJL.CBRYJ
  is '承办人意见';
comment on column ZXXT_ZXAJPMSXHYYJJL.HYQK
  is '合议情况';
comment on column ZXXT_ZXAJPMSXHYYJJL.YJYJ
  is '研究意见';

prompt
prompt Creating table ZXXT_ZXAJYWDZSXHYYJJL
prompt ====================================
prompt
create table ZXXT_ZXAJYWDZSXHYYJJL
(
  ID                 VARCHAR2(36) not null,
  REG_TIME           DATE not null,
  UPDATE_TIME        DATE not null,
  DEPT_CODE          VARCHAR2(20) not null,
  APP_CODE           VARCHAR2(20) not null,
  FYBM               NUMBER,
  XH                 NUMBER,
  BH                 VARCHAR2(100),
  ZXAJYWDZSXSQR      VARCHAR2(250),
  BZXR               VARCHAR2(250),
  SJ                 DATE,
  ZXAJYWDZSXHYYJJLDD VARCHAR2(250),
  CJRBS              NUMBER,
  CJR                VARCHAR2(250),
  CBRBS              NUMBER,
  CBR                VARCHAR2(40),
  JLRBS              NUMBER,
  JLR                VARCHAR2(40),
  AQQK               BLOB,
  CBRYJ              BLOB,
  HYQK               BLOB,
  YJYJ               BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXAJYWDZSXHYYJJL
  is '执行案件以物抵债事项合议研究记录';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.XH
  is '序号';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.BH
  is '编号';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.ZXAJYWDZSXSQR
  is '执行案件以物抵债事项申请人';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.BZXR
  is '被执行人';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.SJ
  is '时间';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.ZXAJYWDZSXHYYJJLDD
  is '执行案件以物抵债事项合议研究记录地点';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.CJRBS
  is '参加人标识';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.CJR
  is '参加人';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.CBRBS
  is '承办人标识';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.CBR
  is '承办人';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.JLRBS
  is '记录人标识';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.JLR
  is '记录人';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.AQQK
  is '案情情况';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.CBRYJ
  is '承办人意见';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.HYQK
  is '合议情况';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.YJYJ
  is '研究意见';

prompt
prompt Creating table ZXXT_ZXAJZJBCZXSXHYJL
prompt ====================================
prompt
create table ZXXT_ZXAJZJBCZXSXHYJL
(
  ID               VARCHAR2(36) not null,
  REG_TIME         DATE not null,
  UPDATE_TIME      DATE not null,
  DEPT_CODE        VARCHAR2(20) not null,
  APP_CODE         VARCHAR2(20) not null,
  FYBM             NUMBER,
  XH               NUMBER,
  BH               VARCHAR2(100),
  SQR              VARCHAR2(100),
  BZXR             VARCHAR2(200),
  ZXAJZJBCZXSXHYSJ VARCHAR2(250),
  DD               VARCHAR2(250),
  CJRBS            NUMBER,
  CJR              VARCHAR2(200),
  CBRBS            NUMBER,
  CBR              VARCHAR2(40),
  JLRBS            NUMBER,
  JLR              VARCHAR2(40),
  AQQK             VARCHAR2(250),
  CBRYJ            VARCHAR2(250),
  HYQK             BLOB,
  YJYJ             BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXAJZJBCZXSXHYJL
  is '执行案件终结本次执行事项合议记录';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.XH
  is '序号';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.BH
  is '编号';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.SQR
  is '申请人';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.BZXR
  is '被执行人';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.ZXAJZJBCZXSXHYSJ
  is '执行案件终结本次执行事项合议时间';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.DD
  is '地点';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.CJRBS
  is '参加人标识';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.CJR
  is '参加人';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.CBRBS
  is '承办人标识';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.CBR
  is '承办人';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.JLRBS
  is '记录人标识';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.JLR
  is '记录人';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.AQQK
  is '案情情况';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.CBRYJ
  is '承办人意见';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.HYQK
  is '合议情况';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.YJYJ
  is '研究意见';

prompt
prompt Creating table ZXXT_ZXBZXRBGZJJL
prompt ================================
prompt
create table ZXXT_ZXBZXRBGZJJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(10),
  DJRQ        DATE,
  LX          VARCHAR2(250),
  CDRQ        DATE,
  ZJMD        VARCHAR2(250),
  YY          VARCHAR2(250),
  BZ          VARCHAR2(250),
  ZJMDZJMD    VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXBZXRBGZJJL
  is '执行被执行人变更追加记录';
comment on column ZXXT_ZXBZXRBGZJJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXBZXRBGZJJL.XH
  is '序号';
comment on column ZXXT_ZXBZXRBGZJJL.BH
  is '编号';
comment on column ZXXT_ZXBZXRBGZJJL.KPLB
  is '卡片类别';
comment on column ZXXT_ZXBZXRBGZJJL.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXBZXRBGZJJL.DJR
  is '登记人';
comment on column ZXXT_ZXBZXRBGZJJL.DJRQ
  is '登记日期';
comment on column ZXXT_ZXBZXRBGZJJL.LX
  is '类型';
comment on column ZXXT_ZXBZXRBGZJJL.CDRQ
  is '裁定日期';
comment on column ZXXT_ZXBZXRBGZJJL.ZJMD
  is '追加目的';
comment on column ZXXT_ZXBZXRBGZJJL.YY
  is '原因';
comment on column ZXXT_ZXBZXRBGZJJL.BZ
  is '备注';
comment on column ZXXT_ZXBZXRBGZJJL.ZJMDZJMD
  is '追加目的zjmd';

prompt
prompt Creating table ZXXT_ZXCAGXZB
prompt ============================
prompt
create table ZXXT_ZXCAGXZB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  CABHZJ      NUMBER,
  CABS        VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXCAGXZB
  is '执行串案关系主表 ';
comment on column ZXXT_ZXCAGXZB.FYBM
  is '法院编码';
comment on column ZXXT_ZXCAGXZB.CABHZJ
  is '串案编号主键';
comment on column ZXXT_ZXCAGXZB.CABS
  is '串案标识';

prompt
prompt Creating table ZXXT_ZXCCDCJL
prompt ============================
prompt
create table ZXXT_ZXCCDCJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  DCSJ        DATE,
  DCDD        VARCHAR2(250),
  DCR         VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXCCDCJL
  is '执行财产吊车记录';
comment on column ZXXT_ZXCCDCJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXCCDCJL.XH
  is '序号';
comment on column ZXXT_ZXCCDCJL.BH
  is '编号';
comment on column ZXXT_ZXCCDCJL.DCSJ
  is '调查时间';
comment on column ZXXT_ZXCCDCJL.DCDD
  is '调查地点';
comment on column ZXXT_ZXCCDCJL.DCR
  is '调查人';

prompt
prompt Creating table ZXXT_ZXCCDCKZQKGZS
prompt =================================
prompt
create table ZXXT_ZXCCDCKZQKGZS
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  LASJ        DATE,
  SQZXR       VARCHAR2(250),
  BZXR        VARCHAR2(250),
  ZXCKRYBS    NUMBER,
  ZXCKRY      VARCHAR2(40),
  SASJ        DATE,
  WCSJ        DATE,
  BZ          BLOB,
  ZXCCDCKZQK  VARCHAR2(250),
  QZZXCSDCQQK VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXCCDCKZQKGZS
  is '专项财产调查控制情况告知书';
comment on column ZXXT_ZXCCDCKZQKGZS.FYBM
  is '法院编码';
comment on column ZXXT_ZXCCDCKZQKGZS.XH
  is '序号';
comment on column ZXXT_ZXCCDCKZQKGZS.BH
  is '编号';
comment on column ZXXT_ZXCCDCKZQKGZS.LASJ
  is '立案时间';
comment on column ZXXT_ZXCCDCKZQKGZS.SQZXR
  is '申请执行人';
comment on column ZXXT_ZXCCDCKZQKGZS.BZXR
  is '被执行人';
comment on column ZXXT_ZXCCDCKZQKGZS.ZXCKRYBS
  is '专项查控人员标识';
comment on column ZXXT_ZXCCDCKZQKGZS.ZXCKRY
  is '专项查控人员';
comment on column ZXXT_ZXCCDCKZQKGZS.SASJ
  is '收案时间';
comment on column ZXXT_ZXCCDCKZQKGZS.WCSJ
  is '完成时间';
comment on column ZXXT_ZXCCDCKZQKGZS.BZ
  is '备注';
comment on column ZXXT_ZXCCDCKZQKGZS.ZXCCDCKZQK
  is '专项财产调查控制情况';
comment on column ZXXT_ZXCCDCKZQKGZS.QZZXCSDCQQK
  is '强制执行措施的采取情况';

prompt
prompt Creating table ZXXT_ZXCMCCJL
prompt ============================
prompt
create table ZXXT_ZXCMCCJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  BZXR        VARCHAR2(250),
  XSLY        VARCHAR2(250),
  XSTGR       VARCHAR2(240),
  TGRQ        DATE,
  TGNR        VARCHAR2(240),
  CMRQ        DATE,
  CCQD        VARCHAR2(240),
  BZ          VARCHAR2(240)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXCMCCJL
  is '执行查明财产记录';
comment on column ZXXT_ZXCMCCJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXCMCCJL.XH
  is '序号';
comment on column ZXXT_ZXCMCCJL.BH
  is '编号';
comment on column ZXXT_ZXCMCCJL.KPLB
  is '卡片类别';
comment on column ZXXT_ZXCMCCJL.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXCMCCJL.DJR
  is '登记人';
comment on column ZXXT_ZXCMCCJL.DJRQ
  is '登记日期';
comment on column ZXXT_ZXCMCCJL.BZXR
  is '被执行人';
comment on column ZXXT_ZXCMCCJL.XSLY
  is '线索来源';
comment on column ZXXT_ZXCMCCJL.XSTGR
  is '线索提供人';
comment on column ZXXT_ZXCMCCJL.TGRQ
  is '提供日期';
comment on column ZXXT_ZXCMCCJL.TGNR
  is '提供内容';
comment on column ZXXT_ZXCMCCJL.CMRQ
  is '查明日期';
comment on column ZXXT_ZXCMCCJL.CCQD
  is '财产清单';
comment on column ZXXT_ZXCMCCJL.BZ
  is '备注';

prompt
prompt Creating table ZXXT_ZXCSDJ
prompt ==========================
prompt
create table ZXXT_ZXCSDJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CSLX        VARCHAR2(250),
  CSJD        VARCHAR2(250),
  CCXZ        VARCHAR2(250),
  SSRYBS      NUMBER,
  SSRY        VARCHAR2(40),
  SSSJ        DATE,
  JMSJ        DATE,
  SFLH        NUMBER,
  XXCS        VARCHAR2(250),
  JCCSLX      VARCHAR2(250),
  JCCSSJ      DATE,
  CSNR        BLOB,
  CCMC        VARCHAR2(250),
  CCXS        BLOB,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXCSDJ
  is '执行措施登记';
comment on column ZXXT_ZXCSDJ.FYBM
  is '法院编码';
comment on column ZXXT_ZXCSDJ.XH
  is '序号';
comment on column ZXXT_ZXCSDJ.BH
  is '编号';
comment on column ZXXT_ZXCSDJ.SQR
  is '申请人';
comment on column ZXXT_ZXCSDJ.BZXR
  is '被执行人';
comment on column ZXXT_ZXCSDJ.CSLX
  is '措施类型';
comment on column ZXXT_ZXCSDJ.CSJD
  is '措施阶段';
comment on column ZXXT_ZXCSDJ.CCXZ
  is '财产现状';
comment on column ZXXT_ZXCSDJ.SSRYBS
  is '实施人员标识';
comment on column ZXXT_ZXCSDJ.SSRY
  is '实施人员';
comment on column ZXXT_ZXCSDJ.SSSJ
  is '实施时间';
comment on column ZXXT_ZXCSDJ.JMSJ
  is '届满时间';
comment on column ZXXT_ZXCSDJ.SFLH
  is '是否轮候';
comment on column ZXXT_ZXCSDJ.XXCS
  is '续行次数';
comment on column ZXXT_ZXCSDJ.JCCSLX
  is '解除措施类型';
comment on column ZXXT_ZXCSDJ.JCCSSJ
  is '解除措施时间';
comment on column ZXXT_ZXCSDJ.CSNR
  is '措施内容';
comment on column ZXXT_ZXCSDJ.CCMC
  is '财产名称';
comment on column ZXXT_ZXCSDJ.CCXS
  is '财产详述';
comment on column ZXXT_ZXCSDJ.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXCSDJ.DJR
  is '登记人';

prompt
prompt Creating table ZXXT_ZXCXCKJL
prompt ============================
prompt
create table ZXXT_ZXCXCKJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  BZXR        VARCHAR2(250),
  CXSJ        DATE,
  CXDW        VARCHAR2(160),
  DD          VARCHAR2(160),
  CXYX        VARCHAR2(250),
  ZH          VARCHAR2(250),
  ZHCE        NUMBER,
  CXJE        VARCHAR2(240),
  BZ          VARCHAR2(240),
  CXRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXCXCKJL
  is '执行查询存款记录';
comment on column ZXXT_ZXCXCKJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXCXCKJL.XH
  is '序号';
comment on column ZXXT_ZXCXCKJL.BH
  is '编号';
comment on column ZXXT_ZXCXCKJL.KPLB
  is '卡片类别';
comment on column ZXXT_ZXCXCKJL.DJR
  is '登记人';
comment on column ZXXT_ZXCXCKJL.DJRQ
  is '登记日期';
comment on column ZXXT_ZXCXCKJL.BZXR
  is '被执行人';
comment on column ZXXT_ZXCXCKJL.CXSJ
  is '查询时间';
comment on column ZXXT_ZXCXCKJL.CXDW
  is '查询单位';
comment on column ZXXT_ZXCXCKJL.DD
  is '地点';
comment on column ZXXT_ZXCXCKJL.CXYX
  is '查询银行';
comment on column ZXXT_ZXCXCKJL.ZH
  is '帐号';
comment on column ZXXT_ZXCXCKJL.ZHCE
  is '帐号存额';
comment on column ZXXT_ZXCXCKJL.CXJE
  is '查询金额';
comment on column ZXXT_ZXCXCKJL.BZ
  is '备注';
comment on column ZXXT_ZXCXCKJL.CXRQ
  is '查询日期';

prompt
prompt Creating table ZXXT_ZXCYFPJL
prompt ============================
prompt
create table ZXXT_ZXCYFPJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  FYLX        VARCHAR2(250),
  YJRQ        DATE,
  DFPCC       VARCHAR2(250),
  DFPZJE      NUMBER,
  CYFPJG      VARCHAR2(250),
  SQZXR       VARCHAR2(250),
  SQSNR       VARCHAR2(250),
  FPYJ        VARCHAR2(250),
  SQFPJEY     NUMBER,
  SFYXQL      NUMBER,
  YXQLNR      VARCHAR2(250),
  YXQSXRQ     DATE,
  FPRQ        DATE,
  FPJE        NUMBER,
  SFTCYY      NUMBER,
  YYCLJG      VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXCYFPJL
  is '执行参与分配记录';
comment on column ZXXT_ZXCYFPJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXCYFPJL.XH
  is '序号';
comment on column ZXXT_ZXCYFPJL.BH
  is '编号';
comment on column ZXXT_ZXCYFPJL.KPLB
  is '卡片类别';
comment on column ZXXT_ZXCYFPJL.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXCYFPJL.DJR
  is '登记人';
comment on column ZXXT_ZXCYFPJL.DJRQ
  is '登记日期';
comment on column ZXXT_ZXCYFPJL.FYLX
  is '法院类型';
comment on column ZXXT_ZXCYFPJL.YJRQ
  is '移交日期';
comment on column ZXXT_ZXCYFPJL.DFPCC
  is '待分配财产';
comment on column ZXXT_ZXCYFPJL.DFPZJE
  is '待分配总金额';
comment on column ZXXT_ZXCYFPJL.CYFPJG
  is '参与分配结果';
comment on column ZXXT_ZXCYFPJL.SQZXR
  is '申请执行人';
comment on column ZXXT_ZXCYFPJL.SQSNR
  is '申请书内容';
comment on column ZXXT_ZXCYFPJL.FPYJ
  is '分配依据';
comment on column ZXXT_ZXCYFPJL.SQFPJEY
  is '申请分配金额（元）';
comment on column ZXXT_ZXCYFPJL.SFYXQL
  is '是否优先权利';
comment on column ZXXT_ZXCYFPJL.YXQLNR
  is '优先权利内容';
comment on column ZXXT_ZXCYFPJL.YXQSXRQ
  is '优先权生效日期';
comment on column ZXXT_ZXCYFPJL.FPRQ
  is '分配日期';
comment on column ZXXT_ZXCYFPJL.FPJE
  is '分配金额';
comment on column ZXXT_ZXCYFPJL.SFTCYY
  is '是否提出异议';
comment on column ZXXT_ZXCYFPJL.YYCLJG
  is '异议处理结果';

prompt
prompt Creating table ZXXT_ZXDB
prompt ========================
prompt
create table ZXXT_ZXDB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  DBSY        VARCHAR2(250),
  DBR         VARCHAR2(250),
  BDBR        VARCHAR2(250),
  DBCCQD      VARCHAR2(250),
  DBFW        VARCHAR2(250),
  DBRQ        DATE,
  CDRQ        DATE,
  CDNR        VARCHAR2(250),
  BZ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXDB
  is '执行担保';
comment on column ZXXT_ZXDB.FYBM
  is '法院编码';
comment on column ZXXT_ZXDB.XH
  is '序号';
comment on column ZXXT_ZXDB.BH
  is '编号';
comment on column ZXXT_ZXDB.KPLB
  is '卡片类别';
comment on column ZXXT_ZXDB.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXDB.DJR
  is '登记人';
comment on column ZXXT_ZXDB.DJRQ
  is '登记日期';
comment on column ZXXT_ZXDB.DBSY
  is '担保事由';
comment on column ZXXT_ZXDB.DBR
  is '担保人';
comment on column ZXXT_ZXDB.BDBR
  is '被担保人';
comment on column ZXXT_ZXDB.DBCCQD
  is '担保财产清单';
comment on column ZXXT_ZXDB.DBFW
  is '担保范围';
comment on column ZXXT_ZXDB.DBRQ
  is '担保日期';
comment on column ZXXT_ZXDB.CDRQ
  is '裁定日期';
comment on column ZXXT_ZXDB.CDNR
  is '裁定内容';
comment on column ZXXT_ZXDB.BZ
  is '备注';

prompt
prompt Creating table ZXXT_ZXDJJL
prompt ==========================
prompt
create table ZXXT_ZXDJJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(100),
  BH          NUMBER,
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(10),
  DJRQ        DATE,
  DJLX        VARCHAR2(250),
  FS          VARCHAR2(250),
  CCSYQR      VARCHAR2(250),
  DJCCQDZ     VARCHAR2(250),
  BDE         NUMBER,
  DJSXRQ      DATE,
  BZ          VARCHAR2(250),
  YY          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXDJJL
  is '执行冻结记录';
comment on column ZXXT_ZXDJJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXDJJL.XH
  is '序号';
comment on column ZXXT_ZXDJJL.BH
  is '编号';
comment on column ZXXT_ZXDJJL.KPLB
  is '卡片类别';
comment on column ZXXT_ZXDJJL.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXDJJL.DJR
  is '登记人';
comment on column ZXXT_ZXDJJL.DJRQ
  is '登记日期';
comment on column ZXXT_ZXDJJL.DJLX
  is '冻结类型';
comment on column ZXXT_ZXDJJL.FS
  is '方式';
comment on column ZXXT_ZXDJJL.CCSYQR
  is '财产所有权人';
comment on column ZXXT_ZXDJJL.DJCCQDZ
  is '登记财产权地址';
comment on column ZXXT_ZXDJJL.BDE
  is '标的额';
comment on column ZXXT_ZXDJJL.DJSXRQ
  is '冻结实行日期';
comment on column ZXXT_ZXDJJL.BZ
  is '备注';
comment on column ZXXT_ZXDJJL.YY
  is '原因';

prompt
prompt Creating table ZXXT_ZXFKFYJL
prompt ============================
prompt
create table ZXXT_ZXFKFYJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  BH          VARCHAR2(100),
  XH          NUMBER,
  BFKR        VARCHAR2(250),
  YY          VARCHAR2(250),
  FKRQ        DATE,
  FKJE        NUMBER,
  BZ          VARCHAR2(250),
  LXRQ        DATE,
  LXJE        NUMBER,
  FYNR        VARCHAR2(250),
  RQ          DATE,
  FYFY        VARCHAR2(250),
  FYJG        VARCHAR2(250),
  CLJG        VARCHAR2(250),
  BZBZ        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXFKFYJL
  is '执行罚款、复议记录';
comment on column ZXXT_ZXFKFYJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXFKFYJL.BH
  is '编号';
comment on column ZXXT_ZXFKFYJL.XH
  is '序号';
comment on column ZXXT_ZXFKFYJL.BFKR
  is '被罚款人';
comment on column ZXXT_ZXFKFYJL.YY
  is '原因';
comment on column ZXXT_ZXFKFYJL.FKRQ
  is '罚款日期';
comment on column ZXXT_ZXFKFYJL.FKJE
  is '罚款金额';
comment on column ZXXT_ZXFKFYJL.BZ
  is '备注';
comment on column ZXXT_ZXFKFYJL.LXRQ
  is '履行日期';
comment on column ZXXT_ZXFKFYJL.LXJE
  is '履行金额';
comment on column ZXXT_ZXFKFYJL.FYNR
  is '复议内容';
comment on column ZXXT_ZXFKFYJL.RQ
  is '日期';
comment on column ZXXT_ZXFKFYJL.FYFY
  is '复议法院';
comment on column ZXXT_ZXFKFYJL.FYJG
  is '复议结果';
comment on column ZXXT_ZXFKFYJL.CLJG
  is '处理结果';
comment on column ZXXT_ZXFKFYJL.BZBZ
  is '备注bz';

prompt
prompt Creating table ZXXT_ZXHBJL
prompt ==========================
prompt
create table ZXXT_ZXHBJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  HBCKSYR     VARCHAR2(250),
  HCZHJZH     VARCHAR2(250),
  HBJE        NUMBER,
  HRZHJZH     VARCHAR2(250),
  HBRQ        DATE,
  HRZHSYR     VARCHAR2(250),
  BZ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXHBJL
  is '执行划拨记录';
comment on column ZXXT_ZXHBJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXHBJL.XH
  is '序号';
comment on column ZXXT_ZXHBJL.BH
  is '编号';
comment on column ZXXT_ZXHBJL.HBCKSYR
  is '划拨存款所有人';
comment on column ZXXT_ZXHBJL.HCZHJZH
  is '划出帐户及帐号';
comment on column ZXXT_ZXHBJL.HBJE
  is '划拨金额';
comment on column ZXXT_ZXHBJL.HRZHJZH
  is '划入帐户及帐号';
comment on column ZXXT_ZXHBJL.HBRQ
  is '划拨日期';
comment on column ZXXT_ZXHBJL.HRZHSYR
  is '划入帐号所有人';
comment on column ZXXT_ZXHBJL.BZ
  is '备注';

prompt
prompt Creating table ZXXT_ZXHJ
prompt ========================
prompt
create table ZXXT_ZXHJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(10),
  DJRQ        DATE,
  LXHJ        VARCHAR2(250),
  LXQX        VARCHAR2(250),
  DCXYRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXHJ
  is '执行和解';
comment on column ZXXT_ZXHJ.FYBM
  is '法院编码';
comment on column ZXXT_ZXHJ.XH
  is '序号';
comment on column ZXXT_ZXHJ.BH
  is '编号';
comment on column ZXXT_ZXHJ.KPLB
  is '卡片类别';
comment on column ZXXT_ZXHJ.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXHJ.DJR
  is '登记人';
comment on column ZXXT_ZXHJ.DJRQ
  is '登记日期';
comment on column ZXXT_ZXHJ.LXHJ
  is '履行和解';
comment on column ZXXT_ZXHJ.LXQX
  is '履行期限';
comment on column ZXXT_ZXHJ.DCXYRQ
  is '达成协议日期';

prompt
prompt Creating table ZXXT_ZXJCJL
prompt ==========================
prompt
create table ZXXT_ZXJCJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  BJCR        VARCHAR2(250),
  JCYY        VARCHAR2(250),
  JCDD        VARCHAR2(250),
  KSSJ        DATE,
  JSSJ        DATE,
  BZ          BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXJCJL
  is '执行拘传记录';
comment on column ZXXT_ZXJCJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXJCJL.XH
  is '序号';
comment on column ZXXT_ZXJCJL.BH
  is '编号';
comment on column ZXXT_ZXJCJL.BJCR
  is '被拘传人';
comment on column ZXXT_ZXJCJL.JCYY
  is '拘传原因';
comment on column ZXXT_ZXJCJL.JCDD
  is '拘传地点';
comment on column ZXXT_ZXJCJL.KSSJ
  is '开始时间';
comment on column ZXXT_ZXJCJL.JSSJ
  is '结束时间';
comment on column ZXXT_ZXJCJL.BZ
  is '备注';

prompt
prompt Creating table ZXXT_ZXJZXCCDCKZWJYSSPB
prompt ======================================
prompt
create table ZXXT_ZXJZXCCDCKZWJYSSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(100),
  BH          NUMBER,
  KPLB        NUMBER,
  DJR         VARCHAR2(40),
  DJRBS       NUMBER,
  DJRQ        DATE,
  FZXYR       VARCHAR2(250),
  YSRQ        DATE,
  SYDW        VARCHAR2(250),
  YSYY        VARCHAR2(250),
  CLJG        VARCHAR2(250),
  DKKSSJTKKS  DATE,
  DKJSSJ      DATE,
  ZXYJ        VARCHAR2(250),
  KZCCQK      BLOB,
  KZCCCQK     VARCHAR2(250),
  LASJ        DATE,
  ZXBD        NUMBER,
  DKKSSJKS    DATE,
  DKJSSJJS    DATE,
  ZXYJZXYJ    VARCHAR2(250),
  AJFL        VARCHAR2(250),
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXJZXCCDCKZWJYSSPB
  is '执行局专项财产调查、控制完结移送审批表';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.FYBM
  is '法院编码';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.XH
  is '序号';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.BH
  is '编号';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.KPLB
  is '卡片类别';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DJR
  is '登记人';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DJRQ
  is '登记日期';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.FZXYR
  is '犯罪嫌疑人';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YSRQ
  is '移送日期';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.SYDW
  is '受移单位';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YSYY
  is '移送原因';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.CLJG
  is '处理结果';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DKKSSJTKKS
  is '调控开始时间tkks';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DKJSSJ
  is '调控结束时间';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZXYJ
  is '执行依据';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.KZCCQK
  is '控制财产情况(包括保全)';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.KZCCCQK
  is '控制财产瑕疵情况';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.LASJ
  is '立案时间';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZXBD
  is '执行标的';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DKKSSJKS
  is '调控开始时间ks';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DKJSSJJS
  is '调控结束时间js';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZXYJZXYJ
  is '执行依据zxyj';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.AJFL
  is '案件分类';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.CCPZ
  is '处长批准';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.JCPZ
  is '局长批准';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YCPZ
  is '院长批准';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_ZXKWGLJL
prompt ============================
prompt
create table ZXXT_ZXKWGLJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  LX          VARCHAR2(100),
  KWSYRJSR    VARCHAR2(100),
  JE          NUMBER,
  JFZHJZH     VARCHAR2(100),
  WP          VARCHAR2(250),
  RQ          DATE,
  BZ          VARCHAR2(240)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXKWGLJL
  is '执行款物管理记录';
comment on column ZXXT_ZXKWGLJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXKWGLJL.XH
  is '序号';
comment on column ZXXT_ZXKWGLJL.BH
  is '编号';
comment on column ZXXT_ZXKWGLJL.LX
  is '类型';
comment on column ZXXT_ZXKWGLJL.KWSYRJSR
  is '款物所有人/接受人';
comment on column ZXXT_ZXKWGLJL.JE
  is '金额(元)';
comment on column ZXXT_ZXKWGLJL.JFZHJZH
  is '交付帐户及帐号';
comment on column ZXXT_ZXKWGLJL.WP
  is '物  品';
comment on column ZXXT_ZXKWGLJL.RQ
  is '日期';
comment on column ZXXT_ZXKWGLJL.BZ
  is '备注';

prompt
prompt Creating table ZXXT_ZXKYJL
prompt ==========================
prompt
create table ZXXT_ZXKYJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KYLX        VARCHAR2(250),
  TQFS        VARCHAR2(250),
  CCSYQR      VARCHAR2(250),
  KYWQD       VARCHAR2(250),
  NZXBDE      NUMBER,
  KYDD        VARCHAR2(250),
  KYSXRQ      DATE,
  KYJMRQ      DATE,
  BGRBS       NUMBER,
  BGR         VARCHAR2(40),
  BGDD        VARCHAR2(250),
  BZ          BLOB,
  BFJKYY      VARCHAR2(250),
  BFJKRQ      DATE,
  BFJKWP      VARCHAR2(250),
  SYKYW       VARCHAR2(250),
  BFKYBZ      BLOB,
  XKYY        VARCHAR2(250),
  CDXKRQ      DATE,
  XKJMRQ      DATE,
  XKBZ        BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXKYJL
  is '执行扣押记录';
comment on column ZXXT_ZXKYJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXKYJL.XH
  is '序号';
comment on column ZXXT_ZXKYJL.BH
  is '编号';
comment on column ZXXT_ZXKYJL.KYLX
  is '扣押类型';
comment on column ZXXT_ZXKYJL.TQFS
  is '提请方式';
comment on column ZXXT_ZXKYJL.CCSYQR
  is '财产所有权人';
comment on column ZXXT_ZXKYJL.KYWQD
  is '扣押物清单';
comment on column ZXXT_ZXKYJL.NZXBDE
  is '拟执行标的额';
comment on column ZXXT_ZXKYJL.KYDD
  is '扣押地点';
comment on column ZXXT_ZXKYJL.KYSXRQ
  is '扣押生效日期';
comment on column ZXXT_ZXKYJL.KYJMRQ
  is '扣押届满日期';
comment on column ZXXT_ZXKYJL.BGRBS
  is '保管人标识';
comment on column ZXXT_ZXKYJL.BGR
  is '保管人';
comment on column ZXXT_ZXKYJL.BGDD
  is '保管地点';
comment on column ZXXT_ZXKYJL.BZ
  is '备注';
comment on column ZXXT_ZXKYJL.BFJKYY
  is '部分解扣原因';
comment on column ZXXT_ZXKYJL.BFJKRQ
  is '部分解扣日期';
comment on column ZXXT_ZXKYJL.BFJKWP
  is '部分解扣物品';
comment on column ZXXT_ZXKYJL.SYKYW
  is '剩余扣押物';
comment on column ZXXT_ZXKYJL.BFKYBZ
  is '部分扣押备注';
comment on column ZXXT_ZXKYJL.XKYY
  is '续扣原因';
comment on column ZXXT_ZXKYJL.CDXKRQ
  is '裁定续扣日期';
comment on column ZXXT_ZXKYJL.XKJMRQ
  is '续扣届满日期';
comment on column ZXXT_ZXKYJL.XKBZ
  is '续扣备注';

prompt
prompt Creating table ZXXT_ZXPGJGJL
prompt ============================
prompt
create table ZXXT_ZXPGJGJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  CBRBS       NUMBER,
  CBR         VARCHAR2(40),
  KZCCSJ      VARCHAR2(100),
  LABD        NUMBER,
  CBRLXFS     VARCHAR2(100),
  PGKSSJ      DATE,
  PGJSSJ      DATE,
  DSRLXDH     VARCHAR2(250),
  CBRYJ       VARCHAR2(250),
  SQRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXPGJGJL
  is '执行评估结果记录';
comment on column ZXXT_ZXPGJGJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXPGJGJL.XH
  is '序号';
comment on column ZXXT_ZXPGJGJL.BH
  is '编号';
comment on column ZXXT_ZXPGJGJL.CBRBS
  is '承办人标识';
comment on column ZXXT_ZXPGJGJL.CBR
  is '承办人';
comment on column ZXXT_ZXPGJGJL.KZCCSJ
  is '控制财产时间';
comment on column ZXXT_ZXPGJGJL.LABD
  is '立案标的';
comment on column ZXXT_ZXPGJGJL.CBRLXFS
  is '承办人联系方式';
comment on column ZXXT_ZXPGJGJL.PGKSSJ
  is '评估开始时间';
comment on column ZXXT_ZXPGJGJL.PGJSSJ
  is '评估结束时间';
comment on column ZXXT_ZXPGJGJL.DSRLXDH
  is '当事人联系电话';
comment on column ZXXT_ZXPGJGJL.CBRYJ
  is '承办人意见';
comment on column ZXXT_ZXPGJGJL.SQRQ
  is '申请日期';

prompt
prompt Creating table ZXXT_ZXPMCJKYFQSPB
prompt =================================
prompt
create table ZXXT_ZXPMCJKYFQSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQR         VARCHAR2(250),
  BZXR        VARCHAR2(250),
  CCMC        VARCHAR2(250),
  PMJG        VARCHAR2(250),
  CJJG        NUMBER,
  YFPMK       NUMBER,
  PMJSRQ      DATE,
  CCXX        BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXPMCJKYFQSPB
  is '执行拍卖成交款已付清审批表';
comment on column ZXXT_ZXPMCJKYFQSPB.FYBM
  is '法院编码';
comment on column ZXXT_ZXPMCJKYFQSPB.XH
  is '序号';
comment on column ZXXT_ZXPMCJKYFQSPB.BH
  is '编号';
comment on column ZXXT_ZXPMCJKYFQSPB.SQR
  is '申请人';
comment on column ZXXT_ZXPMCJKYFQSPB.BZXR
  is '被执行人';
comment on column ZXXT_ZXPMCJKYFQSPB.CCMC
  is '财产名称';
comment on column ZXXT_ZXPMCJKYFQSPB.PMJG
  is '拍卖结果';
comment on column ZXXT_ZXPMCJKYFQSPB.CJJG
  is '成交价格';
comment on column ZXXT_ZXPMCJKYFQSPB.YFPMK
  is '应付拍卖款';
comment on column ZXXT_ZXPMCJKYFQSPB.PMJSRQ
  is '拍卖结束日期';
comment on column ZXXT_ZXPMCJKYFQSPB.CCXX
  is '财产详细';
comment on column ZXXT_ZXPMCJKYFQSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_ZXPMCJKYFQSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_ZXPMCJKYFQSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_ZXPMCJKYFQSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_ZXPMCJKYFQSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_ZXPMCJKYFQSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_ZXPMCJKYFQSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_ZXPMCJKYFQSPB.CCPZ
  is '处长批准';
comment on column ZXXT_ZXPMCJKYFQSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_ZXPMCJKYFQSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_ZXPMCJKYFQSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_ZXPMCJKYFQSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_ZXPMCJKYFQSPB.JCPZ
  is '局长批准';
comment on column ZXXT_ZXPMCJKYFQSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_ZXPMCJKYFQSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_ZXPMCJKYFQSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_ZXPMCJKYFQSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_ZXPMCJKYFQSPB.YCPZ
  is '院长批准';
comment on column ZXXT_ZXPMCJKYFQSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_ZXPMCJKYFQSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_ZXQDZXCXSPB
prompt ===============================
prompt
create table ZXXT_ZXQDZXCXSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  WDBH        VARCHAR2(100),
  AJBH        NUMBER,
  SQRQ        DATE,
  SCRBS       NUMBER,
  SCR         VARCHAR2(30),
  YBLQK       BLOB,
  XXBLDSWJLY  BLOB,
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCSFPZ      NUMBER,
  ZCSPYJ      VARCHAR2(20),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCSFPZ      NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXQDZXCXSPB
  is '重新启动执行程序审批表';
comment on column ZXXT_ZXQDZXCXSPB.FYBM
  is '法院编码';
comment on column ZXXT_ZXQDZXCXSPB.XH
  is '序号';
comment on column ZXXT_ZXQDZXCXSPB.WDBH
  is '文档编号';
comment on column ZXXT_ZXQDZXCXSPB.AJBH
  is '案件编号';
comment on column ZXXT_ZXQDZXCXSPB.SQRQ
  is '申请日期';
comment on column ZXXT_ZXQDZXCXSPB.SCRBS
  is '审查人标识';
comment on column ZXXT_ZXQDZXCXSPB.SCR
  is '审查人';
comment on column ZXXT_ZXQDZXCXSPB.YBLQK
  is '原办理情况';
comment on column ZXXT_ZXQDZXCXSPB.XXBLDSWJLY
  is '现需办理的事务及理由';
comment on column ZXXT_ZXQDZXCXSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_ZXQDZXCXSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_ZXQDZXCXSPB.ZCSFPZ
  is '组长是否批准';
comment on column ZXXT_ZXQDZXCXSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_ZXQDZXCXSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_ZXQDZXCXSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_ZXQDZXCXSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_ZXQDZXCXSPB.CCSFPZ
  is '处长是否批准';
comment on column ZXXT_ZXQDZXCXSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_ZXQDZXCXSPB.CCSPRQ
  is '处长审批日期';

prompt
prompt Creating table ZXXT_ZXQTGZJL
prompt ============================
prompt
create table ZXXT_ZXQTGZJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  GZRQ        DATE,
  GZJL        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXQTGZJL
  is '执行其他工作记录';
comment on column ZXXT_ZXQTGZJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXQTGZJL.XH
  is '序号';
comment on column ZXXT_ZXQTGZJL.BH
  is '编号';
comment on column ZXXT_ZXQTGZJL.GZRQ
  is '工作日期';
comment on column ZXXT_ZXQTGZJL.GZJL
  is '工作记录';

prompt
prompt Creating table ZXXT_ZXQZGLJL
prompt ============================
prompt
create table ZXXT_ZXQZGLJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(10),
  DJRQ        DATE,
  BZXRBZXR    VARCHAR2(250),
  BGLCC       VARCHAR2(250),
  GLR         VARCHAR2(250),
  YY          VARCHAR2(250),
  KSRQ        DATE,
  BZXR        BLOB,
  RQ          DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXQZGLJL
  is '执行强制管理记录';
comment on column ZXXT_ZXQZGLJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXQZGLJL.XH
  is '序号';
comment on column ZXXT_ZXQZGLJL.BH
  is '编号';
comment on column ZXXT_ZXQZGLJL.KPLB
  is '卡片类别';
comment on column ZXXT_ZXQZGLJL.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXQZGLJL.DJR
  is '登记人';
comment on column ZXXT_ZXQZGLJL.DJRQ
  is '登记日期';
comment on column ZXXT_ZXQZGLJL.BZXRBZXR
  is '被执行人bzxr';
comment on column ZXXT_ZXQZGLJL.BGLCC
  is '被管理财产';
comment on column ZXXT_ZXQZGLJL.GLR
  is '管理人';
comment on column ZXXT_ZXQZGLJL.YY
  is '原因';
comment on column ZXXT_ZXQZGLJL.KSRQ
  is '开始日期';
comment on column ZXXT_ZXQZGLJL.BZXR
  is '被执行人';
comment on column ZXXT_ZXQZGLJL.RQ
  is '日期';

prompt
prompt Creating table ZXXT_ZXQZQCTCJL
prompt ==============================
prompt
create table ZXXT_ZXQZQCTCJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(40),
  DJRQ        DATE,
  BZXR        VARCHAR2(250),
  QCTCRQ      DATE,
  ZXJG        VARCHAR2(250),
  CCCLQK      VARCHAR2(250),
  BZ          VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXQZQCTCJL
  is '执行强制迁出退出记录';
comment on column ZXXT_ZXQZQCTCJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXQZQCTCJL.XH
  is '序号';
comment on column ZXXT_ZXQZQCTCJL.BH
  is '编号';
comment on column ZXXT_ZXQZQCTCJL.KPLB
  is '卡片类别';
comment on column ZXXT_ZXQZQCTCJL.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXQZQCTCJL.DJR
  is '登记人';
comment on column ZXXT_ZXQZQCTCJL.DJRQ
  is '登记日期';
comment on column ZXXT_ZXQZQCTCJL.BZXR
  is '被执行人';
comment on column ZXXT_ZXQZQCTCJL.QCTCRQ
  is '迁出退出日期';
comment on column ZXXT_ZXQZQCTCJL.ZXJG
  is '执行结果';
comment on column ZXXT_ZXQZQCTCJL.CCCLQK
  is '财产处理情况';
comment on column ZXXT_ZXQZQCTCJL.BZ
  is '备注';

prompt
prompt Creating table ZXXT_ZXSCJL
prompt ==========================
prompt
create table ZXXT_ZXSCJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(10),
  DJRQ        DATE,
  BSCR        VARCHAR2(250),
  CJRBS       NUMBER,
  CJR         VARCHAR2(160),
  SCJG        VARCHAR2(240),
  BZ          VARCHAR2(240),
  SCRQ        DATE,
  DD          VARCHAR2(160)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXSCJL
  is '执行搜查记录';
comment on column ZXXT_ZXSCJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXSCJL.XH
  is '序号';
comment on column ZXXT_ZXSCJL.BH
  is '编号';
comment on column ZXXT_ZXSCJL.KPLB
  is '卡片类别';
comment on column ZXXT_ZXSCJL.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXSCJL.DJR
  is '登记人';
comment on column ZXXT_ZXSCJL.DJRQ
  is '登记日期';
comment on column ZXXT_ZXSCJL.BSCR
  is '被搜查人';
comment on column ZXXT_ZXSCJL.CJRBS
  is '参加人标识';
comment on column ZXXT_ZXSCJL.CJR
  is '参加人';
comment on column ZXXT_ZXSCJL.SCJG
  is '搜查结果';
comment on column ZXXT_ZXSCJL.BZ
  is '备注';
comment on column ZXXT_ZXSCJL.SCRQ
  is '搜查日期';
comment on column ZXXT_ZXSCJL.DD
  is '地点';

prompt
prompt Creating table ZXXT_ZXSDJL
prompt ==========================
prompt
create table ZXXT_ZXSDJL
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          VARCHAR2(100),
  BH          NUMBER,
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(50),
  DJRQ        DATE,
  FLWSMC      VARCHAR2(250),
  NRZY        VARCHAR2(250),
  SDSJ        DATE,
  SDFS        VARCHAR2(250),
  SSDR        VARCHAR2(250),
  SDQK        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXSDJL
  is '执行送达记录';
comment on column ZXXT_ZXSDJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXSDJL.XH
  is '序号';
comment on column ZXXT_ZXSDJL.BH
  is '编号';
comment on column ZXXT_ZXSDJL.KPLB
  is '卡片类别';
comment on column ZXXT_ZXSDJL.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXSDJL.DJR
  is '登记人';
comment on column ZXXT_ZXSDJL.DJRQ
  is '登记日期';
comment on column ZXXT_ZXSDJL.FLWSMC
  is '法律文书名称';
comment on column ZXXT_ZXSDJL.NRZY
  is '内容摘要';
comment on column ZXXT_ZXSDJL.SDSJ
  is '送达时间';
comment on column ZXXT_ZXSDJL.SDFS
  is '送达方式';
comment on column ZXXT_ZXSDJL.SSDR
  is '受送达人';
comment on column ZXXT_ZXSDJL.SDQK
  is '送达情况';

prompt
prompt Creating table ZXXT_ZXSSZSCZXYYSXHYYJ
prompt =====================================
prompt
create table ZXXT_ZXSSZSCZXYYSXHYYJ
(
  ID                  VARCHAR2(36) not null,
  REG_TIME            DATE not null,
  UPDATE_TIME         DATE not null,
  DEPT_CODE           VARCHAR2(20) not null,
  APP_CODE            VARCHAR2(20) not null,
  FYBM                NUMBER,
  XH                  NUMBER,
  BH                  VARCHAR2(100),
  SQR                 VARCHAR2(250),
  BZXR                VARCHAR2(250),
  ZXSSZSCZXYYSXHYYJSJ DATE,
  DD                  VARCHAR2(250),
  CJRBS               NUMBER,
  CJR                 VARCHAR2(40),
  CBRBS               NUMBER,
  CBR                 VARCHAR2(40),
  JLRBS               NUMBER,
  JLR                 VARCHAR2(40),
  AQQK                BLOB,
  CBRYJ               BLOB,
  HYQK                BLOB,
  YJYJ                BLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXSSZSCZXYYSXHYYJ
  is '执行实施组审查执行异议事项合议研究';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.FYBM
  is '法院编码';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.XH
  is '序号';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.BH
  is '编号';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.SQR
  is '申请人';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.BZXR
  is '被执行人';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.ZXSSZSCZXYYSXHYYJSJ
  is '执行实施组审查执行异议事项合议研究时间';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.DD
  is '地点';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.CJRBS
  is '参加人标识';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.CJR
  is '参加人';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.CBRBS
  is '承办人标识';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.CBR
  is '承办人';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.JLRBS
  is '记录人标识';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.JLR
  is '记录人';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.AQQK
  is '案情情况';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.CBRYJ
  is '承办人意见';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.HYQK
  is '合议情况';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.YJYJ
  is '研究意见';

prompt
prompt Creating table ZXXT_ZXYJSPB
prompt ===========================
prompt
create table ZXXT_ZXYJSPB
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  SQZXR       VARCHAR2(100),
  BZXR        VARCHAR2(100),
  YYR         VARCHAR2(100),
  SDYYSQSJ    DATE,
  CBRYJ       BLOB,
  BZ          VARCHAR2(250),
  ZCSPRBS     NUMBER,
  ZCSPR       VARCHAR2(20),
  ZCPZ        NUMBER,
  ZCSPYJ      VARCHAR2(200),
  ZCSPRQ      DATE,
  CCSPRBS     NUMBER,
  CCSPR       VARCHAR2(20),
  CCPZ        NUMBER,
  CCSPYJ      VARCHAR2(200),
  CCSPRQ      DATE,
  JCSPRBS     NUMBER,
  JCSPR       VARCHAR2(20),
  JCPZ        NUMBER,
  JCSPYJ      VARCHAR2(200),
  JCSPRQ      DATE,
  YCSPRBS     NUMBER,
  YCSPR       VARCHAR2(20),
  YCPZ        NUMBER,
  YCSPYJ      VARCHAR2(200),
  YCSPRQ      DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXYJSPB
  is '执行意见审批表';
comment on column ZXXT_ZXYJSPB.FYBM
  is '法院编码';
comment on column ZXXT_ZXYJSPB.XH
  is '序号';
comment on column ZXXT_ZXYJSPB.BH
  is '编号';
comment on column ZXXT_ZXYJSPB.SQZXR
  is '申请执行人';
comment on column ZXXT_ZXYJSPB.BZXR
  is '被执行人';
comment on column ZXXT_ZXYJSPB.YYR
  is '异议人';
comment on column ZXXT_ZXYJSPB.SDYYSQSJ
  is '收到异议申请时间';
comment on column ZXXT_ZXYJSPB.CBRYJ
  is '承办人意见';
comment on column ZXXT_ZXYJSPB.BZ
  is '备注';
comment on column ZXXT_ZXYJSPB.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_ZXYJSPB.ZCSPR
  is '组长审批人';
comment on column ZXXT_ZXYJSPB.ZCPZ
  is '组长批准';
comment on column ZXXT_ZXYJSPB.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_ZXYJSPB.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_ZXYJSPB.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_ZXYJSPB.CCSPR
  is '处长审批人';
comment on column ZXXT_ZXYJSPB.CCPZ
  is '处长批准';
comment on column ZXXT_ZXYJSPB.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_ZXYJSPB.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_ZXYJSPB.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_ZXYJSPB.JCSPR
  is '局长审批人';
comment on column ZXXT_ZXYJSPB.JCPZ
  is '局长批准';
comment on column ZXXT_ZXYJSPB.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_ZXYJSPB.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_ZXYJSPB.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_ZXYJSPB.YCSPR
  is '院长审批人';
comment on column ZXXT_ZXYJSPB.YCPZ
  is '院长批准';
comment on column ZXXT_ZXYJSPB.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_ZXYJSPB.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_ZXZJ
prompt ========================
prompt
create table ZXXT_ZXZJ
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  KPLB        NUMBER,
  DJRBS       NUMBER,
  DJR         VARCHAR2(250),
  DJRQ        DATE,
  ZJYY        VARCHAR2(250),
  CDRQ        DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXZJ
  is '执行证据';
comment on column ZXXT_ZXZJ.FYBM
  is '法院编码';
comment on column ZXXT_ZXZJ.XH
  is '序号';
comment on column ZXXT_ZXZJ.BH
  is '编号';
comment on column ZXXT_ZXZJ.KPLB
  is '卡片类别';
comment on column ZXXT_ZXZJ.DJRBS
  is '登记人标识';
comment on column ZXXT_ZXZJ.DJR
  is '登记人';
comment on column ZXXT_ZXZJ.DJRQ
  is '登记日期';
comment on column ZXXT_ZXZJ.ZJYY
  is '终结原因';
comment on column ZXXT_ZXZJ.CDRQ
  is '裁定日期';

prompt
prompt Creating table ZXXT_ZXZKJL
prompt ==========================
prompt
create table ZXXT_ZXZKJL
(
  ID                VARCHAR2(36) not null,
  REG_TIME          DATE not null,
  UPDATE_TIME       DATE not null,
  DEPT_CODE         VARCHAR2(20) not null,
  APP_CODE          VARCHAR2(20) not null,
  FYBM              NUMBER,
  XH                NUMBER,
  BH                VARCHAR2(100),
  ZKZL              VARCHAR2(40),
  ZKRQ              DATE,
  ZKDX              VARCHAR2(100),
  ZKJEZKJE          NUMBER,
  SQR               VARCHAR2(10),
  SQRQ              DATE,
  ZFFS              VARCHAR2(30),
  YZKAKJE           NUMBER,
  SKRZH             VARCHAR2(50),
  SQRSFWBYAJBZXR    NUMBER,
  SQRYQTFYXZKHHBQQK NUMBER,
  BZXRJQZXFPGF      NUMBER,
  CBRYJ             VARCHAR2(200),
  SFCL              NUMBER,
  ZKJE              NUMBER,
  QRR               VARCHAR2(30),
  QRRQ              DATE,
  SFAWR             NUMBER,
  ZKLY              VARCHAR2(100),
  ZCSPRBSZZSP       NUMBER,
  SKZE              NUMBER,
  SKBS              NUMBER,
  SKSBRQ            DATE,
  AKYQTS            NUMBER,
  ZCSPRBS           NUMBER,
  ZCSPR             VARCHAR2(20),
  ZCPZ              NUMBER,
  ZCSPYJ            VARCHAR2(200),
  ZCSPRQ            DATE,
  CCSPRBS           NUMBER,
  CCSPR             VARCHAR2(20),
  CCPZ              NUMBER,
  CCSPYJ            VARCHAR2(200),
  CCSPRQ            DATE,
  JCSPRBS           NUMBER,
  JCSPR             VARCHAR2(20),
  JCPZ              NUMBER,
  JCSPYJ            VARCHAR2(200),
  JCSPRQ            DATE,
  YCSPRBS           NUMBER,
  YCSPR             VARCHAR2(20),
  YCPZ              NUMBER,
  YCSPYJ            VARCHAR2(200),
  YCSPRQ            DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXZKJL
  is '执行支款记录';
comment on column ZXXT_ZXZKJL.FYBM
  is '法院编码';
comment on column ZXXT_ZXZKJL.XH
  is '序号';
comment on column ZXXT_ZXZKJL.BH
  is '编号';
comment on column ZXXT_ZXZKJL.ZKZL
  is '支款种类';
comment on column ZXXT_ZXZKJL.ZKRQ
  is '支款日期';
comment on column ZXXT_ZXZKJL.ZKDX
  is '支款对象';
comment on column ZXXT_ZXZKJL.ZKJEZKJE
  is '支款金额zkje';
comment on column ZXXT_ZXZKJL.SQR
  is '申请人';
comment on column ZXXT_ZXZKJL.SQRQ
  is '申请日期';
comment on column ZXXT_ZXZKJL.ZFFS
  is '支付方式';
comment on column ZXXT_ZXZKJL.YZKAKJE
  is '已支款案款金额';
comment on column ZXXT_ZXZKJL.SKRZH
  is '收款人帐号';
comment on column ZXXT_ZXZKJL.SQRSFWBYAJBZXR
  is '申请人是否为本院案件被执行人';
comment on column ZXXT_ZXZKJL.SQRYQTFYXZKHHBQQK
  is '申请人有其他法院协助扣划或保全情况';
comment on column ZXXT_ZXZKJL.BZXRJQZXFPGF
  is '被执行人结清执行费、评估费';
comment on column ZXXT_ZXZKJL.CBRYJ
  is '承办人意见';
comment on column ZXXT_ZXZKJL.SFCL
  is '是否处理';
comment on column ZXXT_ZXZKJL.ZKJE
  is '支款金额';
comment on column ZXXT_ZXZKJL.QRR
  is '确认人';
comment on column ZXXT_ZXZKJL.QRRQ
  is '确认日期';
comment on column ZXXT_ZXZKJL.SFAWR
  is '是否案外人';
comment on column ZXXT_ZXZKJL.ZKLY
  is '支款理由';
comment on column ZXXT_ZXZKJL.ZCSPRBSZZSP
  is '组长审批人标识zzsp';
comment on column ZXXT_ZXZKJL.SKZE
  is '收款总额';
comment on column ZXXT_ZXZKJL.SKBS
  is '收款标识';
comment on column ZXXT_ZXZKJL.SKSBRQ
  is '收款上班日期';
comment on column ZXXT_ZXZKJL.AKYQTS
  is '案款延期天数';
comment on column ZXXT_ZXZKJL.ZCSPRBS
  is '组长审批人标识';
comment on column ZXXT_ZXZKJL.ZCSPR
  is '组长审批人';
comment on column ZXXT_ZXZKJL.ZCPZ
  is '组长批准';
comment on column ZXXT_ZXZKJL.ZCSPYJ
  is '组长审批意见';
comment on column ZXXT_ZXZKJL.ZCSPRQ
  is '组长审批日期';
comment on column ZXXT_ZXZKJL.CCSPRBS
  is '处长审批人标识';
comment on column ZXXT_ZXZKJL.CCSPR
  is '处长审批人';
comment on column ZXXT_ZXZKJL.CCPZ
  is '处长批准';
comment on column ZXXT_ZXZKJL.CCSPYJ
  is '处长审批意见';
comment on column ZXXT_ZXZKJL.CCSPRQ
  is '处长审批日期';
comment on column ZXXT_ZXZKJL.JCSPRBS
  is '局长审批人标识';
comment on column ZXXT_ZXZKJL.JCSPR
  is '局长审批人';
comment on column ZXXT_ZXZKJL.JCPZ
  is '局长批准';
comment on column ZXXT_ZXZKJL.JCSPYJ
  is '局长审批意见';
comment on column ZXXT_ZXZKJL.JCSPRQ
  is '局长审批日期';
comment on column ZXXT_ZXZKJL.YCSPRBS
  is '院长审批人标识';
comment on column ZXXT_ZXZKJL.YCSPR
  is '院长审批人';
comment on column ZXXT_ZXZKJL.YCPZ
  is '院长批准';
comment on column ZXXT_ZXZKJL.YCSPYJ
  is '院长审批意见';
comment on column ZXXT_ZXZKJL.YCSPRQ
  is '院长审批日期';

prompt
prompt Creating table ZXXT_ZXZXCCDCKZQKBG
prompt ==================================
prompt
create table ZXXT_ZXZXCCDCKZQKBG
(
  ID          VARCHAR2(36) not null,
  REG_TIME    DATE not null,
  UPDATE_TIME DATE not null,
  DEPT_CODE   VARCHAR2(20) not null,
  APP_CODE    VARCHAR2(20) not null,
  FYBM        NUMBER,
  XH          NUMBER,
  BH          VARCHAR2(100),
  ZXYJ        VARCHAR2(250),
  LASJ        DATE,
  SQZXR       VARCHAR2(250),
  BZXR        VARCHAR2(250),
  ZXCKRYBS    NUMBER,
  ZXCKRY      VARCHAR2(250),
  SASJ        DATE,
  WCSJ        DATE,
  BZ          BLOB,
  ZXCCDCKZQK  VARCHAR2(250),
  QZZXCSDCQQK VARCHAR2(250),
  CLJY        VARCHAR2(250)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZXXT_ZXZXCCDCKZQKBG
  is '执行专项财产调查控制情况报告';
comment on column ZXXT_ZXZXCCDCKZQKBG.FYBM
  is '法院编码';
comment on column ZXXT_ZXZXCCDCKZQKBG.XH
  is '序号';
comment on column ZXXT_ZXZXCCDCKZQKBG.BH
  is '编号';
comment on column ZXXT_ZXZXCCDCKZQKBG.ZXYJ
  is '执行依据';
comment on column ZXXT_ZXZXCCDCKZQKBG.LASJ
  is '立案时间';
comment on column ZXXT_ZXZXCCDCKZQKBG.SQZXR
  is '申请执行人';
comment on column ZXXT_ZXZXCCDCKZQKBG.BZXR
  is '被执行人';
comment on column ZXXT_ZXZXCCDCKZQKBG.ZXCKRYBS
  is '专项查控人员标识';
comment on column ZXXT_ZXZXCCDCKZQKBG.ZXCKRY
  is '专项查控人员';
comment on column ZXXT_ZXZXCCDCKZQKBG.SASJ
  is '收案时间';
comment on column ZXXT_ZXZXCCDCKZQKBG.WCSJ
  is '完成时间';
comment on column ZXXT_ZXZXCCDCKZQKBG.BZ
  is '备注';
comment on column ZXXT_ZXZXCCDCKZQKBG.ZXCCDCKZQK
  is '专项财产调查控制情况';
comment on column ZXXT_ZXZXCCDCKZQKBG.QZZXCSDCQQK
  is '强制执行措施的采取情况';
comment on column ZXXT_ZXZXCCDCKZQKBG.CLJY
  is '处理建议';


spool off
