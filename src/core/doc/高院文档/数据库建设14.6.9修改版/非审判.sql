----------------------------------------------
-- Export file for user DBFSP               --
-- Created by lenovo on 2014/7/24, 11:45:55 --
----------------------------------------------

spool ������.log

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
  is '����������־';
comment on column AJLCXT_AJKZRZ.FYBM
  is '��Ժ����';
comment on column AJLCXT_AJKZRZ.BH
  is '���';
comment on column AJLCXT_AJKZRZ.AJBS
  is '������ʶ';
comment on column AJLCXT_AJKZRZ.PZBH
  is '���ñ��';
comment on column AJLCXT_AJKZRZ.LCKZLB
  is '���̿������';
comment on column AJLCXT_AJKZRZ.AH
  is '����';
comment on column AJLCXT_AJKZRZ.JCRQ
  is '�������';
comment on column AJLCXT_AJKZRZ.TSTS
  is '��ʾ����';
comment on column AJLCXT_AJKZRZ.TSNR
  is '��ʾ����';
comment on column AJLCXT_AJKZRZ.TSRBS
  is '��ʾ�˱�ʶ';
comment on column AJLCXT_AJKZRZ.TSR
  is '��ʾ��';
comment on column AJLCXT_AJKZRZ.LDDBRBS
  is '�쵼�����˱�ʶ';
comment on column AJLCXT_AJKZRZ.LDDBR
  is '�쵼������';
comment on column AJLCXT_AJKZRZ.LDDBYJ
  is '�쵼�������';
comment on column AJLCXT_AJKZRZ.LDDBRQ
  is '�쵼��������';
comment on column AJLCXT_AJKZRZ.HFRBS
  is '�ظ��˱�ʶ';
comment on column AJLCXT_AJKZRZ.HFR
  is '�ظ���';
comment on column AJLCXT_AJKZRZ.CBRHFRQ
  is '�а��˻ظ�����';
comment on column AJLCXT_AJKZRZ.CBRHFYJ
  is '�а��˻ظ����';

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
  is '��������������Ϣ';
comment on column AJLCXT_AJLCPZXX.FYBM
  is '��Ժ����';
comment on column AJLCXT_AJLCPZXX.LCBH
  is '���̱��';
comment on column AJLCXT_AJLCPZXX.TSFW
  is '��ʾ��Χ';
comment on column AJLCXT_AJLCPZXX.JCTJ
  is '�������';
comment on column AJLCXT_AJLCPZXX.TSTS
  is '��ʾ����';
comment on column AJLCXT_AJLCPZXX.ZRRBS
  is '�����˱�ʶ';
comment on column AJLCXT_AJLCPZXX.ZRR
  is '������';
comment on column AJLCXT_AJLCPZXX.SFPC
  is '�Ƿ��ų�';
comment on column AJLCXT_AJLCPZXX.CPWSMC
  is '������������';
comment on column AJLCXT_AJLCPZXX.SHJB
  is '��˼���';

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
  is '���������';
comment on column AJZLPCXT_AJCWB.FYBM
  is '��Ժ����';
comment on column AJZLPCXT_AJCWB.AJCWBS
  is '���������ʶ';
comment on column AJZLPCXT_AJCWB.ZZRBS
  is '�����˱�ʶ';
comment on column AJZLPCXT_AJCWB.ZZR
  is '������';
comment on column AJZLPCXT_AJCWB.NF
  is '���';
comment on column AJZLPCXT_AJCWB.CBBM
  is '�а첿��';
comment on column AJZLPCXT_AJCWB.PCDL
  is '�������';
comment on column AJZLPCXT_AJCWB.PCXL
  is '����С��';
comment on column AJZLPCXT_AJCWB.TJQJ
  is 'ͳ���ڼ�';
comment on column AJZLPCXT_AJCWB.KSRQ
  is '��ʼ����';
comment on column AJZLPCXT_AJCWB.JSRQ
  is '��������';
comment on column AJZLPCXT_AJCWB.FSRQ
  is '��������';
comment on column AJZLPCXT_AJCWB.QSRBS
  is 'ǩ���˱�ʶ';
comment on column AJZLPCXT_AJCWB.QSR
  is 'ǩ����';
comment on column AJZLPCXT_AJCWB.QSRQ
  is 'ǩ������';
comment on column AJZLPCXT_AJCWB.QSYJ
  is 'ǩ�����';
comment on column AJZLPCXT_AJCWB.FBRQ
  is '��������';

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
  is '����������ϸ��Ϣ';
comment on column AJZLPCXT_ZLPCMXXX.FYBM
  is '��Ժ����';
comment on column AJZLPCXT_ZLPCMXXX.ZLPCBS
  is '���������ʶ';
comment on column AJZLPCXT_ZLPCMXXX.XH
  is '���';
comment on column AJZLPCXT_ZLPCMXXX.SXH
  is '˳���';
comment on column AJZLPCXT_ZLPCMXXX.PCXM
  is '������Ŀ';
comment on column AJZLPCXT_ZLPCMXXX.BZF
  is '��׼��';
comment on column AJZLPCXT_ZLPCMXXX.SJDF
  is 'ʵ�ʵ÷�';
comment on column AJZLPCXT_ZLPCMXXX.PCRBS
  is '�����˱�ʶ';
comment on column AJZLPCXT_ZLPCMXXX.PCR
  is '������';
comment on column AJZLPCXT_ZLPCMXXX.PCRQ
  is '��������';
comment on column AJZLPCXT_ZLPCMXXX.ZRRBS
  is '�����˱�ʶ';
comment on column AJZLPCXT_ZLPCMXXX.ZRR
  is '������';
comment on column AJZLPCXT_ZLPCMXXX.BZ
  is '��ע';
comment on column AJZLPCXT_ZLPCMXXX.ZRBM
  is '���β���';
comment on column AJZLPCXT_ZLPCMXXX.CWLX
  is '��������';

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
  is '��������ʵ��';
comment on column AJZLPCXT_ZLPCST.FYBM
  is '��Ժ����';
comment on column AJZLPCXT_ZLPCST.ZLPCBS
  is '���������ʶ';
comment on column AJZLPCXT_ZLPCST.XH
  is '���';
comment on column AJZLPCXT_ZLPCST.WJMC
  is '�ļ�����';
comment on column AJZLPCXT_ZLPCST.STWJM
  is 'ʵ���ļ���';

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
  is '��������������Ϣ';
comment on column AJZLPCXT_ZLPCZTXX.FYBM
  is '��Ժ����';
comment on column AJZLPCXT_ZLPCZTXX.ZLPCBS
  is '���������ʶ';
comment on column AJZLPCXT_ZLPCZTXX.AJBS
  is '������ʶ';
comment on column AJZLPCXT_ZLPCZTXX.AJLB
  is '�������';
comment on column AJZLPCXT_ZLPCZTXX.AH
  is '����';
comment on column AJZLPCXT_ZLPCZTXX.NH
  is '���';
comment on column AJZLPCXT_ZLPCZTXX.FYJC
  is '��Ժ���';
comment on column AJZLPCXT_ZLPCZTXX.AZ
  is '����';
comment on column AJZLPCXT_ZLPCZTXX.HS
  is '����';
comment on column AJZLPCXT_ZLPCZTXX.JAAY
  is '�᰸����';
comment on column AJZLPCXT_ZLPCZTXX.LARQ
  is '��������';
comment on column AJZLPCXT_ZLPCZTXX.JARQ
  is '�᰸����';
comment on column AJZLPCXT_ZLPCZTXX.CBRBS
  is '�а��˱�ʶ';
comment on column AJZLPCXT_ZLPCZTXX.CBR
  is '�а���';
comment on column AJZLPCXT_ZLPCZTXX.SJYBS
  is '���Ա��ʶ';
comment on column AJZLPCXT_ZLPCZTXX.SJY
  is '���Ա';
comment on column AJZLPCXT_ZLPCZTXX.LARBS
  is '�����˱�ʶ';
comment on column AJZLPCXT_ZLPCZTXX.LAR
  is '������';
comment on column AJZLPCXT_ZLPCZTXX.CBBM
  is '�а첿��';
comment on column AJZLPCXT_ZLPCZTXX.SXJSRQ
  is '���޽�������';
comment on column AJZLPCXT_ZLPCZTXX.JABS
  is '�᰸��ʶ';
comment on column AJZLPCXT_ZLPCZTXX.TQGDBZ
  is '����鵵��־';
comment on column AJZLPCXT_ZLPCZTXX.GDRQ
  is '�鵵����';
comment on column AJZLPCXT_ZLPCZTXX.SPCBS
  is '���г���ʶ';
comment on column AJZLPCXT_ZLPCZTXX.SPC
  is '���г�';
comment on column AJZLPCXT_ZLPCZTXX.DSR
  is '������';
comment on column AJZLPCXT_ZLPCZTXX.QTHYTCY
  is '��������ͥ��Ա';
comment on column AJZLPCXT_ZLPCZTXX.CQR
  is '��ȡ��';
comment on column AJZLPCXT_ZLPCZTXX.CQSJ
  is '��ȡʱ��';
comment on column AJZLPCXT_ZLPCZTXX.PCR1BS
  is '������1��ʶ';
comment on column AJZLPCXT_ZLPCZTXX.PCR1
  is '������1';
comment on column AJZLPCXT_ZLPCZTXX.PCR2BS
  is '������2��ʶ';
comment on column AJZLPCXT_ZLPCZTXX.PCR2
  is '������2';
comment on column AJZLPCXT_ZLPCZTXX.PCR3BS
  is '������3��ʶ';
comment on column AJZLPCXT_ZLPCZTXX.PCR3
  is '������3';
comment on column AJZLPCXT_ZLPCZTXX.PCDL
  is '�������';
comment on column AJZLPCXT_ZLPCZTXX.PCXL
  is '����С��';
comment on column AJZLPCXT_ZLPCZTXX.PCRQ
  is '��������';
comment on column AJZLPCXT_ZLPCZTXX.PCLY
  is '��������';
comment on column AJZLPCXT_ZLPCZTXX.PCNR
  is '��������';
comment on column AJZLPCXT_ZLPCZTXX.PCJG
  is '������';
comment on column AJZLPCXT_ZLPCZTXX.ZHDF
  is '���÷�';
comment on column AJZLPCXT_ZLPCZTXX.PCR1DF
  is '������1���';
comment on column AJZLPCXT_ZLPCZTXX.PCR2DF
  is '������2���';
comment on column AJZLPCXT_ZLPCZTXX.PCR3DF
  is '������3���';
comment on column AJZLPCXT_ZLPCZTXX.PCR1CWS
  is '������1������';
comment on column AJZLPCXT_ZLPCZTXX.PCR2CWS
  is '������2������';
comment on column AJZLPCXT_ZLPCZTXX.PCR3CWS
  is '������3������';
comment on column AJZLPCXT_ZLPCZTXX.PCLYS
  is '��������s';
comment on column AJZLPCXT_ZLPCZTXX.ZPRBS
  is '�����˱�ʶ';
comment on column AJZLPCXT_ZLPCZTXX.ZPR
  is '������';
comment on column AJZLPCXT_ZLPCZTXX.ZPRSPRQ
  is '��������������';
comment on column AJZLPCXT_ZLPCZTXX.ZPRYJ
  is '���������';
comment on column AJZLPCXT_ZLPCZTXX.ZPWSPRBS
  is '����ί�����˱�ʶ';
comment on column AJZLPCXT_ZLPCZTXX.ZPWSPR
  is '����ί������';
comment on column AJZLPCXT_ZLPCZTXX.ZPWSPRQ
  is '����ί��������';
comment on column AJZLPCXT_ZLPCZTXX.ZPWSPYJ
  is '����ί�������';
comment on column AJZLPCXT_ZLPCZTXX.SWHJD
  is '��ί�����';
comment on column AJZLPCXT_ZLPCZTXX.TBRQ
  is 'ͨ������';
comment on column AJZLPCXT_ZLPCZTXX.PCAJCWBBS
  is '���鰸��������ʶ';
comment on column AJZLPCXT_ZLPCZTXX.FSRQ
  is '��������';
comment on column AJZLPCXT_ZLPCZTXX.QSRBS
  is 'ǩ���˱�ʶ';
comment on column AJZLPCXT_ZLPCZTXX.QSR
  is 'ǩ����';
comment on column AJZLPCXT_ZLPCZTXX.QSRQ
  is 'ǩ������';
comment on column AJZLPCXT_ZLPCZTXX.FBRQ
  is '��������';
comment on column AJZLPCXT_ZLPCZTXX.SFSQ
  is '�Ƿ���ǩ';
comment on column AJZLPCXT_ZLPCZTXX.SYZRR
  is '����������';
comment on column AJZLPCXT_ZLPCZTXX.AJJCSS
  is '����������ʵ';
comment on column AJZLPCXT_ZLPCZTXX.ZDPCYY
  is '�ص�����ԭ��';
comment on column AJZLPCXT_ZLPCZTXX.ZDZYDWT
  is 'ֵ��ע�������';
comment on column AJZLPCXT_ZLPCZTXX.ZPXZYJ
  is '����С�����';
comment on column AJZLPCXT_ZLPCZTXX.GLAJBH
  is '�����������';
comment on column AJZLPCXT_ZLPCZTXX.TJQJ
  is 'ͳ���ڼ�';
comment on column AJZLPCXT_ZLPCZTXX.TJNF
  is 'ͳ�����';
comment on column AJZLPCXT_ZLPCZTXX.SZWSDZT
  is '����Ϊ����״̬';

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
  is '���������Ǽ���Ϣ';
comment on column CLGLXT_CLBYDJXX.FYBM
  is '��Ժ����';
comment on column CLGLXT_CLBYDJXX.BH
  is '���';
comment on column CLGLXT_CLBYDJXX.CLBS
  is '������ʶ';
comment on column CLGLXT_CLBYDJXX.CPH
  is '���ƺ�';
comment on column CLGLXT_CLBYDJXX.BYSJ
  is '����ʱ��';
comment on column CLGLXT_CLBYDJXX.BYRBS
  is '�����˱�ʶ';
comment on column CLGLXT_CLBYDJXX.BYR
  is '������';
comment on column CLGLXT_CLBYDJXX.BYFY
  is '��������';
comment on column CLGLXT_CLBYDJXX.BYGDSJ
  is '�������ʱ��';
comment on column CLGLXT_CLBYDJXX.BZ
  is '��ע';

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
  is '�����Ǽ���Ϣ';
comment on column CLGLXT_CLDJXX.FYBM
  is '��Ժ����';
comment on column CLGLXT_CLDJXX.CLBS
  is '������ʶ';
comment on column CLGLXT_CLDJXX.CPH
  is '���ƺ�';
comment on column CLGLXT_CLDJXX.SSDW
  is '������λ';
comment on column CLGLXT_CLDJXX.SYBM
  is 'ʹ�ò���';
comment on column CLGLXT_CLDJXX.CPLX
  is '��������';
comment on column CLGLXT_CLDJXX.BFSJ
  is '����ʱ��';
comment on column CLGLXT_CLDJXX.GRSJ
  is '����ʱ��';
comment on column CLGLXT_CLDJXX.CLLX
  is '��������';
comment on column CLGLXT_CLDJXX.FDJH
  is '��������';
comment on column CLGLXT_CLDJXX.DPH
  is '���̺�';
comment on column CLGLXT_CLDJXX.CK
  is '����';
comment on column CLGLXT_CLDJXX.BZ
  is '��ע';
comment on column CLGLXT_CLDJXX.SFJNCLGZFJF
  is '�Ƿ���ɳ������ø��ӷ�';
comment on column CLGLXT_CLDJXX.SSDQ
  is '��������';
comment on column CLGLXT_CLDJXX.BXJNQX
  is '���ս�������';
comment on column CLGLXT_CLDJXX.CPXH
  is '�����ͺ�';
comment on column CLGLXT_CLDJXX.GLYLF
  is '��·��·��';
comment on column CLGLXT_CLDJXX.NJSJ
  is '���ʱ��';
comment on column CLGLXT_CLDJXX.CLTPCLZB
  is '����ͼƬ-����ָ��';
comment on column CLGLXT_CLDJXX.CLTPJDJBQFPTZD
  is '����ͼƬ-���ƾ���������֪ͨ��';
comment on column CLGLXT_CLDJXX.CLTPJBQSYZ
  is '����ͼƬ-������ʹ��֤';
comment on column CLGLXT_CLDJXX.CLTPCLHGZ
  is '����ͼƬ-�����ϸ�֤';
comment on column CLGLXT_CLDJXX.CLTPXSFP
  is '����ͼƬ-���۷�Ʊ';
comment on column CLGLXT_CLDJXX.CLTPGZFJFJNPZ
  is '����ͼƬ-���ø��ӷѽ���ƾ֤';
comment on column CLGLXT_CLDJXX.CLTPXCZZ
  is '����ͼƬ-�г�ִ��';
comment on column CLGLXT_CLDJXX.CLTPCLZP
  is '����ͼƬ-������Ƭ';
comment on column CLGLXT_CLDJXX.CLLY
  is '������Դ';
comment on column CLGLXT_CLDJXX.GMJGWY
  is '����۸���Ԫ��';
comment on column CLGLXT_CLDJXX.CLZL
  is '��������';
comment on column CLGLXT_CLDJXX.ZBH
  is '�Ա��';
comment on column CLGLXT_CLDJXX.BZYH
  is '��׼�ͺ�';
comment on column CLGLXT_CLDJXX.CLZT
  is '����״̬';

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
  is '�����ɷѵǼ���Ϣ';
comment on column CLGLXT_CLJFDJXX.FYBM
  is '��Ժ����';
comment on column CLGLXT_CLJFDJXX.BH
  is '���';
comment on column CLGLXT_CLJFDJXX.CLBS
  is '������ʶ';
comment on column CLGLXT_CLJFDJXX.JFLX
  is '�ɷ�����';
comment on column CLGLXT_CLJFDJXX.JFRQ
  is '�ɷ�����';
comment on column CLGLXT_CLJFDJXX.JFJE
  is '�ɷѽ��';
comment on column CLGLXT_CLJFDJXX.JFRBS
  is '�ɷ��˱�ʶ';
comment on column CLGLXT_CLJFDJXX.JFR
  is '�ɷ���';
comment on column CLGLXT_CLJFDJXX.DJRQ
  is '�Ǽ�����';
comment on column CLGLXT_CLJFDJXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column CLGLXT_CLJFDJXX.DJR
  is '�Ǽ���';
comment on column CLGLXT_CLJFDJXX.BZ
  is '��ע';

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
  is '������ʻԱ�Ǽ���Ϣ';
comment on column CLGLXT_CLJSYDJXX.FYBM
  is '��Ժ����';
comment on column CLGLXT_CLJSYDJXX.JSYBS
  is '��ʻԱ��ʶ';
comment on column CLGLXT_CLJSYDJXX.XM
  is '����';
comment on column CLGLXT_CLJSYDJXX.SFZHM
  is '���֤����';
comment on column CLGLXT_CLJSYDJXX.XB
  is '�Ա�';
comment on column CLGLXT_CLJSYDJXX.NL
  is '����';
comment on column CLGLXT_CLJSYDJXX.CSRQ
  is '��������';
comment on column CLGLXT_CLJSYDJXX.ZJCL
  is '׼�ݳ���';
comment on column CLGLXT_CLJSYDJXX.JSZH
  is '��ʻ֤��';
comment on column CLGLXT_CLJSYDJXX.CCLZSJ
  is '������֤ʱ��';
comment on column CLGLXT_CLJSYDJXX.JSCL
  is '��ʻ����';
comment on column CLGLXT_CLJSYDJXX.LXDH
  is '��ϵ�绰';
comment on column CLGLXT_CLJSYDJXX.SJ
  is '�ֻ�';
comment on column CLGLXT_CLJSYDJXX.JZJSY
  is '��ְ��ʻԱ';
comment on column CLGLXT_CLJSYDJXX.JSYLB
  is '��ʻԱ���';

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
  is '������̵Ǽ���Ϣ';
comment on column CLGLXT_CLLCDJXX.FYBM
  is '��Ժ����';
comment on column CLGLXT_CLLCDJXX.BH
  is '���';
comment on column CLGLXT_CLLCDJXX.CLBS
  is '������ʶ';
comment on column CLGLXT_CLLCDJXX.JLND
  is '��¼���';
comment on column CLGLXT_CLLCDJXX.TJQJ
  is 'ͳ������';
comment on column CLGLXT_CLLCDJXX.LCS
  is '�����';
comment on column CLGLXT_CLLCDJXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column CLGLXT_CLLCDJXX.DJR
  is '�Ǽ���';
comment on column CLGLXT_CLLCDJXX.DJRQ
  is '�Ǽ�����';
comment on column CLGLXT_CLLCDJXX.BZ
  is '��ע';
comment on column CLGLXT_CLLCDJXX.KSLC
  is '��ʼ���';
comment on column CLGLXT_CLLCDJXX.JSLC
  is '�������';

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
  is '����ά�޵Ǽ���ϸ';
comment on column CLGLXT_CLWXDJMX.FYBM
  is '��Ժ����';
comment on column CLGLXT_CLWXDJMX.XH
  is '���';
comment on column CLGLXT_CLWXDJMX.WXBS
  is 'ά�ޱ�ʶ';
comment on column CLGLXT_CLWXDJMX.WXXM
  is 'ά����Ŀ';
comment on column CLGLXT_CLWXDJMX.WXFY
  is 'ά�޷���';

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
  is '����ά�޵Ǽ���Ϣ';
comment on column CLGLXT_CLWXDJXX.FYBM
  is '��Ժ����';
comment on column CLGLXT_CLWXDJXX.BH
  is '���';
comment on column CLGLXT_CLWXDJXX.CLBS
  is '������ʶ';
comment on column CLGLXT_CLWXDJXX.XCSJ
  is '�޳�ʱ��';
comment on column CLGLXT_CLWXDJXX.XCDD
  is '�޳��ص�';
comment on column CLGLXT_CLWXDJXX.XCJB
  is '�޳�����';
comment on column CLGLXT_CLWXDJXX.JSYBS
  is '��ʻԱ��ʶ';
comment on column CLGLXT_CLWXDJXX.JSY
  is '��ʻԱ';
comment on column CLGLXT_CLWXDJXX.BZ
  is '��ע';
comment on column CLGLXT_CLWXDJXX.SFFHSQ
  is '�Ƿ񷢻�����';
comment on column CLGLXT_CLWXDJXX.BMFZRSFTY
  is '���Ÿ������Ƿ�ͬ��';
comment on column CLGLXT_CLWXDJXX.BMFZRQZRQ
  is '���Ÿ�����ǩ������';
comment on column CLGLXT_CLWXDJXX.BMFZRYJ
  is '���Ÿ��������';
comment on column CLGLXT_CLWXDJXX.BMFZRBS
  is '���Ÿ����˱�ʶ';
comment on column CLGLXT_CLWXDJXX.BMFZR
  is '���Ÿ�����';
comment on column CLGLXT_CLWXDJXX.YLDSFTY
  is 'Ժ�쵼�Ƿ�ͬ��';
comment on column CLGLXT_CLWXDJXX.YLDQZRQ
  is 'Ժ�쵼ǩ������';
comment on column CLGLXT_CLWXDJXX.YLDYJ
  is 'Ժ�쵼���';
comment on column CLGLXT_CLWXDJXX.YLDBS
  is 'Ժ�쵼��ʶ';
comment on column CLGLXT_CLWXDJXX.YLD
  is 'Ժ�쵼';
comment on column CLGLXT_CLWXDJXX.HJWXFY
  is '�ϼ�ά�޷���';

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
  is '�����ͺĵǼ���Ϣ';
comment on column CLGLXT_CLYHDJXX.FYBM
  is '��Ժ����';
comment on column CLGLXT_CLYHDJXX.BH
  is '���';
comment on column CLGLXT_CLYHDJXX.CLBS
  is '������ʶ';
comment on column CLGLXT_CLYHDJXX.JYSJ
  is '����ʱ��';
comment on column CLGLXT_CLYHDJXX.JYDD
  is '���͵ص�';
comment on column CLGLXT_CLYHDJXX.JSYBS
  is '��ʻԱ��ʶ';
comment on column CLGLXT_CLYHDJXX.JSY
  is '��ʻԱ';
comment on column CLGLXT_CLYHDJXX.JYL
  is '������(��)';
comment on column CLGLXT_CLYHDJXX.JSCJYHYXSGLS
  is '���ϴμ��ͺ�����ʹ������';
comment on column CLGLXT_CLYHDJXX.BZ
  is '��ע';
comment on column CLGLXT_CLYHDJXX.DJ
  is '����';
comment on column CLGLXT_CLYHDJXX.HJJE
  is '�ϼƽ��';
comment on column CLGLXT_CLYHDJXX.BJK
  is '������';
comment on column CLGLXT_CLYHDJXX.JDK
  is '������';
comment on column CLGLXT_CLYHDJXX.WGY
  is '�⹺��';
comment on column CLGLXT_CLYHDJXX.BJKJE
  is '���������';
comment on column CLGLXT_CLYHDJXX.JDKJE
  is '���������';
comment on column CLGLXT_CLYHDJXX.WGYJE
  is '�⹺�ͽ��';

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
  is '��֤����Ǽ���Ϣ';
comment on column CLGLXT_HZNSDJXX.FYBM
  is '��Ժ����';
comment on column CLGLXT_HZNSDJXX.BH
  is '���';
comment on column CLGLXT_HZNSDJXX.RYBS
  is '��Ա��ʶ';
comment on column CLGLXT_HZNSDJXX.XM
  is '����';
comment on column CLGLXT_HZNSDJXX.BM
  is '����';
comment on column CLGLXT_HZNSDJXX.DJRQ
  is '�Ǽ�����';
comment on column CLGLXT_HZNSDJXX.SFZFYJ
  is '���֤��ӡ��';
comment on column CLGLXT_HZNSDJXX.HZHZSQB
  is '��֤-��֤�����(����-�������֤��)';
comment on column CLGLXT_HZNSDJXX.HZSTTJZM
  is '��֤-�������֤��(����-��ʻ֤ԭ��)';
comment on column CLGLXT_HZNSDJXX.HZJSZYJ
  is '��֤-��ʻ֤ԭ��';
comment on column CLGLXT_HZNSDJXX.HZYCBDMGZ3Z
  is '��֤-һ��׵������3��';
comment on column CLGLXT_HZNSDJXX.LB
  is '���';

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
  is '�ɳ���¼';
comment on column CLGLXT_PCJL.FYBM
  is '��Ժ����';
comment on column CLGLXT_PCJL.BH
  is '���';
comment on column CLGLXT_PCJL.JSYBS
  is '��ʻԱ��ʶ';
comment on column CLGLXT_PCJL.JSY
  is '��ʻԱ';
comment on column CLGLXT_PCJL.CLBS
  is '������ʶ';
comment on column CLGLXT_PCJL.JSCL
  is '��ʻ����';
comment on column CLGLXT_PCJL.CLLX
  is '��������';
comment on column CLGLXT_PCJL.LXDH
  is '��ϵ�绰';
comment on column CLGLXT_PCJL.SJHM
  is '�ֻ�����';
comment on column CLGLXT_PCJL.SFHBAPCC
  is '�Ƿ�ϲ����ų���';
comment on column CLGLXT_PCJL.ZLCS
  is '�������';
comment on column CLGLXT_PCJL.GDSJ
  is '���ʱ��';
comment on column CLGLXT_PCJL.SFFSZDXCSG
  is '�Ƿ����ش��г��¹�';
comment on column CLGLXT_PCJL.SGYY
  is '�¹�ԭ��';
comment on column CLGLXT_PCJL.SFYPC
  is '�Ƿ����ɳ�';
comment on column CLGLXT_PCJL.KSGL
  is '��ʼ����';
comment on column CLGLXT_PCJL.JSGL
  is '��������';

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
  is '�ó�����';
comment on column CLGLXT_YCSQ.FYBM
  is '��Ժ����';
comment on column CLGLXT_YCSQ.BH
  is '���';
comment on column CLGLXT_YCSQ.YCBM
  is '�ó�����';
comment on column CLGLXT_YCSQ.CCSJ
  is '����ʱ��';
comment on column CLGLXT_YCSQ.CFDD
  is '�����ص�';
comment on column CLGLXT_YCSQ.DDDD
  is '����ص�';
comment on column CLGLXT_YCSQ.SFGY
  is '�Ƿ���';
comment on column CLGLXT_YCSQ.CCRSL
  is '�˳�������';
comment on column CLGLXT_YCSQ.YJGDSJ
  is 'Ԥ�ƹ��ʱ��';
comment on column CLGLXT_YCSQ.YCLY
  is '�ó�����';
comment on column CLGLXT_YCSQ.SQRBS
  is '�����˱�ʶ';
comment on column CLGLXT_YCSQ.SQR
  is '������';
comment on column CLGLXT_YCSQ.SQSJ
  is '����ʱ��';
comment on column CLGLXT_YCSQ.TLDBS
  is 'ͥ�쵼��ʶ';
comment on column CLGLXT_YCSQ.TLD
  is 'ͥ�쵼';
comment on column CLGLXT_YCSQ.TLDQZRQ
  is 'ͥ�쵼ǩ������';
comment on column CLGLXT_YCSQ.TLDYJ
  is 'ͥ�쵼���';
comment on column CLGLXT_YCSQ.TLDSFPZ
  is 'ͥ�쵼�Ƿ���׼';
comment on column CLGLXT_YCSQ.YLDBS
  is 'Ժ�쵼��ʶ';
comment on column CLGLXT_YCSQ.YLD
  is 'Ժ�쵼';
comment on column CLGLXT_YCSQ.YLDQZRQ
  is 'Ժ�쵼ǩ������';
comment on column CLGLXT_YCSQ.YLDYJ
  is 'Ժ�쵼���';
comment on column CLGLXT_YCSQ.YLDSFPZ
  is 'Ժ�쵼�Ƿ���׼';
comment on column CLGLXT_YCSQ.PCRBS
  is '�ɳ��˱�ʶ';
comment on column CLGLXT_YCSQ.PCR
  is '�ɳ���';
comment on column CLGLXT_YCSQ.PCRQZRQ
  is '�ɳ���ǩ������';
comment on column CLGLXT_YCSQ.PCRYJ
  is '�ɳ������';
comment on column CLGLXT_YCSQ.JSYBS
  is '��ʻԱ��ʶ';
comment on column CLGLXT_YCSQ.JSY
  is '��ʻԱ';
comment on column CLGLXT_YCSQ.JSCL
  is '��ʻ����';
comment on column CLGLXT_YCSQ.LCS
  is '�����';
comment on column CLGLXT_YCSQ.BZ
  is '��ע';
comment on column CLGLXT_YCSQ.CCLX
  is '��������';
comment on column CLGLXT_YCSQ.CCTS
  is '��������';
comment on column CLGLXT_YCSQ.GHSJ
  is '�黹ʱ��';
comment on column CLGLXT_YCSQ.JSYCLLX
  is '��ʻԱ��������';
comment on column CLGLXT_YCSQ.JSYLXDH
  is '��ʻԱ��ϵ�绰';
comment on column CLGLXT_YCSQ.YCR
  is '�ó���';
comment on column CLGLXT_YCSQ.JSYSJ
  is '��ʻԱ�ֻ�';
comment on column CLGLXT_YCSQ.SQLB
  is '�������';
comment on column CLGLXT_YCSQ.AH
  is '����';
comment on column CLGLXT_YCSQ.AJBS
  is '������ʶ';
comment on column CLGLXT_YCSQ.XTAPJSY
  is 'ϵͳ���ż�ʻԱ';
comment on column CLGLXT_YCSQ.XTAPCL
  is 'ϵͳ���ų���';
comment on column CLGLXT_YCSQ.YCFS
  is '�ó���ʽ';
comment on column CLGLXT_YCSQ.QTR
  is '������';
comment on column CLGLXT_YCSQ.QTRQZRQ
  is '������ǩ������';
comment on column CLGLXT_YCSQ.QTRYJ
  is '���������';
comment on column CLGLXT_YCSQ.QTRSFPZ
  is '�������Ƿ���׼';
comment on column CLGLXT_YCSQ.FSPCRRQ
  is '�����ɳ�������';
comment on column CLGLXT_YCSQ.LXDH
  is '��ϵ�绰';
comment on column CLGLXT_YCSQ.YCXZ
  is '�ó�����';
comment on column CLGLXT_YCSQ.KSGL
  is '��ʼ����';
comment on column CLGLXT_YCSQ.JSGL
  is '��������';
comment on column CLGLXT_YCSQ.SFLSAP
  is '�Ƿ���ʱ����';
comment on column CLGLXT_YCSQ.GDAP
  is '���ల��';

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
  is '������ת��¼2';
comment on column DBXT_DBLZJL2.FYBM
  is '��Ժ����';
comment on column DBXT_DBLZJL2.XH
  is '���';
comment on column DBXT_DBLZJL2.DBBS
  is '�����ʶ';
comment on column DBXT_DBLZJL2.GZMC
  is '��������';
comment on column DBXT_DBLZJL2.FSRBS
  is '�����˱�ʶ';
comment on column DBXT_DBLZJL2.FSR
  is '������';
comment on column DBXT_DBLZJL2.FSSJ
  is '����ʱ��';
comment on column DBXT_DBLZJL2.JSRBS
  is '�����˱�ʶ';
comment on column DBXT_DBLZJL2.JSR
  is '������';
comment on column DBXT_DBLZJL2.JSSJ
  is '����ʱ��';
comment on column DBXT_DBLZJL2.FSBS
  is '���ͱ�ʶ';
comment on column DBXT_DBLZJL2.SFJJ
  is '�Ƿ����';
comment on column DBXT_DBLZJL2.SFSC
  is '�Ƿ��ղ�';
comment on column DBXT_DBLZJL2.SFCL
  is '�Ƿ���';

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
  is '����ʵ��';
comment on column DBXT_DBST.FYBM
  is '��Ժ����';
comment on column DBXT_DBST.DBBS
  is '�����ʶ';
comment on column DBXT_DBST.XH
  is '���';
comment on column DBXT_DBST.STLX
  is 'ʵ������';
comment on column DBXT_DBST.WJMC
  is '�ļ�����';
comment on column DBXT_DBST.STWJM
  is 'ʵ���ļ���';

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
  is '����������Ϣ';
comment on column DBXT_DBZTXX.FYBM
  is '��Ժ����';
comment on column DBXT_DBZTXX.DBBS
  is '�����ʶ';
comment on column DBXT_DBZTXX.DBLB
  is '�������';
comment on column DBXT_DBZTXX.SXJB
  is '�����';
comment on column DBXT_DBZTXX.LWBT
  is '���ı���';
comment on column DBXT_DBZTXX.BH
  is '���';
comment on column DBXT_DBZTXX.BHNF
  is '������';
comment on column DBXT_DBZTXX.FYJC
  is '��Ժ���';
comment on column DBXT_DBZTXX.BHZH
  is '����ֺ�';
comment on column DBXT_DBZTXX.HS
  is '����';
comment on column DBXT_DBZTXX.DJRQ
  is '�Ǽ�����';
comment on column DBXT_DBZTXX.LWRQ
  is '��������';
comment on column DBXT_DBZTXX.BZ
  is '��ע';
comment on column DBXT_DBZTXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column DBXT_DBZTXX.DJR
  is '�Ǽ���';
comment on column DBXT_DBZTXX.WCQX
  is '�������';
comment on column DBXT_DBZTXX.BLRBS
  is '�����˱�ʶ';
comment on column DBXT_DBZTXX.BLR
  is '������';
comment on column DBXT_DBZTXX.BLBM
  is '������';
comment on column DBXT_DBZTXX.LJBS
  is '�˽��ʶ';
comment on column DBXT_DBZTXX.LJRQ
  is '�˽�����';
comment on column DBXT_DBZTXX.TQGDBS
  is '����鵵��ʶ';
comment on column DBXT_DBZTXX.TQGDRQ
  is '����鵵����';
comment on column DBXT_DBZTXX.GDBS
  is '�鵵��ʶ';
comment on column DBXT_DBZTXX.GDRQ
  is '�鵵����';
comment on column DBXT_DBZTXX.LWDW
  is '���ĵ�λ';
comment on column DBXT_DBZTXX.LWBH
  is '���ı��';
comment on column DBXT_DBZTXX.DBSX
  is '��������';
comment on column DBXT_DBZTXX.DBYQ
  is '����Ҫ��';
comment on column DBXT_DBZTXX.YFGLDBS
  is 'Ժ�ֹ��쵼��ʶ';
comment on column DBXT_DBZTXX.YFGLD
  is 'Ժ�ֹ��쵼';
comment on column DBXT_DBZTXX.ZBDW
  is '���쵥λ';
comment on column DBXT_DBZTXX.XBDW
  is 'Э�쵥λ';
comment on column DBXT_DBZTXX.SJPSLD
  is '�ϼ���ʾ�쵼';
comment on column DBXT_DBZTXX.SJPSDW
  is '�ϼ���ʾ��λ';
comment on column DBXT_DBZTXX.SJPSRQ
  is '�ϼ���ʾ����';
comment on column DBXT_DBZTXX.SJPSNR
  is '�ϼ���ʾ����';
comment on column DBXT_DBZTXX.SJAJBH
  is '�漰�������';
comment on column DBXT_DBZTXX.LSDJBH
  is '��ʵ�ǼǱ��';
comment on column DBXT_DBZTXX.ZXDBBH
  is 'ִ�ж�����';

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
  is '���ŷ��ͼ�¼��';
comment on column DXXT_DXFSJLB.FYBM
  is '��Ժ����';
comment on column DXXT_DXFSJLB.BH
  is '���';
comment on column DXXT_DXFSJLB.PZBS
  is '���ñ�ʶ';
comment on column DXXT_DXFSJLB.DHHM
  is '�绰����';
comment on column DXXT_DXFSJLB.DXJSR
  is '��Ϣ������';
comment on column DXXT_DXFSJLB.DXNR
  is '��������';
comment on column DXXT_DXFSJLB.FSSJ
  is '����ʱ��';
comment on column DXXT_DXFSJLB.SFFSZT
  is '�Ƿ���״̬';

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
  is '��������������Ϣ';
comment on column DXXT_FSNRPZXX.FYBM
  is '��Ժ����';
comment on column DXXT_FSNRPZXX.PZBS
  is '���ñ�ʶ';
comment on column DXXT_FSNRPZXX.DXNR
  is '��������';
comment on column DXXT_FSNRPZXX.BLDY
  is '��������';
comment on column DXXT_FSNRPZXX.JSRLX
  is '����������';
comment on column DXXT_FSNRPZXX.FSLB
  is '�������';
comment on column DXXT_FSNRPZXX.SMCS
  is 'ɨ�����';

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
  is '�������Ϣ';
comment on column DZDAJYXT_JSJXX.FYBM
  is '��Ժ����';
comment on column DZDAJYXT_JSJXX.JSJBH
  is '��������';
comment on column DZDAJYXT_JSJXX.YHLX
  is '�û�����';
comment on column DZDAJYXT_JSJXX.YHM
  is '�û���';
comment on column DZDAJYXT_JSJXX.DLM
  is '��¼��';
comment on column DZDAJYXT_JSJXX.JS
  is '��ɫ';
comment on column DZDAJYXT_JSJXX.CXM
  is '������';
comment on column DZDAJYXT_JSJXX.YXCS
  is '���в���';
comment on column DZDAJYXT_JSJXX.MC
  is '����';
comment on column DZDAJYXT_JSJXX.DASMC
  is '����������';
comment on column DZDAJYXT_JSJXX.IPDZ
  is 'IP��ַ';
comment on column DZDAJYXT_JSJXX.MACDZ
  is 'Mac��ַ';
comment on column DZDAJYXT_JSJXX.XZB
  is 'X����';
comment on column DZDAJYXT_JSJXX.YZB
  is 'Y����';
comment on column DZDAJYXT_JSJXX.SFYX
  is '�Ƿ���Ч';

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
  is '���ĵǼǱ�';
comment on column DZDAJYXT_JYDJB.FYBM
  is '��Ժ����';
comment on column DZDAJYXT_JYDJB.BH
  is '���';
comment on column DZDAJYXT_JYDJB.DJRQ
  is '�Ǽ�����';
comment on column DZDAJYXT_JYDJB.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column DZDAJYXT_JYDJB.DJR
  is '�Ǽ���';
comment on column DZDAJYXT_JYDJB.SYJSJBH
  is 'ʹ�ü�������';
comment on column DZDAJYXT_JYDJB.JYRLX
  is '����������';
comment on column DZDAJYXT_JYDJB.XM
  is '����';
comment on column DZDAJYXT_JYDJB.XB
  is '�Ա�';
comment on column DZDAJYXT_JYDJB.DWMC
  is '��λ����';
comment on column DZDAJYXT_JYDJB.ZJLX
  is '֤������';
comment on column DZDAJYXT_JYDJB.ZJHM
  is '֤������';
comment on column DZDAJYXT_JYDJB.JYMD
  is '����Ŀ��';
comment on column DZDAJYXT_JYDJB.JYAJAH
  is '���İ�������';
comment on column DZDAJYXT_JYDJB.JYAJBH
  is '���İ������';
comment on column DZDAJYXT_JYDJB.DYXX
  is '��ӡ��Ϣ';
comment on column DZDAJYXT_JYDJB.YDLS
  is '�Ķ���ʷ';
comment on column DZDAJYXT_JYDJB.JYKSRQ
  is '���Ŀ�ʼ����';
comment on column DZDAJYXT_JYDJB.JYJSRQ
  is '���Ľ�������';

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
  is '��������';
comment on column FGGXKJ_BQSZ.FYBM
  is '��Ժ����';
comment on column FGGXKJ_BQSZ.BH
  is '���';
comment on column FGGXKJ_BQSZ.CFLJ
  is '���·��';
comment on column FGGXKJ_BQSZ.MC
  is '����';
comment on column FGGXKJ_BQSZ.ZS
  is 'ע��';
comment on column FGGXKJ_BQSZ.XSSX
  is '��ʾ˳��';

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
  is '����Ϣ';
comment on column FGGXKJ_DXX.FYBM
  is '��Ժ����';
comment on column FGGXKJ_DXX.XXBS
  is '��Ϣ��ʶ';
comment on column FGGXKJ_DXX.SJYH
  is '�ռ��û�';
comment on column FGGXKJ_DXX.FJYH
  is '�����û�';
comment on column FGGXKJ_DXX.FJXM
  is '��������';
comment on column FGGXKJ_DXX.LX
  is '����';
comment on column FGGXKJ_DXX.SFYD
  is '�Ƿ��Ķ�';
comment on column FGGXKJ_DXX.BT
  is '����';
comment on column FGGXKJ_DXX.FSRQ
  is '��������';
comment on column FGGXKJ_DXX.NR
  is '����';

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
  is '��ԺIP����';
comment on column FGGXKJ_FYIPFP.FYBM
  is '��Ժ����';
comment on column FGGXKJ_FYIPFP.BH
  is '���';
comment on column FGGXKJ_FYIPFP.FYMC
  is '��Ժ����';
comment on column FGGXKJ_FYIPFP.FYJC
  is '��Ժ���';
comment on column FGGXKJ_FYIPFP.IPD
  is 'IP��';

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
  is '���˶�̬';
comment on column FGGXKJ_GRDT.FYBM
  is '��Ժ����';
comment on column FGGXKJ_GRDT.BH
  is '���';
comment on column FGGXKJ_GRDT.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_GRDT.XX
  is '��Ϣ';
comment on column FGGXKJ_GRDT.SJ
  is 'ʱ��';
comment on column FGGXKJ_GRDT.LX
  is '����';
comment on column FGGXKJ_GRDT.BZ
  is '��ע';
comment on column FGGXKJ_GRDT.DXBS
  is '�����ʶ';

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
  is '���˷��';
comment on column FGGXKJ_GRFG.FYBM
  is '��Ժ����';
comment on column FGGXKJ_GRFG.BH
  is '���';
comment on column FGGXKJ_GRFG.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_GRFG.FGBS
  is '����ʶ';
comment on column FGGXKJ_GRFG.FGMC
  is '�������';
comment on column FGGXKJ_GRFG.YLTP
  is 'Ԥ��ͼƬ';
comment on column FGGXKJ_GRFG.YS
  is '��ʽ';
comment on column FGGXKJ_GRFG.ZDYYS
  is '�Զ�����ʽ';

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
  is '���˷���';
comment on column FGGXKJ_GRFL.FYBM
  is '��Ժ����';
comment on column FGGXKJ_GRFL.FLBH
  is '������';
comment on column FGGXKJ_GRFL.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_GRFL.LB
  is '���';
comment on column FGGXKJ_GRFL.FLMC
  is '��������';
comment on column FGGXKJ_GRFL.XSXH
  is '��ʾ���';

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
  is '������Ϣ';
comment on column FGGXKJ_GRXX.FYBM
  is '��Ժ����';
comment on column FGGXKJ_GRXX.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_GRXX.XM
  is '����';
comment on column FGGXKJ_GRXX.DLM
  is '��¼��';
comment on column FGGXKJ_GRXX.DLMM
  is '��¼����';
comment on column FGGXKJ_GRXX.S
  is 'ʡ';
comment on column FGGXKJ_GRXX.SS
  is '��s';
comment on column FGGXKJ_GRXX.CSNY
  is '��������';
comment on column FGGXKJ_GRXX.BM
  is '����';
comment on column FGGXKJ_GRXX.KJBT
  is '�ռ����';
comment on column FGGXKJ_GRXX.GXZPMCLJ
  is '������Ƭ����·��';
comment on column FGGXKJ_GRXX.ZPYSCCG
  is '��Ƭԭʼ�ߴ��';
comment on column FGGXKJ_GRXX.ZPYSCCK
  is '��Ƭԭʼ�ߴ��';
comment on column FGGXKJ_GRXX.GXQM
  is '����ǩ��';
comment on column FGGXKJ_GRXX.KJSFYXLY
  is '�ռ��Ƿ���������';

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
  is '����';
comment on column FGGXKJ_HY.FYBM
  is '��Ժ����';
comment on column FGGXKJ_HY.BH
  is '���';
comment on column FGGXKJ_HY.FZBS
  is '�����ʶ';
comment on column FGGXKJ_HY.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_HY.HYBS
  is '���ѱ�ʶ';
comment on column FGGXKJ_HY.TJSJ
  is '���ʱ��';
comment on column FGGXKJ_HY.SFSH
  is '�Ƿ����';

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
  is '���ѷ���';
comment on column FGGXKJ_HYFZ.FYBM
  is '��Ժ����';
comment on column FGGXKJ_HYFZ.FZBS
  is '�����ʶ';
comment on column FGGXKJ_HYFZ.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_HYFZ.MC
  is '����';
comment on column FGGXKJ_HYFZ.SX
  is '˳��';

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
  is '��ӡ';
comment on column FGGXKJ_JY.FYBM
  is '��Ժ����';
comment on column FGGXKJ_JY.BH
  is '���';
comment on column FGGXKJ_JY.DXBS
  is '�����ʶ';
comment on column FGGXKJ_JY.LX
  is '����';
comment on column FGGXKJ_JY.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_JY.SJ
  is 'ʱ��';

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
  is '�ռ���ʼ�¼';
comment on column FGGXKJ_KJFWJL.FYBM
  is '��Ժ����';
comment on column FGGXKJ_KJFWJL.BH
  is '���';
comment on column FGGXKJ_KJFWJL.KJSYZBS
  is '�ռ������߱�ʶ';
comment on column FGGXKJ_KJFWJL.FWZBS
  is '�����߱�ʶ';
comment on column FGGXKJ_KJFWJL.FWSJ
  is '����ʱ��';

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
  is '�ռ�����';
comment on column FGGXKJ_KJLY.FYBM
  is '��Ժ����';
comment on column FGGXKJ_KJLY.BH
  is '���';
comment on column FGGXKJ_KJLY.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_KJLY.LYRBS
  is '�����˱�ʶ';
comment on column FGGXKJ_KJLY.LYRXM
  is '����������';
comment on column FGGXKJ_KJLY.LYRTX
  is '������ͷ��';
comment on column FGGXKJ_KJLY.LYSJ
  is '����ʱ��';
comment on column FGGXKJ_KJLY.LYIP
  is '����IP';
comment on column FGGXKJ_KJLY.LYNR
  is '��������';
comment on column FGGXKJ_KJLY.HFSJ
  is '�ظ�ʱ��';
comment on column FGGXKJ_KJLY.HFNR
  is '�ظ�����';

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
  is '�����¼';
comment on column FGGXKJ_LJL.FYBM
  is '��Ժ����';
comment on column FGGXKJ_LJL.BH
  is '���';
comment on column FGGXKJ_LJL.DXBS
  is '�����ʶ';
comment on column FGGXKJ_LJL.LX
  is '����';
comment on column FGGXKJ_LJL.LSJ
  is '���ʱ��';

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
  is '������Ϣ';
comment on column FGGXKJ_PLXX.FYBM
  is '��Ժ����';
comment on column FGGXKJ_PLXX.BH
  is '���';
comment on column FGGXKJ_PLXX.LX
  is '����';
comment on column FGGXKJ_PLXX.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_PLXX.FLBS
  is '�����ʶ';
comment on column FGGXKJ_PLXX.PLR
  is '������';
comment on column FGGXKJ_PLXX.PLRBS
  is '�����˱�ʶ';
comment on column FGGXKJ_PLXX.PLSJ
  is '����ʱ��';
comment on column FGGXKJ_PLXX.BT
  is '����';
comment on column FGGXKJ_PLXX.PLRIP
  is '������IP';
comment on column FGGXKJ_PLXX.IPLY
  is 'IP��Դ';
comment on column FGGXKJ_PLXX.SFSH
  is '�Ƿ����';
comment on column FGGXKJ_PLXX.PLNR
  is '��������';
comment on column FGGXKJ_PLXX.HFSJ
  is '�ظ�ʱ��';
comment on column FGGXKJ_PLXX.HFNR
  is '�ظ�����';

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
  is '�������';
comment on column FGGXKJ_SBNR.FYBM
  is '��Ժ����';
comment on column FGGXKJ_SBNR.SBBS
  is '��ʱ�ʶ';
comment on column FGGXKJ_SBNR.BQ
  is '��ǩ';
comment on column FGGXKJ_SBNR.YHIP
  is '�û�IP';
comment on column FGGXKJ_SBNR.IPLY
  is 'IP��Դ';
comment on column FGGXKJ_SBNR.NR
  is '����';

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
  is '�����Ϣ';
comment on column FGGXKJ_SBXX.FYBM
  is '��Ժ����';
comment on column FGGXKJ_SBXX.SBBS
  is '��ʱ�ʶ';
comment on column FGGXKJ_SBXX.GRFLBS
  is '���˷����ʶ';
comment on column FGGXKJ_SBXX.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_SBXX.XTFLBS
  is 'ϵͳ�����ʶ';
comment on column FGGXKJ_SBXX.XJMC
  is '�ż�����';
comment on column FGGXKJ_SBXX.XM
  is '����';
comment on column FGGXKJ_SBXX.LX
  is '����';
comment on column FGGXKJ_SBXX.XQTQBS
  is '���顢������ʶ';
comment on column FGGXKJ_SBXX.BT
  is '����';
comment on column FGGXKJ_SBXX.TJSJ
  is '�ύʱ��';
comment on column FGGXKJ_SBXX.ZHTJSJ
  is '����ύʱ��';
comment on column FGGXKJ_SBXX.ZHHFSJ
  is '���ظ�ʱ��';
comment on column FGGXKJ_SBXX.LSL
  is '�������';
comment on column FGGXKJ_SBXX.HFSL
  is '�ظ�����';
comment on column FGGXKJ_SBXX.SFYXPL
  is '�Ƿ���������';
comment on column FGGXKJ_SBXX.SFSH
  is '�Ƿ����';
comment on column FGGXKJ_SBXX.SFYXL
  is '�Ƿ��������';
comment on column FGGXKJ_SBXX.JYSL
  is '��ӡ����';
comment on column FGGXKJ_SBXX.FJLB
  is '�����б�';
comment on column FGGXKJ_SBXX.LIPLB
  is '���IP�б�';
comment on column FGGXKJ_SBXX.LSJLB
  is '���ʱ���б�';
comment on column FGGXKJ_SBXX.TJSL
  is '�Ƽ�����';
comment on column FGGXKJ_SBXX.TJYHLB
  is '�Ƽ��û��б�';

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
  is '�ղ�';
comment on column FGGXKJ_SC.FYBM
  is '��Ժ����';
comment on column FGGXKJ_SC.BH
  is '���';
comment on column FGGXKJ_SC.SCDXBS
  is '�ղض����ʶ';
comment on column FGGXKJ_SC.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_SC.LX
  is '����';
comment on column FGGXKJ_SC.SCSJ
  is '�ղ�ʱ��';

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
  is '��Ƶ��Ϣ';
comment on column FGGXKJ_SPXX.FYBM
  is '��Ժ����';
comment on column FGGXKJ_SPXX.SPBS
  is '��Ƶ��ʶ';
comment on column FGGXKJ_SPXX.ZJBH
  is 'ר�����';
comment on column FGGXKJ_SPXX.SCRQ
  is '�ϴ�����';
comment on column FGGXKJ_SPXX.SPMC
  is '��Ƶ����';
comment on column FGGXKJ_SPXX.SPWJM
  is '��Ƶ�ļ���';
comment on column FGGXKJ_SPXX.SPFBLK
  is '��Ƶ�ֱ��ʿ�';
comment on column FGGXKJ_SPXX.SPFBLG
  is '��Ƶ�ֱ��ʸ�';
comment on column FGGXKJ_SPXX.SFSH
  is '�Ƿ����';
comment on column FGGXKJ_SPXX.FWSL
  is '��������';
comment on column FGGXKJ_SPXX.HFSL
  is '�ظ�����';
comment on column FGGXKJ_SPXX.TJSL
  is '�Ƽ�����';
comment on column FGGXKJ_SPXX.TJRYBHLB
  is '�Ƽ���Ա����б�';

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
  is '��Ƶר����Ϣ';
comment on column FGGXKJ_SPZJXX.FYBM
  is '��Ժ����';
comment on column FGGXKJ_SPZJXX.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_SPZJXX.ZJBH
  is 'ר�����';
comment on column FGGXKJ_SPZJXX.ZJMC
  is 'ר������';
comment on column FGGXKJ_SPZJXX.CJRQ
  is '��������';
comment on column FGGXKJ_SPZJXX.XGRQ
  is '�޸�����';
comment on column FGGXKJ_SPZJXX.SFGKFW
  is '�Ƿ񹫿�����';
comment on column FGGXKJ_SPZJXX.FWMM
  is '��������';
comment on column FGGXKJ_SPZJXX.ZJLX
  is 'ר������';
comment on column FGGXKJ_SPZJXX.ZJSM
  is 'ר��˵��';
comment on column FGGXKJ_SPZJXX.SFYXPL
  is '�Ƿ���������';
comment on column FGGXKJ_SPZJXX.SFSH
  is '�Ƿ����';
comment on column FGGXKJ_SPZJXX.FWS
  is '������';
comment on column FGGXKJ_SPZJXX.HFS
  is '�ظ���';

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
  is '��ǩ';
comment on column FGGXKJ_SQ.FYBM
  is '��Ժ����';
comment on column FGGXKJ_SQ.SQBH
  is '��ǩ���';
comment on column FGGXKJ_SQ.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_SQ.YHIP
  is '�û�IP';
comment on column FGGXKJ_SQ.IPLY
  is 'IP��Դ';
comment on column FGGXKJ_SQ.SQDZ
  is '��ǩ��ַ';
comment on column FGGXKJ_SQ.SM
  is '˵��';

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
  is '�����Ƭ��';
comment on column FGGXKJ_XCZPB.FYBM
  is '��Ժ����';
comment on column FGGXKJ_XCZPB.ZPBS
  is '��Ƭ��ʶ';
comment on column FGGXKJ_XCZPB.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_XCZPB.FLBS
  is '�����ʶ';
comment on column FGGXKJ_XCZPB.XCBS
  is '����ʶ';
comment on column FGGXKJ_XCZPB.ZPMC
  is '��Ƭ����';
comment on column FGGXKJ_XCZPB.LJURL
  is '����URL';
comment on column FGGXKJ_XCZPB.SCSJ
  is '�ϴ�ʱ��';
comment on column FGGXKJ_XCZPB.BQ
  is '��ǩ';
comment on column FGGXKJ_XCZPB.LS
  is '�����';
comment on column FGGXKJ_XCZPB.HFS
  is '�ظ���';
comment on column FGGXKJ_XCZPB.JYS
  is '��ӡ��';
comment on column FGGXKJ_XCZPB.PLS
  is '������';
comment on column FGGXKJ_XCZPB.ZPSM
  is '��Ƭ˵��';
comment on column FGGXKJ_XCZPB.SFYXPL
  is '�Ƿ���������';
comment on column FGGXKJ_XCZPB.ZPKD
  is '��Ƭ���';
comment on column FGGXKJ_XCZPB.ZPGD
  is '��Ƭ�߶�';
comment on column FGGXKJ_XCZPB.LIPLB
  is '���IP�б�';
comment on column FGGXKJ_XCZPB.ZPSXH
  is '��Ƭ˳���';

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
  is 'ϵͳ����';
comment on column FGGXKJ_XTFL.FYBM
  is '��Ժ����';
comment on column FGGXKJ_XTFL.FLBS
  is '�����ʶ';
comment on column FGGXKJ_XTFL.FLBSFLBS
  is '�����ʶflbs';
comment on column FGGXKJ_XTFL.LX
  is '����';
comment on column FGGXKJ_XTFL.MC
  is '����';
comment on column FGGXKJ_XTFL.SM
  is '˵��';
comment on column FGGXKJ_XTFL.FLSM
  is '����˵��';
comment on column FGGXKJ_XTFL.XSSX
  is '��ʾ˳��';
comment on column FGGXKJ_XTFL.SFXS
  is '�Ƿ���ʾ';

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
  is 'ϵͳ����';
comment on column FGGXKJ_XTGG.FYBM
  is '��Ժ����';
comment on column FGGXKJ_XTGG.BH
  is '���';
comment on column FGGXKJ_XTGG.XSSX
  is '��ʾ˳��';
comment on column FGGXKJ_XTGG.FBR
  is '������';
comment on column FGGXKJ_XTGG.KSSJ
  is '��ʼʱ��';
comment on column FGGXKJ_XTGG.LJ
  is '����';
comment on column FGGXKJ_XTGG.BT
  is '����';
comment on column FGGXKJ_XTGG.NR
  is '����';

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
  is '�û���������';
comment on column FGGXKJ_YHCLSZ.FYBM
  is '��Ժ����';
comment on column FGGXKJ_YHCLSZ.BH
  is '���';
comment on column FGGXKJ_YHCLSZ.CLBS
  is '������ʶ';
comment on column FGGXKJ_YHCLSZ.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_YHCLSZ.SFXS
  is '�Ƿ���ʾ';
comment on column FGGXKJ_YHCLSZ.XSSX
  is '��ʾ˳��';

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
  is '�û�����';
comment on column FGGXKJ_YHXCB.FYBM
  is '��Ժ����';
comment on column FGGXKJ_YHXCB.XCBS
  is '����ʶ';
comment on column FGGXKJ_YHXCB.RYBS
  is '��Ա��ʶ';
comment on column FGGXKJ_YHXCB.FLBS
  is '�����ʶ';
comment on column FGGXKJ_YHXCB.YHM
  is '�û���';
comment on column FGGXKJ_YHXCB.FWMM
  is '��������';
comment on column FGGXKJ_YHXCB.XCMC
  is '�������';
comment on column FGGXKJ_YHXCB.JLSJ
  is '����ʱ��';
comment on column FGGXKJ_YHXCB.ZHXGSJ
  is '����޸�ʱ��';
comment on column FGGXKJ_YHXCB.ZHPLSJ
  is '�������ʱ��';
comment on column FGGXKJ_YHXCB.ZPSL
  is '��Ƭ����';
comment on column FGGXKJ_YHXCB.LCS
  is '�������';
comment on column FGGXKJ_YHXCB.PLCS
  is '���۴���';
comment on column FGGXKJ_YHXCB.SFYXPL
  is '�Ƿ���������';
comment on column FGGXKJ_YHXCB.SFSH
  is '�Ƿ����';
comment on column FGGXKJ_YHXCB.SFYXL
  is '�Ƿ��������';
comment on column FGGXKJ_YHXCB.JYS
  is '��ӡ��';
comment on column FGGXKJ_YHXCB.XCSM
  is '���˵��';
comment on column FGGXKJ_YHXCB.FWIPLB
  is '����IP�б�';
comment on column FGGXKJ_YHXCB.TJCS
  is '�Ƽ�����';
comment on column FGGXKJ_YHXCB.TJYHLB
  is '�Ƽ��û��б�';

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
  is '���żӼ���';
comment on column FGYJPJXT_BMJJF.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_BMJJF.BH
  is '���';
comment on column FGYJPJXT_BMJJF.ND
  is '���';
comment on column FGYJPJXT_BMJJF.BM
  is '����';
comment on column FGYJPJXT_BMJJF.RYBS
  is '��Ա��ʶ';
comment on column FGYJPJXT_BMJJF.XM
  is '����';
comment on column FGYJPJXT_BMJJF.JF
  is '�ӷ�';
comment on column FGYJPJXT_BMJJF.JFJF
  is '����jf';
comment on column FGYJPJXT_BMJJF.JFLY
  is '�ӷ�����';
comment on column FGYJPJXT_BMJJF.JFLYJF
  is '��������jf';
comment on column FGYJPJXT_BMJJF.LB
  is '���';

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
  is '�������ҵ��';
comment on column FGYJPJXT_BMNDYJ.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_BMNDYJ.BH
  is '���';
comment on column FGYJPJXT_BMNDYJ.ND
  is '���';
comment on column FGYJPJXT_BMNDYJ.BM
  is '����';
comment on column FGYJPJXT_BMNDYJ.DF
  is '�÷�';
comment on column FGYJPJXT_BMNDYJ.XLPM
  is '��������';
comment on column FGYJPJXT_BMNDYJ.QYPM
  is 'ȫԺ����';

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
  is '������Ϣ';
comment on column FGYJPJXT_CFXX.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_CFXX.BH
  is '���';
comment on column FGYJPJXT_CFXX.RYBH
  is '��Ա���';
comment on column FGYJPJXT_CFXX.RSXTRYBH
  is '����ϵͳ��Ա���';
comment on column FGYJPJXT_CFXX.BCFRBH
  is '�������˱��';
comment on column FGYJPJXT_CFXX.XM
  is '����';
comment on column FGYJPJXT_CFXX.CFMC
  is '��������';
comment on column FGYJPJXT_CFXX.CFSJ
  is '����ʱ��';
comment on column FGYJPJXT_CFXX.LB
  is '���';
comment on column FGYJPJXT_CFXX.FS
  is '����';
comment on column FGYJPJXT_CFXX.BM
  is '����';

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
  is '���������ϸ';
comment on column FGYJPJXT_CXJSMX.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_CXJSMX.BH
  is '���';
comment on column FGYJPJXT_CXJSMX.ZBBH
  is '������';
comment on column FGYJPJXT_CXJSMX.XH
  is '���';
comment on column FGYJPJXT_CXJSMX.XMBH
  is '��Ŀ���';
comment on column FGYJPJXT_CXJSMX.XMNR
  is '��Ŀ����';
comment on column FGYJPJXT_CXJSMX.XMLX
  is '��Ŀ����';
comment on column FGYJPJXT_CXJSMX.XMZL
  is '��Ŀ����';
comment on column FGYJPJXT_CXJSMX.TJLB
  is 'ͳ�����';
comment on column FGYJPJXT_CXJSMX.FS
  is '����';
comment on column FGYJPJXT_CXJSMX.JSJG
  is '������';
comment on column FGYJPJXT_CXJSMX.JSGSJCSJG
  is '���㹫ʽ���������';
comment on column FGYJPJXT_CXJSMX.XJG
  is 'x���';
comment on column FGYJPJXT_CXJSMX.YJG
  is 'y���';
comment on column FGYJPJXT_CXJSMX.ZJG
  is 'z���';
comment on column FGYJPJXT_CXJSMX.BZ
  is '��ע';
comment on column FGYJPJXT_CXJSMX.RYXM
  is '��Ա����';
comment on column FGYJPJXT_CXJSMX.JLRQ
  is '��¼����';
comment on column FGYJPJXT_CXJSMX.JSMB
  is '����ģ��';
comment on column FGYJPJXT_CXJSMX.ZXGJZ
  is '��Ч�ؼ�ֵ';
comment on column FGYJPJXT_CXJSMX.BMPM
  is '��������';
comment on column FGYJPJXT_CXJSMX.XLPM
  is '��������';
comment on column FGYJPJXT_CXJSMX.ZGF
  is '��߷�';
comment on column FGYJPJXT_CXJSMX.BMPJF
  is '����ƽ����';
comment on column FGYJPJXT_CXJSMX.BMXLPM
  is '������������';
comment on column FGYJPJXT_CXJSMX.QYPM
  is 'ȫԺ����';

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
  is '���������Ŀ��';
comment on column FGYJPJXT_CXJSXMB.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_CXJSXMB.XMBH
  is '��Ŀ���';
comment on column FGYJPJXT_CXJSXMB.ZBLB
  is 'ָ�����';
comment on column FGYJPJXT_CXJSXMB.ZBMC
  is 'ָ������';
comment on column FGYJPJXT_CXJSXMB.ZBMS
  is 'ָ������';
comment on column FGYJPJXT_CXJSXMB.ZBFZ
  is 'ָ���ֵ';
comment on column FGYJPJXT_CXJSXMB.JZZFX
  is '��׼ֵ����';
comment on column FGYJPJXT_CXJSXMB.JZZZF
  is '��׼ֵ�ܷ�';
comment on column FGYJPJXT_CXJSXMB.JSGS
  is '���㹫ʽ';
comment on column FGYJPJXT_CXJSXMB.XSQL
  is 'xSql';
comment on column FGYJPJXT_CXJSXMB.YSQL
  is 'ySql';
comment on column FGYJPJXT_CXJSXMB.ZSQL
  is 'zSql';
comment on column FGYJPJXT_CXJSXMB.XHY
  is 'x����';
comment on column FGYJPJXT_CXJSXMB.YHY
  is 'y����';
comment on column FGYJPJXT_CXJSXMB.ZHY
  is 'z����';
comment on column FGYJPJXT_CXJSXMB.ZXZ
  is '��Сֵ';
comment on column FGYJPJXT_CXJSXMB.ZDZ
  is '���ֵ';
comment on column FGYJPJXT_CXJSXMB.JSFS
  is '���㷽ʽ';
comment on column FGYJPJXT_CXJSXMB.BZ
  is '��ע';
comment on column FGYJPJXT_CXJSXMB.ZBLX
  is 'ָ������';
comment on column FGYJPJXT_CXJSXMB.TJLB
  is 'ͳ�����';
comment on column FGYJPJXT_CXJSXMB.KHBM
  is '���˲���';
comment on column FGYJPJXT_CXJSXMB.QSFZ
  is 'ȱʡ��ֵ';

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
  is '�����������';
comment on column FGYJPJXT_CXJSZB.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_CXJSZB.BH
  is '���';
comment on column FGYJPJXT_CXJSZB.JSND
  is '�������';
comment on column FGYJPJXT_CXJSZB.JSQJ
  is '��������';
comment on column FGYJPJXT_CXJSZB.RYXM
  is '��Ա����';
comment on column FGYJPJXT_CXJSZB.BM
  is '����';
comment on column FGYJPJXT_CXJSZB.KSRQ
  is '��ʼ����';
comment on column FGYJPJXT_CXJSZB.JSRQ
  is '��������';
comment on column FGYJPJXT_CXJSZB.MBLB
  is 'ģ�����';
comment on column FGYJPJXT_CXJSZB.ZF
  is '�ܷ�';
comment on column FGYJPJXT_CXJSZB.QYPM
  is 'ȫԺ����';
comment on column FGYJPJXT_CXJSZB.BMPM
  is '��������';
comment on column FGYJPJXT_CXJSZB.JSR
  is '������';
comment on column FGYJPJXT_CXJSZB.JSRQJSRQ
  is '��������jsrq';
comment on column FGYJPJXT_CXJSZB.ZFD
  is '�ܷ�-��';
comment on column FGYJPJXT_CXJSZB.ZFQ
  is '�ܷ�-��';
comment on column FGYJPJXT_CXJSZB.ZFL
  is '�ܷ�-��';
comment on column FGYJPJXT_CXJSZB.ZFQJF
  is '�ܷ�-�ڼӷ�';
comment on column FGYJPJXT_CXJSZB.ZFQJFQJF
  is '�ܷ�-�ڼ���qjf';
comment on column FGYJPJXT_CXJSZB.ZFJ
  is '�ܷ�-��';
comment on column FGYJPJXT_CXJSZB.ZFJJBF
  is '�ܷ�-��������';
comment on column FGYJPJXT_CXJSZB.ZFJJF
  is '�ܷ�-���ӷ�';
comment on column FGYJPJXT_CXJSZB.ZFJJFJJF
  is '�ܷ�-������jjf';
comment on column FGYJPJXT_CXJSZB.ZFN
  is '�ܷ�-��';
comment on column FGYJPJXT_CXJSZB.ZFNJBF
  is '�ܷ�-�ܻ�����';
comment on column FGYJPJXT_CXJSZB.ZFNJF
  is '�ܷ�-�ܼӷ�';
comment on column FGYJPJXT_CXJSZB.ZFNJFNJF
  is '�ܷ�-�ܼ���njf';
comment on column FGYJPJXT_CXJSZB.XS
  is 'ϵ��';
comment on column FGYJPJXT_CXJSZB.JSXS
  is '����ϵ��';
comment on column FGYJPJXT_CXJSZB.YSZF
  is 'ԭʼ�ܷ�';
comment on column FGYJPJXT_CXJSZB.ZW
  is 'ְ��';
comment on column FGYJPJXT_CXJSZB.ZW1
  is 'ְ��1';
comment on column FGYJPJXT_CXJSZB.XLPM
  is '��������';
comment on column FGYJPJXT_CXJSZB.BMXLZGF
  is '����������߷�';
comment on column FGYJPJXT_CXJSZB.BMXLPM
  is '������������';
comment on column FGYJPJXT_CXJSZB.ZFFMPJ
  is '�ܷ�-��������';
comment on column FGYJPJXT_CXJSZB.GZYJQYPM
  is '����ҵ��ȫԺ����';
comment on column FGYJPJXT_CXJSZB.GZYJXLPM
  is '����ҵ����������';
comment on column FGYJPJXT_CXJSZB.GZYJBMPM
  is '����ҵ����������';
comment on column FGYJPJXT_CXJSZB.GZYJBMXLPM
  is '����ҵ��������������';
comment on column FGYJPJXT_CXJSZB.ZZSZQYPM
  is '��������ȫԺ����';
comment on column FGYJPJXT_CXJSZB.ZZSZXLPM
  is '����������������';
comment on column FGYJPJXT_CXJSZB.ZZSZBMPM
  is '�������ʲ�������';
comment on column FGYJPJXT_CXJSZB.ZZSZBMXLNPM
  is '�������ʲ�������������';
comment on column FGYJPJXT_CXJSZB.NQYPM
  is '��ȫԺ����';
comment on column FGYJPJXT_CXJSZB.NXLPM
  is '����������';
comment on column FGYJPJXT_CXJSZB.NBMNPMNBMPM
  is '�ܲ���������nbmpm';
comment on column FGYJPJXT_CXJSZB.NBMNXLPM
  is '�ܲ�������������';
comment on column FGYJPJXT_CXJSZB.QQYPM
  is '��ȫԺ����';
comment on column FGYJPJXT_CXJSZB.QXLPM
  is '����������';
comment on column FGYJPJXT_CXJSZB.JQYPM
  is '��ȫԺ����';
comment on column FGYJPJXT_CXJSZB.JXLPM
  is '����������';
comment on column FGYJPJXT_CXJSZB.LQYPM
  is '��ȫԺ����';
comment on column FGYJPJXT_CXJSZB.LXLPM
  is '����������';
comment on column FGYJPJXT_CXJSZB.FMPJQYPM
  is '��������ȫԺ����';
comment on column FGYJPJXT_CXJSZB.FMPJXLPM
  is '����������������';
comment on column FGYJPJXT_CXJSZB.NBMNPM
  is '�ܲ���������';
comment on column FGYJPJXT_CXJSZB.NBMXLNPM
  is '�ܲ�������������';
comment on column FGYJPJXT_CXJSZB.QBMNPM
  is '�ڲ���������';
comment on column FGYJPJXT_CXJSZB.QBMXLNPM
  is '�ڲ�������������';
comment on column FGYJPJXT_CXJSZB.JBMNPM
  is '������������';
comment on column FGYJPJXT_CXJSZB.JBMXLNPM
  is '����������������';
comment on column FGYJPJXT_CXJSZB.DQYPM
  is '��ȫԺ����';
comment on column FGYJPJXT_CXJSZB.DXLPM
  is '����������';
comment on column FGYJPJXT_CXJSZB.DBMNPM
  is '�²���������';
comment on column FGYJPJXT_CXJSZB.DBMXLNPM
  is '�²�������������';
comment on column FGYJPJXT_CXJSZB.LBMNPM
  is '������������';
comment on column FGYJPJXT_CXJSZB.LBMXLNPM
  is '����������������';
comment on column FGYJPJXT_CXJSZB.FMPJBMNPM
  is '�������۲���������';
comment on column FGYJPJXT_CXJSZB.FMPJBMXLNPM
  is '�������۲�������������';
comment on column FGYJPJXT_CXJSZB.SYMB
  is '����ģ��';
comment on column FGYJPJXT_CXJSZB.RYBH
  is '��Ա���';
comment on column FGYJPJXT_CXJSZB.ZJF
  is '�ܼӷ�';
comment on column FGYJPJXT_CXJSZB.JFQYPM
  is '����ȫԺ����';
comment on column FGYJPJXT_CXJSZB.JFBPM
  is '���ֲ�����';
comment on column FGYJPJXT_CXJSZB.JFXLPM
  is '������������';
comment on column FGYJPJXT_CXJSZB.JFBMNXLPM
  is '���ֲ�������������';
comment on column FGYJPJXT_CXJSZB.ZCGBXLPM
  is '�в�ɲ���������';
comment on column FGYJPJXT_CXJSZB.ZCGBQYPM
  is '�в�ɲ�ȫԺ����';
comment on column FGYJPJXT_CXJSZB.ZCGBZZPM
  is '�в�ɲ���ְ����';
comment on column FGYJPJXT_CXJSZB.ZCGBFZPM
  is '�в�ɲ���ְ����';
comment on column FGYJPJXT_CXJSZB.ZCGBZZXZBMPM
  is '�в�ɲ���ְ-������������';
comment on column FGYJPJXT_CXJSZB.ZCGBFZXZBMPM
  is '�в�ɲ���ְ-������������';
comment on column FGYJPJXT_CXJSZB.ZCGBZZYWBMPM
  is '�в�ɲ���ְ-ҵ��������';
comment on column FGYJPJXT_CXJSZB.ZCGBFZYWBMPM
  is '�в�ɲ���ְ-ҵ��������';
comment on column FGYJPJXT_CXJSZB.GZGW
  is '������λ';

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
  is '������Ϣ';
comment on column FGYJPJXT_DBXX.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_DBXX.DBBH
  is '������';
comment on column FGYJPJXT_DBXX.SXMC
  is '��������';
comment on column FGYJPJXT_DBXX.DBNR
  is '��������';
comment on column FGYJPJXT_DBXX.DBRBH
  is '�����˱��';
comment on column FGYJPJXT_DBXX.DBR
  is '������';
comment on column FGYJPJXT_DBXX.DBRBM
  is '�����˲���';
comment on column FGYJPJXT_DBXX.DBSJ
  is '����ʱ��';

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
  is '������Ϣ';
comment on column FGYJPJXT_DYXX.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_DYXX.BH
  is '���';
comment on column FGYJPJXT_DYXX.RYBH
  is '��Ա���';
comment on column FGYJPJXT_DYXX.BM
  is '����';
comment on column FGYJPJXT_DYXX.ZZ
  is '����';
comment on column FGYJPJXT_DYXX.BT
  is '����';
comment on column FGYJPJXT_DYXX.LX
  is '����';
comment on column FGYJPJXT_DYXX.CYFS
  is '���÷�ʽ';
comment on column FGYJPJXT_DYXX.CYJB
  is '���ü���';
comment on column FGYJPJXT_DYXX.FS
  is '����';
comment on column FGYJPJXT_DYXX.DJR
  is '�Ǽ���';
comment on column FGYJPJXT_DYXX.DJRQ
  is '�Ǽ�����';
comment on column FGYJPJXT_DYXX.DYRQ
  is '��������';
comment on column FGYJPJXT_DYXX.GWBH
  is '���ı��';
comment on column FGYJPJXT_DYXX.CLFJ
  is '���ϸ���';
comment on column FGYJPJXT_DYXX.GRZPM
  is '����������';
comment on column FGYJPJXT_DYXX.GRFXPM
  is '���˷�������';
comment on column FGYJPJXT_DYXX.BMGRZPM
  is '���Ÿ���������';
comment on column FGYJPJXT_DYXX.BMGRFXPM
  is '���Ÿ��˷�������';
comment on column FGYJPJXT_DYXX.BMZPM
  is '����������';
comment on column FGYJPJXT_DYXX.BMFXPM
  is '���ŷ�������';
comment on column FGYJPJXT_DYXX.XZ
  is '����';

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
  is '������Ϣ�걨��';
comment on column FGYJPJXT_DYXXSBB.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_DYXXSBB.BH
  is '���';
comment on column FGYJPJXT_DYXXSBB.RYBH
  is '��Ա���';
comment on column FGYJPJXT_DYXXSBB.BM
  is '����';
comment on column FGYJPJXT_DYXXSBB.XM
  is '����';
comment on column FGYJPJXT_DYXXSBB.BT
  is '����';
comment on column FGYJPJXT_DYXXSBB.LX
  is '����';
comment on column FGYJPJXT_DYXXSBB.XZ
  is '����';
comment on column FGYJPJXT_DYXXSBB.JB
  is '����';
comment on column FGYJPJXT_DYXXSBB.CYFS
  is '���÷�ʽ';
comment on column FGYJPJXT_DYXXSBB.DF
  is '�÷�';
comment on column FGYJPJXT_DYXXSBB.FJ
  is '����';
comment on column FGYJPJXT_DYXXSBB.CYSJ
  is '����ʱ��';
comment on column FGYJPJXT_DYXXSBB.CBSPR
  is '�а�������';
comment on column FGYJPJXT_DYXXSBB.CBSPYJ
  is '�а��������';
comment on column FGYJPJXT_DYXXSBB.CBSPSJ
  is '�а�����ʱ��';
comment on column FGYJPJXT_DYXXSBB.CBSPPZ
  is '�а�������׼';
comment on column FGYJPJXT_DYXXSBB.FZRSPR
  is '������������';
comment on column FGYJPJXT_DYXXSBB.FZRSPPZ
  is '������������׼';
comment on column FGYJPJXT_DYXXSBB.FZRSPYJ
  is '�������������';
comment on column FGYJPJXT_DYXXSBB.FZRSPSJ
  is '����������ʱ��';
comment on column FGYJPJXT_DYXXSBB.YJSSPR
  is '�о���������';
comment on column FGYJPJXT_DYXXSBB.YJSSPPZ
  is '�о���������׼';
comment on column FGYJPJXT_DYXXSBB.YJSSPYJ
  is '�о����������';
comment on column FGYJPJXT_DYXXSBB.YJSSPSJ
  is '�о�������ʱ��';

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
  is '����λ������˳���';
comment on column FGYJPJXT_GWPMSXB.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_GWPMSXB.BH
  is '���';
comment on column FGYJPJXT_GWPMSXB.LB
  is '���';
comment on column FGYJPJXT_GWPMSXB.MC
  is '����';
comment on column FGYJPJXT_GWPMSXB.SX
  is '˳��';
comment on column FGYJPJXT_GWPMSXB.BZ
  is '��־';

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
  is '�������ջ�Ǽǣ��걨��';
comment on column FGYJPJXT_GYWYHDDJSB.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_GYWYHDDJSB.BH
  is '���';
comment on column FGYJPJXT_GYWYHDDJSB.RYBH
  is '��Ա���';
comment on column FGYJPJXT_GYWYHDDJSB.CJXM
  is '�μ���Ŀ';
comment on column FGYJPJXT_GYWYHDDJSB.BM
  is '����';
comment on column FGYJPJXT_GYWYHDDJSB.XM
  is '����';
comment on column FGYJPJXT_GYWYHDDJSB.CJSJ
  is '�μ�ʱ��';
comment on column FGYJPJXT_GYWYHDDJSB.CJDD
  is '�μӵص�';
comment on column FGYJPJXT_GYWYHDDJSB.HDMC
  is '�����';
comment on column FGYJPJXT_GYWYHDDJSB.CJCS
  is '�μӴ���';
comment on column FGYJPJXT_GYWYHDDJSB.BYXG
  is '����Ч��';
comment on column FGYJPJXT_GYWYHDDJSB.HJQK
  is '�����';
comment on column FGYJPJXT_GYWYHDDJSB.DDQK
  is '�������';
comment on column FGYJPJXT_GYWYHDDJSB.ZYQK
  is 'רҵ���';
comment on column FGYJPJXT_GYWYHDDJSB.HJLX
  is '������';
comment on column FGYJPJXT_GYWYHDDJSB.BSGM
  is '������ģ';
comment on column FGYJPJXT_GYWYHDDJSB.BZ
  is '��ע';
comment on column FGYJPJXT_GYWYHDDJSB.DJRBH
  is '�Ǽ��˱��';
comment on column FGYJPJXT_GYWYHDDJSB.DJR
  is '�Ǽ���';
comment on column FGYJPJXT_GYWYHDDJSB.DJRQ
  is '�Ǽ�����';
comment on column FGYJPJXT_GYWYHDDJSB.FLBS
  is '�����ʶ';
comment on column FGYJPJXT_GYWYHDDJSB.FS
  is '����';
comment on column FGYJPJXT_GYWYHDDJSB.FJCL
  is '��������';
comment on column FGYJPJXT_GYWYHDDJSB.SPRBH
  is '�����˱��';
comment on column FGYJPJXT_GYWYHDDJSB.SPR
  is '������';
comment on column FGYJPJXT_GYWYHDDJSB.SPYJ
  is '�������';
comment on column FGYJPJXT_GYWYHDDJSB.SPSJ
  is '����ʱ��';

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
  is '������Ϣ';
comment on column FGYJPJXT_JLXX.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_JLXX.BH
  is '���';
comment on column FGYJPJXT_JLXX.RYBH
  is '��Ա���';
comment on column FGYJPJXT_JLXX.RSXTRYBH
  is '����ϵͳ��Ա���';
comment on column FGYJPJXT_JLXX.XM
  is '����';
comment on column FGYJPJXT_JLXX.DWDM
  is '��λ����';
comment on column FGYJPJXT_JLXX.JLFL
  is '��������';
comment on column FGYJPJXT_JLXX.JLMC
  is '��������';
comment on column FGYJPJXT_JLXX.HJSJ
  is '��ʱ��';
comment on column FGYJPJXT_JLXX.HJND
  is '�����';
comment on column FGYJPJXT_JLXX.JLWH
  is '�����ĺ�';
comment on column FGYJPJXT_JLXX.PZDW
  is '��׼��λ';
comment on column FGYJPJXT_JLXX.SJDXM
  is '�ܽ�������';
comment on column FGYJPJXT_JLXX.JB
  is '����';
comment on column FGYJPJXT_JLXX.FS
  is '����';
comment on column FGYJPJXT_JLXX.BM
  is '����';
comment on column FGYJPJXT_JLXX.SFBLDJ
  is '�Ƿ�¼�Ǽ�';
comment on column FGYJPJXT_JLXX.BZ
  is '��ע';
comment on column FGYJPJXT_JLXX.DJRBH
  is '�Ǽ��˱��';
comment on column FGYJPJXT_JLXX.DJR
  is '�Ǽ���';
comment on column FGYJPJXT_JLXX.DJSJ
  is '�Ǽ�ʱ��';

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
  is '���㳣������';
comment on column FGYJPJXT_JSCLGL.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_JSCLGL.BH
  is '���';
comment on column FGYJPJXT_JSCLGL.CLDM
  is '��������';
comment on column FGYJPJXT_JSCLGL.CLSJ
  is '��������';
comment on column FGYJPJXT_JSCLGL.MS
  is '����';
comment on column FGYJPJXT_JSCLGL.LX
  is '����';
comment on column FGYJPJXT_JSCLGL.SJY
  is '����Դ';

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
  is '��������־';
comment on column FGYJPJXT_JSJCRZ.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_JSJCRZ.BH
  is '���';
comment on column FGYJPJXT_JSJCRZ.CJSJ
  is '����ʱ��';
comment on column FGYJPJXT_JSJCRZ.CJR
  is '������';
comment on column FGYJPJXT_JSJCRZ.BT
  is '����';
comment on column FGYJPJXT_JSJCRZ.CWLX
  is '��������';
comment on column FGYJPJXT_JSJCRZ.CWZL
  is '��������';
comment on column FGYJPJXT_JSJCRZ.SM
  is '˵��';

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
  is '����ģ��';
comment on column FGYJPJXT_JSMB.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_JSMB.BH
  is '���';
comment on column FGYJPJXT_JSMB.MBLX
  is 'ģ������';
comment on column FGYJPJXT_JSMB.MBMC
  is 'ģ������';
comment on column FGYJPJXT_JSMB.XH
  is '���';
comment on column FGYJPJXT_JSMB.BHXMBH
  is '������Ŀ���';
comment on column FGYJPJXT_JSMB.SYFWID
  is '���÷�Χid';
comment on column FGYJPJXT_JSMB.SYFW
  is '���÷�Χ';
comment on column FGYJPJXT_JSMB.BZ
  is '��ע';
comment on column FGYJPJXT_JSMB.SYLX
  is '��������';
comment on column FGYJPJXT_JSMB.SYRYLB
  is '������Ա�б�';
comment on column FGYJPJXT_JSMB.SYBMLB
  is '���ò����б�';

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
  is '����У�����';
comment on column FGYJPJXT_JSXYGL.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_JSXYGL.BH
  is '���';
comment on column FGYJPJXT_JSXYGL.GZMZ
  is '��������';
comment on column FGYJPJXT_JSXYGL.GZSM
  is '����˵��';
comment on column FGYJPJXT_JSXYGL.XYSQL
  is 'У��SQL';
comment on column FGYJPJXT_JSXYGL.CJR
  is '������';
comment on column FGYJPJXT_JSXYGL.SFYX
  is '�Ƿ���Ч';
comment on column FGYJPJXT_JSXYGL.CJSJ
  is '����ʱ��';

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
  is '����������Ϣ��¼��';
comment on column FGYJPJXT_LZJCDXXBLB.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_LZJCDXXBLB.BH
  is '���';
comment on column FGYJPJXT_LZJCDXXBLB.FLMC
  is '��������';
comment on column FGYJPJXT_LZJCDXXBLB.BM
  is '����';
comment on column FGYJPJXT_LZJCDXXBLB.RYBH
  is '��Ա���';
comment on column FGYJPJXT_LZJCDXXBLB.XM
  is '����';
comment on column FGYJPJXT_LZJCDXXBLB.XMXM
  is '��Ŀxm';
comment on column FGYJPJXT_LZJCDXXBLB.SJ
  is 'ʱ��';
comment on column FGYJPJXT_LZJCDXXBLB.FS
  is '����';
comment on column FGYJPJXT_LZJCDXXBLB.WFWJLX
  is 'Υ��Υ������';
comment on column FGYJPJXT_LZJCDXXBLB.BZ
  is '��ע';
comment on column FGYJPJXT_LZJCDXXBLB.DJSJ
  is '�Ǽ�ʱ��';
comment on column FGYJPJXT_LZJCDXXBLB.DJRBH
  is '�Ǽ��˱��';
comment on column FGYJPJXT_LZJCDXXBLB.DJR
  is '�Ǽ���';
comment on column FGYJPJXT_LZJCDXXBLB.FL
  is '����';
comment on column FGYJPJXT_LZJCDXXBLB.FTH
  is '��ͥ��';

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
  is '��ȿ���';
comment on column FGYJPJXT_NDKH.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_NDKH.BH
  is '���';
comment on column FGYJPJXT_NDKH.RYBH
  is '��Ա���';
comment on column FGYJPJXT_NDKH.RSXTRYBH
  is '����ϵͳ��Ա���';
comment on column FGYJPJXT_NDKH.KHSJ
  is '����ʱ��';
comment on column FGYJPJXT_NDKH.KHJG
  is '���˽��';
comment on column FGYJPJXT_NDKH.KHSM
  is '����˵��';
comment on column FGYJPJXT_NDKH.BHBH
  is '���bh';

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
  is '���۽����ѯ';
comment on column FGYJPJXT_PJJGZX.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_PJJGZX.BH
  is '���';
comment on column FGYJPJXT_PJJGZX.SQRBH
  is '�����˱��';
comment on column FGYJPJXT_PJJGZX.SQR
  is '������';
comment on column FGYJPJXT_PJJGZX.ZXSJ
  is '��ѯʱ��';
comment on column FGYJPJXT_PJJGZX.ZXNR
  is '��ѯ����';
comment on column FGYJPJXT_PJJGZX.FYRBS
  is '�����˱�ʶ';
comment on column FGYJPJXT_PJJGZX.FYR
  is '������';
comment on column FGYJPJXT_PJJGZX.FYJG
  is '������';
comment on column FGYJPJXT_PJJGZX.FYSJ
  is '����ʱ��';
comment on column FGYJPJXT_PJJGZX.SFFY
  is '�Ƿ���';

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
  is '���۽����ѯ��ϸ';
comment on column FGYJPJXT_PJJGZXMX.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_PJJGZXMX.BH
  is '���';
comment on column FGYJPJXT_PJJGZXMX.XH
  is '���';
comment on column FGYJPJXT_PJJGZXMX.ZXXM
  is '��ѯ��Ŀ';
comment on column FGYJPJXT_PJJGZXMX.ZXSX
  is '��ѯ����';
comment on column FGYJPJXT_PJJGZXMX.ZXLY
  is '��ѯ����';
comment on column FGYJPJXT_PJJGZXMX.FYJG
  is '������';

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
  is '���м�¼';
comment on column FGYJPJXT_PPJL.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_PPJL.BH
  is '���';
comment on column FGYJPJXT_PPJL.RYBH
  is '��Ա���';
comment on column FGYJPJXT_PPJL.RSXTRYBH
  is '����ϵͳ��Ա���';
comment on column FGYJPJXT_PPJL.PPLB
  is '�������';
comment on column FGYJPJXT_PPJL.PPSJ
  is '����ʱ��';
comment on column FGYJPJXT_PPJL.BZ
  is '��ע';
comment on column FGYJPJXT_PPJL.FS
  is '����';

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
  is '��ѵ��Ϣ';
comment on column FGYJPJXT_PXXX.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_PXXX.BH
  is '���';
comment on column FGYJPJXT_PXXX.RYBH
  is '��Ա���';
comment on column FGYJPJXT_PXXX.RSXTRYBH
  is '����ϵͳ��Ա���';
comment on column FGYJPJXT_PXXX.PXMC
  is '��ѵ����';
comment on column FGYJPJXT_PXXX.PXNR
  is '��ѵ����';
comment on column FGYJPJXT_PXXX.KSSJ
  is '��ʼʱ��';
comment on column FGYJPJXT_PXXX.JSSJ
  is '����ʱ��';
comment on column FGYJPJXT_PXXX.KQ
  is '����';
comment on column FGYJPJXT_PXXX.KSJG
  is '���Խ��';
comment on column FGYJPJXT_PXXX.SFTG
  is '�Ƿ�ͨ��';
comment on column FGYJPJXT_PXXX.PXDD
  is '��ѵ�ص�';
comment on column FGYJPJXT_PXXX.PXTS
  is '��ѵ����';
comment on column FGYJPJXT_PXXX.SX
  is '˳��';
comment on column FGYJPJXT_PXXX.FJCL
  is '��������';
comment on column FGYJPJXT_PXXX.BM
  is '����';
comment on column FGYJPJXT_PXXX.XM
  is '����';

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
  is '��Ա������Ϣ��';
comment on column FGYJPJXT_RYJBXXB.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_RYJBXXB.RYBH
  is '��Ա���';
comment on column FGYJPJXT_RYJBXXB.RSXTBH
  is '����ϵͳ���';
comment on column FGYJPJXT_RYJBXXB.FYMC
  is '��Ժ����';
comment on column FGYJPJXT_RYJBXXB.XM
  is '����';
comment on column FGYJPJXT_RYJBXXB.BM
  is '����';
comment on column FGYJPJXT_RYJBXXB.XB
  is '�Ա�';
comment on column FGYJPJXT_RYJBXXB.MZ
  is '����';
comment on column FGYJPJXT_RYJBXXB.CSNY
  is '��������';
comment on column FGYJPJXT_RYJBXXB.ZZMM
  is '������ò';
comment on column FGYJPJXT_RYJBXXB.RDSJ
  is '�뵳ʱ��';
comment on column FGYJPJXT_RYJBXXB.CJGZSJ
  is '�μӹ���ʱ��';
comment on column FGYJPJXT_RYJBXXB.XZZJ
  is '����ְ��';
comment on column FGYJPJXT_RYJBXXB.CRZJSJ
  is '����ְ��ʱ��';
comment on column FGYJPJXT_RYJBXXB.XRZW
  is '����ְ��';
comment on column FGYJPJXT_RYJBXXB.RXZWSJ
  is '����ְ��ʱ��';
comment on column FGYJPJXT_RYJBXXB.BZQK
  is '�������';
comment on column FGYJPJXT_RYJBXXB.SPZC
  is '����ְ��';
comment on column FGYJPJXT_RYJBXXB.FGDJ
  is '���ٵȼ�';
comment on column FGYJPJXT_RYJBXXB.JG
  is '����';
comment on column FGYJPJXT_RYJBXXB.CSD
  is '������';
comment on column FGYJPJXT_RYJBXXB.ZGXL
  is '���ѧ��';
comment on column FGYJPJXT_RYJBXXB.BYXX
  is '��ҵѧУ';
comment on column FGYJPJXT_RYJBXXB.ZY
  is 'רҵ';
comment on column FGYJPJXT_RYJBXXB.ZGXW
  is '���ѧλ';
comment on column FGYJPJXT_RYJBXXB.PXQK
  is '��ѵ���';
comment on column FGYJPJXT_RYJBXXB.JTCY
  is '��ͥ��Ա';
comment on column FGYJPJXT_RYJBXXB.GZJL
  is '��������';
comment on column FGYJPJXT_RYJBXXB.GBRMQK
  is '�ɲ��������';
comment on column FGYJPJXT_RYJBXXB.GWXZ
  is '��λ����';
comment on column FGYJPJXT_RYJBXXB.GZGW
  is '������λ';
comment on column FGYJPJXT_RYJBXXB.NDKH
  is '��ȿ���';
comment on column FGYJPJXT_RYJBXXB.JSZW
  is '����ְ��';
comment on column FGYJPJXT_RYJBXXB.SPZW
  is '����ְ��';
comment on column FGYJPJXT_RYJBXXB.RSPZWSJ
  is '������ְ��ʱ��';
comment on column FGYJPJXT_RYJBXXB.XZZW
  is '����ְ��';
comment on column FGYJPJXT_RYJBXXB.RXZZWSJ
  is '������ְ��ʱ��';
comment on column FGYJPJXT_RYJBXXB.NRZW
  is '����ְ��';
comment on column FGYJPJXT_RYJBXXB.NMZW
  is '����ְ��';
comment on column FGYJPJXT_RYJBXXB.RXZCSJ
  is '����ְ��ʱ��';
comment on column FGYJPJXT_RYJBXXB.QRZXL
  is 'ȫ����ѧ��';
comment on column FGYJPJXT_RYJBXXB.QRZBYYX
  is 'ȫ���Ʊ�ҵԺУ';
comment on column FGYJPJXT_RYJBXXB.QRZXW
  is 'ȫ����ѧλ';
comment on column FGYJPJXT_RYJBXXB.QRZZY
  is 'ȫ����רҵ';
comment on column FGYJPJXT_RYJBXXB.ZZXL
  is '��ְѧ��';
comment on column FGYJPJXT_RYJBXXB.ZZYX
  is '��ְԺУ';
comment on column FGYJPJXT_RYJBXXB.ZZXW
  is '��ְѧλ';
comment on column FGYJPJXT_RYJBXXB.ZZZY
  is '��ְרҵ';
comment on column FGYJPJXT_RYJBXXB.ZGXLLX
  is '���ѧ������';
comment on column FGYJPJXT_RYJBXXB.ZGXLXJZY
  is '���ѧ��ϵ��רҵ';
comment on column FGYJPJXT_RYJBXXB.FGDJQSSJ
  is '���ٵȼ�����ʱ��';
comment on column FGYJPJXT_RYJBXXB.FGDJPZWH
  is '���ٵȼ���׼�ĺ�';
comment on column FGYJPJXT_RYJBXXB.FGDJPZJG
  is '���ٵȼ���׼����';
comment on column FGYJPJXT_RYJBXXB.SFZH
  is '���֤��';
comment on column FGYJPJXT_RYJBXXB.GBFL
  is '�ɲ�����';
comment on column FGYJPJXT_RYJBXXB.SFYX
  is '�Ƿ���Ч';
comment on column FGYJPJXT_RYJBXXB.RSXTBM
  is '����ϵͳ����';

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
  is '���Ա��¼����';
comment on column FGYJPJXT_SJYBLPF.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_SJYBLPF.PFBH
  is '���ֱ��';
comment on column FGYJPJXT_SJYBLPF.RYBH
  is '��Ա���';
comment on column FGYJPJXT_SJYBLPF.XM
  is '����';
comment on column FGYJPJXT_SJYBLPF.BM
  is '����';
comment on column FGYJPJXT_SJYBLPF.PFQJ
  is '��������';
comment on column FGYJPJXT_SJYBLPF.DF
  is '�÷�';
comment on column FGYJPJXT_SJYBLPF.BZ
  is '��ע';
comment on column FGYJPJXT_SJYBLPF.DJRBH
  is '�Ǽ��˱��';
comment on column FGYJPJXT_SJYBLPF.DJR
  is '�Ǽ���';
comment on column FGYJPJXT_SJYBLPF.DJSJ
  is '�Ǽ�ʱ��';
comment on column FGYJPJXT_SJYBLPF.ND
  is '���';

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
  is '���Ա��¼���ֱ�׼';
comment on column FGYJPJXT_SJYBLPFBZ.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_SJYBLPFBZ.XH
  is '���';
comment on column FGYJPJXT_SJYBLPFBZ.LX
  is '����';
comment on column FGYJPJXT_SJYBLPFBZ.PFBZ
  is '���ֱ�׼';
comment on column FGYJPJXT_SJYBLPFBZ.SCBZ
  is 'ɾ����־';

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
  is '���Ա��¼������ϸ';
comment on column FGYJPJXT_SJYBLPFMX.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_SJYBLPFMX.BH
  is '���';
comment on column FGYJPJXT_SJYBLPFMX.PFBH
  is '���ֱ��';
comment on column FGYJPJXT_SJYBLPFMX.XH
  is '���';
comment on column FGYJPJXT_SJYBLPFMX.LX
  is '����';
comment on column FGYJPJXT_SJYBLPFMX.BZ
  is '��׼';
comment on column FGYJPJXT_SJYBLPFMX.DF
  is '�÷�';

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
  is '���Ա��������';
comment on column FGYJPJXT_SJYJNPF.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_SJYJNPF.BH
  is '���';
comment on column FGYJPJXT_SJYJNPF.RYBH
  is '��Ա���';
comment on column FGYJPJXT_SJYJNPF.XM
  is '����';
comment on column FGYJPJXT_SJYJNPF.BM
  is '����';
comment on column FGYJPJXT_SJYJNPF.ND
  is '���';
comment on column FGYJPJXT_SJYJNPF.PDDJ
  is '�����ȼ�';
comment on column FGYJPJXT_SJYJNPF.FS
  is '����';
comment on column FGYJPJXT_SJYJNPF.JSMC
  is '��������';
comment on column FGYJPJXT_SJYJNPF.JF
  is '�ӷ�';
comment on column FGYJPJXT_SJYJNPF.ZDF
  is '�ܵ÷�';
comment on column FGYJPJXT_SJYJNPF.DJRBH
  is '�Ǽ��˱��';
comment on column FGYJPJXT_SJYJNPF.DJR
  is '�Ǽ���';
comment on column FGYJPJXT_SJYJNPF.DJSJ
  is '�Ǽ�ʱ��';

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
  is '���Ա�ۺϲ�����ϸ';
comment on column FGYJPJXT_SJYZHCPMX.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_SJYZHCPMX.BH
  is '���';
comment on column FGYJPJXT_SJYZHCPMX.BCPRBH
  is '�������˱��';
comment on column FGYJPJXT_SJYZHCPMX.BCPR
  is '��������';
comment on column FGYJPJXT_SJYZHCPMX.CPRBH
  is '�����˱��';
comment on column FGYJPJXT_SJYZHCPMX.CPR
  is '������';
comment on column FGYJPJXT_SJYZHCPMX.CPJG
  is '�������';
comment on column FGYJPJXT_SJYZHCPMX.CPRQ
  is '��������';
comment on column FGYJPJXT_SJYZHCPMX.TJRQ
  is '�ύ����';
comment on column FGYJPJXT_SJYZHCPMX.ZSDF
  is '����÷�';
comment on column FGYJPJXT_SJYZHCPMX.SFTLD
  is '�Ƿ�ͥ�쵼';

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
  is '����������';
comment on column FGYJPJXT_SPZFJC.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_SPZFJC.BH
  is '���';
comment on column FGYJPJXT_SPZFJC.RYBH
  is '��Ա���';
comment on column FGYJPJXT_SPZFJC.RSXTRYBH
  is '����ϵͳ��Ա���';
comment on column FGYJPJXT_SPZFJC.JCXM
  is '�����Ŀ';
comment on column FGYJPJXT_SPZFJC.JCSJ
  is '���ʱ��';
comment on column FGYJPJXT_SPZFJC.BZ
  is '��ע';
comment on column FGYJPJXT_SPZFJC.FS
  is '����';

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
  is 'ͥ�������¼����';
comment on column FGYJPJXT_TSWSJLFS.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_TSWSJLFS.BH
  is '���';
comment on column FGYJPJXT_TSWSJLFS.LB
  is '���';
comment on column FGYJPJXT_TSWSJLFS.BM
  is '����';
comment on column FGYJPJXT_TSWSJLFS.XM
  is '��Ŀ';
comment on column FGYJPJXT_TSWSJLFS.SPZW
  is '����ְ��';
comment on column FGYJPJXT_TSWSJLFS.XZZW
  is '����ְ��';
comment on column FGYJPJXT_TSWSJLFS.JCF
  is '������';
comment on column FGYJPJXT_TSWSJLFS.ZHDF
  is '���÷�';
comment on column FGYJPJXT_TSWSJLFS.ND
  is '���';
comment on column FGYJPJXT_TSWSJLFS.QJ
  is '����';

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
  is '������Ϣ�Ǽ�';
comment on column FGYJPJXT_WMXXDJ.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_WMXXDJ.BH
  is '���';
comment on column FGYJPJXT_WMXXDJ.RYBH
  is '��Ա���';
comment on column FGYJPJXT_WMXXDJ.CYXZ
  is '��������';
comment on column FGYJPJXT_WMXXDJ.BM
  is '����';
comment on column FGYJPJXT_WMXXDJ.ZZBH
  is '���߱��';
comment on column FGYJPJXT_WMXXDJ.ZZ
  is '����';
comment on column FGYJPJXT_WMXXDJ.BT
  is '����';
comment on column FGYJPJXT_WMXXDJ.KWMC
  is '��������';
comment on column FGYJPJXT_WMXXDJ.CYFS
  is '���÷�ʽ';
comment on column FGYJPJXT_WMXXDJ.CYJB
  is '���ü���';
comment on column FGYJPJXT_WMXXDJ.FS
  is '����';
comment on column FGYJPJXT_WMXXDJ.DJRBH
  is '�Ǽ��˱��';
comment on column FGYJPJXT_WMXXDJ.DJR
  is '�Ǽ���';
comment on column FGYJPJXT_WMXXDJ.DJRQ
  is '�Ǽ�����';
comment on column FGYJPJXT_WMXXDJ.GWBH
  is '���ı��';
comment on column FGYJPJXT_WMXXDJ.CYRQ
  is '��������';
comment on column FGYJPJXT_WMXXDJ.FJCL
  is '��������';
comment on column FGYJPJXT_WMXXDJ.LDPS
  is '�쵼��ʾ';
comment on column FGYJPJXT_WMXXDJ.GRZPM
  is '����������';
comment on column FGYJPJXT_WMXXDJ.GRFXPM
  is '���˷�������';
comment on column FGYJPJXT_WMXXDJ.GRBMPM
  is '���˲�������';
comment on column FGYJPJXT_WMXXDJ.GRBMFXPM
  is '���˲��ŷ�������';
comment on column FGYJPJXT_WMXXDJ.BMZPM
  is '����������';
comment on column FGYJPJXT_WMXXDJ.FXPM
  is '��������';

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
  is '���ϴ��ɵǼ�';
comment on column FGYJPJXT_WSDYDJ.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_WSDYDJ.BH
  is '���';
comment on column FGYJPJXT_WSDYDJ.DYRQ
  is '��������';
comment on column FGYJPJXT_WSDYDJ.DYRBH
  is '�����˱��';
comment on column FGYJPJXT_WSDYDJ.DYR
  is '������';
comment on column FGYJPJXT_WSDYDJ.BM
  is '����';
comment on column FGYJPJXT_WSDYDJ.DYSL
  is '��������';

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
  is '����ԤԼ�Ǽ�';
comment on column FGYJPJXT_WSYYDJ.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_WSYYDJ.BH
  is '���';
comment on column FGYJPJXT_WSYYDJ.YYLARQ
  is 'ԤԼ��������';
comment on column FGYJPJXT_WSYYDJ.YYLARBH
  is 'ԤԼ�����˱��';
comment on column FGYJPJXT_WSYYDJ.YYLAR
  is 'ԤԼ������';
comment on column FGYJPJXT_WSYYDJ.YYLARBM
  is 'ԤԼ�����˲���';
comment on column FGYJPJXT_WSYYDJ.YYLASL
  is 'ԤԼ��������';

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
  is '����ͥ������';
comment on column FGYJPJXT_YXTSWS.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_YXTSWS.BH
  is '���';
comment on column FGYJPJXT_YXTSWS.LB
  is '���';
comment on column FGYJPJXT_YXTSWS.BM
  is '����';
comment on column FGYJPJXT_YXTSWS.RYBH
  is '��Ա���';
comment on column FGYJPJXT_YXTSWS.XM
  is '����';
comment on column FGYJPJXT_YXTSWS.SPZW
  is '����ְ��';
comment on column FGYJPJXT_YXTSWS.XZZW
  is '����ְ��';
comment on column FGYJPJXT_YXTSWS.AH
  is '����';
comment on column FGYJPJXT_YXTSWS.PCND
  is '�������';
comment on column FGYJPJXT_YXTSWS.PCQJ
  is '��������';

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
  is '�ۺϲ�����ϸ';
comment on column FGYJPJXT_ZHCPMX.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_ZHCPMX.BH
  is '���';
comment on column FGYJPJXT_ZHCPMX.BCPRBH
  is '�������˱��';
comment on column FGYJPJXT_ZHCPMX.BCPR
  is '��������';
comment on column FGYJPJXT_ZHCPMX.CPRBH
  is '�����˱��';
comment on column FGYJPJXT_ZHCPMX.CPR
  is '������';
comment on column FGYJPJXT_ZHCPMX.CPJG
  is '�������';
comment on column FGYJPJXT_ZHCPMX.CPRQ
  is '��������';
comment on column FGYJPJXT_ZHCPMX.TJRQ
  is '�ύ����';
comment on column FGYJPJXT_ZHCPMX.ZZPZDF
  is '����Ʒ�ʵ÷�';
comment on column FGYJPJXT_ZHCPMX.DJYSDF
  is '�����ʶ�÷�';
comment on column FGYJPJXT_ZHCPMX.SXPZDF
  is '˼��Ʒ�ʵ÷�';
comment on column FGYJPJXT_ZHCPMX.TJXZDF
  is '�Ž�Э���÷�';
comment on column FGYJPJXT_ZHCPMX.ZCGBDDF
  is '�в�ɲ��µ÷�';
comment on column FGYJPJXT_ZHCPMX.ZCGBNDF
  is '�в�ɲ��ܵ÷�';
comment on column FGYJPJXT_ZHCPMX.ZCGBQDF
  is '�в�ɲ��ڵ÷�';
comment on column FGYJPJXT_ZHCPMX.RYBH
  is '��Ա�仯';

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
  is '�ۺϲ�������';
comment on column FGYJPJXT_ZHCPZB.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_ZHCPZB.BH
  is '���';
comment on column FGYJPJXT_ZHCPZB.BM
  is '����';
comment on column FGYJPJXT_ZHCPZB.BCPRBH
  is '�������˱��';
comment on column FGYJPJXT_ZHCPZB.BCPR
  is '��������';
comment on column FGYJPJXT_ZHCPZB.CPND
  is '�������';
comment on column FGYJPJXT_ZHCPZB.CPQJ
  is '��������';
comment on column FGYJPJXT_ZHCPZB.CPRQ
  is '��������';
comment on column FGYJPJXT_ZHCPZB.CPNR
  is '��������';
comment on column FGYJPJXT_ZHCPZB.ZSFS
  is '���㷽ʽ';
comment on column FGYJPJXT_ZHCPZB.CPFS
  is '������ʽ';
comment on column FGYJPJXT_ZHCPZB.CPRY
  is '������Ա';
comment on column FGYJPJXT_ZHCPZB.CPJG
  is '�������';
comment on column FGYJPJXT_ZHCPZB.CPDF
  is '�����÷�';
comment on column FGYJPJXT_ZHCPZB.XFRQ
  is '�·�����';
comment on column FGYJPJXT_ZHCPZB.CPJSRQ
  is '������������';
comment on column FGYJPJXT_ZHCPZB.BZ
  is '��ע';
comment on column FGYJPJXT_ZHCPZB.DJRBH
  is '�Ǽ��˱��';
comment on column FGYJPJXT_ZHCPZB.DJR
  is '�Ǽ���';
comment on column FGYJPJXT_ZHCPZB.DJRQ
  is '�Ǽ�����';
comment on column FGYJPJXT_ZHCPZB.APRQ
  is '��������';
comment on column FGYJPJXT_ZHCPZB.SFZCGB
  is '�Ƿ��в�ɲ�';
comment on column FGYJPJXT_ZHCPZB.ZZTDDF
  is '����̬�ȵ÷�';
comment on column FGYJPJXT_ZHCPZB.DJYSDF
  is '�����ʶ�÷�';
comment on column FGYJPJXT_ZHCPZB.SXPZDF
  is '˼��Ʒ�ʵ÷�';
comment on column FGYJPJXT_ZHCPZB.TJXZDF
  is '�Ž�Э���÷�';
comment on column FGYJPJXT_ZHCPZB.ZCGBDDF
  is '�в�ɲ��µ÷�';
comment on column FGYJPJXT_ZHCPZB.ZCGBNDF
  is '�в�ɲ��ܵ÷�';
comment on column FGYJPJXT_ZHCPZB.ZCGBQDF
  is '�в�ɲ��ڵ÷�';
comment on column FGYJPJXT_ZHCPZB.DNQBLBZ
  is '�����ڲ�¼��־';
comment on column FGYJPJXT_ZHCPZB.CPRYBH
  is '������Ա���';

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
  is 'ִ�оְ참�������ݼ�¼';
comment on column FGYJPJXT_ZXJBANLSJJL.FYBM
  is '��Ժ����';
comment on column FGYJPJXT_ZXJBANLSJJL.BH
  is '���';
comment on column FGYJPJXT_ZXJBANLSJJL.LB
  is '���';
comment on column FGYJPJXT_ZXJBANLSJJL.JB
  is '����';
comment on column FGYJPJXT_ZXJBANLSJJL.BM
  is '����';
comment on column FGYJPJXT_ZXJBANLSJJL.RYBH
  is '��Ա���';
comment on column FGYJPJXT_ZXJBANLSJJL.XM
  is '����';
comment on column FGYJPJXT_ZXJBANLSJJL.RQ
  is '����';
comment on column FGYJPJXT_ZXJBANLSJJL.FS
  is '����';
comment on column FGYJPJXT_ZXJBANLSJJL.BZ
  is '��ע';
comment on column FGYJPJXT_ZXJBANLSJJL.DJSJ
  is '�Ǽ�ʱ��';
comment on column FGYJPJXT_ZXJBANLSJJL.DJRBH
  is '�Ǽ��˱��';
comment on column FGYJPJXT_ZXJBANLSJJL.DJR
  is '�Ǽ���';

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
  is '������ת��¼';
comment on column GWXT_GWLZJL.FYBM
  is '��Ժ����';
comment on column GWXT_GWLZJL.XH
  is '���';
comment on column GWXT_GWLZJL.GWBS
  is '���ı�ʶ';
comment on column GWXT_GWLZJL.LZMC
  is '��ת����';
comment on column GWXT_GWLZJL.FSRBS
  is '�����˱�ʶ';
comment on column GWXT_GWLZJL.FSR
  is '������';
comment on column GWXT_GWLZJL.FSSJ
  is '����ʱ��';
comment on column GWXT_GWLZJL.JSRBS
  is '�����˱�ʶ';
comment on column GWXT_GWLZJL.JSR
  is '������';
comment on column GWXT_GWLZJL.JSSJ
  is '����ʱ��';
comment on column GWXT_GWLZJL.PSNR
  is '��ʾ����';

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
  is '����ʵ��';
comment on column GWXT_GWST.FYBM
  is '��Ժ����';
comment on column GWXT_GWST.GWBS
  is '���ı�ʶ';
comment on column GWXT_GWST.XH
  is '���';
comment on column GWXT_GWST.STLX
  is 'ʵ������';
comment on column GWXT_GWST.WJMC
  is '�ļ�����';
comment on column GWXT_GWST.STWJM
  is 'ʵ���ļ���';

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
  is '����������Ϣ';
comment on column GWXT_GWZTXX.FYBM
  is '��Ժ����';
comment on column GWXT_GWZTXX.GWBS
  is '���ı�ʶ';
comment on column GWXT_GWZTXX.GWDL
  is '���Ĵ���';
comment on column GWXT_GWZTXX.GWXL
  is '����С��';
comment on column GWXT_GWZTXX.BT
  is '����';
comment on column GWXT_GWZTXX.WH
  is '�ĺ�';
comment on column GWXT_GWZTXX.BHNF
  is '������';
comment on column GWXT_GWZTXX.FYJC
  is '��Ժ���';
comment on column GWXT_GWZTXX.ZH
  is '�ֺ�';
comment on column GWXT_GWZTXX.HS
  is '����';
comment on column GWXT_GWZTXX.NGRBS
  is '����˱�ʶ';
comment on column GWXT_GWZTXX.NGR
  is '�����';
comment on column GWXT_GWZTXX.NGRQ
  is '�������';
comment on column GWXT_GWZTXX.BHRQ
  is '�������';
comment on column GWXT_GWZTXX.CBRBS
  is '�а��˱�ʶ';
comment on column GWXT_GWZTXX.CBR
  is '�а���';
comment on column GWXT_GWZTXX.CBBM
  is '�а첿��';
comment on column GWXT_GWZTXX.LJBS
  is '�˽��ʶ';
comment on column GWXT_GWZTXX.LJRQ
  is '�˽�����';
comment on column GWXT_GWZTXX.TQGDBS
  is '����鵵��ʶ';
comment on column GWXT_GWZTXX.TQGDRQ
  is '����鵵����';
comment on column GWXT_GWZTXX.GDBS
  is '�鵵��ʶ';
comment on column GWXT_GWZTXX.GDRQ
  is '�鵵����';
comment on column GWXT_GWZTXX.DJSY
  is '�Ǽ�����';
comment on column GWXT_GWZTXX.FSJG
  is '���ͻ���';
comment on column GWXT_GWZTXX.SJLWJSRQ
  is '�ϼ����Ľ�������';
comment on column GWXT_GWZTXX.SFFBDNWWZ
  is '�Ƿ񷢲���������վ';
comment on column GWXT_GWZTXX.BJAPRBS
  is '�༭�����˱�ʶ';
comment on column GWXT_GWZTXX.BJAPR
  is '�༭������';
comment on column GWXT_GWZTXX.BJRBS
  is '�༭�˱�ʶ';
comment on column GWXT_GWZTXX.BJR
  is '�༭��';
comment on column GWXT_GWZTXX.SQBJRQ
  is '����༭����';
comment on column GWXT_GWZTXX.BJRBJSJ
  is '�༭�˱༭ʱ��';
comment on column GWXT_GWZTXX.PZBS
  is '��ע��ʶ';
comment on column GWXT_GWZTXX.SQXXBSSJ
  is '������Ϣ����ʱ��';
comment on column GWXT_GWZTXX.XXBSSJ
  is '��Ϣ����ʱ��';
comment on column GWXT_GWZTXX.XXBSRBS
  is '��Ϣ�����˱�ʶ';
comment on column GWXT_GWZTXX.XXBSR
  is '��Ϣ������';
comment on column GWXT_GWZTXX.GLGWID
  is '��������ID';

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
  is '��ѯ�ظ���Ϣ';
comment on column HDJLXT_ZXHFXX.FYBM
  is '��Ժ����';
comment on column HDJLXT_ZXHFXX.HFBH
  is '�ظ����';
comment on column HDJLXT_ZXHFXX.ZXBS
  is '��ѯ��ʶ';
comment on column HDJLXT_ZXHFXX.HFSJ
  is '�ظ�ʱ��';
comment on column HDJLXT_ZXHFXX.HFNR
  is '�ظ�����';
comment on column HDJLXT_ZXHFXX.HFRBS
  is '�ظ��˱�ʶ';
comment on column HDJLXT_ZXHFXX.HFR
  is '�ظ���';

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
  is '��ѯ��Ϣ';
comment on column HDJLXT_ZXXX.FYBM
  is '��Ժ����';
comment on column HDJLXT_ZXXX.ZXBS
  is '��ѯ��ʶ';
comment on column HDJLXT_ZXXX.ZXRBS
  is '��ѯ�˱�ʶ';
comment on column HDJLXT_ZXXX.ZXR
  is '��ѯ��';
comment on column HDJLXT_ZXXX.ZXSJ
  is '��ѯʱ��';
comment on column HDJLXT_ZXXX.BT
  is '����';
comment on column HDJLXT_ZXXX.WTLB
  is '�������';
comment on column HDJLXT_ZXXX.WTNR
  is '��������';
comment on column HDJLXT_ZXXX.LXDH
  is '��ϵ�绰';
comment on column HDJLXT_ZXXX.JJYF
  is '�������';
comment on column HDJLXT_ZXXX.FSSJ
  is '����ʱ��';
comment on column HDJLXT_ZXXX.JSRBS
  is '�����˱�ʶ';
comment on column HDJLXT_ZXXX.JSR
  is '������';
comment on column HDJLXT_ZXXX.SFJS
  is '�Ƿ����';
comment on column HDJLXT_ZXXX.JSSJ
  is '����ʱ��';
comment on column HDJLXT_ZXXX.BJSYY
  is '������ԭ��';
comment on column HDJLXT_ZXXX.SFFB
  is '�Ƿ񷢲�';
comment on column HDJLXT_ZXXX.FBSJ
  is '����ʱ��';
comment on column HDJLXT_ZXXX.SFSC
  is '�Ƿ�ɾ��';
comment on column HDJLXT_ZXXX.YFSJSR
  is '�ѷ��ͽ�����';
comment on column HDJLXT_ZXXX.SFFF
  is '�Ƿ񷢷�';
comment on column HDJLXT_ZXXX.XZFRY
  is '��ת����Ա';

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
  is '���鷢����¼';
comment on column HYGLXT_HYFBJL.FYBM
  is '��Ժ����';
comment on column HYGLXT_HYFBJL.FBBS
  is '������ʶ';
comment on column HYGLXT_HYFBJL.HYBS
  is '�����ʶ';
comment on column HYGLXT_HYFBJL.JSRBS
  is '�����˱�ʶ';
comment on column HYGLXT_HYFBJL.JSR
  is '������';
comment on column HYGLXT_HYFBJL.JSRQ
  is '��������';
comment on column HYGLXT_HYFBJL.FBRBS
  is '�����˱�ʶ';
comment on column HYGLXT_HYFBJL.FBR
  is '������';
comment on column HYGLXT_HYFBJL.FBRQ
  is '��������';

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
  is '��������Ϣ';
comment on column HYGLXT_HYSXX.FYBM
  is '��Ժ����';
comment on column HYGLXT_HYSXX.HYSBS
  is '�����ұ�ʶ';
comment on column HYGLXT_HYSXX.HYSMC
  is '����������';
comment on column HYGLXT_HYSXX.FJH
  is '�����';
comment on column HYGLXT_HYSXX.RNRS
  is '��������';
comment on column HYGLXT_HYSXX.MJ
  is '���';
comment on column HYGLXT_HYSXX.HYSLB
  is '���������';
comment on column HYGLXT_HYSXX.SFYYJXSQ
  is '�Ƿ���Һ����ʾ��';
comment on column HYGLXT_HYSXX.SFZYKYYD
  is '�Ƿ����ο����ƶ�';
comment on column HYGLXT_HYSXX.SFYSWZT
  is '�Ƿ���ʵ��չ̨';
comment on column HYGLXT_HYSXX.SFTYY
  is '�Ƿ�ͶӰ��';
comment on column HYGLXT_HYSXX.SFYWLXXD
  is '�Ƿ���������Ϣ��';
comment on column HYGLXT_HYSXX.BZ
  is '��ע';

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
  is '������Ϣ';
comment on column HYGLXT_HYXX.FYBM
  is '��Ժ����';
comment on column HYGLXT_HYXX.HYBS
  is '�����ʶ';
comment on column HYGLXT_HYXX.SQRQ
  is '��������';
comment on column HYGLXT_HYXX.ZCRBS
  is '�����˱�ʶ';
comment on column HYGLXT_HYXX.ZCR
  is '������';
comment on column HYGLXT_HYXX.XBRBS
  is 'Э���˱�ʶ';
comment on column HYGLXT_HYXX.XBR
  is 'Э����';
comment on column HYGLXT_HYXX.CBDW
  is '�а쵥λ';
comment on column HYGLXT_HYXX.ZBDW
  is '���쵥λ';
comment on column HYGLXT_HYXX.CJRY
  is '�μ���Ա';
comment on column HYGLXT_HYXX.CJRS
  is '�μ�����';
comment on column HYGLXT_HYXX.KSSJ
  is '��ʼʱ��';
comment on column HYGLXT_HYXX.JSSJ
  is '����ʱ��';
comment on column HYGLXT_HYXX.HYSBS
  is '�����ұ�ʶ';
comment on column HYGLXT_HYXX.HYDD
  is '����ص�';
comment on column HYGLXT_HYXX.HYMC
  is '��������';
comment on column HYGLXT_HYXX.JC
  is '���';
comment on column HYGLXT_HYXX.GJC
  is '�ؼ���';
comment on column HYGLXT_HYXX.ZTC
  is '�����';
comment on column HYGLXT_HYXX.ZYNR
  is '��Ҫ����';
comment on column HYGLXT_HYXX.HYYQ
  is '����Ҫ��';
comment on column HYGLXT_HYXX.SFXYHB
  is '�Ƿ���Ҫ���';
comment on column HYGLXT_HYXX.HBNR
  is '�������';
comment on column HYGLXT_HYXX.SFXYZQ
  is '�Ƿ���Ҫ��ǩ';
comment on column HYGLXT_HYXX.ZQNR
  is '��ǩ����';
comment on column HYGLXT_HYXX.SFXYSG
  is '�Ƿ���Ҫˮ��';
comment on column HYGLXT_HYXX.SFXYCH
  is '�Ƿ���Ҫ�廨';
comment on column HYGLXT_HYXX.SFXYTY
  is '�Ƿ���ҪͶӰ';
comment on column HYGLXT_HYXX.SFXYFWRY
  is '�Ƿ���Ҫ������Ա';
comment on column HYGLXT_HYXX.SPRBS
  is '�����˱�ʶ';
comment on column HYGLXT_HYXX.SPR
  is '������';
comment on column HYGLXT_HYXX.SPYJ
  is '�������';
comment on column HYGLXT_HYXX.SPRQ
  is '��������';
comment on column HYGLXT_HYXX.SPSFPZ
  is '�����Ƿ���׼';
comment on column HYGLXT_HYXX.SFFB
  is '�Ƿ񷢲�';
comment on column HYGLXT_HYXX.FBRQ
  is '��������';

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
  is '�Ӵ������¼';
comment on column JDGLXT_JDBLJL.FYBM
  is '��Ժ����';
comment on column JDGLXT_JDBLJL.XH
  is '���';
comment on column JDGLXT_JDBLJL.JDBS
  is '�Ӵ���ʶ';
comment on column JDGLXT_JDBLJL.GZMC
  is '��������';
comment on column JDGLXT_JDBLJL.FSRBS
  is '�����˱�ʶ';
comment on column JDGLXT_JDBLJL.FSR
  is '������';
comment on column JDGLXT_JDBLJL.FSSJ
  is '����ʱ��';
comment on column JDGLXT_JDBLJL.JSRBS
  is '�����˱�ʶ';
comment on column JDGLXT_JDBLJL.JSR
  is '������';
comment on column JDGLXT_JDBLJL.JSSJ
  is '����ʱ��';

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
  is '�Ӵ��ƻ�';
comment on column JDGLXT_JDJH.XH
  is '���';
comment on column JDGLXT_JDJH.JDBS
  is '�Ӵ���ʶ';
comment on column JDGLXT_JDJH.JDKSSJ
  is '�Ӵ���ʼʱ��';
comment on column JDGLXT_JDJH.JDJSSJ
  is '�Ӵ�����ʱ��';
comment on column JDGLXT_JDJH.CJRY
  is '�μ���Ա';
comment on column JDGLXT_JDJH.APSX
  is '��������';
comment on column JDGLXT_JDJH.SFZT
  is '�Ƿ���̸';
comment on column JDGLXT_JDJH.ZTDD
  is '��̸�ص�';
comment on column JDGLXT_JDJH.BZ
  is '��ע';

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
  is '�Ӵ�ʵ��';
comment on column JDGLXT_JDST.FYBM
  is '��Ժ����';
comment on column JDGLXT_JDST.JDBS
  is '�Ӵ���ʶ';
comment on column JDGLXT_JDST.XH
  is '���';
comment on column JDGLXT_JDST.STLX
  is 'ʵ������';
comment on column JDGLXT_JDST.WJMC
  is '�ļ�����';
comment on column JDGLXT_JDST.STWJM
  is 'ʵ���ļ���';

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
  is '�Ӵ�������Ϣ';
comment on column JDGLXT_JDZTXX.FYBM
  is '��Ժ����';
comment on column JDGLXT_JDZTXX.JDBS
  is '�Ӵ���ʶ';
comment on column JDGLXT_JDZTXX.JDBH
  is '�Ӵ����';
comment on column JDGLXT_JDZTXX.BHNF
  is '������';
comment on column JDGLXT_JDZTXX.FYJC
  is '��Ժ���';
comment on column JDGLXT_JDZTXX.BHZH
  is '����ֺ�';
comment on column JDGLXT_JDZTXX.HS
  is '����';
comment on column JDGLXT_JDZTXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column JDGLXT_JDZTXX.DJR
  is '�Ǽ���';
comment on column JDGLXT_JDZTXX.DJRQ
  is '�Ǽ�����';
comment on column JDGLXT_JDZTXX.LFJB
  is '���ü���';
comment on column JDGLXT_JDZTXX.DWXZ
  is '��λ����';
comment on column JDGLXT_JDZTXX.ZYX
  is '��Ҫ��';
comment on column JDGLXT_JDZTXX.LFS
  is '����ʡ';
comment on column JDGLXT_JDZTXX.LFZ
  is '������';
comment on column JDGLXT_JDZTXX.LFQ
  is '������';
comment on column JDGLXT_JDZTXX.LFDW
  is '���õ�λ';
comment on column JDGLXT_JDZTXX.LFRQ
  is '��������';
comment on column JDGLXT_JDZTXX.DDLD
  is '�����쵼';
comment on column JDGLXT_JDZTXX.DDLDZW
  is '�����쵼ְ��';
comment on column JDGLXT_JDZTXX.DDLDLXFS
  is '�����쵼��ϵ��ʽ';
comment on column JDGLXT_JDZTXX.LFLXR
  is '������ϵ��';
comment on column JDGLXT_JDZTXX.LXRLXFS
  is '��ϵ����ϵ��ʽ';
comment on column JDGLXT_JDZTXX.QTLFRY
  is '����������Ա';
comment on column JDGLXT_JDZTXX.LFCS
  is '���ô���';
comment on column JDGLXT_JDZTXX.JDBM
  is '�Ӵ�����';
comment on column JDGLXT_JDZTXX.LFMD
  is '����Ŀ��';
comment on column JDGLXT_JDZTXX.JLNR
  is '��������';
comment on column JDGLXT_JDZTXX.JDFS
  is '�Ӵ���ʽ';
comment on column JDGLXT_JDZTXX.JDYJ
  is '�Ӵ��þ�';
comment on column JDGLXT_JDZTXX.JDYJPS
  is '�Ӵ��þ�ƿ��';
comment on column JDGLXT_JDZTXX.CBRBS
  is '�а��˱�ʶ';
comment on column JDGLXT_JDZTXX.CBR
  is '�а���';
comment on column JDGLXT_JDZTXX.CBBM
  is '�а첿��';
comment on column JDGLXT_JDZTXX.LJBS
  is '�˽��ʶ';
comment on column JDGLXT_JDZTXX.LJRQ
  is '�˽�����';

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
  is '����ί��˾����������ơ���������ȷ����';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.FYBM
  is '��Ժ����';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.XH
  is '���';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.WDBH
  is '�ĵ����';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.JDSX
  is '��������';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.QDSJ
  is 'ȷ��ʱ��';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.QDJG
  is 'ȷ������';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.QDFS
  is 'ȷ����ʽ';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.JSSRY
  is '��������Ա';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.JJRY
  is '�ͼ���Ա';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.DQSJ
  is '����ʱ��';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.JGDH
  is '�����绰';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.BGDH
  is '�칫�绰';
comment on column JDPGXT_DWWTSFJDSJPGJGQDS.BZ
  is '��ע';

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
  is '�������ü����⡢��������';
comment on column JDPGXT_JDFYJMHSPB.FYBM
  is '��Ժ����';
comment on column JDPGXT_JDFYJMHSPB.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_JDFYJMHSPB.XH
  is '���';
comment on column JDPGXT_JDFYJMHSPB.WDBH
  is '�ĵ����';
comment on column JDPGXT_JDFYJMHSPB.SX
  is '����';
comment on column JDPGXT_JDFYJMHSPB.FY
  is '����';
comment on column JDPGXT_JDFYJMHSPB.SQSJ
  is '����ʱ��';
comment on column JDPGXT_JDFYJMHSPB.LY
  is '����';

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
  is '��������ʵ���ļ���Ϣ';
comment on column JDPGXT_JDPGSTWJXX.FYBM
  is '��Ժ����';
comment on column JDPGXT_JDPGSTWJXX.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_JDPGSTWJXX.XH
  is '���';
comment on column JDPGXT_JDPGSTWJXX.STLX
  is 'ʵ������';
comment on column JDPGXT_JDPGSTWJXX.WJMC
  is '�ļ�����';
comment on column JDPGXT_JDPGSTWJXX.STWJM
  is 'ʵ���ļ���';

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
  is '��������������Ϣ';
comment on column JDPGXT_JDPGZTXX.FYBM
  is '��Ժ����';
comment on column JDPGXT_JDPGZTXX.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_JDPGZTXX.WTLB
  is 'ί�����';
comment on column JDPGXT_JDPGZTXX.WTXL
  is 'ί��С��';
comment on column JDPGXT_JDPGZTXX.JDPGBH
  is '�����������';
comment on column JDPGXT_JDPGZTXX.BHN
  is '�����';
comment on column JDPGXT_JDPGZTXX.FYJC
  is '��Ժ���';
comment on column JDPGXT_JDPGZTXX.BHAZ
  is '��Ű���';
comment on column JDPGXT_JDPGZTXX.BHHS
  is '��ź���';
comment on column JDPGXT_JDPGZTXX.YSRQ
  is '��������';
comment on column JDPGXT_JDPGZTXX.YSBM
  is '���Ͳ���';
comment on column JDPGXT_JDPGZTXX.SJAJBH
  is '�漰�������';
comment on column JDPGXT_JDPGZTXX.AJYSCBRBS
  is '����ԭ��а��˱�ʶ';
comment on column JDPGXT_JDPGZTXX.AJYSCBR
  is '����ԭ��а���';
comment on column JDPGXT_JDPGZTXX.YSCBRLXDH
  is 'ԭ��а�����ϵ�绰';
comment on column JDPGXT_JDPGZTXX.YSAH
  is 'ԭ�󰸺�';
comment on column JDPGXT_JDPGZTXX.YSAY
  is 'ԭ����';
comment on column JDPGXT_JDPGZTXX.YSCBT
  is 'ԭ��а�ͥ';
comment on column JDPGXT_JDPGZTXX.YSYS
  is '����ԭ��';
comment on column JDPGXT_JDPGZTXX.SQR
  is '������';
comment on column JDPGXT_JDPGZTXX.SQRLXDH
  is '��������ϵ�绰';
comment on column JDPGXT_JDPGZTXX.BSQR
  is '��������';
comment on column JDPGXT_JDPGZTXX.BSQRLXDH
  is '����������ϵ�绰';
comment on column JDPGXT_JDPGZTXX.WTSY
  is 'ί������';
comment on column JDPGXT_JDPGZTXX.SQFZR
  is '���븺����';
comment on column JDPGXT_JDPGZTXX.BSQFZR
  is '�����븺����';
comment on column JDPGXT_JDPGZTXX.AQZY
  is '����ժҪ';
comment on column JDPGXT_JDPGZTXX.JDBDJBDW
  is '������ļ������';
comment on column JDPGXT_JDPGZTXX.GFDSRHDLRLXFS
  is '���������˻��������ϵ��ʽ';
comment on column JDPGXT_JDPGZTXX.YJJDFYF
  is 'Ԥ�ɼ������÷�';
comment on column JDPGXT_JDPGZTXX.SFYXGK
  is '�Ƿ�������';
comment on column JDPGXT_JDPGZTXX.SFYGK
  is '�Ƿ��ѹ���';
comment on column JDPGXT_JDPGZTXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column JDPGXT_JDPGZTXX.DJR
  is '�Ǽ���';
comment on column JDPGXT_JDPGZTXX.DJRQ
  is '�Ǽ�����';
comment on column JDPGXT_JDPGZTXX.SPRYBS
  is '������һ��ʶ';
comment on column JDPGXT_JDPGZTXX.SPRY
  is '������һ';
comment on column JDPGXT_JDPGZTXX.SPRYSPRQ
  is '������һ��������';
comment on column JDPGXT_JDPGZTXX.SPRYSFPZ
  is '������һ�Ƿ���׼';
comment on column JDPGXT_JDPGZTXX.SPRYSPYJ
  is '������һ�������';
comment on column JDPGXT_JDPGZTXX.SPREBS
  is '�����˶���ʶ';
comment on column JDPGXT_JDPGZTXX.SPRE
  is '�����˶�';
comment on column JDPGXT_JDPGZTXX.SPRESPRQ
  is '�����˶���������';
comment on column JDPGXT_JDPGZTXX.SPRESFPZ
  is '�����˶��Ƿ���׼';
comment on column JDPGXT_JDPGZTXX.SPRESPYJ
  is '�����˶��������';
comment on column JDPGXT_JDPGZTXX.SPRSBS
  is '����������ʶ';
comment on column JDPGXT_JDPGZTXX.SPRS
  is '��������';
comment on column JDPGXT_JDPGZTXX.SPRSSPRQ
  is '����������������';
comment on column JDPGXT_JDPGZTXX.SPRSSFPZ
  is '���������Ƿ���׼';
comment on column JDPGXT_JDPGZTXX.SPRSSPYJ
  is '���������������';
comment on column JDPGXT_JDPGZTXX.SXJSRQ
  is '���޽�������';
comment on column JDPGXT_JDPGZTXX.CBRBS
  is '�а��˱�ʶ';
comment on column JDPGXT_JDPGZTXX.CBR
  is '�а���';
comment on column JDPGXT_JDPGZTXX.CBSPT
  is '�а�����ͥ';
comment on column JDPGXT_JDPGZTXX.JABZ
  is '�᰸��־';
comment on column JDPGXT_JDPGZTXX.JARQ
  is '�᰸����';
comment on column JDPGXT_JDPGZTXX.SFTQGD
  is '�Ƿ�����鵵';
comment on column JDPGXT_JDPGZTXX.TQGDRQ
  is '����鵵����';
comment on column JDPGXT_JDPGZTXX.SCGDRQ
  is '���鵵����';
comment on column JDPGXT_JDPGZTXX.GDH
  is '�鵵��';
comment on column JDPGXT_JDPGZTXX.GDRQ
  is '�鵵����';
comment on column JDPGXT_JDPGZTXX.FARQ
  is '�ְ�����';
comment on column JDPGXT_JDPGZTXX.SFDJ
  is '�Ƿ񶳽�';
comment on column JDPGXT_JDPGZTXX.YQTS
  is '��������';
comment on column JDPGXT_JDPGZTXX.SFYQ
  is '�Ƿ�����';
comment on column JDPGXT_JDPGZTXX.KCTS
  is '�۳�����';
comment on column JDPGXT_JDPGZTXX.YWTCBRYJ
  is 'ҵ��ͥ�а������';
comment on column JDPGXT_JDPGZTXX.BMFZRBS
  is '���Ÿ����˱�ʶ';
comment on column JDPGXT_JDPGZTXX.BMFZR
  is '���Ÿ�����';
comment on column JDPGXT_JDPGZTXX.BMFZRSFPZ
  is '���Ÿ������Ƿ���׼';
comment on column JDPGXT_JDPGZTXX.BMFZRSPYJ
  is '���Ÿ������������';
comment on column JDPGXT_JDPGZTXX.BMFZRSPRQ
  is '���Ÿ�������������';
comment on column JDPGXT_JDPGZTXX.TZZT
  is 'ֹͣ״̬';
comment on column JDPGXT_JDPGZTXX.SFFHXZGZTZS
  is '�Ƿ񷢻�Э������֪ͨ��';
comment on column JDPGXT_JDPGZTXX.YJGZJSRQ
  is '�ƽ�������������';
comment on column JDPGXT_JDPGZTXX.SFYY
  is '�Ƿ�����';
comment on column JDPGXT_JDPGZTXX.SFYYYCL
  is '�Ƿ������Ѵ���';

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
  is '��������ơ�����������ֹ����';
comment on column JDPGXT_JDSJPGGZZZBG.FYBM
  is '��Ժ����';
comment on column JDPGXT_JDSJPGGZZZBG.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_JDSJPGGZZZBG.XH
  is '���';
comment on column JDPGXT_JDSJPGGZZZBG.WDBH
  is '�ĵ����';
comment on column JDPGXT_JDSJPGGZZZBG.SQRBS
  is '�����˱�ʶ';
comment on column JDPGXT_JDSJPGGZZZBG.SQR
  is '������';
comment on column JDPGXT_JDSJPGGZZZBG.ZZGZSY
  is '��ֹ��������';
comment on column JDPGXT_JDSJPGGZZZBG.SFZGDSJNBJFY
  is '�Ƿ��ڹ涨ʱ���ڲ�������';
comment on column JDPGXT_JDSJPGGZZZBG.SFRQJX
  is '�Ƿ����ڽ���';
comment on column JDPGXT_JDSJPGGZZZBG.SFDJJA
  is '�Ƿ����᰸';
comment on column JDPGXT_JDSJPGGZZZBG.YFDSRSFDC
  is 'һ���������Ƿ񵽳�';
comment on column JDPGXT_JDSJPGGZZZBG.QT
  is '����';
comment on column JDPGXT_JDSJPGGZZZBG.CBRYJ
  is '�а������';

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
  is '��������ơ������������������';
comment on column JDPGXT_JDSJPGJGBGSPB.FYBM
  is '��Ժ����';
comment on column JDPGXT_JDSJPGJGBGSPB.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_JDSJPGJGBGSPB.XH
  is '���';
comment on column JDPGXT_JDSJPGJGBGSPB.WDBH
  is '�ĵ����';
comment on column JDPGXT_JDSJPGJGBGSPB.SQRBS
  is '�����˱�ʶ';
comment on column JDPGXT_JDSJPGJGBGSPB.SQR
  is '������';
comment on column JDPGXT_JDSJPGJGBGSPB.SY
  is '����';
comment on column JDPGXT_JDSJPGJGBGSPB.CBRYJ
  is '�а������';

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
  is '������������������̿��Ʊ�';
comment on column JDPGXT_JDSJPGPMLCKZB.FYBM
  is '��Ժ����';
comment on column JDPGXT_JDSJPGPMLCKZB.XH
  is '���';
comment on column JDPGXT_JDSJPGPMLCKZB.TSFW
  is '��ʾ��Χ';
comment on column JDPGXT_JDSJPGPMLCKZB.TSJB
  is '��ʾ����';
comment on column JDPGXT_JDSJPGPMLCKZB.LCMC
  is '��������';
comment on column JDPGXT_JDSJPGPMLCKZB.JCTJ
  is '�������';
comment on column JDPGXT_JDSJPGPMLCKZB.TSTS
  is '��ʾ����';
comment on column JDPGXT_JDSJPGPMLCKZB.SFPC
  is '�Ƿ��ų�';

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
  is '������������������̿��Ƽ�¼';
comment on column JDPGXT_JDSJPGPMLCKZJL.FYBM
  is '��Ժ����';
comment on column JDPGXT_JDSJPGPMLCKZJL.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_JDSJPGPMLCKZJL.XH
  is '���';
comment on column JDPGXT_JDSJPGPMLCKZJL.LCBH
  is '���̱��';
comment on column JDPGXT_JDSJPGPMLCKZJL.JCRQ
  is '�������';
comment on column JDPGXT_JDSJPGPMLCKZJL.TSTS
  is '��ʾ����';
comment on column JDPGXT_JDSJPGPMLCKZJL.TSNR
  is '��ʾ����';
comment on column JDPGXT_JDSJPGPMLCKZJL.BM
  is '����';
comment on column JDPGXT_JDSJPGPMLCKZJL.TSRBS
  is '��ʾ�˱�ʶ';
comment on column JDPGXT_JDSJPGPMLCKZJL.TSR
  is '��ʾ��';

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
  is '��������ơ��������޻ָ�������';
comment on column JDPGXT_JDSJPGQXHFSPB.FYBM
  is '��Ժ����';
comment on column JDPGXT_JDSJPGQXHFSPB.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_JDSJPGQXHFSPB.XH
  is '���';
comment on column JDPGXT_JDSJPGQXHFSPB.WDBH
  is '�ĵ����';
comment on column JDPGXT_JDSJPGQXHFSPB.SQRQ
  is '��������';
comment on column JDPGXT_JDSJPGQXHFSPB.SQJG
  is '������';
comment on column JDPGXT_JDSJPGQXHFSPB.LY
  is '����';
comment on column JDPGXT_JDSJPGQXHFSPB.TCSPRBS
  is 'ͥ�������˱�ʶ';
comment on column JDPGXT_JDSJPGQXHFSPB.TCSPR
  is 'ͥ��������';
comment on column JDPGXT_JDSJPGQXHFSPB.TCSFPZ
  is 'ͥ���Ƿ���׼';
comment on column JDPGXT_JDSJPGQXHFSPB.TCSPYJ
  is 'ͥ���������';
comment on column JDPGXT_JDSJPGQXHFSPB.TCSPRQ
  is 'ͥ����������';
comment on column JDPGXT_JDSJPGQXHFSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column JDPGXT_JDSJPGQXHFSPB.YCSPR
  is 'Ժ��������';
comment on column JDPGXT_JDSJPGQXHFSPB.YCSFPZ
  is 'Ժ���Ƿ���׼';
comment on column JDPGXT_JDSJPGQXHFSPB.YCSPYJ
  is 'Ժ���������';
comment on column JDPGXT_JDSJPGQXHFSPB.YCSPRQ
  is 'Ժ����������';

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
  is '��������ơ�������������������';
comment on column JDPGXT_JDSJPGQXYQSPB.FYBM
  is '��Ժ����';
comment on column JDPGXT_JDSJPGQXYQSPB.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_JDSJPGQXYQSPB.XH
  is '���';
comment on column JDPGXT_JDSJPGQXYQSPB.WDBH
  is '�ĵ����';
comment on column JDPGXT_JDSJPGQXYQSPB.SQJG
  is '�������';
comment on column JDPGXT_JDSJPGQXYQSPB.LY
  is '����';
comment on column JDPGXT_JDSJPGQXYQSPB.YQTS
  is '��������';
comment on column JDPGXT_JDSJPGQXYQSPB.TCSPRBS
  is 'ͥ�������˱�ʶ';
comment on column JDPGXT_JDSJPGQXYQSPB.TCSPR
  is 'ͥ��������';
comment on column JDPGXT_JDSJPGQXYQSPB.TCSFPZ
  is 'ͥ���Ƿ���׼';
comment on column JDPGXT_JDSJPGQXYQSPB.TCSPYJ
  is 'ͥ���������';
comment on column JDPGXT_JDSJPGQXYQSPB.TCSPRQ
  is 'ͥ����������';
comment on column JDPGXT_JDSJPGQXYQSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column JDPGXT_JDSJPGQXYQSPB.YCSPR
  is 'Ժ��������';
comment on column JDPGXT_JDSJPGQXYQSPB.YCSFPZ
  is 'Ժ���Ƿ���׼';
comment on column JDPGXT_JDSJPGQXYQSPB.YCSPYJ
  is 'Ժ���������';
comment on column JDPGXT_JDSJPGQXYQSPB.YCSPRQ
  is 'Ժ����������';

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
  is '��������ơ��������޿۳���';
comment on column JDPGXT_JDSJPGSXKCB.FYBM
  is '��Ժ����';
comment on column JDPGXT_JDSJPGSXKCB.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_JDSJPGSXKCB.XH
  is '���';
comment on column JDPGXT_JDSJPGSXKCB.LX
  is '����';
comment on column JDPGXT_JDSJPGSXKCB.LY
  is '����';
comment on column JDPGXT_JDSJPGSXKCB.KSSJ
  is '��ʼʱ��';
comment on column JDPGXT_JDSJPGSXKCB.JSSJ
  is '����ʱ��';
comment on column JDPGXT_JDSJPGSXKCB.YHMC
  is '�û�����';

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
  is '�ɷѵǼǱ�';
comment on column JDPGXT_JFDJB.FYBM
  is '��Ժ����';
comment on column JDPGXT_JFDJB.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_JFDJB.XH
  is '���';
comment on column JDPGXT_JFDJB.YJFFDSR
  is 'Ԥ�ɷѷ�������';
comment on column JDPGXT_JFDJB.YJFSJ
  is 'Ԥ�ɷ�ʱ��';
comment on column JDPGXT_JFDJB.YJFJE
  is 'Ԥ�ɷѽ��';
comment on column JDPGXT_JFDJB.JFSDRQ
  is '�ɷ��յ�����';
comment on column JDPGXT_JFDJB.CJWTSSJ
  is '����ί����ʱ��';

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
  is '�ɿ�֪ͨ��';
comment on column JDPGXT_JKTZS.FYBM
  is '��Ժ����';
comment on column JDPGXT_JKTZS.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_JKTZS.XH
  is '���';
comment on column JDPGXT_JKTZS.WDBH
  is '�ĵ����';
comment on column JDPGXT_JKTZS.SQR
  is '������';
comment on column JDPGXT_JKTZS.KHX
  is '������';
comment on column JDPGXT_JKTZS.JNJE
  is '���ɽ��';
comment on column JDPGXT_JKTZS.SDRQ
  is '�ʹ�����';

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
  is '����ر�������';
comment on column JDPGXT_SQHBSPB.FYBM
  is '��Ժ����';
comment on column JDPGXT_SQHBSPB.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_SQHBSPB.XH
  is '���';
comment on column JDPGXT_SQHBSPB.BH
  is '���';
comment on column JDPGXT_SQHBSPB.SQR
  is '������';
comment on column JDPGXT_SQHBSPB.SQRQ
  is '��������';
comment on column JDPGXT_SQHBSPB.SQLY
  is '��������';
comment on column JDPGXT_SQHBSPB.YSSJ
  is '����ʱ��';
comment on column JDPGXT_SQHBSPB.JSSPYJSSJ
  is '�������������ʱ��';
comment on column JDPGXT_SQHBSPB.TZDSRSJ
  is '֪ͨ������ʱ��';

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
  is '�ƽ���������������';
comment on column JDPGXT_YJCLYQSPB.FYBM
  is '��Ժ����';
comment on column JDPGXT_YJCLYQSPB.JDSJPGPMBS
  is '�����������������ʶ';
comment on column JDPGXT_YJCLYQSPB.XH
  is '���';
comment on column JDPGXT_YJCLYQSPB.WDBH
  is '�ĵ����';
comment on column JDPGXT_YJCLYQSPB.SQJG
  is '�������';
comment on column JDPGXT_YJCLYQSPB.LY
  is '����';
comment on column JDPGXT_YJCLYQSPB.YQTS
  is '��������';
comment on column JDPGXT_YJCLYQSPB.TCSPRBS
  is 'ͥ�������˱�ʶ';
comment on column JDPGXT_YJCLYQSPB.TCSPR
  is 'ͥ��������';
comment on column JDPGXT_YJCLYQSPB.TCSFPZ
  is 'ͥ���Ƿ���׼';
comment on column JDPGXT_YJCLYQSPB.TCSPYJ
  is 'ͥ���������';
comment on column JDPGXT_YJCLYQSPB.TCSPRQ
  is 'ͥ����������';
comment on column JDPGXT_YJCLYQSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column JDPGXT_YJCLYQSPB.YCSPR
  is 'Ժ��������';
comment on column JDPGXT_YJCLYQSPB.YCSFPZ
  is 'Ժ���Ƿ���׼';
comment on column JDPGXT_YJCLYQSPB.YCSPYJ
  is 'Ժ���������';
comment on column JDPGXT_YJCLYQSPB.YCSPRQ
  is 'Ժ����������';

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
  is '�Ƽ���ͥ������Ϣ';
comment on column KJFTXT_KJFTPQXX.FYBM
  is '��Ժ����';
comment on column KJFTXT_KJFTPQXX.BH
  is '���';
comment on column KJFTXT_KJFTPQXX.TSBH
  is 'ͥ����';
comment on column KJFTXT_KJFTPQXX.AJBS
  is '������ʶ';
comment on column KJFTXT_KJFTPQXX.SPTMC
  is '����ͥ����';
comment on column KJFTXT_KJFTPQXX.YJKTSJ
  is 'Ԥ�ƿ�ͥʱ��';
comment on column KJFTXT_KJFTPQXX.YJJSSJ
  is 'Ԥ�ƽ���ʱ��';
comment on column KJFTXT_KJFTPQXX.APRBS
  is '�����˱�ʶ';
comment on column KJFTXT_KJFTPQXX.APR
  is '������';
comment on column KJFTXT_KJFTPQXX.RQ
  is '����';
comment on column KJFTXT_KJFTPQXX.BZ
  is '��ע';
comment on column KJFTXT_KJFTPQXX.XH
  is '���';
comment on column KJFTXT_KJFTPQXX.SFFSDWZ
  is '�Ƿ��͵���վ';
comment on column KJFTXT_KJFTPQXX.SJYBS
  is '���Ա��ʶ';
comment on column KJFTXT_KJFTPQXX.SJY
  is '���Ա';
comment on column KJFTXT_KJFTPQXX.SFGKSL
  is '�Ƿ񹫿�����';
comment on column KJFTXT_KJFTPQXX.RS
  is '����';

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
  is '�Ƽ���ͥ��Ƶͨ����Ϣ';
comment on column KJFTXT_KJFTSPTDXX.FYBM
  is '��Ժ����';
comment on column KJFTXT_KJFTSPTDXX.BH
  is '���';
comment on column KJFTXT_KJFTSPTDXX.SPTBH
  is '����ͥ���';
comment on column KJFTXT_KJFTSPTDXX.SPTMC
  is '����ͥ����';
comment on column KJFTXT_KJFTSPTDXX.IPDZ
  is 'IP��ַ';
comment on column KJFTXT_KJFTSPTDXX.DKH
  is '�˿ں�';
comment on column KJFTXT_KJFTSPTDXX.YHM
  is '�û���';
comment on column KJFTXT_KJFTSPTDXX.MM
  is '����';
comment on column KJFTXT_KJFTSPTDXX.SPLX
  is '��Ƶ����';
comment on column KJFTXT_KJFTSPTDXX.RJLX
  is '�������';
comment on column KJFTXT_KJFTSPTDXX.TDHZS
  is 'ͨ��������';
comment on column KJFTXT_KJFTSPTDXX.FGTDH
  is '����ͨ����';
comment on column KJFTXT_KJFTSPTDXX.YGTDH
  is 'ԭ��ͨ����';
comment on column KJFTXT_KJFTSPTDXX.BGTDH
  is '����ͨ����';
comment on column KJFTXT_KJFTSPTDXX.BHRTD
  is '�绤��ͨ��';
comment on column KJFTXT_KJFTSPTDXX.QJTD
  is 'ȫ��ͨ��';
comment on column KJFTXT_KJFTSPTDXX.SFDYTKZ
  is '�Ƿ����̨����';
comment on column KJFTXT_KJFTSPTDXX.ZHKTAJSXH
  is '���ͥ����˳���';
comment on column KJFTXT_KJFTSPTDXX.ZHKTSJYIP
  is '���ͥ���Աip';
comment on column KJFTXT_KJFTSPTDXX.LXJSJIP
  is '¼������ip';
comment on column KJFTXT_KJFTSPTDXX.LXWJKZM
  is '¼���ļ���չ��';
comment on column KJFTXT_KJFTSPTDXX.SPCCLJ
  is '��Ƶ�洢·��';

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
  is 'ͥ����ϸ';
comment on column KJFTXT_TSMX.FYBM
  is '��Ժ����';
comment on column KJFTXT_TSMX.BH
  is '���';
comment on column KJFTXT_TSMX.TSBH
  is 'ͥ����';
comment on column KJFTXT_TSMX.CS
  is '����';
comment on column KJFTXT_TSMX.SM
  is '˵��';
comment on column KJFTXT_TSMX.JLRBS
  is '��¼�˱�ʶ';
comment on column KJFTXT_TSMX.JLR
  is '��¼��';
comment on column KJFTXT_TSMX.YCM
  is 'Զ����';
comment on column KJFTXT_TSMX.JLSJ
  is '��¼ʱ��';
comment on column KJFTXT_TSMX.KSSJ
  is '��ʼʱ��';
comment on column KJFTXT_TSMX.JSSJ
  is '����ʱ��';
comment on column KJFTXT_TSMX.TDH
  is 'ͨ����';
comment on column KJFTXT_TSMX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column KJFTXT_TSMX.DJRQ
  is '�Ǽ�����';

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
  is 'ͥ����Ϣ';
comment on column KJFTXT_TSXX.FYBM
  is '��Ժ����';
comment on column KJFTXT_TSXX.TSBH
  is 'ͥ����';
comment on column KJFTXT_TSXX.AJBS
  is '������ʶ';
comment on column KJFTXT_TSXX.AH
  is '����';
comment on column KJFTXT_TSXX.TSCS
  is 'ͥ�����';
comment on column KJFTXT_TSXX.JHKTRQ
  is '�ƻ���ͥ����';
comment on column KJFTXT_TSXX.BLNR
  is '��¼����';
comment on column KJFTXT_TSXX.BM
  is '����';
comment on column KJFTXT_TSXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column KJFTXT_TSXX.DJR
  is '�Ǽ���';
comment on column KJFTXT_TSXX.DJRQ
  is '�Ǽ�����';
comment on column KJFTXT_TSXX.JSRQ
  is '��������';
comment on column KJFTXT_TSXX.SPFT
  is '���з�ͥ';
comment on column KJFTXT_TSXX.SPWJLJ
  is '��Ƶ�ļ�·��';
comment on column KJFTXT_TSXX.TYWJLB
  is 'ͶӰ�ļ��б�';
comment on column KJFTXT_TSXX.RQ
  is '����';
comment on column KJFTXT_TSXX.HBAJLB
  is '�ϲ������б�';
comment on column KJFTXT_TSXX.ZDGLBZ
  is '�Զ������־';
comment on column KJFTXT_TSXX.KTRQ
  is '��ͥ����';
comment on column KJFTXT_TSXX.PQBH
  is '���ڱ��';

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
  is 'ǩ�ּ�¼';
comment on column MSSPJH_QZJL.FYBM
  is '��Ժ����';
comment on column MSSPJH_QZJL.BH
  is '���';
comment on column MSSPJH_QZJL.WSBS
  is '�����ʶ';
comment on column MSSPJH_QZJL.QZNR
  is 'ǩ������';
comment on column MSSPJH_QZJL.CJRQ
  is '��������';
comment on column MSSPJH_QZJL.XGRQ
  is '�޸�����';

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
  is '�Զ�������';
comment on column MSSPJH_ZDYWS.FYBM
  is '��Ժ����';
comment on column MSSPJH_ZDYWS.BH
  is '���';
comment on column MSSPJH_ZDYWS.WSBH
  is '������';
comment on column MSSPJH_ZDYWS.WSMC
  is '��������';
comment on column MSSPJH_ZDYWS.SJ
  is '����';
comment on column MSSPJH_ZDYWS.WJJLRBS
  is '�ļ������˱�ʶ';
comment on column MSSPJH_ZDYWS.WJJLR
  is '�ļ�������';
comment on column MSSPJH_ZDYWS.JLRQ
  is '��������';
comment on column MSSPJH_ZDYWS.AJBS
  is '������ʶ';
comment on column MSSPJH_ZDYWS.ZDYYA
  is '�Զ���һa';
comment on column MSSPJH_ZDYWS.ZDYEB
  is '�Զ����b';
comment on column MSSPJH_ZDYWS.ZDYSC
  is '�Զ�����c';
comment on column MSSPJH_ZDYWS.ZDYSD
  is '�Զ�����d';
comment on column MSSPJH_ZDYWS.ZDYWE
  is '�Զ�����e';
comment on column MSSPJH_ZDYWS.ZDYLF
  is '�Զ�����f';
comment on column MSSPJH_ZDYWS.ZDYQG
  is '�Զ�����g';
comment on column MSSPJH_ZDYWS.ZDYBH
  is '�Զ����h';
comment on column MSSPJH_ZDYWS.ZDYJI
  is '�Զ����i';
comment on column MSSPJH_ZDYWS.ZDYSJ
  is '�Զ���ʮj';
comment on column MSSPJH_ZDYWS.ZDYSYK
  is '�Զ���ʮһk';
comment on column MSSPJH_ZDYWS.ZDYSEM
  is '�Զ���ʮ��m';
comment on column MSSPJH_ZDYWS.ZDYSSL
  is '�Զ���ʮ��l';
comment on column MSSPJH_ZDYWS.ZDYSSN
  is '�Զ���ʮ��n';
comment on column MSSPJH_ZDYWS.ZDYSWA
  is '�Զ���ʮ��a';
comment on column MSSPJH_ZDYWS.ZDYSLB
  is '�Զ���ʮ��b';
comment on column MSSPJH_ZDYWS.ZDYSQC
  is '�Զ���ʮ��c';
comment on column MSSPJH_ZDYWS.ZDYSBD
  is '�Զ���ʮ��d';
comment on column MSSPJH_ZDYWS.ZDYSJE
  is '�Զ���ʮ��e';
comment on column MSSPJH_ZDYWS.ZDYESF
  is '�Զ����ʮf';
comment on column MSSPJH_ZDYWS.ZDYESYG
  is '�Զ����ʮһg';
comment on column MSSPJH_ZDYWS.ZDYESEH
  is '�Զ����ʮ��h';
comment on column MSSPJH_ZDYWS.ZDYESSI
  is '�Զ����ʮ��i';
comment on column MSSPJH_ZDYWS.ZDYESSIJ
  is '�Զ����ʮ��ij';
comment on column MSSPJH_ZDYWS.ZDYESWJ
  is '�Զ����ʮ��j';
comment on column MSSPJH_ZDYWS.ZDYESLK
  is '�Զ����ʮ��k';
comment on column MSSPJH_ZDYWS.ZDYESQL
  is '�Զ����ʮ��l';
comment on column MSSPJH_ZDYWS.ZDYESBM
  is '�Զ����ʮ��m';
comment on column MSSPJH_ZDYWS.ZDYESJN
  is '�Զ����ʮ��n';
comment on column MSSPJH_ZDYWS.ZDYSSA
  is '�Զ�����ʮa';
comment on column MSSPJH_ZDYWS.ZDYSSYB
  is '�Զ�����ʮһb';
comment on column MSSPJH_ZDYWS.ZDYSSEC
  is '�Զ�����ʮ��c';
comment on column MSSPJH_ZDYWS.ZDYSSSD
  is '�Զ�����ʮ��d';
comment on column MSSPJH_ZDYWS.ZDYSSSE
  is '�Զ�����ʮ��e';
comment on column MSSPJH_ZDYWS.ZDYSSWF
  is '�Զ�����ʮ��f';
comment on column MSSPJH_ZDYWS.ZDYSSLG
  is '�Զ�����ʮ��g';
comment on column MSSPJH_ZDYWS.ZDYSSQH
  is '�Զ�����ʮ��h';
comment on column MSSPJH_ZDYWS.ZDYSSBI
  is '�Զ�����ʮ��i';
comment on column MSSPJH_ZDYWS.ZDYSSJJ
  is '�Զ�����ʮ��j';
comment on column MSSPJH_ZDYWS.ZDYSSK
  is '�Զ�����ʮk';
comment on column MSSPJH_ZDYWS.ZDYSSYL
  is '�Զ�����ʮһl';
comment on column MSSPJH_ZDYWS.ZDYSSEM
  is '�Զ�����ʮ��m';
comment on column MSSPJH_ZDYWS.ZDYSSSN
  is '�Զ�����ʮ��n';
comment on column MSSPJH_ZDYWS.ZDYSSSA
  is '�Զ�����ʮ��a';
comment on column MSSPJH_ZDYWS.ZDYSSWB
  is '�Զ�����ʮ��b';
comment on column MSSPJH_ZDYWS.ZDYSSLC
  is '�Զ�����ʮ��c';
comment on column MSSPJH_ZDYWS.ZDYSSQD
  is '�Զ�����ʮ��d';
comment on column MSSPJH_ZDYWS.ZDYSSBE
  is '�Զ�����ʮ��e';
comment on column MSSPJH_ZDYWS.ZDYSSJF
  is '�Զ�����ʮ��f';
comment on column MSSPJH_ZDYWS.ZDYWSG
  is '�Զ�����ʮg';
comment on column MSSPJH_ZDYWS.ZDYWSYH
  is '�Զ�����ʮһh';
comment on column MSSPJH_ZDYWS.CLBS
  is '�����ʶ';
comment on column MSSPJH_ZDYWS.TSBS
  is '�����ʶ';

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
  is '�����������Ǽ���Ϣ';
comment on column PBSXLSQK_PBBLQKDJXX.FYBM
  is '��Ժ����';
comment on column PBSXLSQK_PBBLQKDJXX.BH
  is '���';
comment on column PBSXLSQK_PBBLQKDJXX.LSSXBS
  is '��ʵ�����ʶ';
comment on column PBSXLSQK_PBBLQKDJXX.LSSXBH
  is '��ʵ������';
comment on column PBSXLSQK_PBBLQKDJXX.XH
  is '���';
comment on column PBSXLSQK_PBBLQKDJXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column PBSXLSQK_PBBLQKDJXX.DJR
  is '�Ǽ���';
comment on column PBSXLSQK_PBBLQKDJXX.LSSJ
  is '��ʵʱ��';
comment on column PBSXLSQK_PBBLQKDJXX.LSQK
  is '��ʵ���';

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
  is '����������¼��Ϣ';
comment on column PBSXLSQK_PBSPJLXX.FYBM
  is '��Ժ����';
comment on column PBSXLSQK_PBSPJLXX.BH
  is '���';
comment on column PBSXLSQK_PBSPJLXX.LSSXBS
  is '��ʵ�����ʶ';
comment on column PBSXLSQK_PBSPJLXX.LSSXBH
  is '��ʵ������';
comment on column PBSXLSQK_PBSPJLXX.QZNR
  is 'ǩ������';
comment on column PBSXLSQK_PBSPJLXX.QZSJ
  is 'ǩ��ʱ��';
comment on column PBSXLSQK_PBSPJLXX.XGSJ
  is '�޸�ʱ��';

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
  is '����ʵ��';
comment on column PBSXLSQK_PBST.FYBM
  is '��Ժ����';
comment on column PBSXLSQK_PBST.PBBS
  is '�����ʶ';
comment on column PBSXLSQK_PBST.XH
  is '���';
comment on column PBSXLSQK_PBST.WJMC
  is '�ļ�����';
comment on column PBSXLSQK_PBST.STWJM
  is 'ʵ���ļ���';

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
  is '����������Ϣ';
comment on column PBSXLSQK_PBSXXX.FYBM
  is '��Ժ����';
comment on column PBSXLSQK_PBSXXX.LSSXBS
  is '��ʵ�����ʶ';
comment on column PBSXLSQK_PBSXXX.LSSXBH
  is '��ʵ������';
comment on column PBSXLSQK_PBSXXX.DJR
  is '�Ǽ���';
comment on column PBSXLSQK_PBSXXX.LWRQ
  is '��������';
comment on column PBSXLSQK_PBSXXX.LWDW
  is '���ĵ�λ';
comment on column PBSXLSQK_PBSXXX.LWNRZY
  is '��������ժҪ';
comment on column PBSXLSQK_PBSXXX.LWLB
  is '�������';
comment on column PBSXLSQK_PBSXXX.PBRQ
  is '��������';
comment on column PBSXLSQK_PBSXXX.PBSX
  is '��������';
comment on column PBSXLSQK_PBSXXX.LSQK
  is '��ʵ���';
comment on column PBSXLSQK_PBSXXX.PSYJ
  is '��ʾ���';
comment on column PBSXLSQK_PBSXXX.BZ
  is '��ע';
comment on column PBSXLSQK_PBSXXX.LJBZ
  is '�˽��־';
comment on column PBSXLSQK_PBSXXX.LJSJ
  is '�˽�ʱ��';
comment on column PBSXLSQK_PBSXXX.GLDBBH
  is '����������';
comment on column PBSXLSQK_PBSXXX.GLDBBT
  is '�����������';
comment on column PBSXLSQK_PBSXXX.GLSGKBT
  is '�����Ĺ�������';
comment on column PBSXLSQK_PBSXXX.GLSGKBH
  is '�����Ĺ������';
comment on column PBSXLSQK_PBSXXX.ZBDW
  is '���쵥λ';
comment on column PBSXLSQK_PBSXXX.WCQX
  is '�������';

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
  is '�����ڼ���';
comment on column QJGLXT_FDJJR.FYBM
  is '��Ժ����';
comment on column QJGLXT_FDJJR.BH
  is '���';
comment on column QJGLXT_FDJJR.JJRMC
  is '�ڼ�������';
comment on column QJGLXT_FDJJR.KSRQ
  is '��ʼ����';
comment on column QJGLXT_FDJJR.JSRQ
  is '��������';
comment on column QJGLXT_FDJJR.BZ
  is '��ע';

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
  is '�깤����';
comment on column QJGLXT_NGZR.FYBM
  is '��Ժ����';
comment on column QJGLXT_NGZR.BH
  is '���';
comment on column QJGLXT_NGZR.TS
  is '����';
comment on column QJGLXT_NGZR.ND
  is '���';

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
  is '��������';
comment on column QJGLXT_QJQKB.FYBM
  is '��Ժ����';
comment on column QJGLXT_QJQKB.BH
  is '���';
comment on column QJGLXT_QJQKB.LX
  is '����';
comment on column QJGLXT_QJQKB.SZFY
  is '���ڷ�Ժ';
comment on column QJGLXT_QJQKB.SZBM
  is '���ڲ���';
comment on column QJGLXT_QJQKB.RYBS
  is '��Ա��ʶ';
comment on column QJGLXT_QJQKB.RYXM
  is '��Ա����';
comment on column QJGLXT_QJQKB.YXTS
  is 'Ӧ������';
comment on column QJGLXT_QJQKB.SXTS
  is 'ʵ������';
comment on column QJGLXT_QJQKB.SYTS
  is 'ʣ������';
comment on column QJGLXT_QJQKB.ND
  is '���';
comment on column QJGLXT_QJQKB.DJSJ
  is '�Ǽ�ʱ��';

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
  is '��������';
comment on column QJGLXT_QJSQB.FYBM
  is '��Ժ����';
comment on column QJGLXT_QJSQB.SQBS
  is '�����ʶ';
comment on column QJGLXT_QJSQB.LX
  is '����';
comment on column QJGLXT_QJSQB.SQRBS
  is '�����˱�ʶ';
comment on column QJGLXT_QJSQB.SQR
  is '������';
comment on column QJGLXT_QJSQB.SZBM
  is '���ڲ���';
comment on column QJGLXT_QJSQB.SZFY
  is '���ڷ�Ժ';
comment on column QJGLXT_QJSQB.SQSJ
  is '����ʱ��';
comment on column QJGLXT_QJSQB.QJLX
  is '�������';
comment on column QJGLXT_QJSQB.XJFS
  is '�ݼٷ�ʽ';
comment on column QJGLXT_QJSQB.CMBY
  is '��ĸۮ����';
comment on column QJGLXT_QJSQB.SYES
  is '��������';
comment on column QJGLXT_QJSQB.LCTS
  is '·������';
comment on column QJGLXT_QJSQB.KXTS
  is '��������';
comment on column QJGLXT_QJSQB.XJKSSJ
  is '�ݼٿ�ʼʱ��';
comment on column QJGLXT_QJSQB.XJJSSJ
  is '�ݼٽ���ʱ��';
comment on column QJGLXT_QJSQB.SXTS
  is 'ʵ������';
comment on column QJGLXT_QJSQB.DZBS
  is '��ְ��ʶ';
comment on column QJGLXT_QJSQB.DZXM
  is '��ְ����';
comment on column QJGLXT_QJSQB.DZZW
  is '��ְְ��';
comment on column QJGLXT_QJSQB.DZDH
  is '��ְ�绰';
comment on column QJGLXT_QJSQB.QJQYY
  is '�����ԭ��';
comment on column QJGLXT_QJSQB.QTJQQK
  is '�����������';
comment on column QJGLXT_QJSQB.BZ
  is '��ע';
comment on column QJGLXT_QJSQB.SPR1BS
  is '������1��ʶ';
comment on column QJGLXT_QJSQB.SPR1
  is '������1';
comment on column QJGLXT_QJSQB.SPYJ1
  is '�������1';
comment on column QJGLXT_QJSQB.SPYJBZ1
  is '���������ע1';
comment on column QJGLXT_QJSQB.SPSJ1
  is '����ʱ��1';
comment on column QJGLXT_QJSQB.SPQJKSSJ1
  is '������ٿ�ʼʱ��1';
comment on column QJGLXT_QJSQB.SPQJJSSJ1
  is '������ٽ���ʱ��1';
comment on column QJGLXT_QJSQB.SPQJTS1
  is '�����������1';
comment on column QJGLXT_QJSQB.SPR2BS
  is '������2��ʶ';
comment on column QJGLXT_QJSQB.SPR2
  is '������2';
comment on column QJGLXT_QJSQB.SPYJ2
  is '�������2';
comment on column QJGLXT_QJSQB.SPYJBZ2
  is '���������ע2';
comment on column QJGLXT_QJSQB.SPSJ2
  is '����ʱ��2';
comment on column QJGLXT_QJSQB.SPQJKSSJ2
  is '������ٿ�ʼʱ��2';
comment on column QJGLXT_QJSQB.SPQJJSSJ2
  is '������ٽ���ʱ��2';
comment on column QJGLXT_QJSQB.SPQJTS2
  is '�����������2';
comment on column QJGLXT_QJSQB.SPR3BS
  is '������3��ʶ';
comment on column QJGLXT_QJSQB.SPR3
  is '������3';
comment on column QJGLXT_QJSQB.SPYJ3
  is '�������3';
comment on column QJGLXT_QJSQB.SPYJBZ3
  is '���������ע3';
comment on column QJGLXT_QJSQB.SPSJ3
  is '����ʱ��3';
comment on column QJGLXT_QJSQB.SPQJKSSJ3
  is '������ٿ�ʼʱ��3';
comment on column QJGLXT_QJSQB.SPQJJSSJ3
  is '������ٽ���ʱ��3';
comment on column QJGLXT_QJSQB.SPQJTS3
  is '�����������3';
comment on column QJGLXT_QJSQB.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column QJGLXT_QJSQB.DJR
  is '�Ǽ���';
comment on column QJGLXT_QJSQB.DJRQ
  is '�Ǽ�����';
comment on column QJGLXT_QJSQB.BXKSSJ
  is '���ݿ�ʼʱ��';
comment on column QJGLXT_QJSQB.BXJSSJ
  is '���ݽ���ʱ��';
comment on column QJGLXT_QJSQB.BXSPRBS
  is '���������˱�ʶ';
comment on column QJGLXT_QJSQB.BXSPR
  is '����������';
comment on column QJGLXT_QJSQB.BXSPYJBZ
  is '�������������ע';
comment on column QJGLXT_QJSQB.BXSPYJ
  is '�����������';
comment on column QJGLXT_QJSQB.BXSPSJ
  is '��������ʱ��';
comment on column QJGLXT_QJSQB.SPBXKSSJ
  is '�������ݿ�ʼʱ��';
comment on column QJGLXT_QJSQB.SPBXJSSJ
  is '�������ݽ���ʱ��';
comment on column QJGLXT_QJSQB.BXTS
  is '��������';
comment on column QJGLXT_QJSQB.SJQJKSSJ
  is 'ʵ����ٿ�ʼʱ��';
comment on column QJGLXT_QJSQB.SJQJJSSJ
  is 'ʵ����ٽ���ʱ��';
comment on column QJGLXT_QJSQB.SJQJTS
  is 'ʵ���������';
comment on column QJGLXT_QJSQB.XJQK
  is '�ݼ����';
comment on column QJGLXT_QJSQB.XJYY
  is '�ݼ�ԭ��';
comment on column QJGLXT_QJSQB.CCLX
  is '��������';

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
  is '�ڸ������';
comment on column QJGLXT_ZGQKB.FYBM
  is '��Ժ����';
comment on column QJGLXT_ZGQKB.BH
  is '���';
comment on column QJGLXT_ZGQKB.SZBM
  is '���ڲ���';
comment on column QJGLXT_ZGQKB.RYBS
  is '��Ա��ʶ';
comment on column QJGLXT_ZGQKB.RYXM
  is '��Ա����';
comment on column QJGLXT_ZGQKB.SJ
  is 'ʱ��';
comment on column QJGLXT_ZGQKB.ZGZT
  is '�ڸ�״̬';
comment on column QJGLXT_ZGQKB.BZ
  is '��ע';
comment on column QJGLXT_ZGQKB.DJSJ
  is '�Ǽ�ʱ��';
comment on column QJGLXT_ZGQKB.DZZW
  is '��ְְ��';
comment on column QJGLXT_ZGQKB.DZDH
  is '��ְ�绰';
comment on column QJGLXT_ZGQKB.QJQYY
  is '�����ԭ��';
comment on column QJGLXT_ZGQKB.QTJQQK
  is '�����������';

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
  is '���總��';
comment on column RDDBYDYLLXT_LLFJ.FYBM
  is '��Ժ����';
comment on column RDDBYDYLLXT_LLFJ.FJBS
  is '������ʶ';
comment on column RDDBYDYLLXT_LLFJ.LLBS
  is '�����ʶ';
comment on column RDDBYDYLLXT_LLFJ.LLRBS
  is '�����˱�ʶ';
comment on column RDDBYDYLLXT_LLFJ.RDDBBS
  is '�˴�����ʶ';
comment on column RDDBYDYLLXT_LLFJ.XH
  is '���';
comment on column RDDBYDYLLXT_LLFJ.LJJWJM
  is '·�����ļ���';
comment on column RDDBYDYLLXT_LLFJ.SM
  is '˵��';
comment on column RDDBYDYLLXT_LLFJ.BZ
  is '��ע';

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
  is '���������¼';
comment on column RDDBYDYLLXT_LLQKJL.FYBM
  is '��Ժ����';
comment on column RDDBYDYLLXT_LLQKJL.LLBS
  is '�����ʶ';
comment on column RDDBYDYLLXT_LLQKJL.LLRBS
  is '�����˱�ʶ';
comment on column RDDBYDYLLXT_LLQKJL.LLRXM
  is '����������';
comment on column RDDBYDYLLXT_LLQKJL.RDDBBS
  is '�˴�����ʶ';
comment on column RDDBYDYLLXT_LLQKJL.RDDBXM
  is '�˴��������';
comment on column RDDBYDYLLXT_LLQKJL.LLSJ
  is '����ʱ��';
comment on column RDDBYDYLLXT_LLQKJL.LLFS
  is '���緽ʽ';
comment on column RDDBYDYLLXT_LLQKJL.SFYJB
  is 'ʡ��Ժ����';
comment on column RDDBYDYLLXT_LLQKJL.WTLBBS
  is '��������ʶ';
comment on column RDDBYDYLLXT_LLQKJL.FYWTLB
  is '��ӳ�������';
comment on column RDDBYDYLLXT_LLQKJL.SJAH
  is '�漰����';
comment on column RDDBYDYLLXT_LLQKJL.FYWTSZDW
  is '��ӳ�������ڵ�λ';
comment on column RDDBYDYLLXT_LLQKJL.FYWTQK
  is '��ӳ�������';
comment on column RDDBYDYLLXT_LLQKJL.FJSL
  is '��������';
comment on column RDDBYDYLLXT_LLQKJL.CLQK
  is '�������';
comment on column RDDBYDYLLXT_LLQKJL.CLJG
  is '������';
comment on column RDDBYDYLLXT_LLQKJL.CLSJ
  is '����ʱ��';
comment on column RDDBYDYLLXT_LLQKJL.DJSJ
  is '�Ǽ�ʱ��';
comment on column RDDBYDYLLXT_LLQKJL.DBMYD
  is '���������';
comment on column RDDBYDYLLXT_LLQKJL.BZ
  is '��ע';

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
  is '����Ա��Ϣ';
comment on column RDDBYDYLLXT_LLYXX.FYBM
  is '��Ժ����';
comment on column RDDBYDYLLXT_LLYXX.RDDBBS
  is '�˴�����ʶ';
comment on column RDDBYDYLLXT_LLYXX.RYBS
  is '��Ա��ʶ';
comment on column RDDBYDYLLXT_LLYXX.RYXM
  is '��Ա����';
comment on column RDDBYDYLLXT_LLYXX.LLYBM
  is '����Ա����';
comment on column RDDBYDYLLXT_LLYXX.LLCS
  is '�������';
comment on column RDDBYDYLLXT_LLYXX.BZ
  is '��ע';
comment on column RDDBYDYLLXT_LLYXX.FPBZ
  is '���䱸ע';
comment on column RDDBYDYLLXT_LLYXX.LLYBZ
  is '����Ա��־';

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
  is '�˴������Ϣ';
comment on column RDDBYDYLLXT_RDDBXX.FYBM
  is '��Ժ����';
comment on column RDDBYDYLLXT_RDDBXX.RDDBBS
  is '�˴�����ʶ';
comment on column RDDBYDYLLXT_RDDBXX.XM
  is '����';
comment on column RDDBYDYLLXT_RDDBXX.XB
  is '�Ա�';
comment on column RDDBYDYLLXT_RDDBXX.MZ
  is '����';
comment on column RDDBYDYLLXT_RDDBXX.CSRQ
  is '��������';
comment on column RDDBYDYLLXT_RDDBXX.SSDBT
  is '����������';
comment on column RDDBYDYLLXT_RDDBXX.JC
  is '���';
comment on column RDDBYDYLLXT_RDDBXX.DBJB
  is '������';
comment on column RDDBYDYLLXT_RDDBXX.GZDW
  is '������λ';
comment on column RDDBYDYLLXT_RDDBXX.ZW
  is 'ְ��';
comment on column RDDBYDYLLXT_RDDBXX.ZC
  is 'ְ��';
comment on column RDDBYDYLLXT_RDDBXX.DP
  is '����';
comment on column RDDBYDYLLXT_RDDBXX.ZXWY
  is '��ЭίԱ';
comment on column RDDBYDYLLXT_RDDBXX.SFYWT
  is 'ʡ��Ժί��';
comment on column RDDBYDYLLXT_RDDBXX.TXDZ
  is 'ͨѶ��ַ';
comment on column RDDBYDYLLXT_RDDBXX.LXFS
  is '��ϵ��ʽ';
comment on column RDDBYDYLLXT_RDDBXX.DHHM1
  is '�绰����1';
comment on column RDDBYDYLLXT_RDDBXX.DHHM2
  is '�绰����2';
comment on column RDDBYDYLLXT_RDDBXX.DHHM3
  is '�绰����3';
comment on column RDDBYDYLLXT_RDDBXX.DHHM4
  is '�绰����4';
comment on column RDDBYDYLLXT_RDDBXX.CZHM
  is '�������';
comment on column RDDBYDYLLXT_RDDBXX.EMAILE
  is 'EMaile';
comment on column RDDBYDYLLXT_RDDBXX.YB
  is '�ʱ�';
comment on column RDDBYDYLLXT_RDDBXX.RQQS
  is '������ʼ';
comment on column RDDBYDYLLXT_RDDBXX.RQZ
  is '����ֹ';
comment on column RDDBYDYLLXT_RDDBXX.TQJSRQ
  is '��ǰ��������';
comment on column RDDBYDYLLXT_RDDBXX.LXR
  is '��ϵ��';
comment on column RDDBYDYLLXT_RDDBXX.LXRLXFS
  is '��ϵ����ϵ��ʽ';
comment on column RDDBYDYLLXT_RDDBXX.BZ
  is '��ע';
comment on column RDDBYDYLLXT_RDDBXX.DQYDYLLY
  is '��ǰһ��һ����Ա';

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
  is '��Ա������Ϣ';
comment on column RSXT_RYCFXX.FYBM
  is '��Ժ����';
comment on column RSXT_RYCFXX.CFBS
  is '���ֱ�ʶ';
comment on column RSXT_RYCFXX.RYBS
  is '��Ա��ʶ';
comment on column RSXT_RYCFXX.BM
  is '����';
comment on column RSXT_RYCFXX.XM
  is '����';
comment on column RSXT_RYCFXX.CFLB
  is '�������';
comment on column RSXT_RYCFXX.CFMC
  is '��������';
comment on column RSXT_RYCFXX.CFSJ
  is '����ʱ��';
comment on column RSXT_RYCFXX.BZ
  is '��ע';
comment on column RSXT_RYCFXX.DJSJ
  is '�Ǽ�ʱ��';

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
  is '��Ա������Ϣ';
comment on column RSXT_RYDDXX.FYBM
  is '��Ժ����';
comment on column RSXT_RYDDXX.DDBS
  is '������ʶ';
comment on column RSXT_RYDDXX.RYBS
  is '��Ա��ʶ';
comment on column RSXT_RYDDXX.XM
  is '����';
comment on column RSXT_RYDDXX.YBM
  is 'ԭ����';
comment on column RSXT_RYDDXX.XBM
  is '�ֲ���';
comment on column RSXT_RYDDXX.YZW
  is 'ԭְ��';
comment on column RSXT_RYDDXX.XZW
  is '��ְ��';
comment on column RSXT_RYDDXX.DDLX
  is '��������';
comment on column RSXT_RYDDXX.KSSJ
  is '��ʼʱ��';
comment on column RSXT_RYDDXX.JSSJ
  is '����ʱ��';
comment on column RSXT_RYDDXX.MZWH
  is '��ְ�ĺ�';
comment on column RSXT_RYDDXX.RZWH
  is '��ְ�ĺ�';
comment on column RSXT_RYDDXX.RMJG
  is '�������';
comment on column RSXT_RYDDXX.RMLY
  is '��������';
comment on column RSXT_RYDDXX.DJSJ
  is '�Ǽ�ʱ��';

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
  is '��Ա������Ϣ';
comment on column RSXT_RYJLXX.FYBM
  is '��Ժ����';
comment on column RSXT_RYJLXX.JLBS
  is '������ʶ';
comment on column RSXT_RYJLXX.RYBS
  is '��Ա��ʶ';
comment on column RSXT_RYJLXX.BM
  is '����';
comment on column RSXT_RYJLXX.XM
  is '����';
comment on column RSXT_RYJLXX.JLLB
  is '�������';
comment on column RSXT_RYJLXX.JLMC
  is '��������';
comment on column RSXT_RYJLXX.JLHDSJ
  is '�������ʱ��';
comment on column RSXT_RYJLXX.JLND
  is '�������';
comment on column RSXT_RYJLXX.JLWH
  is '�����ĺ�';
comment on column RSXT_RYJLXX.JLPZFFDW
  is '������׼�����ţ���λ';
comment on column RSXT_RYJLXX.JLJB
  is '��������';
comment on column RSXT_RYJLXX.BZ
  is '��ע';
comment on column RSXT_RYJLXX.DJSJ
  is '�Ǽ�ʱ��';

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
  is '��Ա������Ϣs';
comment on column RSXT_RYJLXXS.FYBM
  is '��Ժ����';
comment on column RSXT_RYJLXXS.JLBS
  is '������ʶ';
comment on column RSXT_RYJLXXS.RYBS
  is '��Ա��ʶ';
comment on column RSXT_RYJLXXS.XM
  is '����';
comment on column RSXT_RYJLXXS.KSSJ
  is '��ʼʱ��';
comment on column RSXT_RYJLXXS.JSSJ
  is '����ʱ��';
comment on column RSXT_RYJLXXS.NR
  is '����';
comment on column RSXT_RYJLXXS.SX
  is '˳��';

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
  is '��Ա��ͥ��Ա��Ϣ';
comment on column RSXT_RYJTCYXX.FYBM
  is '��Ժ����';
comment on column RSXT_RYJTCYXX.CYBS
  is '��Ա��ʶ';
comment on column RSXT_RYJTCYXX.RYBS
  is '��Ա��ʶ';
comment on column RSXT_RYJTCYXX.XM
  is '����';
comment on column RSXT_RYJTCYXX.CW
  is '��ν';
comment on column RSXT_RYJTCYXX.MC
  is '����';
comment on column RSXT_RYJTCYXX.CSRQ
  is '��������';
comment on column RSXT_RYJTCYXX.SZDW
  is '���ڵ�λ';
comment on column RSXT_RYJTCYXX.ZZMM
  is '������ò';

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
  is '��Ա��ѵ��Ϣ';
comment on column RSXT_RYPXXX.FYBM
  is '��Ժ����';
comment on column RSXT_RYPXXX.PXBS
  is '��ѵ��ʶ';
comment on column RSXT_RYPXXX.RYBS
  is '��Ա��ʶ';
comment on column RSXT_RYPXXX.XM
  is '����';
comment on column RSXT_RYPXXX.PXLB
  is '��ѵ���';
comment on column RSXT_RYPXXX.PXMC
  is '��ѵ����';
comment on column RSXT_RYPXXX.KSSJ
  is '��ʼʱ��';
comment on column RSXT_RYPXXX.JSSJ
  is '����ʱ��';
comment on column RSXT_RYPXXX.PXNR
  is '��ѵ����';
comment on column RSXT_RYPXXX.PXDD
  is '��ѵ�ص�';
comment on column RSXT_RYPXXX.PXJG
  is '��ѵ���';
comment on column RSXT_RYPXXX.PXTS
  is '��ѵ����';
comment on column RSXT_RYPXXX.KQQK
  is '�������';
comment on column RSXT_RYPXXX.SFTG
  is '�Ƿ�ͨ��';
comment on column RSXT_RYPXXX.KSCJ
  is '���Գɼ�';
comment on column RSXT_RYPXXX.BZ
  is '��ע';

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
  is '��Ա��Ϣ';
comment on column RSXT_RYXX.FYBM
  is '��Ժ����';
comment on column RSXT_RYXX.RYBS
  is '��Ա��ʶ';
comment on column RSXT_RYXX.XM
  is '����';
comment on column RSXT_RYXX.BMBS
  is '���ű�ʶ';
comment on column RSXT_RYXX.BM
  is '����';
comment on column RSXT_RYXX.XB
  is '�Ա�';
comment on column RSXT_RYXX.MZ
  is '����';
comment on column RSXT_RYXX.CSRQ
  is '��������';
comment on column RSXT_RYXX.ZZMM
  is '������ò';
comment on column RSXT_RYXX.JG
  is '����';
comment on column RSXT_RYXX.CSD
  is '������';
comment on column RSXT_RYXX.SFZH
  is '���֤��';
comment on column RSXT_RYXX.RDTSJ
  is '�뵳��ʱ��';
comment on column RSXT_RYXX.CJGZSJ
  is '�μӹ���ʱ��';
comment on column RSXT_RYXX.BZQK
  is '�������';
comment on column RSXT_RYXX.GBFL
  is '�ɲ�����';
comment on column RSXT_RYXX.GWXZ
  is '��λ����';
comment on column RSXT_RYXX.GZGW
  is '������λ';
comment on column RSXT_RYXX.SFSY
  is '�Ƿ�ʹ��';
comment on column RSXT_RYXX.RYLB
  is '��Ա���';
comment on column RSXT_RYXX.XZZJ
  is '����ְ��';
comment on column RSXT_RYXX.CRZJSJ
  is '����ְ��ʱ��';
comment on column RSXT_RYXX.XRZW
  is '����ְ��';
comment on column RSXT_RYXX.RXZWSJ
  is '����ְ��ʱ��';
comment on column RSXT_RYXX.SPZC
  is '����ְ��';
comment on column RSXT_RYXX.RXZCSJ
  is '����ְ��ʱ��';
comment on column RSXT_RYXX.SPZW
  is '����ְ��';
comment on column RSXT_RYXX.RSPZWSJ
  is '������ְ��ʱ��';
comment on column RSXT_RYXX.JSZW
  is '����ְ��';
comment on column RSXT_RYXX.XZZW
  is '����ְ��';
comment on column RSXT_RYXX.RXZZWSJ
  is '������ְ��ʱ��';
comment on column RSXT_RYXX.FGDJ
  is '���ٵȼ�';
comment on column RSXT_RYXX.FGDJQSSJ
  is '���ٵȼ�����ʱ��';
comment on column RSXT_RYXX.FGDJPZWH
  is '���ٵȼ���׼�ĺ�';
comment on column RSXT_RYXX.FGDJPZJG
  is '���ٵȼ���׼����';
comment on column RSXT_RYXX.ZGXL
  is '���ѧ��';
comment on column RSXT_RYXX.ZGXLQDYX
  is '���ѧ��ȡ��ԺУ';
comment on column RSXT_RYXX.ZGXW
  is '���ѧλ';
comment on column RSXT_RYXX.ZGXLLX
  is '���ѧ������';
comment on column RSXT_RYXX.ZGXLXJZY
  is '���ѧ��ϵ��רҵ';
comment on column RSXT_RYXX.QRZXL
  is 'ȫ����ѧ��';
comment on column RSXT_RYXX.QRZBYYX
  is 'ȫ���Ʊ�ҵԺУ';
comment on column RSXT_RYXX.QRZXW
  is 'ȫ����ѧλ';
comment on column RSXT_RYXX.QRZZY
  is 'ȫ����רҵ';
comment on column RSXT_RYXX.ZZXL
  is '��ְѧ��';
comment on column RSXT_RYXX.ZZYX
  is '��ְԺУ';
comment on column RSXT_RYXX.ZZXW
  is '��ְѧλ';
comment on column RSXT_RYXX.ZZZY
  is '��ְרҵ';
comment on column RSXT_RYXX.ZPXX
  is '��Ƭ��Ϣ';

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
  is '��Ʒ�������ͳ�Ʊ�';
comment on column SFTJJKXT_DPFZQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_DPFZQKTJB.BH
  is '���';
comment on column SFTJJKXT_DPFZQKTJB.XH
  is '���';
comment on column SFTJJKXT_DPFZQKTJB.YPBMEBKJS
  is 'ѻƬ�������ٿ˼���';
comment on column SFTJJKXT_DPFZQKTJB.YPBMEBKRS
  is 'ѻƬ�������ٿ�����';
comment on column SFTJJKXT_DPFZQKTJB.YPEBZYQKJS
  is 'ѻƬ������һǧ�˼���';
comment on column SFTJJKXT_DPFZQKTJB.YPEBZYQKRS
  is 'ѻƬ������һǧ������';
comment on column SFTJJKXT_DPFZQKTJB.YPYQKYSJS
  is 'ѻƬһǧ�����ϼ���';
comment on column SFTJJKXT_DPFZQKTJB.YPYQKYSRS
  is 'ѻƬһǧ����������';
comment on column SFTJJKXT_DPFZQKTJB.HLYBMSKJS
  is '��������ʮ�˼���';
comment on column SFTJJKXT_DPFZQKTJB.HLYBMSKRS
  is '��������ʮ������';
comment on column SFTJJKXT_DPFZQKTJB.HLYSZWSKJS
  is '������ʮ����ʮ�˼���';
comment on column SFTJJKXT_DPFZQKTJB.HLYSZWSKRS
  is '������ʮ����ʮ������';
comment on column SFTJJKXT_DPFZQKTJB.HLYWSKYSJS
  is '��������ʮ�����ϼ���';
comment on column SFTJJKXT_DPFZQKTJB.HLYWSKYSRS
  is '��������ʮ����������';
comment on column SFTJJKXT_DPFZQKTJB.JJBBABMSKJS
  is '�׻�����������ʮ�˼���';
comment on column SFTJJKXT_DPFZQKTJB.JJBBABMSKRS
  is '�׻�����������ʮ������';
comment on column SFTJJKXT_DPFZQKTJB.JJBBASZWSKJS
  is '�׻�������ʮ����ʮ�˼���';
comment on column SFTJJKXT_DPFZQKTJB.JJBBASZWSKRS
  is '�׻�������ʮ����ʮ������';
comment on column SFTJJKXT_DPFZQKTJB.JJBBAWSKYSJS
  is '�׻���������ʮ�����ϼ���';
comment on column SFTJJKXT_DPFZQKTJB.JJBBAWSKYSRS
  is '�׻���������ʮ����������';
comment on column SFTJJKXT_DPFZQKTJB.QTDPJS
  is '������Ʒ����';
comment on column SFTJJKXT_DPFZQKTJB.QTDPRS
  is '������Ʒ����';
comment on column SFTJJKXT_DPFZQKTJB.HJJS
  is '�ϼƼ���';
comment on column SFTJJKXT_DPFZQKTJB.HJRS
  is '�ϼ�����';
comment on column SFTJJKXT_DPFZQKTJB.FYBMFXBM
  is '��Ժ����fxbm';
comment on column SFTJJKXT_DPFZQKTJB.BHBH
  is '���bh';
comment on column SFTJJKXT_DPFZQKTJB.XHXH
  is '���xh';
comment on column SFTJJKXT_DPFZQKTJB.FZJEWFJSRS
  is '�������޷���������';
comment on column SFTJJKXT_DPFZQKTJB.FZJEWSDRS
  is '����������������';
comment on column SFTJJKXT_DPFZQKTJB.FZJEBMYWYRS
  is '�������һ��Ԫ����';
comment on column SFTJJKXT_DPFZQKTJB.FZJEYWYYSBMSWYRS
  is '������һ��Ԫ���ϲ���ʮ��Ԫ����';
comment on column SFTJJKXT_DPFZQKTJB.FZJESWYYSBMWSWYRS
  is '������ʮ��Ԫ���ϲ�����ʮ��Ԫ����';
comment on column SFTJJKXT_DPFZQKTJB.FZJEWSWYYSBMYBWYRS
  is '��������ʮ��Ԫ���ϲ���һ����Ԫ����';
comment on column SFTJJKXT_DPFZQKTJB.FZJEYBWYYSBMWBWYRS
  is '������һ����Ԫ���ϲ��������Ԫ����';
comment on column SFTJJKXT_DPFZQKTJB.FZJEWBWYYSBMYQWYRS
  is '�����������Ԫ���ϲ���һǧ��Ԫ����';
comment on column SFTJJKXT_DPFZQKTJB.FZJEYQWYYSRS
  is '������һǧ��Ԫ��������';
comment on column SFTJJKXT_DPFZQKTJB.FZJEXJRS
  is '������С������';
comment on column SFTJJKXT_DPFZQKTJB.AJAZWFJSJS
  is '������ֵ�޷��������';
comment on column SFTJJKXT_DPFZQKTJB.AJAZBMWWYJS
  is '������ֵ��������Ԫ����';
comment on column SFTJJKXT_DPFZQKTJB.AJAZWWYYSBMWSWYJS
  is '������ֵ����Ԫ���ϲ�����ʮ��Ԫ����';
comment on column SFTJJKXT_DPFZQKTJB.AJAZWSWYYSBMEBWYJS
  is '������ֵ��ʮ��Ԫ���ϲ���������Ԫ����';
comment on column SFTJJKXT_DPFZQKTJB.AJAZEBWYYSBMYQWYJS
  is '������ֵ������Ԫ���ϲ���һǧ��Ԫ����';
comment on column SFTJJKXT_DPFZQKTJB.AJAZYQWYYSBMWQWYJS
  is '������ֵһǧ��Ԫ���ϲ�����ǧ��Ԫ����';
comment on column SFTJJKXT_DPFZQKTJB.AJAZWQWYYSJS
  is '������ֵ��ǧ��Ԫ���ϼ���';
comment on column SFTJJKXT_DPFZQKTJB.AJAZXJJS
  is '������ֵС�Ƽ���';
comment on column SFTJJKXT_DPFZQKTJB.CCXFJ
  is '�Ʋ��̷���';
comment on column SFTJJKXT_DPFZQKTJB.CCXMSCC
  is '�Ʋ���û�ղƲ�';
comment on column SFTJJKXT_DPFZQKTJB.PJWHSSJE
  is '�о������ʧ���';

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
  is '��λ�������';
comment on column SFTJJKXT_DWFZQK.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_DWFZQK.BH
  is '���';
comment on column SFTJJKXT_DWFZQK.DWMC
  is '��λ����';
comment on column SFTJJKXT_DWFZQK.FZJE
  is '������';
comment on column SFTJJKXT_DWFZQK.ZM
  is '����';
comment on column SFTJJKXT_DWFZQK.FJJE
  is '���ӽ��';
comment on column SFTJJKXT_DWFZQK.XM
  is '����';
comment on column SFTJJKXT_DWFZQK.ZW
  is 'ְ��';
comment on column SFTJJKXT_DWFZQK.JB
  is '����';
comment on column SFTJJKXT_DWFZQK.ZX
  is '����';
comment on column SFTJJKXT_DWFZQK.FJX
  is '������';

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
  is '���స���������ͳ�Ʊ�';
comment on column SFTJJKXT_GLAJSXQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_GLAJSXQKTJB.BH
  is '���';
comment on column SFTJJKXT_GLAJSXQKTJB.XH
  is '���';
comment on column SFTJJKXT_GLAJSXQKTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_GLAJSXQKTJB.SXNJS
  is '�����ڼ���';
comment on column SFTJJKXT_GLAJSXQKTJB.JAYKCSX
  is '�᰸�п۳�����';
comment on column SFTJJKXT_GLAJSXQKTJB.JAPZYC
  is '�᰸��׼�ӳ�';
comment on column SFTJJKXT_GLAJSXQKTJB.JACSX
  is '�᰸������';
comment on column SFTJJKXT_GLAJSXQKTJB.JACSXBMLGY
  is '�᰸�����޲���������';
comment on column SFTJJKXT_GLAJSXQKTJB.JACSXLGYYS
  is '�᰸����������������';
comment on column SFTJJKXT_GLAJSXQKTJB.JACSXYNYS
  is '�᰸������һ������';
comment on column SFTJJKXT_GLAJSXQKTJB.JAYYAQFZ
  is '�᰸ԭ���鸴��';
comment on column SFTJJKXT_GLAJSXQKTJB.JAYYDQP
  is '�᰸ԭ���ǩ��';
comment on column SFTJJKXT_GLAJSXQKTJB.JAYYQS
  is '�᰸ԭ����ʾ';
comment on column SFTJJKXT_GLAJSXQKTJB.JAYYQQYJ
  is '�᰸ԭ���������';
comment on column SFTJJKXT_GLAJSXQKTJB.JAYYQT
  is '�᰸ԭ������';
comment on column SFTJJKXT_GLAJSXQKTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_GLAJSXQKTJB.SXNWJ
  is '������δ��';
comment on column SFTJJKXT_GLAJSXQKTJB.WJCSX
  is 'δ�ᳬ����';
comment on column SFTJJKXT_GLAJSXQKTJB.WJCSXBMLGY
  is 'δ�ᳬ���޲���������';
comment on column SFTJJKXT_GLAJSXQKTJB.WJCSXLGYYS
  is 'δ�ᳬ��������������';
comment on column SFTJJKXT_GLAJSXQKTJB.WJCSXYNYS
  is 'δ�ᳬ����һ������';

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
  is '���¶������󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_HSESZSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_HSESZSAJTJB.BH
  is '���';
comment on column SFTJJKXT_HSESZSAJTJB.XH
  is '���';
comment on column SFTJJKXT_HSESZSAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_HSESZSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_HSESZSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_HSESZSAJTJB.WCJS
  is 'ά�ּ���';
comment on column SFTJJKXT_HSESZSAJTJB.GPJS
  is '���м���';
comment on column SFTJJKXT_HSESZSAJTJB.FHZSJS
  is '�����������';
comment on column SFTJJKXT_HSESZSAJTJB.CSJS
  is '���߼���';
comment on column SFTJJKXT_HSESZSAJTJB.BHJS
  is '���ؼ���';
comment on column SFTJJKXT_HSESZSAJTJB.ZJJS
  is '�ս����';
comment on column SFTJJKXT_HSESZSAJTJB.CXYCDJS
  is '����ԭ�ö�����';
comment on column SFTJJKXT_HSESZSAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_HSESZSAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_HSESZSAJTJB.KTSLJS
  is '��ͥ�������';
comment on column SFTJJKXT_HSESZSAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_HSESZSAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_HSESZSAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_HSESZSAJTJB.SAJSSAJS
  is '��ļ���sajs';
comment on column SFTJJKXT_HSESZSAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_HSESZSAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_HSESZSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_HSESZSAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is '����һ�󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_HSYSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_HSYSAJTJB.BH
  is '���';
comment on column SFTJJKXT_HSYSAJTJB.XH
  is '���';
comment on column SFTJJKXT_HSYSAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_HSYSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_HSYSAJTJB.SWJSSWAJ
  is '�������swaj';
comment on column SFTJJKXT_HSYSAJTJB.SGATJS
  is '��۰�̨����';
comment on column SFTJJKXT_HSYSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_HSYSAJTJB.PJJS
  is '�о�����';
comment on column SFTJJKXT_HSYSAJTJB.BHQSCDJS
  is '�������߲ö�����';
comment on column SFTJJKXT_HSYSAJTJB.CSCDJS
  is '���߲ö�����';
comment on column SFTJJKXT_HSYSAJTJB.ZJCDJS
  is '�ս�ö�����';
comment on column SFTJJKXT_HSYSAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_HSYSAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_HSYSAJTJB.KTSLJS
  is '��ͥ�������';
comment on column SFTJJKXT_HSYSAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_HSYSAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_HSYSAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_HSYSAJTJB.SAJSSAJS
  is '��ļ���sajs';
comment on column SFTJJKXT_HSYSAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_HSYSAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_HSYSAJTJB.SWZJE
  is '�����ܽ��';
comment on column SFTJJKXT_HSYSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_HSYSAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is '���¡�֪ʶ��Ȩ�����������ͳ�Ʊ�';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.BH
  is '���';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.XH
  is '���';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.SXNJA
  is '�����ڽ᰸';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAYKCSX
  is '�᰸�п۳�����';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAPZYC
  is '�᰸��׼�ӳ�';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JACSX
  is '�᰸������';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JACSXBMLGY
  is '�᰸�����޲���������';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JACSXLGYYS
  is '�᰸����������������';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JACSXYNYS
  is '�᰸������һ������';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAYYAQFZ
  is '�᰸ԭ���鸴��';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAYYDQP
  is '�᰸ԭ���ǩ��';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAYYQS
  is '�᰸ԭ����ʾ';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAYYZQYJ
  is '�᰸ԭ���������';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.JAYYQT
  is '�᰸ԭ������';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.SXNWJ
  is '������δ��';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.WJCSX
  is 'δ�ᳬ����';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.WJCSXBMLGY
  is 'δ�ᳬ���޲���������';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.WJCSXLGYYS
  is 'δ�ᳬ��������������';
comment on column SFTJJKXT_HSZSCQAJSXQKTJB.WJCSXYNYS
  is 'δ�ᳬ����һ������';

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
  is '��ͬ���׶��󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_HTJFESAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_HTJFESAJTJB.BH
  is '���';
comment on column SFTJJKXT_HTJFESAJTJB.XH
  is '���';
comment on column SFTJJKXT_HTJFESAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_HTJFESAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_HTJFESAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_HTJFESAJTJB.WCJS
  is 'ά�ּ���';
comment on column SFTJJKXT_HTJFESAJTJB.GPJS
  is '���м���';
comment on column SFTJJKXT_HTJFESAJTJB.FHZSJS
  is '�����������';
comment on column SFTJJKXT_HTJFESAJTJB.CSJS
  is '���߼���';
comment on column SFTJJKXT_HTJFESAJTJB.BHJS
  is '���ؼ���';
comment on column SFTJJKXT_HTJFESAJTJB.ZJJS
  is '�ս����';
comment on column SFTJJKXT_HTJFESAJTJB.CXYCDJS
  is '����ԭ�ö�����';
comment on column SFTJJKXT_HTJFESAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_HTJFESAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_HTJFESAJTJB.KTSLJS
  is '��ͥ�������';
comment on column SFTJJKXT_HTJFESAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_HTJFESAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_HTJFESAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_HTJFESAJTJB.SAJSSAJS
  is '��ļ���sajs';
comment on column SFTJJKXT_HTJFESAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_HTJFESAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_HTJFESAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_HTJFESAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is '��ͬ����һ�󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_HTJFYSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_HTJFYSAJTJB.BH
  is '���';
comment on column SFTJJKXT_HTJFYSAJTJB.XH
  is '���';
comment on column SFTJJKXT_HTJFYSAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_HTJFYSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_HTJFYSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_HTJFYSAJTJB.PJJS
  is '�о�����';
comment on column SFTJJKXT_HTJFYSAJTJB.BHQSCDJS
  is '�������߲ö�����';
comment on column SFTJJKXT_HTJFYSAJTJB.CSCDJS
  is '���߲ö�����';
comment on column SFTJJKXT_HTJFYSAJTJB.ZJCDJS
  is '�ս�ö�����';
comment on column SFTJJKXT_HTJFYSAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_HTJFYSAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_HTJFYSAJTJB.KTSLJS
  is '��ͥ�������';
comment on column SFTJJKXT_HTJFYSAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_HTJFYSAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_HTJFYSAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_HTJFYSAJTJB.SAJSSAJS
  is '��ļ���sajs';
comment on column SFTJJKXT_HTJFYSAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_HTJFYSAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_HTJFYSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_HTJFYSAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is '��ͬ�������󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_HTJFZSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_HTJFZSAJTJB.BH
  is '���';
comment on column SFTJJKXT_HTJFZSAJTJB.XH
  is '���';
comment on column SFTJJKXT_HTJFZSAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_HTJFZSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_HTJFZSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_HTJFZSAJTJB.WCJS
  is 'ά�ּ���';
comment on column SFTJJKXT_HTJFZSAJTJB.GPJS
  is '���м���';
comment on column SFTJJKXT_HTJFZSAJTJB.FHZSJS
  is '�����������';
comment on column SFTJJKXT_HTJFZSAJTJB.CSJS
  is '���߼���';
comment on column SFTJJKXT_HTJFZSAJTJB.BHJS
  is '���ؼ���';
comment on column SFTJJKXT_HTJFZSAJTJB.ZJJS
  is '�ս����';
comment on column SFTJJKXT_HTJFZSAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_HTJFZSAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_HTJFZSAJTJB.KTSLJS
  is '��ͥ�������';
comment on column SFTJJKXT_HTJFZSAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_HTJFZSAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_HTJFZSAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_HTJFZSAJTJB.SAJSSAJS
  is '��ļ���sajs';
comment on column SFTJJKXT_HTJFZSAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_HTJFZSAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_HTJFZSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_HTJFZSAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is '������ͥ���̳о��׶��󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.BH
  is '���';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.XH
  is '���';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.WCJS
  is 'ά�ּ���';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.GPJS
  is '���м���';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.FHZSJS
  is '�����������';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.CSJS
  is '���߼���';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.BHJS
  is '���ؼ���';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.ZJJS
  is '�ս����';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.CXYCDJS
  is '����ԭ�ö�����';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.KTSLJS
  is '��ͥ�������';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.SAJSSAJS
  is '��ļ���sajs';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_HYJTJCJFESAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is '������ͥ���̳о���һ�󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.BH
  is '���';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.XH
  is '���';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.JCRS
  is '�ɴ�����';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.PJJS
  is '�о�����';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.BHQSCDJS
  is '�������߲ö�����';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.CSCDJS
  is '���߲ö�����';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.ZJCDJS
  is '�ս�ö�����';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.YSJS
  is '���ͼ���';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.SAJSSAJS
  is '��ļ���sajs';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_HYJTJCJFYSAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is '������ͥ���̳о������󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.BH
  is '���';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.XH
  is '���';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.JCRS
  is '�ɴ�����';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.WCJS
  is 'ά�ּ���';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.GPJS
  is '���м���';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.FHZSJS
  is '�����������';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.CSJS
  is '���߼���';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.BHJS
  is '���ؼ���';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.ZJJS
  is '�ս����';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.KTSLJS
  is '��ͥ�������';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.SAJSSAJS
  is '��ļ���sajs';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_HYJTJCJFZSAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is '��׼�����ﷸ���ͳ�Ʊ�';
comment on column SFTJJKXT_HZSXZFQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_HZSXZFQKTJB.BH
  is '���';
comment on column SFTJJKXT_HZSXZFQKTJB.XH
  is '���';
comment on column SFTJJKXT_HZSXZFQKTJB.AY
  is '����';
comment on column SFTJJKXT_HZSXZFQKTJB.QCWZXRS
  is '���δִ������';
comment on column SFTJJKXT_HZSXZFQKTJB.BQBHRS
  is '���ڱ�������';
comment on column SFTJJKXT_HZSXZFQKTJB.BQHZRS
  is '���ں�׼����';
comment on column SFTJJKXT_HZSXZFQKTJB.BQZXRS
  is '����ִ������';
comment on column SFTJJKXT_HZSXZFQKTJB.CGQRZXRS
  is '��������ִ������';
comment on column SFTJJKXT_HZSXZFQKTJB.QMWZXRS
  is '��ĩδִ������';
comment on column SFTJJKXT_HZSXZFQKTJB.ZYGRRS
  is '��ҵ��������';
comment on column SFTJJKXT_HZSXZFQKTJB.XGGRRS
  is '�¸ڹ�������';
comment on column SFTJJKXT_HZSXZFQKTJB.MGNMRS
  is '��ũ������';
comment on column SFTJJKXT_HZSXZFQKTJB.QTNMRS
  is '����ũ������';
comment on column SFTJJKXT_HZSXZFQKTJB.XYJRRS
  is '���۾�������';
comment on column SFTJJKXT_HZSXZFQKTJB.GJJGRYRS
  is '���һ�����Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.GYQYRYRS
  is '������ҵ��Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.JRJGRYRS
  is '���ڻ�����Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.SYDWRYRS
  is '��ҵ��λ��Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.RMTTRYRS
  is '����������Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.QTGJGZRYRS
  is '�������ҹ�����Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.XSRS
  is 'ѧ������';
comment on column SFTJJKXT_HZSXZFQKTJB.ZYRS
  is 'ְԱ����';
comment on column SFTJJKXT_HZSXZFQKTJB.LTXRYRS
  is '��������Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.SYGTRYRS
  is '˽Ӫ������Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.WYRYRS
  is '��ҵ��Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.QTSFRY
  is '���������Ա';
comment on column SFTJJKXT_HZSXZFQKTJB.SBSZESWSRS
  is 'ʮ��������ʮ��������';
comment on column SFTJJKXT_HZSXZFQKTJB.LSSYSRS
  is '��ʮ����������';
comment on column SFTJJKXT_HZSXZFQKTJB.NXRS
  is 'Ů������';
comment on column SFTJJKXT_HZSXZFQKTJB.DYRS
  is '��Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.SSMZRS
  is '������������';
comment on column SFTJJKXT_HZSXZFQKTJB.GATRYRS
  is '�۰�̨��Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.WJRYRS
  is '�⼮��Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.ZFZRYRS
  is '��������Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.LFRS
  is '�۷�����';
comment on column SFTJJKXT_HZSXZFQKTJB.JCLJRYRS
  is '����ͽ���Ա����';
comment on column SFTJJKXT_HZSXZFQKTJB.AYBM
  is '���ɱ���';
comment on column SFTJJKXT_HZSXZFQKTJB.XSLM
  is '��ʾ����';

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
  is '��׼�����ﷸϸ��';
comment on column SFTJJKXT_HZSXZFXJ.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_HZSXZFXJ.BH
  is '���';
comment on column SFTJJKXT_HZSXZFXJ.XH
  is '���';
comment on column SFTJJKXT_HZSXZFXJ.XM
  is '����';
comment on column SFTJJKXT_HZSXZFXJ.ZM
  is '����';

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
  is '���ɡ���ɡ��������Ϸ����ͳ�Ʊ�';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.BH
  is '���';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.XH
  is '���';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.JJJS
  is '��������';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.JJSSF
  is '�������Ϸ�';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.MJJS
  is '�⽻����';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.MJSSF
  is '�⽻���Ϸ�';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.HJJS
  is '��������';
comment on column SFTJJKXT_JJMJHJSSFQKTJB.HJSSF
  is '�������Ϸ�';

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
  is '�����ﷸ������ͳ�Ʊ�';
comment on column SFTJJKXT_JRZFQKQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_JRZFQKQKTJB.BH
  is '���';
comment on column SFTJJKXT_JRZFQKQKTJB.AY
  is '����';
comment on column SFTJJKXT_JRZFQKQKTJB.BQSXPJZF
  is '������Ч�о��ﷸ';
comment on column SFTJJKXT_JRZFQKQKTJB.XYJRRS
  is '���۾�������';
comment on column SFTJJKXT_JRZFQKQKTJB.ZBZYRS
  is '�ڱ�ְԱ����';
comment on column SFTJJKXT_JRZFQKQKTJB.ZBZGRS
  is '�ڱ�ְ������';
comment on column SFTJJKXT_JRZFQKQKTJB.TLXRYRS
  is '��������Ա����';
comment on column SFTJJKXT_JRZFQKQKTJB.LGRYRS
  is '�͸���Ա����';
comment on column SFTJJKXT_JRZFQKQKTJB.LJRYRS
  is '�ͽ���Ա����';
comment on column SFTJJKXT_JRZFQKQKTJB.QTRS
  is '��������';
comment on column SFTJJKXT_JRZFQKQKTJB.JGRS
  is '��������';
comment on column SFTJJKXT_JRZFQKQKTJB.WZGBRS
  is '��ְ�ɲ�����';
comment on column SFTJJKXT_JRZFQKQKTJB.JRGBRS
  is '���˸ɲ�����';
comment on column SFTJJKXT_JRZFQKQKTJB.ZGGBRS
  is '�����ɲ�����';
comment on column SFTJJKXT_JRZFQKQKTJB.HQGBRS
  is '���ڸɲ�����';
comment on column SFTJJKXT_JRZFQKQKTJB.JSGBRS
  is '�����ɲ�����';
comment on column SFTJJKXT_JRZFQKQKTJB.FJGBRS
  is '�����ɲ�����';
comment on column SFTJJKXT_JRZFQKQKTJB.ZSGBRS
  is '��ʦ�ɲ�����';
comment on column SFTJJKXT_JRZFQKQKTJB.FSGBRS
  is '��ʦ�ɲ�����';
comment on column SFTJJKXT_JRZFQKQKTJB.TZGBRS
  is '��ְ�ɲ�����';
comment on column SFTJJKXT_JRZFQKQKTJB.YZGBRS
  is 'Ӫְ�ɲ�����';
comment on column SFTJJKXT_JRZFQKQKTJB.LZGBRS
  is '��ְ�ɲ�����';
comment on column SFTJJKXT_JRZFQKQKTJB.SSSZSLSRS
  is 'ʮ������ʮ��������';
comment on column SFTJJKXT_JRZFQKQKTJB.SLZSBSRS
  is 'ʮ����ʮ��������';
comment on column SFTJJKXT_JRZFQKQKTJB.SBZESWSRS
  is 'ʮ������ʮ��������';
comment on column SFTJJKXT_JRZFQKQKTJB.LSSYSRS
  is '��ʮ����������';
comment on column SFTJJKXT_JRZFQKQKTJB.NXRS
  is 'Ů������';
comment on column SFTJJKXT_JRZFQKQKTJB.DYRS
  is '��Ա����';
comment on column SFTJJKXT_JRZFQKQKTJB.SSRMRS
  is '������������';
comment on column SFTJJKXT_JRZFQKQKTJB.GATRYRS
  is '�۰�̨��Ա����';
comment on column SFTJJKXT_JRZFQKQKTJB.WJRYRS
  is '�⼮��Ա����';
comment on column SFTJJKXT_JRZFQKQKTJB.ZFZRYRS
  is '��������Ա����';
comment on column SFTJJKXT_JRZFQKQKTJB.LFRS
  is '�۷�����';
comment on column SFTJJKXT_JRZFQKQKTJB.ZLJDRY
  is '���ͽ̵���Ա';
comment on column SFTJJKXT_JRZFQKQKTJB.AYBM
  is '���ɱ���';
comment on column SFTJJKXT_JRZFQKQKTJB.XSLM
  is '��ʾ����';

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
  is '�����������󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_MSSQZSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_MSSQZSAJTJB.BH
  is '���';
comment on column SFTJJKXT_MSSQZSAJTJB.XH
  is '���';
comment on column SFTJJKXT_MSSQZSAJTJB.JC
  is '�ɴ�';
comment on column SFTJJKXT_MSSQZSAJTJB.SA
  is '�հ�';
comment on column SFTJJKXT_MSSQZSAJTJB.DYCSPHSEQSZSSX
  is '��һ�����л��������������Ч';
comment on column SFTJJKXT_MSSQZSAJTJB.YYZXSSAYZJZSDCSSRQ
  is '�����������°����ټ����󵱴���������';
comment on column SFTJJKXT_MSSQZSAJTJB.JA
  is '�᰸';
comment on column SFTJJKXT_MSSQZSAJTJB.CDZS
  is '�ö�����';
comment on column SFTJJKXT_MSSQZSAJTJB.BHZSSQ
  is '������������';
comment on column SFTJJKXT_MSSQZSAJTJB.BHSQ
  is '��������';
comment on column SFTJJKXT_MSSQZSAJTJB.ZJ
  is '�ս�';
comment on column SFTJJKXT_MSSQZSAJTJB.SGYN
  is '��������';
comment on column SFTJJKXT_MSSQZSAJTJB.CGSGY
  is '����������';
comment on column SFTJJKXT_MSSQZSAJTJB.JYCSPYC
  is '��Ժ�������ӳ�';
comment on column SFTJJKXT_MSSQZSAJTJB.WJ
  is 'δ��';
comment on column SFTJJKXT_MSSQZSAJTJB.BHZSSQZSQ
  is '������������������';
comment on column SFTJJKXT_MSSQZSAJTJB.DZCSSCQPZS
  is '���ٴ��������������';

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
  is '����֪ʶ��Ȩ�������󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.BH
  is '���';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.XH
  is '���';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.WCJS
  is 'ά�ּ���';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.GPJS
  is '���м���';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.FHZSJS
  is '�����������';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.CSJS
  is '���߼���';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.BHJS
  is '���ؼ���';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.ZJJS
  is '�ս����';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.CXYCDJS
  is '����ԭ�ö�����';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.KTSLJS
  is '��ͥ�������';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SMG
  is '������';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SFG
  is '�淨��';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SYG
  is '��Ӣ��';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SDGDZYOMGJ
  is '��¹�����Ҫŷ�˹���';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SRB
  is '���ձ�';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SQT
  is '������';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SAJSSAAJ
  is '��ļ���saaj';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_MSZSCQESZSAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is '����֪ʶ��Ȩһ�󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_MSZSCQYSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_MSZSCQYSAJTJB.BH
  is '���';
comment on column SFTJJKXT_MSZSCQYSAJTJB.XH
  is '���';
comment on column SFTJJKXT_MSZSCQYSAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_MSZSCQYSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_MSZSCQYSAJTJB.PJJS
  is '�о�����';
comment on column SFTJJKXT_MSZSCQYSAJTJB.BHQSCDJS
  is '�������߲ö�����';
comment on column SFTJJKXT_MSZSCQYSAJTJB.CSCDJS
  is '���߲ö�����';
comment on column SFTJJKXT_MSZSCQYSAJTJB.ZJCDJS
  is '�ս�ö�����';
comment on column SFTJJKXT_MSZSCQYSAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_MSZSCQYSAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_MSZSCQYSAJTJB.YSJS
  is '���ͼ���';
comment on column SFTJJKXT_MSZSCQYSAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SMG
  is '������';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SFG
  is '�淨��';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SYG
  is '��Ӣ��';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SDGDZYOMGJ
  is '��¹�����Ҫŷ�˹���';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SRB
  is '���ձ�';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SQT
  is '������';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SAJSSAAJ
  is '��ļ���saaj';
comment on column SFTJJKXT_MSZSCQYSAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_MSZSCQYSAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_MSZSCQYSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_MSZSCQYSAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is '�Ʋ�����ͳ�Ʊ�';
comment on column SFTJJKXT_PCAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_PCAJTJB.BH
  is '���';
comment on column SFTJJKXT_PCAJTJB.XH
  is '���';
comment on column SFTJJKXT_PCAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_PCAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_PCAJTJB.ZWR
  is 'ծ����';
comment on column SFTJJKXT_PCAJTJB.ZQR
  is 'ծȨ��';
comment on column SFTJJKXT_PCAJTJB.ZCZE
  is '�ʲ��ܶ�';
comment on column SFTJJKXT_PCAJTJB.ZWZE
  is 'ծ���ܶ�';
comment on column SFTJJKXT_PCAJTJB.YXZQ
  is '����ծȨ';
comment on column SFTJJKXT_PCAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_PCAJTJB.PC
  is '�Ʋ�';
comment on column SFTJJKXT_PCAJTJB.BHSQCDJS
  is '��������ö�����';
comment on column SFTJJKXT_PCAJTJB.HJ
  is '�ͽ�';
comment on column SFTJJKXT_PCAJTJB.PCFYBZ
  is '�Ʋ����ò���';
comment on column SFTJJKXT_PCAJTJB.QTPCCX
  is '�����Ʋ�����';
comment on column SFTJJKXT_PCAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_PCAJTJB.PCZCZE
  is '�Ʋ��ʲ��ܶ�';
comment on column SFTJJKXT_PCAJTJB.PCZWZE
  is '�Ʋ�ծ���ܶ�';
comment on column SFTJJKXT_PCAJTJB.PCYXZQ
  is '�Ʋ�����ծȨ';
comment on column SFTJJKXT_PCAJTJB.SLSJBMYN
  is '����ʱ�䲻��һ��';
comment on column SFTJJKXT_PCAJTJB.SLSJYNYS
  is '����ʱ��һ������';
comment on column SFTJJKXT_PCAJTJB.PCQYZGRS
  is '�Ʋ���ҵְ������';
comment on column SFTJJKXT_PCAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_PCAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is '�⳥����ͳ�Ʊ�pcaj';
comment on column SFTJJKXT_PCAJTJBPCAJ.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_PCAJTJBPCAJ.BH
  is '���';
comment on column SFTJJKXT_PCAJTJBPCAJ.XH
  is '���';
comment on column SFTJJKXT_PCAJTJBPCAJ.JC
  is '�ɴ�';
comment on column SFTJJKXT_PCAJTJBPCAJ.SA
  is '�հ�';
comment on column SFTJJKXT_PCAJTJBPCAJ.JA
  is '�᰸';
comment on column SFTJJKXT_PCAJTJBPCAJ.CHPCQQ
  is '�����⳥����';
comment on column SFTJJKXT_PCAJTJBPCAJ.JDPC
  is '�����⳥';
comment on column SFTJJKXT_PCAJTJBPCAJ.JDBPC
  is '�������⳥';
comment on column SFTJJKXT_PCAJTJBPCAJ.QT
  is '����';
comment on column SFTJJKXT_PCAJTJBPCAJ.CWJL
  is '�������';
comment on column SFTJJKXT_PCAJTJBPCAJ.CWDB
  is '�������';
comment on column SFTJJKXT_PCAJTJBPCAJ.CWCP
  is '�������';
comment on column SFTJJKXT_PCAJTJBPCAJ.GPWZ
  is '��������';
comment on column SFTJJKXT_PCAJTJBPCAJ.XXBG
  is '��Ѷ�ƹ�';
comment on column SFTJJKXT_PCAJTJBPCAJ.SYBL
  is 'ʹ�ñ���';
comment on column SFTJJKXT_PCAJTJBPCAJ.SYWQ
  is 'ʹ������';
comment on column SFTJJKXT_PCAJTJBPCAJ.WFCF
  is 'Υ�����';
comment on column SFTJJKXT_PCAJTJBPCAJ.CPFJ
  is '���з���';
comment on column SFTJJKXT_PCAJTJBPCAJ.WFJL
  is 'Υ������';
comment on column SFTJJKXT_PCAJTJBPCAJ.CWZX
  is '����ִ��';
comment on column SFTJJKXT_PCAJTJBPCAJ.QTPC
  is '�����⳥';
comment on column SFTJJKXT_PCAJTJBPCAJ.SW
  is '����';
comment on column SFTJJKXT_PCAJTJBPCAJ.SG
  is '���';
comment on column SFTJJKXT_PCAJTJBPCAJ.SASA
  is '���sa';
comment on column SFTJJKXT_PCAJTJBPCAJ.ST
  is '��̨';
comment on column SFTJJKXT_PCAJTJBPCAJ.PCJE
  is '�⳥���';
comment on column SFTJJKXT_PCAJTJBPCAJ.WJ
  is 'δ��';
comment on column SFTJJKXT_PCAJTJBPCAJ.ZZ
  is '��ֹ';

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
  is 'ȫ����Ժ�������ް������ͳ�Ʊ�';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.BH
  is '���';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.XH
  is '���';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.SQCSXAJ
  is '���ڳ����ް���';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.BQXZCSXAJ
  is '�������������ް���';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.BQSJCSXAJ
  is '������ᳬ���ް���';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.BQWCSXAJ
  is '����δ�����ް���';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.BMLGY
  is '����������';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.LGYYSBMYN
  is '���������ϲ���һ��';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.YNYS
  is 'һ������';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.AQFZ
  is '���鸴��';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.DSPHTL
  is '������������';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.CSXXJ
  is '������С��';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.QS
  is '��ʾ';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.DXDPS
  is '��Э����ʾ';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.JCZJBZD
  is '���֤�ݲ�����';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.YFBLFLSX
  is '��������������';
comment on column SFTJJKXT_QGFYQLCSXAJQKTJB.QZXJ
  is '����С��';

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
  is 'Ȩ������Ȩ���׼��������¶��󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.BH
  is '���';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.XH
  is '���';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.WCJS
  is 'ά�ּ���';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.GPJS
  is '���м���';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.FHZSJS
  is '�����������';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.CSJS
  is '���߼���';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.BHJS
  is '���ؼ���';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.ZJJS
  is '�ս����';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.CXYCDJS
  is '����ԭ�ö�����';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.KTSLJS
  is '��ͥ�������';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.SAJSSAAJ
  is '��ļ���saaj';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_QSQQJFJQTMSESAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is 'Ȩ������Ȩ���׼���������һ�󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.BH
  is '���';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.XH
  is '���';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.JCRS
  is '�ɴ�����';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.PJJS
  is '�о�����';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.BHQSCDJS
  is '�������߲ö�����';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.CSCDJS
  is '���߲ö�����';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.ZJCDJS
  is '�ս�ö�����';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.YSJS
  is '���ͼ���';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.SAJSSAAJ
  is '��ļ���saaj';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_QSQQJFJQTMSYSAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is 'Ȩ������Ȩ���׼������������󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.BH
  is '���';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.XH
  is '���';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.WCJS
  is 'ά�ּ���';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.GPJS
  is '���м���';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.FHZSJS
  is '�����������';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.CSJS
  is '���߼���';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.BHJS
  is '���ؼ���';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.ZJJS
  is '�ս����';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.KTSLJS
  is '��ͥ�������';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.SAJSSAAJ
  is '��ļ���saaj';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.SSBDZJE
  is '���ϱ���ܽ��';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_QSQQJFJQTMSZSAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is '��������Ա�μ����а������ͳ�Ʊ�';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.BH
  is '���';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XH
  is '���';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.PSYCJJS
  is '����Ա�μӼ���';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.PSYCJRS
  is '����Ա�μ�����';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XSJS
  is '���¼���';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XSRS
  is '��������';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XSQZ
  is '��������';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HYJS
  is '��������';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HT
  is '��ͬ';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HYQZ
  is '��������';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HTJS
  is '��ͬ����';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HTRS
  is '��ͬ����';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HTQZ
  is '��ͬ����';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.QSJS
  is 'Ȩ������';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.QSRS
  is 'Ȩ������';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.QSQZ
  is 'Ȩ������';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XZJS
  is '��������';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XZRS
  is '��������';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.XZQZ
  is '��������';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HBJS
  is '�رܼ���';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.HBRS
  is '�ر�����';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.TQYCTJSWHTLJS
  is '����Ժ���ύ��ί�����ۼ���';
comment on column SFTJJKXT_RMPSYCJSPAJQKTJB.SWHTL
  is '��ί������';

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
  is '���ߡ��������󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_SSSQZSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_SSSQZSAJTJB.BH
  is '���';
comment on column SFTJJKXT_SSSQZSAJTJB.XH
  is '���';
comment on column SFTJJKXT_SSSQZSAJTJB.JC
  is '�ɴ�';
comment on column SFTJJKXT_SSSQZSAJTJB.SA
  is '�հ�';
comment on column SFTJJKXT_SSSQZSAJTJB.JA
  is '�᰸';
comment on column SFTJJKXT_SSSQZSAJTJB.BHBH
  is '����bh';
comment on column SFTJJKXT_SSSQZSAJTJB.CS
  is '����';
comment on column SFTJJKXT_SSSQZSAJTJB.BYZS
  is '��Ժ����';
comment on column SFTJJKXT_SSSQZSAJTJB.TQZS
  is '��������';
comment on column SFTJJKXT_SSSQZSAJTJB.ZLZS
  is 'ָ������';
comment on column SFTJJKXT_SSSQZSAJTJB.ZJ
  is '�ս�';
comment on column SFTJJKXT_SSSQZSAJTJB.QT
  is '����';
comment on column SFTJJKXT_SSSQZSAJTJB.TZ
  is '��֤';
comment on column SFTJJKXT_SSSQZSAJTJB.BMSGY
  is '����������';
comment on column SFTJJKXT_SSSQZSAJTJB.BMLGY
  is '����������';
comment on column SFTJJKXT_SSSQZSAJTJB.LGYYS
  is '����������';
comment on column SFTJJKXT_SSSQZSAJTJB.WJ
  is 'δ��';

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
  is '�����ر����������ͳ�Ʊ�';
comment on column SFTJJKXT_SYTBCXSLAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_SYTBCXSLAJTJB.BH
  is '���';
comment on column SFTJJKXT_SYTBCXSLAJTJB.XH
  is '���';
comment on column SFTJJKXT_SYTBCXSLAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_SYTBCXSLAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_SYTBCXSLAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_SYTBCXSLAJTJB.PJJS
  is '�о�����';
comment on column SFTJJKXT_SYTBCXSLAJTJB.CHCDJS
  is '���زö�����';
comment on column SFTJJKXT_SYTBCXSLAJTJB.BHSQCDJS
  is '��������ö�����';
comment on column SFTJJKXT_SYTBCXSLAJTJB.ZJCDJS
  is '�ս�ö�����';
comment on column SFTJJKXT_SYTBCXSLAJTJB.QTCDJS
  is '�����ö�����';
comment on column SFTJJKXT_SYTBCXSLAJTJB.SABDZJE
  is '�永����ܽ��';
comment on column SFTJJKXT_SYTBCXSLAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_SYTBCXSLAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_SYTBCXSLAJTJB.SGJSSGAJ
  is '��ۼ���sgaj';
comment on column SFTJJKXT_SYTBCXSLAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_SYTBCXSLAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_SYTBCXSLAJTJB.WJZZJS
  is 'δ����ֹ����';

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
  is 'δ�����˷������ͳ�Ʊ�';
comment on column SFTJJKXT_WCNRFZQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_WCNRFZQKTJB.BH
  is '���';
comment on column SFTJJKXT_WCNRFZQKTJB.XH
  is '���';
comment on column SFTJJKXT_WCNRFZQKTJB.BQSXPJRS
  is '������Ч�о�����';
comment on column SFTJJKXT_WCNRFZQKTJB.ZJBZXGWZRS
  is '֤�ݲ���������������';
comment on column SFTJJKXT_WCNRFZQKTJB.QTXGWZRS
  is '����������������';
comment on column SFTJJKXT_WCNRFZQKTJB.MYCFRS
  is '���账������';
comment on column SFTJJKXT_WCNRFZQKTJB.GYCFRS
  is '���账������';
comment on column SFTJJKXT_WCNRFZQKTJB.WQTXRS
  is '����ͽ������';
comment on column SFTJJKXT_WCNRFZQKTJB.SWNYSZESNRS
  is 'ʮ������������ʮ������';
comment on column SFTJJKXT_WCNRFZQKTJB.SNYSBMSWNRS
  is 'ʮ�����ϲ���ʮ��������';
comment on column SFTJJKXT_WCNRFZQKTJB.QNYSBMSNRS
  is '�������ϲ���ʮ������';
comment on column SFTJJKXT_WCNRFZQKTJB.WNYSBMQNRS
  is '�������ϲ�����������';
comment on column SFTJJKXT_WCNRFZQKTJB.CGSNBMWNRS
  is '�������겻����������';
comment on column SFTJJKXT_WCNRFZQKTJB.SNYXRS
  is '������������';
comment on column SFTJJKXT_WCNRFZQKTJB.JYRS
  is '��������';
comment on column SFTJJKXT_WCNRFZQKTJB.YQTXJYHXRS
  is '����ͽ�̾��ۻ�������';
comment on column SFTJJKXT_WCNRFZQKTJB.GZRS
  is '��������';
comment on column SFTJJKXT_WCNRFZQKTJB.DCFJRS
  is '������������';
comment on column SFTJJKXT_WCNRFZQKTJB.GRRS
  is '��������';
comment on column SFTJJKXT_WCNRFZQKTJB.NMRS
  is 'ũ������';
comment on column SFTJJKXT_WCNRFZQKTJB.ZXXSRS
  is '��Уѧ������';
comment on column SFTJJKXT_WCNRFZQKTJB.ZXXSRSXUUS
  is '׺ѧѧ������xuus';
comment on column SFTJJKXT_WCNRFZQKTJB.GTLDZRS
  is '�����Ͷ�������';
comment on column SFTJJKXT_WCNRFZQKTJB.WYRYRS
  is '��ҵ��Ա����';
comment on column SFTJJKXT_WCNRFZQKTJB.QT
  is '����';
comment on column SFTJJKXT_WCNRFZQKTJB.SLSYSBMSBSRS
  is 'ʮ�������ϲ���ʮ��������';
comment on column SFTJJKXT_WCNRFZQKTJB.SSSYSBMSLSRS
  is 'ʮ�������ϲ���ʮ��������';
comment on column SFTJJKXT_WCNRFZQKTJB.WMRS
  is '��ä����';
comment on column SFTJJKXT_WCNRFZQKTJB.XXRS
  is 'Сѧ����';
comment on column SFTJJKXT_WCNRFZQKTJB.CZRS
  is '��������';
comment on column SFTJJKXT_WCNRFZQKTJB.GZRSGZRES
  is '��������gzres';
comment on column SFTJJKXT_WCNRFZQKTJB.DZYSRS
  is '��ר��������';
comment on column SFTJJKXT_WCNRFZQKTJB.ZFZRS
  is '����������';
comment on column SFTJJKXT_WCNRFZQKTJB.LFRS
  is '�۷�����';
comment on column SFTJJKXT_WCNRFZQKTJB.ZLJRS
  is '���ͽ�����';

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
  is '���±������о���Ч���ͳ�Ʊ�';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BH
  is '���';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.XH
  is '���';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.AY
  is '����';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BQSXPJJS
  is '������Ч�о�����';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BQSXPJRS
  is '������Ч�о�����';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.ZJBZXGWZRS
  is '֤�ݲ���������������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.QTXGWZRS
  is '����������������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.MYXSCFRS
  is '�������´�������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.GYXSCFRS
  is '�������´�������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.SXYZXRS
  is '������ִ������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.SHRS
  is '��������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.WQTXRS
  is '����ͽ������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.SWZESNYQTXRS
  is 'ʮ������ʮ������ͽ������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.SZSWNYQTXRS
  is 'ʮ��ʮ��������ͽ������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.QZSNYQTXRS
  is '����ʮ������ͽ������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.WZQNYQTXRS
  is '������������ͽ������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.SZWNYQTXRS
  is '������������ͽ������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.SNYXYQTXRS
  is '������������ͽ������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.JYRS
  is '��������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.YQTXJYHXRS
  is '����ͽ�̡����ۡ���������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.GZRS
  is '��������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.DCFJRS
  is '������������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.DCBDZZQLRS
  is '������������Ȩ������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.DTQZCJRS
  is '���������������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BCFJRS
  is '������������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BCMSCCRS
  is '����û�ղƲ�����';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BCBDZZQLRS
  is '������������Ȩ������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.BCQZCJRS
  is '���������������';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.AYBM
  is '���ɱ���';
comment on column SFTJJKXT_XSBGRPJSXQKTJB.XSLM
  is '��ʾ����';

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
  is '���¶��󣨸��ˣ��������ͳ�Ʊ�';
comment on column SFTJJKXT_XSESFHAJQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_XSESFHAJQKTJB.BH
  is '���';
comment on column SFTJJKXT_XSESFHAJQKTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_XSESFHAJQKTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_XSESFHAJQKTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_XSESFHAJQKTJB.WCJS
  is 'ά�ּ���';
comment on column SFTJJKXT_XSESFHAJQKTJB.WCRS
  is 'ά������';
comment on column SFTJJKXT_XSESFHAJQKTJB.GPJS
  is '���м���';
comment on column SFTJJKXT_XSESFHAJQKTJB.GPRS
  is '��������';
comment on column SFTJJKXT_XSESFHAJQKTJB.JZCFRS
  is '���ش�������';
comment on column SFTJJKXT_XSESFHAJQKTJB.JQRS
  is '��������';
comment on column SFTJJKXT_XSESFHAJQKTJB.MYCFRS
  is '���账������';
comment on column SFTJJKXT_XSESFHAJQKTJB.WZRS
  is '��������';
comment on column SFTJJKXT_XSESFHAJQKTJB.GPQT
  is '��������';
comment on column SFTJJKXT_XSESFHAJQKTJB.CWSYFLGPRS
  is '�������÷��ɸ�������';
comment on column SFTJJKXT_XSESFHAJQKTJB.LXBDGPRS
  is '���̲�����������';
comment on column SFTJJKXT_XSESFHAJQKTJB.SSBQGPRS
  is '��ʵ�����������';
comment on column SFTJJKXT_XSESFHAJQKTJB.QTYYGPRS
  is '����ԭ���������';
comment on column SFTJJKXT_XSESFHAJQKTJB.SSBQFHZSJS
  is '��ʵ���巢���������';
comment on column SFTJJKXT_XSESFHAJQKTJB.WFCXFHZSJS
  is 'Υ�����򷢻��������';
comment on column SFTJJKXT_XSESFHAJQKTJB.QTYYFHZSJS
  is '����ԭ�򷢻��������';
comment on column SFTJJKXT_XSESFHAJQKTJB.XJFHZSJS
  is 'С�Ʒ����������';
comment on column SFTJJKXT_XSESFHAJQKTJB.CXYCDJS
  is '����ԭ�ö�����';
comment on column SFTJJKXT_XSESFHAJQKTJB.CSJS
  is '���߼���';
comment on column SFTJJKXT_XSESFHAJQKTJB.DJJS
  is '�������';
comment on column SFTJJKXT_XSESFHAJQKTJB.QT
  is '����';
comment on column SFTJJKXT_XSESFHAJQKTJB.KTSLJS
  is '��ͥ�������';
comment on column SFTJJKXT_XSESFHAJQKTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_XSESFHAJQKTJB.SWJS
  is '�������';
comment on column SFTJJKXT_XSESFHAJQKTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_XSESFHAJQKTJB.SAJSSAAJ
  is '��ļ���saaj';
comment on column SFTJJKXT_XSESFHAJQKTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_XSESFHAJQKTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_XSESFHAJQKTJB.YQSLJS
  is '�����������';

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
  is '����һ�󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_XSYSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_XSYSAJTJB.BH
  is '���';
comment on column SFTJJKXT_XSYSAJTJB.XH
  is '���';
comment on column SFTJJKXT_XSYSAJTJB.AY
  is '����';
comment on column SFTJJKXT_XSYSAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_XSYSAJTJB.JCRS
  is '�ɴ�����';
comment on column SFTJJKXT_XSYSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_XSYSAJTJB.SARS
  is '�հ�����';
comment on column SFTJJKXT_XSYSAJTJB.GSJS
  is '���߼���';
comment on column SFTJJKXT_XSYSAJTJB.ZSJS
  is '���߼���';
comment on column SFTJJKXT_XSYSAJTJB.ZXQSJS
  is '�������߼���';
comment on column SFTJJKXT_XSYSAJTJB.FHZSJS
  is '�����������';
comment on column SFTJJKXT_XSYSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_XSYSAJTJB.JARS
  is '�᰸����';
comment on column SFTJJKXT_XSYSAJTJB.PJJS
  is '�о�����';
comment on column SFTJJKXT_XSYSAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_XSYSAJTJB.JCYCSJS
  is '���Ժ���߼���';
comment on column SFTJJKXT_XSYSAJTJB.ZSRCSJS
  is '�����˳��߼���';
comment on column SFTJJKXT_XSYSAJTJB.BHZS
  is '��������';
comment on column SFTJJKXT_XSYSAJTJB.YSJS
  is '���ͼ���';
comment on column SFTJJKXT_XSYSAJTJB.ZZJS
  is '��ֹ����';
comment on column SFTJJKXT_XSYSAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_XSYSAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_XSYSAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_XSYSAJTJB.SAJSSAJS
  is '��ļ���sajs';
comment on column SFTJJKXT_XSYSAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_XSYSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_XSYSAJTJB.WJRS
  is 'δ������';
comment on column SFTJJKXT_XSYSAJTJB.YQSLJS
  is '�����������';
comment on column SFTJJKXT_XSYSAJTJB.AYBM
  is '���ɱ���';
comment on column SFTJJKXT_XSYSAJTJB.XSLM
  is '��ʾ����';

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
  is '�������󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_XSZSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_XSZSAJTJB.BHS
  is '���s';
comment on column SFTJJKXT_XSZSAJTJB.XH
  is '���';
comment on column SFTJJKXT_XSZSAJTJB.JCJSS
  is '�ɴ����s';
comment on column SFTJJKXT_XSZSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_XSZSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_XSZSAJTJB.WCYPJSS
  is 'ά��ԭ�м���s';
comment on column SFTJJKXT_XSZSAJTJB.WCYPRSS
  is 'ά��ԭ������s';
comment on column SFTJJKXT_XSZSAJTJB.GPHBGYCPJS
  is '���л���ԭ���м���';
comment on column SFTJJKXT_XSZSAJTJB.GPHBGYCPRS
  is '���л���ԭ��������';
comment on column SFTJJKXT_XSZSAJTJB.JZCFRS
  is '���ش�������';
comment on column SFTJJKXT_XSZSAJTJB.JQCFRS
  is '���ᴦ������';
comment on column SFTJJKXT_XSZSAJTJB.MYXSCFRS
  is '�������´�������';
comment on column SFTJJKXT_XSZSAJTJB.WZRS
  is '��������';
comment on column SFTJJKXT_XSZSAJTJB.GPHBGYCPQTRS
  is '���л���ԭ������������';
comment on column SFTJJKXT_XSZSAJTJB.CWSYFLGPHBGYCPRS
  is '�������÷��ɸ��л���ԭ��������';
comment on column SFTJJKXT_XSZSAJTJB.LXBDGPHBGYCPRS
  is '���̲������л���ԭ��������';
comment on column SFTJJKXT_XSZSAJTJB.SSBQHZJBZRS
  is '��ʵ�����֤�ݲ�������';
comment on column SFTJJKXT_XSZSAJTJB.QTYYGPHBGYCPRS
  is '����ԭ����л���ԭ��������';
comment on column SFTJJKXT_XSZSAJTJB.SSBQHZJBZFHZSJS
  is '��ʵ�����֤�ݲ��㷢���������';
comment on column SFTJJKXT_XSZSAJTJB.WFSSCXFHZSJS
  is 'Υ�����ϳ��򷢻��������';
comment on column SFTJJKXT_XSZSAJTJB.QTYYFHZSJS
  is '����ԭ�򷢻��������';
comment on column SFTJJKXT_XSZSAJTJB.XJFHZSJS
  is 'С�Ʒ����������';
comment on column SFTJJKXT_XSZSAJTJB.JCYCSJS
  is '���Ժ���߼���';
comment on column SFTJJKXT_XSZSAJTJB.DJJS
  is '�������';
comment on column SFTJJKXT_XSZSAJTJB.QTJAJS
  is '�����᰸����';
comment on column SFTJJKXT_XSZSAJTJB.KTSLJS
  is '��ͥ�������';
comment on column SFTJJKXT_XSZSAJTJB.DTXPJS
  is '��ͥ���м���';
comment on column SFTJJKXT_XSZSAJTJB.SWJS
  is '�������';
comment on column SFTJJKXT_XSZSAJTJB.SGJS
  is '��ۼ���';
comment on column SFTJJKXT_XSZSAJTJB.SAJSSAAJ
  is '��ļ���saaj';
comment on column SFTJJKXT_XSZSAJTJB.STJS
  is '��̨����';
comment on column SFTJJKXT_XSZSAJTJB.WJJSWJJS
  is 'δ�����wjjs';
comment on column SFTJJKXT_XSZSAJTJB.FYBMS
  is '��Ժ����s';
comment on column SFTJJKXT_XSZSAJTJB.BH
  is '���';
comment on column SFTJJKXT_XSZSAJTJB.XHS
  is '���s';
comment on column SFTJJKXT_XSZSAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_XSZSAJTJB.SAJSSAJS
  is '�հ�����sajs';
comment on column SFTJJKXT_XSZSAJTJB.JA
  is '�᰸';
comment on column SFTJJKXT_XSZSAJTJB.WCYPJS
  is 'ά��ԭ�м���';
comment on column SFTJJKXT_XSZSAJTJB.WCYPRS
  is 'ά��ԭ������';
comment on column SFTJJKXT_XSZSAJTJB.GPJS
  is '���м���';
comment on column SFTJJKXT_XSZSAJTJB.GPRS
  is '��������';
comment on column SFTJJKXT_XSZSAJTJB.JZCF
  is '���ش���';
comment on column SFTJJKXT_XSZSAJTJB.JQCF
  is '���ᴦ��';
comment on column SFTJJKXT_XSZSAJTJB.MYXSCF
  is '�������´���';
comment on column SFTJJKXT_XSZSAJTJB.WZ
  is '����';
comment on column SFTJJKXT_XSZSAJTJB.QZQT
  is '��������';
comment on column SFTJJKXT_XSZSAJTJB.CWSYFL
  is '�������÷���';
comment on column SFTJJKXT_XSZSAJTJB.LXBD
  is '���̲���';
comment on column SFTJJKXT_XSZSAJTJB.SSBQCHZJBZ
  is '��ʵ�������֤�ݲ���';
comment on column SFTJJKXT_XSZSAJTJB.GPYYQT
  is '����ԭ������';
comment on column SFTJJKXT_XSZSAJTJB.FHZSSSBQ
  is '����������ʵ����';
comment on column SFTJJKXT_XSZSAJTJB.WFSSCX
  is 'Υ�����ϳ���';
comment on column SFTJJKXT_XSZSAJTJB.FHZSQT
  is '������������';
comment on column SFTJJKXT_XSZSAJTJB.FHZSXJ
  is '��������С��';
comment on column SFTJJKXT_XSZSAJTJB.CXHBGYCD
  is '��������ԭ�ö�';
comment on column SFTJJKXT_XSZSAJTJB.CSRS
  is '��������';
comment on column SFTJJKXT_XSZSAJTJB.DJ
  is '����';
comment on column SFTJJKXT_XSZSAJTJB.ZSJAJQT
  is '����ɰ�������';
comment on column SFTJJKXT_XSZSAJTJB.KTSL
  is '��ͥ����';
comment on column SFTJJKXT_XSZSAJTJB.KTXP
  is '��ͥ����';
comment on column SFTJJKXT_XSZSAJTJB.MG
  is '����';
comment on column SFTJJKXT_XSZSAJTJB.FG
  is '����';
comment on column SFTJJKXT_XSZSAJTJB.YG
  is 'Ӣ��';
comment on column SFTJJKXT_XSZSAJTJB.DGDZYOMGJ
  is '�¹�����Ҫŷ�˹���';
comment on column SFTJJKXT_XSZSAJTJB.RB
  is '�ձ�';
comment on column SFTJJKXT_XSZSAJTJB.SWQT
  is '��������';
comment on column SFTJJKXT_XSZSAJTJB.SWXJ
  is '����С��';
comment on column SFTJJKXT_XSZSAJTJB.SG
  is '���';
comment on column SFTJJKXT_XSZSAJTJB.SA
  is '���';
comment on column SFTJJKXT_XSZSAJTJB.ST
  is '��̨';
comment on column SFTJJKXT_XSZSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_XSZSAJTJB.JCYJYYQSL
  is '���Ժ������������';

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
  is '����֪ʶ��Ȩһ�󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_XSZSCQYSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.BH
  is '���';
comment on column SFTJJKXT_XSZSCQYSAJTJB.XH
  is '���';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JCRS
  is '�ɴ�����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.SARS
  is '�հ�����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.GS
  is '����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.ZS
  is '����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JCYZXQS
  is '���Ժ��������';
comment on column SFTJJKXT_XSZSCQYSAJTJB.SJFYFHZS
  is '�ϼ���Ժ��������';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JARS
  is '�᰸����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.PJ
  is '�о�';
comment on column SFTJJKXT_XSZSCQYSAJTJB.DJ
  is '����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JCYCS
  is '���Ժ����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.ZSRCS
  is '�����˳���';
comment on column SFTJJKXT_XSZSCQYSAJTJB.BHZS
  is '��������';
comment on column SFTJJKXT_XSZSCQYSAJTJB.YS
  is '����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.ZZ
  is '��ֹ';
comment on column SFTJJKXT_XSZSCQYSAJTJB.DTXP
  is '��ͥ����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.MG
  is '����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.FG
  is '����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.YG
  is 'Ӣ��';
comment on column SFTJJKXT_XSZSCQYSAJTJB.DGDZYOMGJ
  is '�¹�����Ҫŷ�˹���';
comment on column SFTJJKXT_XSZSCQYSAJTJB.RB
  is '�ձ�';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JSQT
  is '��������';
comment on column SFTJJKXT_XSZSCQYSAJTJB.XJ
  is 'С��';
comment on column SFTJJKXT_XSZSCQYSAJTJB.SG
  is '���';
comment on column SFTJJKXT_XSZSCQYSAJTJB.SA
  is '���';
comment on column SFTJJKXT_XSZSCQYSAJTJB.ST
  is '��̨';
comment on column SFTJJKXT_XSZSCQYSAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_XSZSCQYSAJTJB.WJRS
  is 'δ������';
comment on column SFTJJKXT_XSZSCQYSAJTJB.JCYJYYQSL
  is '���Ժ������������';

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
  is '����֪ʶ��Ȩ���󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_XSZSCQZSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_XSZSCQZSAJTJB.BH
  is '���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.XH
  is '���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_XSZSCQZSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_XSZSCQZSAJTJB.JA
  is '�᰸';
comment on column SFTJJKXT_XSZSCQZSAJTJB.WCYPJS
  is 'ά��ԭ�м���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.WCYPRS
  is 'ά��ԭ������';
comment on column SFTJJKXT_XSZSCQZSAJTJB.GPHBGYCPJS
  is '���л���ԭ���м���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.GPHBGYCPRS
  is '���л���ԭ��������';
comment on column SFTJJKXT_XSZSCQZSAJTJB.JZCF
  is '���ش���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.JQCF
  is '���ᴦ��';
comment on column SFTJJKXT_XSZSCQZSAJTJB.MYXSCF
  is '�������´���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.WZ
  is '����';
comment on column SFTJJKXT_XSZSCQZSAJTJB.QZQT
  is '��������';
comment on column SFTJJKXT_XSZSCQZSAJTJB.CWSYFL
  is '�������÷���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.LXBD
  is '���̲���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.SSBQHZJBZ
  is '��ʵ�����֤�ݲ���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.GPYYQT
  is '����ԭ������';
comment on column SFTJJKXT_XSZSCQZSAJTJB.FHZSSSBQ
  is '����������ʵ����';
comment on column SFTJJKXT_XSZSCQZSAJTJB.WFSSCX
  is 'Υ�����ϳ���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.FHZSQT
  is '������������';
comment on column SFTJJKXT_XSZSCQZSAJTJB.FHZSXJ
  is '��������С��';
comment on column SFTJJKXT_XSZSCQZSAJTJB.JCYCS
  is '���Ժ����';
comment on column SFTJJKXT_XSZSCQZSAJTJB.DJ
  is '����';
comment on column SFTJJKXT_XSZSCQZSAJTJB.ZSJAJZQT
  is '����᰸��������';
comment on column SFTJJKXT_XSZSCQZSAJTJB.KTSL
  is '��ͥ����';
comment on column SFTJJKXT_XSZSCQZSAJTJB.DTXP
  is '��ͥ����';
comment on column SFTJJKXT_XSZSCQZSAJTJB.MG
  is '����';
comment on column SFTJJKXT_XSZSCQZSAJTJB.FG
  is '����';
comment on column SFTJJKXT_XSZSCQZSAJTJB.YG
  is 'Ӣ��';
comment on column SFTJJKXT_XSZSCQZSAJTJB.DGDZYOMGJ
  is '�¹�����Ҫŷ�˹���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.RB
  is '�ձ�';
comment on column SFTJJKXT_XSZSCQZSAJTJB.SWQT
  is '��������';
comment on column SFTJJKXT_XSZSCQZSAJTJB.XJ
  is 'С��';
comment on column SFTJJKXT_XSZSCQZSAJTJB.SG
  is '���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.SA
  is '���';
comment on column SFTJJKXT_XSZSCQZSAJTJB.ST
  is '��̨';
comment on column SFTJJKXT_XSZSCQZSAJTJB.WJJS
  is 'δ�����';

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
  is '�����������󰸼�����ͳ�Ʊ�';
comment on column SFTJJKXT_XZESZSAJAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_XZESZSAJAJTJB.BH
  is '���';
comment on column SFTJJKXT_XZESZSAJAJTJB.XH
  is '���';
comment on column SFTJJKXT_XZESZSAJAJTJB.JC
  is '�ɴ�';
comment on column SFTJJKXT_XZESZSAJAJTJB.SA
  is '�հ�';
comment on column SFTJJKXT_XZESZSAJAJTJB.JA
  is '�᰸';
comment on column SFTJJKXT_XZESZSAJAJTJB.WC
  is 'ά��';
comment on column SFTJJKXT_XZESZSAJAJTJB.PJ
  is '�о�';
comment on column SFTJJKXT_XZESZSAJAJTJB.FHZS
  is '��������';
comment on column SFTJJKXT_XZESZSAJAJTJB.CS
  is '����';
comment on column SFTJJKXT_XZESZSAJAJTJB.BHBH
  is '����bh';
comment on column SFTJJKXT_XZESZSAJAJTJB.CXYCDZL
  is '����ԭ�ö�ָ��';
comment on column SFTJJKXT_XZESZSAJAJTJB.ZJ
  is '�ս�';
comment on column SFTJJKXT_XZESZSAJAJTJB.QT
  is '����';
comment on column SFTJJKXT_XZESZSAJAJTJB.DJ
  is '����';
comment on column SFTJJKXT_XZESZSAJAJTJB.KT
  is '��ͥ';
comment on column SFTJJKXT_XZESZSAJAJTJB.DTXP
  is '��ͥ����';
comment on column SFTJJKXT_XZESZSAJAJTJB.SWSW
  is '����sw';
comment on column SFTJJKXT_XZESZSAJAJTJB.SG
  is '���';
comment on column SFTJJKXT_XZESZSAJAJTJB.SASA
  is '���sa';
comment on column SFTJJKXT_XZESZSAJAJTJB.ST
  is '��̨';
comment on column SFTJJKXT_XZESZSAJAJTJB.WJ
  is 'δ��';
comment on column SFTJJKXT_XZESZSAJAJTJB.ZZ
  is '��ֹ';

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
  is '����һ�󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_XZYSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_XZYSAJTJB.BH
  is '���';
comment on column SFTJJKXT_XZYSAJTJB.XH
  is '���';
comment on column SFTJJKXT_XZYSAJTJB.JC
  is '�ɴ�';
comment on column SFTJJKXT_XZYSAJTJB.SA
  is '�հ�';
comment on column SFTJJKXT_XZYSAJTJB.SADDPC
  is '�հ������⳥';
comment on column SFTJJKXT_XZYSAJTJB.SAFDPC
  is '�հ������⳥';
comment on column SFTJJKXT_XZYSAJTJB.JA
  is '�᰸';
comment on column SFTJJKXT_XZYSAJTJB.JADDPC
  is '�᰸�����⳥';
comment on column SFTJJKXT_XZYSAJTJB.JAFDPC
  is '�᰸�����⳥';
comment on column SFTJJKXT_XZYSAJTJB.WC
  is 'ά��';
comment on column SFTJJKXT_XZYSAJTJB.QBCX
  is 'ȫ������';
comment on column SFTJJKXT_XZYSAJTJB.BFCX
  is '���ֳ���';
comment on column SFTJJKXT_XZYSAJTJB.ZXZXZXW
  is '������������Ϊ';
comment on column SFTJJKXT_XZYSAJTJB.BG
  is '���';
comment on column SFTJJKXT_XZYSAJTJB.LXFDZZ
  is '���з���ְ��';
comment on column SFTJJKXT_XZYSAJTJB.QRHF
  is 'ȷ�ϺϷ�';
comment on column SFTJJKXT_XZYSAJTJB.QRWF
  is 'ȷ��Υ��';
comment on column SFTJJKXT_XZYSAJTJB.PJBHSS
  is '�о���������';
comment on column SFTJJKXT_XZYSAJTJB.PC
  is '�⳥';
comment on column SFTJJKXT_XZYSAJTJB.BYPC
  is '�����⳥';
comment on column SFTJJKXT_XZYSAJTJB.CDBH
  is '�ö�����';
comment on column SFTJJKXT_XZYSAJTJB.YGZDCS
  is 'ԭ����������';
comment on column SFTJJKXT_XZYSAJTJB.BGGBYGCS
  is '����ı�ԭ�泷��';
comment on column SFTJJKXT_XZYSAJTJB.SSBD
  is '���ϱ��';
comment on column SFTJJKXT_XZYSAJTJB.ZJ
  is '�ս�';
comment on column SFTJJKXT_XZYSAJTJB.QT
  is '����';
comment on column SFTJJKXT_XZYSAJTJB.PCDJ
  is '�⳥����';
comment on column SFTJJKXT_XZYSAJTJB.FHYW
  is '����ԭ��';
comment on column SFTJJKXT_XZYSAJTJB.ZFPCJ
  is '֧���⳥��';
comment on column SFTJJKXT_XZYSAJTJB.PCJE
  is '�⳥���';
comment on column SFTJJKXT_XZYSAJTJB.DTXP
  is '��ͥ����';
comment on column SFTJJKXT_XZYSAJTJB.SW
  is '����';
comment on column SFTJJKXT_XZYSAJTJB.SG
  is '���';
comment on column SFTJJKXT_XZYSAJTJB.SASA
  is '���sa';
comment on column SFTJJKXT_XZYSAJTJB.ST
  is '��̨';
comment on column SFTJJKXT_XZYSAJTJB.WJ
  is 'δ��';
comment on column SFTJJKXT_XZYSAJTJB.ZZ
  is '��ֹ';

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
  is '����֪ʶ��Ȩ�������󰸼�ͳ�Ʊ�';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.BH
  is '���';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.XH
  is '���';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.JCJS
  is '�ɴ����';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.SAJS
  is '�հ�����';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.JAJS
  is '�᰸����';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.WC
  is 'ά��';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.PJ
  is '�о�';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.FHZS
  is '��������';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.CS
  is '����';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.BHBH
  is '����bh';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.CXYCDZLLASL
  is '����ԭ�ö�ָ����������';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.ZJ
  is '�ս�';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.QT
  is '����';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.DJ
  is '����';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.KTSL
  is '��ͥ����';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.DTXP
  is '��ͥ����';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.MG
  is '����';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.FG
  is '����';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.YG
  is 'Ӣ��';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.DGDZYOMGJ
  is '�¹�����Ҫŷ�˹���';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.RB
  is '�ձ�';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.SWQT
  is '��������';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.XJ
  is 'С��';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.SG
  is '���';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.SA
  is '���';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.ST
  is '��̨';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.WJ
  is 'δ��';
comment on column SFTJJKXT_XZZSCQESZSAJTJB.WJZZ
  is 'δ����ֹ';

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
  is '����֪ʶ��Ȩһ�󰸼�ͳ�Ʊ�';

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
  is '�ﷸ���ͳ�Ʊ�';
comment on column SFTJJKXT_ZFQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_ZFQKTJB.BH
  is '���';
comment on column SFTJJKXT_ZFQKTJB.XH
  is '���';
comment on column SFTJJKXT_ZFQKTJB.AY
  is '����';
comment on column SFTJJKXT_ZFQKTJB.BQSXPJZFRS
  is '������Ч�о��ﷸ����';
comment on column SFTJJKXT_ZFQKTJB.ZYGRRS
  is '��ҵ��������';
comment on column SFTJJKXT_ZFQKTJB.XGGRRS
  is '�¸ڹ�������';
comment on column SFTJJKXT_ZFQKTJB.MGNMRS
  is '��ũ������';
comment on column SFTJJKXT_ZFQKTJB.QTNMRS
  is '����ũ������';
comment on column SFTJJKXT_ZFQKTJB.XYJRRS
  is '���۾�������';
comment on column SFTJJKXT_ZFQKTJB.GJJGRYRS
  is '���һ�����Ա����';
comment on column SFTJJKXT_ZFQKTJB.GYQYRYRS
  is '������ҵ��Ա����';
comment on column SFTJJKXT_ZFQKTJB.JRJGRYRS
  is '���ڻ�����Ա����';
comment on column SFTJJKXT_ZFQKTJB.SYDWRYRS
  is '��ҵ��λ��Ա����';
comment on column SFTJJKXT_ZFQKTJB.RMTTRYRS
  is '����������Ա����';
comment on column SFTJJKXT_ZFQKTJB.QTGJGZRYRS
  is '�������ҹ�����Ա����';
comment on column SFTJJKXT_ZFQKTJB.XSRS
  is 'ѧ������';
comment on column SFTJJKXT_ZFQKTJB.ZYRS
  is 'ְԱ����';
comment on column SFTJJKXT_ZFQKTJB.LTXRYRS
  is '��������Ա����';
comment on column SFTJJKXT_ZFQKTJB.SYGTRYRS
  is '˽Ӫ������Ա����';
comment on column SFTJJKXT_ZFQKTJB.WYRYRS
  is '��ҵ��Ա����';
comment on column SFTJJKXT_ZFQKTJB.QTRS
  is '��������';
comment on column SFTJJKXT_ZFQKTJB.SSSYSBMSLSRS
  is 'ʮ�������ϲ���ʮ��������';
comment on column SFTJJKXT_ZFQKTJB.SLSYSBMSBSRS
  is 'ʮ�������ϲ���ʮ��������';
comment on column SFTJJKXT_ZFQKTJB.SBSYSBMESWSRS
  is 'ʮ�������ϲ�����ʮ��������';
comment on column SFTJJKXT_ZFQKTJB.LSSYSRS
  is '��ʮ����������';
comment on column SFTJJKXT_ZFQKTJB.NXRS
  is 'Ů������';
comment on column SFTJJKXT_ZFQKTJB.DYRS
  is '��Ա����';
comment on column SFTJJKXT_ZFQKTJB.SSMZRS
  is '������������';
comment on column SFTJJKXT_ZFQKTJB.GATRYRS
  is '�۰�̨��Ա����';
comment on column SFTJJKXT_ZFQKTJB.WJRRS
  is '�⼮������';
comment on column SFTJJKXT_ZFQKTJB.ZFZDRYRS
  is '���������Ա����';
comment on column SFTJJKXT_ZFQKTJB.LFRS
  is '�۷�����';
comment on column SFTJJKXT_ZFQKTJB.ZLJRYRS
  is '���ͽ���Ա����';
comment on column SFTJJKXT_ZFQKTJB.AYBM
  is '���ɱ���';
comment on column SFTJJKXT_ZFQKTJB.XSLM
  is '��ʾ����';

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
  is '�ﷸ��ԭΪ���ż����ϸɲ����������';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.BH
  is '���';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.XH
  is '���';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.HJRS
  is '�ϼ�����';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.ZSPTHWWP
  is '��˽��ͨ�����Ʒ';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.TW
  is '̰��';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.NYGK
  is 'Ų�ù���';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.SH
  is '�ܻ�';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.JECCLYBM
  is '�޶�Ʋ���Դ����';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.LYZQ
  is '����ְȨ';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.WHZS
  is '���ְ��';
comment on column SFTJJKXT_ZFZYWXTJYSGBQKE.QT
  is '����';

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
  is '�ۺ����ͳ�Ʊ�';
comment on column SFTJJKXT_ZHQKTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_ZHQKTJB.BM
  is '����';
comment on column SFTJJKXT_ZHQKTJB.XH
  is '���';
comment on column SFTJJKXT_ZHQKTJB.PSYCJ
  is '����Ա�μ�';
comment on column SFTJJKXT_ZHQKTJB.HB
  is '�ر�';
comment on column SFTJJKXT_ZHQKTJB.SSCCBQ
  is '���ϲƲ���ȫ';
comment on column SFTJJKXT_ZHQKTJB.XYZX
  is '����ִ��';
comment on column SFTJJKXT_ZHQKTJB.SWHTL
  is '��ί������';
comment on column SFTJJKXT_ZHQKTJB.FLYZ
  is '����Ԯ��';
comment on column SFTJJKXT_ZHQKTJB.ZGYJA
  is '���Ժ�᰸';
comment on column SFTJJKXT_ZHQKTJB.ZGYSSBDZJE
  is '���Ժ���ϱ���ܽ��';
comment on column SFTJJKXT_ZHQKTJB.GYJA
  is '��Ժ�᰸';
comment on column SFTJJKXT_ZHQKTJB.GYSSBDZJE
  is '��Ժ���ϱ���ܽ��';
comment on column SFTJJKXT_ZHQKTJB.ZYJA
  is '��Ժ�᰸';
comment on column SFTJJKXT_ZHQKTJB.ZYSSBDZJE
  is '��Ժ���ϱ���ܽ��';
comment on column SFTJJKXT_ZHQKTJB.JCYJA
  is '����Ժ�᰸';
comment on column SFTJJKXT_ZHQKTJB.JCYSSBDZJE
  is '����Ժ���ϱ���ܽ��';
comment on column SFTJJKXT_ZHQKTJB.RMFTJA
  is '����ͥ�᰸';
comment on column SFTJJKXT_ZHQKTJB.RMFTSSBDZJE
  is '����ͥ���ϱ���ܽ��';
comment on column SFTJJKXT_ZHQKTJB.HJJA
  is '�ϼƽ᰸';
comment on column SFTJJKXT_ZHQKTJB.HJSSBDZJE
  is '�ϼ����ϱ���ܽ��';

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
  is 'ִ�а���ͳ�Ʊ�';
comment on column SFTJJKXT_ZXAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_ZXAJTJB.BH
  is '���';
comment on column SFTJJKXT_ZXAJTJB.XH
  is '���';
comment on column SFTJJKXT_ZXAJTJB.JC
  is '�ɴ�';
comment on column SFTJJKXT_ZXAJTJB.JCXZFS
  is '�ɴ���������';
comment on column SFTJJKXT_ZXAJTJB.SA
  is '�հ�';
comment on column SFTJJKXT_ZXAJTJB.YJ
  is '�ƽ�';
comment on column SFTJJKXT_ZXAJTJB.SQ
  is '����';
comment on column SFTJJKXT_ZXAJTJB.SQZXBDZJE
  is '����ִ�б���ܽ��';
comment on column SFTJJKXT_ZXAJTJB.ST
  is '����';
comment on column SFTJJKXT_ZXAJTJB.CCXJSZX
  is '�Ʋ��̼�ʱִ��';
comment on column SFTJJKXT_ZXAJTJB.TJZX
  is '�ἶִ��';
comment on column SFTJJKXT_ZXAJTJB.ZDZX
  is 'ָ��ִ��';
comment on column SFTJJKXT_ZXAJTJB.SCXZFS
  is '�����������';
comment on column SFTJJKXT_ZXAJTJB.JA
  is '�᰸';
comment on column SFTJJKXT_ZXAJTJB.XZFSZYZX
  is '��������׼��ִ��';
comment on column SFTJJKXT_ZXAJTJB.XZFSBYZX
  is '�������߲���ִ��';
comment on column SFTJJKXT_ZXAJTJB.BYZX
  is '����ִ��';
comment on column SFTJJKXT_ZXAJTJB.ZDLX
  is '�Զ�����';
comment on column SFTJJKXT_ZXAJTJB.HJ
  is '�ͽ�';
comment on column SFTJJKXT_ZXAJTJB.QZZX
  is 'ǿ��ִ��';
comment on column SFTJJKXT_ZXAJTJB.ZJ
  is '�ս�';
comment on column SFTJJKXT_ZXAJTJB.QT
  is '����';
comment on column SFTJJKXT_ZXAJTJB.SW
  is '����';
comment on column SFTJJKXT_ZXAJTJB.SG
  is '���';
comment on column SFTJJKXT_ZXAJTJB.SASA
  is '���sa';
comment on column SFTJJKXT_ZXAJTJB.STST
  is '��̨st';
comment on column SFTJJKXT_ZXAJTJB.ZJBDZJE
  is 'ִ�����ܽ��';
comment on column SFTJJKXT_ZXAJTJB.JL
  is '����';
comment on column SFTJJKXT_ZXAJTJB.FKJS
  is '�������';
comment on column SFTJJKXT_ZXAJTJB.FKZJE
  is '�����ܽ��';
comment on column SFTJJKXT_ZXAJTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_ZXAJTJB.WJXZFS
  is 'δ����������';
comment on column SFTJJKXT_ZXAJTJB.WJBDZJE
  is 'δ�����ܽ��';
comment on column SFTJJKXT_ZXAJTJB.ZZ
  is '��ֹ';

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
  is 'ִ�а���ִ������ͳ�Ʊ�';
comment on column SFTJJKXT_ZXAJZXQXTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_ZXAJZXQXTJB.BH
  is '���';
comment on column SFTJJKXT_ZXAJZXQXTJB.XH
  is '���';
comment on column SFTJJKXT_ZXAJZXQXTJB.AJJS
  is '��������';
comment on column SFTJJKXT_ZXAJZXQXTJB.GDQXNJA
  is '�涨�����ڽ᰸';
comment on column SFTJJKXT_ZXAJZXQXTJB.QXWSJBMLGY
  is '��������᲻��������';
comment on column SFTJJKXT_ZXAJZXQXTJB.QXWSJLGYYS
  is '�������������������';
comment on column SFTJJKXT_ZXAJZXQXTJB.QXWSJYNYS
  is '���������һ������';
comment on column SFTJJKXT_ZXAJZXQXTJB.BZXRXLBM
  is '��ִ�������䲻��';
comment on column SFTJJKXT_ZXAJZXQXTJB.BZXRWCC
  is '��ִ�����޲Ʋ�';
comment on column SFTJJKXT_ZXAJZXQXTJB.CCQSDQD
  is '�Ʋ�Ȩ����ȷ��';
comment on column SFTJJKXT_ZXAJZXQXTJB.YGRWFZX
  is '������޷�ִ��';
comment on column SFTJJKXT_ZXAJZXQXTJB.SJFYYQ
  is '�ϼ���ԺҪ��';
comment on column SFTJJKXT_ZXAJZXQXTJB.SJFYXD
  is '�ϼ���ԺЭ��';
comment on column SFTJJKXT_ZXAJZXQXTJB.QTYY
  is '����ԭ��';
comment on column SFTJJKXT_ZXAJZXQXTJB.WJJS
  is 'δ�����';
comment on column SFTJJKXT_ZXAJZXQXTJB.GDQXNWJ
  is '�涨������δ��';
comment on column SFTJJKXT_ZXAJZXQXTJB.QXNWJBMLGY
  is '������δ�᲻��������';
comment on column SFTJJKXT_ZXAJZXQXTJB.QXNWJLGYYS
  is '������δ������������';
comment on column SFTJJKXT_ZXAJZXQXTJB.QXNWJYNYS
  is '������δ��һ������';
comment on column SFTJJKXT_ZXAJZXQXTJB.WJZZ
  is 'δ����ֹ';

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
  is 'ִ�����顢���顢����ִ�а���ͳ�Ʊ�';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.FYBM
  is '��Ժ����';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.BH
  is '���';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.XH
  is '���';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.JC
  is '�ɴ�';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.SA
  is '�հ�';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.JA
  is '�᰸';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.BHBH
  is '����bh';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.BGGZ
  is '���������';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.CXJC
  is '���������';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.CH
  is '����';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.QT
  is '����';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.ZLYSFYZX
  is '����ԭ��Ժִ��';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.JDYBYZX
  is '�����ɱ�Ժִ��';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.ZLQTFYZX
  is 'ָ��������Ժִ��';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.SWRYNJA
  is 'ʮ�������ڽ᰸';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.SWRYSJA
  is 'ʮ�������Ͻ᰸';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.YGYYNJA
  is 'һ�������ڽ᰸';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.YGYYSJA
  is 'һ�������Ͻ᰸';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.SW
  is '����';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.SG
  is '���';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.SASA
  is '���sa';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.ST
  is '��̨';
comment on column SFTJJKXT_ZXYYFYDCZXAJTJB.WJ
  is 'δ��';

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
  is '������Ǣ';
comment on column SFXZZBGLXT_ABJQ.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ABJQ.BH
  is '���';
comment on column SFXZZBGLXT_ABJQ.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_ABJQ.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_ABJQ.DJSJ
  is '�Ǽ�ʱ��';
comment on column SFXZZBGLXT_ABJQ.BM
  is '����';
comment on column SFXZZBGLXT_ABJQ.SJ
  is 'ʱ��';
comment on column SFXZZBGLXT_ABJQ.JQR
  is '��Ǣ��';
comment on column SFXZZBGLXT_ABJQ.JBQK
  is '�������';
comment on column SFXZZBGLXT_ABJQ.XYRS
  is '��Ҫ����';
comment on column SFXZZBGLXT_ABJQ.SFLXGAPCS
  is '�Ƿ���ϵ�������ɳ�����';
comment on column SFXZZBGLXT_ABJQ.TCYJHQTBMYJHSXCYJ
  is 'ͥ��������������������';
comment on column SFXZZBGLXT_ABJQ.TCSPBZ
  is 'ͥ����������־';
comment on column SFXZZBGLXT_ABJQ.TCSPSJ
  is 'ͥ��������ʱ��';
comment on column SFXZZBGLXT_ABJQ.TCSPR
  is 'ͥ����������';
comment on column SFXZZBGLXT_ABJQ.TCSPSM
  is 'ͥ��������˵��';
comment on column SFXZZBGLXT_ABJQ.YWWLDXZYJ
  is 'Ժά���쵼С�����';
comment on column SFXZZBGLXT_ABJQ.YWWLDXZSPBZ
  is 'Ժά���쵼С��������־';
comment on column SFXZZBGLXT_ABJQ.YWWLDXZSPR
  is 'Ժά���쵼С��������';
comment on column SFXZZBGLXT_ABJQ.YWWLDXZSPSJ
  is 'Ժά���쵼С������ʱ��';
comment on column SFXZZBGLXT_ABJQ.YWWLDXZSPSM
  is 'Ժά���쵼С������˵��';
comment on column SFXZZBGLXT_ABJQ.YLDYJ
  is 'Ժ�쵼���';
comment on column SFXZZBGLXT_ABJQ.YLDSPBZ
  is 'Ժ�쵼������־';
comment on column SFXZZBGLXT_ABJQ.YLDSPSJ
  is 'Ժ�쵼����ʱ��';
comment on column SFXZZBGLXT_ABJQ.YLDSPR
  is 'Ժ�쵼������';
comment on column SFXZZBGLXT_ABJQ.YLDSPSM
  is 'Ժ�쵼����˵��';
comment on column SFXZZBGLXT_ABJQ.BZ
  is '��ע';
comment on column SFXZZBGLXT_ABJQ.SFWCSP
  is '�Ƿ��������';

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
  is '�칫��Ʒ������ϸ��';
comment on column SFXZZBGLXT_BGYPLYMXB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BGYPLYMXB.MXBH
  is '��ϸ���';
comment on column SFXZZBGLXT_BGYPLYMXB.ZBBS
  is '�����ʶ';
comment on column SFXZZBGLXT_BGYPLYMXB.BGYPBS
  is '�칫��Ʒ��ʶ';
comment on column SFXZZBGLXT_BGYPLYMXB.PM
  is 'Ʒ��';
comment on column SFXZZBGLXT_BGYPLYMXB.BH
  is '���';
comment on column SFXZZBGLXT_BGYPLYMXB.XH
  is '�ͺ�';
comment on column SFXZZBGLXT_BGYPLYMXB.GG
  is '���';
comment on column SFXZZBGLXT_BGYPLYMXB.DW
  is '��λ';
comment on column SFXZZBGLXT_BGYPLYMXB.DJ
  is '����';
comment on column SFXZZBGLXT_BGYPLYMXB.SL
  is '����';
comment on column SFXZZBGLXT_BGYPLYMXB.JE
  is '���';
comment on column SFXZZBGLXT_BGYPLYMXB.SFZJFF
  is '�Ƿ�ֱ�ӷ���';

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
  is '�칫��Ʒ��������';
comment on column SFXZZBGLXT_BGYPLYZB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BGYPLYZB.LYBH
  is '���ñ��';
comment on column SFXZZBGLXT_BGYPLYZB.LYBM
  is '���ò���';
comment on column SFXZZBGLXT_BGYPLYZB.LYRBS
  is '�����˱�ʶ';
comment on column SFXZZBGLXT_BGYPLYZB.LYR
  is '������';
comment on column SFXZZBGLXT_BGYPLYZB.SQSJ
  is '����ʱ��';
comment on column SFXZZBGLXT_BGYPLYZB.HJJE
  is '�ϼƽ��';
comment on column SFXZZBGLXT_BGYPLYZB.LYSY
  is '��������';
comment on column SFXZZBGLXT_BGYPLYZB.BMLDSPR
  is '�����쵼������';
comment on column SFXZZBGLXT_BGYPLYZB.BMLDSPSJ
  is '�����쵼����ʱ��';
comment on column SFXZZBGLXT_BGYPLYZB.BMLDSPYJ
  is '�����쵼�������';
comment on column SFXZZBGLXT_BGYPLYZB.BMLDSPJG
  is '�����쵼�������';
comment on column SFXZZBGLXT_BGYPLYZB.SXCLDSPJG
  is '˾�д��쵼�������';
comment on column SFXZZBGLXT_BGYPLYZB.SXCLDSPYJ
  is '˾�д��쵼�������';
comment on column SFXZZBGLXT_BGYPLYZB.SXCLDSPSJ
  is '˾�д��쵼����ʱ��';
comment on column SFXZZBGLXT_BGYPLYZB.SXCLDSPR
  is '˾�д��쵼������';
comment on column SFXZZBGLXT_BGYPLYZB.FFRBS
  is '�����˱�ʶ';
comment on column SFXZZBGLXT_BGYPLYZB.FFR
  is '������';
comment on column SFXZZBGLXT_BGYPLYZB.FFRQ
  is '��������';
comment on column SFXZZBGLXT_BGYPLYZB.ZT
  is '״̬';
comment on column SFXZZBGLXT_BGYPLYZB.ZTBZ
  is '״̬��־';
comment on column SFXZZBGLXT_BGYPLYZB.DSPDJ
  is '�������ȼ�';
comment on column SFXZZBGLXT_BGYPLYZB.DSPR
  is '��������';
comment on column SFXZZBGLXT_BGYPLYZB.SFZJFF
  is '�Ƿ�ֱ�ӷ���';
comment on column SFXZZBGLXT_BGYPLYZB.BZ
  is '��ע';

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
  is '�칫��Ʒ�̵���ϸ��';
comment on column SFXZZBGLXT_BGYPPDMXB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BGYPPDMXB.MXBH
  is '��ϸ���';
comment on column SFXZZBGLXT_BGYPPDMXB.ZBH
  is '�����';
comment on column SFXZZBGLXT_BGYPPDMXB.BGYPBS
  is '�칫��Ʒ��ʶ';
comment on column SFXZZBGLXT_BGYPPDMXB.PM
  is 'Ʒ��';
comment on column SFXZZBGLXT_BGYPPDMXB.DW
  is '��λ';
comment on column SFXZZBGLXT_BGYPPDMXB.KCSL
  is '�������';
comment on column SFXZZBGLXT_BGYPPDMXB.PDSL
  is '�̵�����';
comment on column SFXZZBGLXT_BGYPPDMXB.PDJG
  is '�̵���';

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
  is '�칫��Ʒ�̵�����';
comment on column SFXZZBGLXT_BGYPPDZB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BGYPPDZB.PDBH
  is '�̵���';
comment on column SFXZZBGLXT_BGYPPDZB.PDND
  is '�̵����';
comment on column SFXZZBGLXT_BGYPPDZB.SXBN
  is '���°���';
comment on column SFXZZBGLXT_BGYPPDZB.PDSJ
  is '�̵�ʱ��';
comment on column SFXZZBGLXT_BGYPPDZB.PDRBS
  is '�̵��˱�ʶ';
comment on column SFXZZBGLXT_BGYPPDZB.PDR
  is '�̵���';
comment on column SFXZZBGLXT_BGYPPDZB.SHRBS
  is '����˱�ʶ';
comment on column SFXZZBGLXT_BGYPPDZB.SHR
  is '�����';

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
  is '�칫��Ʒ��Ϣ';
comment on column SFXZZBGLXT_BGYPXX.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BGYPXX.BGYPBS
  is '�칫��Ʒ��ʶ';
comment on column SFXZZBGLXT_BGYPXX.BH
  is '���';
comment on column SFXZZBGLXT_BGYPXX.PM
  is 'Ʒ��';
comment on column SFXZZBGLXT_BGYPXX.XH
  is '�ͺ�';
comment on column SFXZZBGLXT_BGYPXX.GG
  is '���';
comment on column SFXZZBGLXT_BGYPXX.DW
  is '��λ';
comment on column SFXZZBGLXT_BGYPXX.DJ
  is '����';
comment on column SFXZZBGLXT_BGYPXX.SL
  is '����';
comment on column SFXZZBGLXT_BGYPXX.JE
  is '���';
comment on column SFXZZBGLXT_BGYPXX.BJKCL
  is '���������';
comment on column SFXZZBGLXT_BGYPXX.BZ
  is '��ע';

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
  is '��װ������ϸ��';
comment on column SFXZZBGLXT_BZCKMXB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BZCKMXB.MXBH
  is '��ϸ���';
comment on column SFXZZBGLXT_BZCKMXB.CKBH
  is '������';
comment on column SFXZZBGLXT_BZCKMXB.BZBM
  is '��װ����';
comment on column SFXZZBGLXT_BZCKMXB.PM
  is 'Ʒ��';
comment on column SFXZZBGLXT_BZCKMXB.DW
  is '��λ';
comment on column SFXZZBGLXT_BZCKMXB.XH
  is '�ͺ�';
comment on column SFXZZBGLXT_BZCKMXB.HFBZ
  is '������׼';
comment on column SFXZZBGLXT_BZCKMXB.JG
  is '�۸�';
comment on column SFXZZBGLXT_BZCKMXB.SL
  is '����';
comment on column SFXZZBGLXT_BZCKMXB.BZ
  is '��ע';

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
  is '��װ��������';
comment on column SFXZZBGLXT_BZCKZB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BZCKZB.FYMC
  is '��Ժ����';
comment on column SFXZZBGLXT_BZCKZB.CKBH
  is '������';
comment on column SFXZZBGLXT_BZCKZB.CKDH
  is '���ⵥ��';
comment on column SFXZZBGLXT_BZCKZB.CKRQ
  is '��������';
comment on column SFXZZBGLXT_BZCKZB.FWDW
  is '���ﵥλ';
comment on column SFXZZBGLXT_BZCKZB.SWDW
  is '���ﵥλ';
comment on column SFXZZBGLXT_BZCKZB.LWRBS
  is '�����˱�ʶ';
comment on column SFXZZBGLXT_BZCKZB.LWR
  is '������';
comment on column SFXZZBGLXT_BZCKZB.CWSTKRBS
  is '�����գ��ˣ����˱�ʶ';
comment on column SFXZZBGLXT_BZCKZB.CWSTKR
  is '�����գ��ˣ�����';
comment on column SFXZZBGLXT_BZCKZB.HJJE
  is '�ϼƽ��';
comment on column SFXZZBGLXT_BZCKZB.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_BZCKZB.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_BZCKZB.DJRQ
  is '�Ǽ�����';
comment on column SFXZZBGLXT_BZCKZB.CKBGYBS
  is '�ֿⱣ��Ա��ʶ';
comment on column SFXZZBGLXT_BZCKZB.CKBGY
  is '�ֿⱣ��Ա';
comment on column SFXZZBGLXT_BZCKZB.BGYQRSJ
  is '����Աȷ��ʱ��';
comment on column SFXZZBGLXT_BZCKZB.CKGLYBS
  is '�ֿ����Ա��ʶ';
comment on column SFXZZBGLXT_BZCKZB.CKGLY
  is '�ֿ����Ա';
comment on column SFXZZBGLXT_BZCKZB.GLYQRSJ
  is '����Աȷ��ʱ��';
comment on column SFXZZBGLXT_BZCKZB.ZGLDBS
  is '�����쵼��ʶ';
comment on column SFXZZBGLXT_BZCKZB.ZGLD
  is '�����쵼';
comment on column SFXZZBGLXT_BZCKZB.LDSHSJ
  is '�쵼���ʱ��';
comment on column SFXZZBGLXT_BZCKZB.BZ
  is '��ע';
comment on column SFXZZBGLXT_BZCKZB.ZT
  is '״̬';
comment on column SFXZZBGLXT_BZCKZB.GLFJE
  is '����ѽ��';

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
  is '��װ���ż�¼';
comment on column SFXZZBGLXT_BZFFJL.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BZFFJL.BH
  is '���';
comment on column SFXZZBGLXT_BZFFJL.RYBM
  is '��Ա����';
comment on column SFXZZBGLXT_BZFFJL.XM
  is '����';
comment on column SFXZZBGLXT_BZFFJL.BM
  is '����';
comment on column SFXZZBGLXT_BZFFJL.FYMC
  is '��Ժ����';
comment on column SFXZZBGLXT_BZFFJL.BZBM
  is '��װ����';
comment on column SFXZZBGLXT_BZFFJL.PM
  is 'Ʒ��';
comment on column SFXZZBGLXT_BZFFJL.DW
  is '��λ';
comment on column SFXZZBGLXT_BZFFJL.XH
  is '�ͺ�';
comment on column SFXZZBGLXT_BZFFJL.HFBZ
  is '������׼';
comment on column SFXZZBGLXT_BZFFJL.JG
  is '�۸�';
comment on column SFXZZBGLXT_BZFFJL.SL
  is '����';
comment on column SFXZZBGLXT_BZFFJL.FFSJ
  is '����ʱ��';
comment on column SFXZZBGLXT_BZFFJL.BZ
  is '��ע';

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
  is '��װ�����Ϣ��';
comment on column SFXZZBGLXT_BZKCXXB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BZKCXXB.BH
  is '���';
comment on column SFXZZBGLXT_BZKCXXB.FYMC
  is '��Ժ����';
comment on column SFXZZBGLXT_BZKCXXB.BZBM
  is '��װ����';
comment on column SFXZZBGLXT_BZKCXXB.PM
  is 'Ʒ��';
comment on column SFXZZBGLXT_BZKCXXB.DW
  is '��λ';
comment on column SFXZZBGLXT_BZKCXXB.XH
  is '�ͺ�';
comment on column SFXZZBGLXT_BZKCXXB.HFBZ
  is '������׼';
comment on column SFXZZBGLXT_BZKCXXB.JG
  is '�۸�';
comment on column SFXZZBGLXT_BZKCXXB.KCSL
  is '�������';
comment on column SFXZZBGLXT_BZKCXXB.ZDKCSL
  is '��Ϳ������';
comment on column SFXZZBGLXT_BZKCXXB.BZ
  is '��ע';

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
  is '��װ��ȼƻ���ϸ��';
comment on column SFXZZBGLXT_BZNDJHMXB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BZNDJHMXB.JHBH
  is '�ƻ����';
comment on column SFXZZBGLXT_BZNDJHMXB.MXBH
  is '��ϸ���';
comment on column SFXZZBGLXT_BZNDJHMXB.BZBM
  is '��װ����';
comment on column SFXZZBGLXT_BZNDJHMXB.PM
  is 'Ʒ��';
comment on column SFXZZBGLXT_BZNDJHMXB.DW
  is '��λ';
comment on column SFXZZBGLXT_BZNDJHMXB.DJ
  is '����';
comment on column SFXZZBGLXT_BZNDJHMXB.HJSL
  is '�ϼ�����';
comment on column SFXZZBGLXT_BZNDJHMXB.ND
  is '���';
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
  is '��װ��ȼƻ�����';
comment on column SFXZZBGLXT_BZNDJHZB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BZNDJHZB.JHBH
  is '�ƻ����';
comment on column SFXZZBGLXT_BZNDJHZB.FYMC
  is '��Ժ����';
comment on column SFXZZBGLXT_BZNDJHZB.ND
  is '���';
comment on column SFXZZBGLXT_BZNDJHZB.DJSJ
  is '�Ǽ�ʱ��';
comment on column SFXZZBGLXT_BZNDJHZB.HJJE
  is '�ϼƽ��';
comment on column SFXZZBGLXT_BZNDJHZB.SBRQ
  is '�ϱ�����';
comment on column SFXZZBGLXT_BZNDJHZB.QRSJ
  is 'ȷ��ʱ��';
comment on column SFXZZBGLXT_BZNDJHZB.BZ
  is '��ע';

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
  is '��װ�����ϸ��';
comment on column SFXZZBGLXT_BZRKMXB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BZRKMXB.MXBH
  is '��ϸ���';
comment on column SFXZZBGLXT_BZRKMXB.RKBH
  is '�����';
comment on column SFXZZBGLXT_BZRKMXB.BZBM
  is '��װ����';
comment on column SFXZZBGLXT_BZRKMXB.PM
  is 'Ʒ��';
comment on column SFXZZBGLXT_BZRKMXB.DW
  is '��λ';
comment on column SFXZZBGLXT_BZRKMXB.XH
  is '�ͺ�';
comment on column SFXZZBGLXT_BZRKMXB.HFBZ
  is '������׼';
comment on column SFXZZBGLXT_BZRKMXB.JG
  is '�۸�';
comment on column SFXZZBGLXT_BZRKMXB.SL
  is '����';
comment on column SFXZZBGLXT_BZRKMXB.BZ
  is '��ע';

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
  is '��װ�������';
comment on column SFXZZBGLXT_BZRKZB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_BZRKZB.RKBH
  is '�����';
comment on column SFXZZBGLXT_BZRKZB.FYMC
  is '��Ժ����';
comment on column SFXZZBGLXT_BZRKZB.RKDH
  is '��ⵥ��';
comment on column SFXZZBGLXT_BZRKZB.RKRQ
  is '�������';
comment on column SFXZZBGLXT_BZRKZB.JBRBS
  is '�����˱�ʶ';
comment on column SFXZZBGLXT_BZRKZB.JBR
  is '������';
comment on column SFXZZBGLXT_BZRKZB.HJJE
  is '�ϼƽ��';
comment on column SFXZZBGLXT_BZRKZB.DJBS
  is '�ǼǱ�ʶ';
comment on column SFXZZBGLXT_BZRKZB.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_BZRKZB.DJRQ
  is '�Ǽ�����';
comment on column SFXZZBGLXT_BZRKZB.CKBGYBS
  is '�ֿⱣ��Ա��ʶ';
comment on column SFXZZBGLXT_BZRKZB.CKBGY
  is '�ֿⱣ��Ա';
comment on column SFXZZBGLXT_BZRKZB.BGYQRSJ
  is '����Աȷ��ʱ��';
comment on column SFXZZBGLXT_BZRKZB.CKGLYBS
  is '�ֿ����Ա��ʶ';
comment on column SFXZZBGLXT_BZRKZB.CKGLY
  is '�ֿ����Ա';
comment on column SFXZZBGLXT_BZRKZB.GLYQRSJ
  is '����Աȷ��ʱ��';
comment on column SFXZZBGLXT_BZRKZB.ZGLDBS
  is '�����쵼��ʶ';
comment on column SFXZZBGLXT_BZRKZB.ZGLD
  is '�����쵼';
comment on column SFXZZBGLXT_BZRKZB.LDSHSJ
  is '�쵼���ʱ��';
comment on column SFXZZBGLXT_BZRKZB.BZ
  is '��ע';

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
  is '�������cc(����)';
comment on column SFXZZBGLXT_CWGLCC.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_CWGLCC.BH
  is '���';
comment on column SFXZZBGLXT_CWGLCC.RYBS
  is '��Ա��ʶ';
comment on column SFXZZBGLXT_CWGLCC.XM
  is '����';
comment on column SFXZZBGLXT_CWGLCC.BM
  is '����';
comment on column SFXZZBGLXT_CWGLCC.CCSY
  is '��������';
comment on column SFXZZBGLXT_CWGLCC.DDDD
  is '����ص�';
comment on column SFXZZBGLXT_CWGLCC.YJKSSJ
  is 'Ԥ�ƿ�ʼʱ��';
comment on column SFXZZBGLXT_CWGLCC.YJDDSJ
  is 'Ԥ�Ƶ���ʱ��';
comment on column SFXZZBGLXT_CWGLCC.SQGZJTGJ
  is '���������ͨ����';
comment on column SFXZZBGLXT_CWGLCC.BMLDSPYJ
  is '�����쵼�������';
comment on column SFXZZBGLXT_CWGLCC.BMLDSPBZ
  is '�����쵼������־';
comment on column SFXZZBGLXT_CWGLCC.BMLDSPSM
  is '�����쵼����˵��';
comment on column SFXZZBGLXT_CWGLCC.BMLDSPR
  is '�����쵼������';
comment on column SFXZZBGLXT_CWGLCC.BMLDSPRBS
  is '�����쵼�����˱�ʶ';
comment on column SFXZZBGLXT_CWGLCC.BMLDSPSJ
  is '�����쵼����ʱ��';
comment on column SFXZZBGLXT_CWGLCC.FGYLDSPYJ
  is '�ֹ�Ժ�쵼�������';
comment on column SFXZZBGLXT_CWGLCC.FGYLDSPR
  is '�ֹ�Ժ�쵼������';
comment on column SFXZZBGLXT_CWGLCC.FGYLDSPRBS
  is '�ֹ�Ժ�쵼�����˱�ʶ';
comment on column SFXZZBGLXT_CWGLCC.FGYLDSPBZ
  is '�ֹ�Ժ�쵼������־';
comment on column SFXZZBGLXT_CWGLCC.FGYLDSPSM
  is '�ֹ�Ժ�쵼����˵��';
comment on column SFXZZBGLXT_CWGLCC.FGYLDSPSJ
  is '�ֹ�Ժ�쵼����ʱ��';
comment on column SFXZZBGLXT_CWGLCC.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_CWGLCC.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_CWGLCC.DJSJ
  is '�Ǽ�ʱ��';
comment on column SFXZZBGLXT_CWGLCC.BZ
  is '��ע';

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
  is '�������flfg(���ɷ���)';
comment on column SFXZZBGLXT_CWGLFLFG.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_CWGLFLFG.BH
  is '���';
comment on column SFXZZBGLXT_CWGLFLFG.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_CWGLFLFG.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_CWGLFLFG.DJRQ
  is '�Ǽ�����';
comment on column SFXZZBGLXT_CWGLFLFG.MC
  is '����';
comment on column SFXZZBGLXT_CWGLFLFG.NR
  is '����';
comment on column SFXZZBGLXT_CWGLFLFG.FJ
  is '����';

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
  is '�������jk(���)';
comment on column SFXZZBGLXT_CWGLJK.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_CWGLJK.BH
  is '���';
comment on column SFXZZBGLXT_CWGLJK.RYBS
  is '��Ա��ʶ';
comment on column SFXZZBGLXT_CWGLJK.XM
  is '����';
comment on column SFXZZBGLXT_CWGLJK.BM
  is '����';
comment on column SFXZZBGLXT_CWGLJK.JKLB
  is '������';
comment on column SFXZZBGLXT_CWGLJK.JKYY
  is '���ԭ��';
comment on column SFXZZBGLXT_CWGLJK.JKJEDX
  is '������д';
comment on column SFXZZBGLXT_CWGLJK.JKJEXX
  is '�����Сд';
comment on column SFXZZBGLXT_CWGLJK.LDSPBZ
  is '�쵼������־';
comment on column SFXZZBGLXT_CWGLJK.LDSPR
  is '�쵼������';
comment on column SFXZZBGLXT_CWGLJK.LDSPYJ
  is '�쵼�������';
comment on column SFXZZBGLXT_CWGLJK.LDSPSJ
  is '�쵼����ʱ��';
comment on column SFXZZBGLXT_CWGLJK.LDSPSM
  is '�쵼����˵��';
comment on column SFXZZBGLXT_CWGLJK.ZGCWFZRSPRBS
  is '���ܲ������������˱�ʶ';
comment on column SFXZZBGLXT_CWGLJK.ZGCWFZRSPR
  is '���ܲ�������������';
comment on column SFXZZBGLXT_CWGLJK.ZGCWFZRSPSM
  is '���ܲ�����������˵��';
comment on column SFXZZBGLXT_CWGLJK.ZGCWFZRSPSJ
  is '���ܲ�����������ʱ��';
comment on column SFXZZBGLXT_CWGLJK.ZGCWFZRSPYJ
  is '���ܲ��������������';
comment on column SFXZZBGLXT_CWGLJK.ZGCWFZRSPBZ
  is '���ܲ�������������־';
comment on column SFXZZBGLXT_CWGLJK.BZ
  is '��ע';
comment on column SFXZZBGLXT_CWGLJK.CNBS
  is '���ɱ�ʶ';
comment on column SFXZZBGLXT_CWGLJK.CN
  is '����';
comment on column SFXZZBGLXT_CWGLJK.JKRBS
  is '����˱�ʶ';
comment on column SFXZZBGLXT_CWGLJK.JKR
  is '�����';
comment on column SFXZZBGLXT_CWGLJK.DJRQ
  is '�Ǽ�����';
comment on column SFXZZBGLXT_CWGLJK.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_CWGLJK.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_CWGLJK.JKRQ
  is '�������';
comment on column SFXZZBGLXT_CWGLJK.SFWCSP
  is '�Ƿ��������';
comment on column SFXZZBGLXT_CWGLJK.YJKJE
  is '�ѽ����';
comment on column SFXZZBGLXT_CWGLJK.BMSPRBS
  is '���������˱�ʶ';
comment on column SFXZZBGLXT_CWGLJK.BMSPR
  is '����������';
comment on column SFXZZBGLXT_CWGLJK.BMSPSJ
  is '��������ʱ��';
comment on column SFXZZBGLXT_CWGLJK.BMSPSM
  is '��������˵��';
comment on column SFXZZBGLXT_CWGLJK.BMSPYJ
  is '�����������';
comment on column SFXZZBGLXT_CWGLJK.BMSPBZ
  is '����������־';
comment on column SFXZZBGLXT_CWGLJK.SXCSPRBS
  is '˾�д������˱�ʶ';
comment on column SFXZZBGLXT_CWGLJK.SXCSPR
  is '˾�д�������';
comment on column SFXZZBGLXT_CWGLJK.SXCSPSJ
  is '˾�д�����ʱ��';
comment on column SFXZZBGLXT_CWGLJK.SXCSPYJ
  is '˾�д��������';
comment on column SFXZZBGLXT_CWGLJK.SXCSPSM
  is '˾�д�����˵��';
comment on column SFXZZBGLXT_CWGLJK.SXCSPBZ
  is '˾�д�������־';

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
  is '�������kz(��֧)';
comment on column SFXZZBGLXT_CWGLKZ.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_CWGLKZ.BH
  is '���';
comment on column SFXZZBGLXT_CWGLKZ.KM
  is '��Ŀ';
comment on column SFXZZBGLXT_CWGLKZ.QCFSSJ
  is '�ڳ�����ʱ��';
comment on column SFXZZBGLXT_CWGLKZ.BZ
  is '��ע';
comment on column SFXZZBGLXT_CWGLKZ.QCYE
  is '�ڳ����';
comment on column SFXZZBGLXT_CWGLKZ.BQFSE
  is '���ڷ�����';
comment on column SFXZZBGLXT_CWGLKZ.HJ
  is '�ϼ�';
comment on column SFXZZBGLXT_CWGLKZ.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_CWGLKZ.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_CWGLKZ.DJRQ
  is '�Ǽ�����';
comment on column SFXZZBGLXT_CWGLKZ.QMJSSJ
  is '��ĩ����ʱ��';

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
  is '���������������';
comment on column SFXZZBGLXT_FGTZBGSQ.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_FGTZBGSQ.BH
  is '���';
comment on column SFXZZBGLXT_FGTZBGSQ.SQRBS
  is '�����˱�ʶ';
comment on column SFXZZBGLXT_FGTZBGSQ.SQR
  is '������';
comment on column SFXZZBGLXT_FGTZBGSQ.SQNR
  is '��������';
comment on column SFXZZBGLXT_FGTZBGSQ.SQSJ
  is '����ʱ��';
comment on column SFXZZBGLXT_FGTZBGSQ.ZT
  is '״̬';
comment on column SFXZZBGLXT_FGTZBGSQ.CLRBS
  is '�����˱�ʶ';
comment on column SFXZZBGLXT_FGTZBGSQ.CLR
  is '������';
comment on column SFXZZBGLXT_FGTZBGSQ.CLSJ
  is '����ʱ��';
comment on column SFXZZBGLXT_FGTZBGSQ.BZ
  is '��ע';

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
  is '����������Ϣ';
comment on column SFXZZBGLXT_FGTZXX.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_FGTZXX.FYMC
  is '��Ժ����';
comment on column SFXZZBGLXT_FGTZXX.BH
  is '���';
comment on column SFXZZBGLXT_FGTZXX.RYBS
  is '��Ա��ʶ';
comment on column SFXZZBGLXT_FGTZXX.XM
  is '����';
comment on column SFXZZBGLXT_FGTZXX.BM
  is '����';
comment on column SFXZZBGLXT_FGTZXX.XB
  is '�Ա�';
comment on column SFXZZBGLXT_FGTZXX.NL
  is '����';
comment on column SFXZZBGLXT_FGTZXX.SG
  is '���';
comment on column SFXZZBGLXT_FGTZXX.CLY
  is '����Ա';
comment on column SFXZZBGLXT_FGTZXX.CLSJ
  is '����ʱ��';
comment on column SFXZZBGLXT_FGTZXX.GXSJ
  is '����ʱ��';
comment on column SFXZZBGLXT_FGTZXX.XFXH
  is '�����ͺ�';
comment on column SFXZZBGLXT_FGTZXX.XZXH
  is '��װ�ͺ�';
comment on column SFXZZBGLXT_FGTZXX.FFSJ
  is '����ʱ��';
comment on column SFXZZBGLXT_FGTZXX.CYXH
  is '�����ͺ�';
comment on column SFXZZBGLXT_FGTZXX.FZZL
  is '��װ����';
comment on column SFXZZBGLXT_FGTZXX.BZ
  is '��ע';
comment on column SFXZZBGLXT_FGTZXX.TZ1
  is '����1';
comment on column SFXZZBGLXT_FGTZXX.TZ2
  is '����2';
comment on column SFXZZBGLXT_FGTZXX.TZ3
  is '����3';
comment on column SFXZZBGLXT_FGTZXX.TZ4
  is '����4';
comment on column SFXZZBGLXT_FGTZXX.TZ5
  is '����5';
comment on column SFXZZBGLXT_FGTZXX.TZ6
  is '����6';
comment on column SFXZZBGLXT_FGTZXX.TZ7
  is '����7';
comment on column SFXZZBGLXT_FGTZXX.TZ8
  is '����8';
comment on column SFXZZBGLXT_FGTZXX.TZ9
  is '����9';
comment on column SFXZZBGLXT_FGTZXX.TZ10
  is '����10';
comment on column SFXZZBGLXT_FGTZXX.TZ11
  is '����11';
comment on column SFXZZBGLXT_FGTZXX.TZ13
  is '����13';
comment on column SFXZZBGLXT_FGTZXX.TZ12
  is '����12';
comment on column SFXZZBGLXT_FGTZXX.TZ14
  is '����14';
comment on column SFXZZBGLXT_FGTZXX.TZ15
  is '����15';
comment on column SFXZZBGLXT_FGTZXX.TZ16
  is '����16';
comment on column SFXZZBGLXT_FGTZXX.TZ17
  is '����17';
comment on column SFXZZBGLXT_FGTZXX.TZ18
  is '����18';
comment on column SFXZZBGLXT_FGTZXX.TZ19
  is '����19';
comment on column SFXZZBGLXT_FGTZXX.TZ20
  is '����20';
comment on column SFXZZBGLXT_FGTZXX.TZ21
  is '����21';
comment on column SFXZZBGLXT_FGTZXX.TZ22
  is '����22';
comment on column SFXZZBGLXT_FGTZXX.TZ23
  is '����23';
comment on column SFXZZBGLXT_FGTZXX.TZ24
  is '����24';
comment on column SFXZZBGLXT_FGTZXX.TZ25
  is '����25';
comment on column SFXZZBGLXT_FGTZXX.TZ26
  is '����26';
comment on column SFXZZBGLXT_FGTZXX.TZ27
  is '����27';
comment on column SFXZZBGLXT_FGTZXX.TZ28
  is '����28';
comment on column SFXZZBGLXT_FGTZXX.TZ29
  is '����29';
comment on column SFXZZBGLXT_FGTZXX.TZ30
  is '����30';
comment on column SFXZZBGLXT_FGTZXX.TZ31
  is '����31';
comment on column SFXZZBGLXT_FGTZXX.TZ32
  is '����32';
comment on column SFXZZBGLXT_FGTZXX.TZ33
  is '����33';
comment on column SFXZZBGLXT_FGTZXX.TZ34
  is '����34';
comment on column SFXZZBGLXT_FGTZXX.TZ35
  is '����35';
comment on column SFXZZBGLXT_FGTZXX.TZ36
  is '����36';
comment on column SFXZZBGLXT_FGTZXX.TZ37
  is '����37';
comment on column SFXZZBGLXT_FGTZXX.TZ38
  is '����38';
comment on column SFXZZBGLXT_FGTZXX.TZ39
  is '����39';
comment on column SFXZZBGLXT_FGTZXX.TZ40
  is '����40';

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
  is '��Ժ����ͥ��������Ϣ';
comment on column SFXZZBGLXT_FYFTJSXX.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_FYFTJSXX.FYMC
  is '��Ժ����';
comment on column SFXZZBGLXT_FYFTJSXX.FTXZ
  is '��ͥ����';
comment on column SFXZZBGLXT_FYFTJSXX.DQXZ
  is '��������';
comment on column SFXZZBGLXT_FYFTJSXX.GXDY
  is '��Ͻ����';
comment on column SFXZZBGLXT_FYFTJSXX.GXDYMJ
  is '��Ͻ�������';
comment on column SFXZZBGLXT_FYFTJSXX.GXRKS
  is '��Ͻ�˿���';
comment on column SFXZZBGLXT_FYFTJSXX.ZLDZ
  is '�����ַ';
comment on column SFXZZBGLXT_FYFTJSXX.HYTS
  is '����ͥ��';
comment on column SFXZZBGLXT_FYFTJSXX.ZSRYBZS
  is '��ʽ��Ա������';
comment on column SFXZZBGLXT_FYFTJSXX.PYRYBZS
  is 'Ƹ����Ա������';
comment on column SFXZZBGLXT_FYFTJSXX.SPFTJSFS
  is '���з�ͥ���跽ʽ';
comment on column SFXZZBGLXT_FYFTJSXX.KGRQ
  is '��������';
comment on column SFXZZBGLXT_FYFTJSXX.JGRQ
  is '��������';
comment on column SFXZZBGLXT_FYFTJSXX.JZZTZ
  is '������Ͷ��';
comment on column SFXZZBGLXT_FYFTJSXX.GJBK
  is '���Ҳ���';
comment on column SFXZZBGLXT_FYFTJSXX.SJBK
  is '�ϼ�����';
comment on column SFXZZBGLXT_FYFTJSXX.ZCZJ
  is '�Գ��ʽ�';
comment on column SFXZZBGLXT_FYFTJSXX.GZZJ
  is '��ծ�ʽ�';
comment on column SFXZZBGLXT_FYFTJSXX.LLNQGZL
  is '������ǰ��ծ��';
comment on column SFXZZBGLXT_FYFTJSXX.ZHZJL
  is '�ֺ��ؽ���';
comment on column SFXZZBGLXT_FYFTJSXX.LJNXZL
  is '�����������';
comment on column SFXZZBGLXT_FYFTJSXX.QTXMLB
  is '������Ŀ���';
comment on column SFXZZBGLXT_FYFTJSXX.XJFS
  is '�½���ʽ';
comment on column SFXZZBGLXT_FYFTJSXX.GJFS
  is '�Ľ���ʽ';
comment on column SFXZZBGLXT_FYFTJSXX.QTJSFS
  is '�������跽ʽ';
comment on column SFXZZBGLXT_FYFTJSXX.JZZMJ
  is '���������';
comment on column SFXZZBGLXT_FYFTJSXX.ZDMJ
  is 'ռ�����';
comment on column SFXZZBGLXT_FYFTJSXX.SPYFMJ
  is '�����÷����';
comment on column SFXZZBGLXT_FYFTJSXX.BGYFMJ
  is '�칫�÷����';
comment on column SFXZZBGLXT_FYFTJSXX.SHYFMJ
  is '�����÷����';
comment on column SFXZZBGLXT_FYFTJSXX.FSYFMJ
  is '�����÷����';
comment on column SFXZZBGLXT_FYFTJSXX.CLS
  is '������';
comment on column SFXZZBGLXT_FYFTJSXX.QTZB
  is '����װ��';
comment on column SFXZZBGLXT_FYFTJSXX.NSSSF
  is '�������շ�';
comment on column SFXZZBGLXT_FYFTJSXX.LRSJ
  is '¼��ʱ��';
comment on column SFXZZBGLXT_FYFTJSXX.BZ
  is '��ע';

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
  is '��Ժ����ͥ��ͼƬ';
comment on column SFXZZBGLXT_FYFTTP.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_FYFTTP.TPBH
  is 'ͼƬ���';
comment on column SFXZZBGLXT_FYFTTP.LX
  is '����';
comment on column SFXZZBGLXT_FYFTTP.TPXSMC
  is 'ͼƬ��ʾ����';
comment on column SFXZZBGLXT_FYFTTP.TPSM
  is 'ͼƬ˵��';
comment on column SFXZZBGLXT_FYFTTP.TPCFDZ
  is 'ͼƬ��ŵ�ַ';
comment on column SFXZZBGLXT_FYFTTP.SLTDZ
  is '����ͼ��ַ';
comment on column SFXZZBGLXT_FYFTTP.SFXS
  is '�Ƿ���ʾ';
comment on column SFXZZBGLXT_FYFTTP.XSSX
  is '��ʾ˳��';
comment on column SFXZZBGLXT_FYFTTP.TPYSGD
  is 'ͼƬԭʼ�߶�';
comment on column SFXZZBGLXT_FYFTTP.TPYSKD
  is 'ͼƬԭʼ���';
comment on column SFXZZBGLXT_FYFTTP.CJSJ
  is '����ʱ��';
comment on column SFXZZBGLXT_FYFTTP.CJYH
  is '�����û�';

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
  is '����ͳ�Ʊ�';
comment on column SFXZZBGLXT_HSTJB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_HSTJB.BH
  is '���';
comment on column SFXZZBGLXT_HSTJB.XH
  is '���';
comment on column SFXZZBGLXT_HSTJB.JCJS
  is '�ɴ����';
comment on column SFXZZBGLXT_HSTJB.SAJS
  is '�հ�����';
comment on column SFXZZBGLXT_HSTJB.JAJS
  is '�᰸����';
comment on column SFXZZBGLXT_HSTJB.PJJS
  is '�о�����';
comment on column SFXZZBGLXT_HSTJB.CHCDJS
  is '���زö�����';
comment on column SFXZZBGLXT_HSTJB.BHSQCDJS
  is '��������ö�����';
comment on column SFXZZBGLXT_HSTJB.ZJCDJS
  is '�ս�ö�����';
comment on column SFXZZBGLXT_HSTJB.QTCDJS
  is '�����ö�����';
comment on column SFXZZBGLXT_HSTJB.SABDZJE
  is '�永����ܽ��';
comment on column SFXZZBGLXT_HSTJB.SWJS
  is '�������';
comment on column SFXZZBGLXT_HSTJB.SGJS
  is '��ۼ���';
comment on column SFXZZBGLXT_HSTJB.SAJSSAAN
  is '��ļ���saan';
comment on column SFXZZBGLXT_HSTJB.STJS
  is '��̨����';
comment on column SFXZZBGLXT_HSTJB.WJJS
  is 'δ�����';
comment on column SFXZZBGLXT_HSTJB.WJZZJS
  is 'δ����ֹ����';

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
  is 'ˮ�������Ϣ';
comment on column SFXZZBGLXT_SDGLXX.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_SDGLXX.BH
  is '���';
comment on column SFXZZBGLXT_SDGLXX.ND
  is '���';
comment on column SFXZZBGLXT_SDGLXX.YF
  is '�·�';
comment on column SFXZZBGLXT_SDGLXX.HPMC
  is '��Ʒ����';
comment on column SFXZZBGLXT_SDGLXX.DW
  is '��λ';
comment on column SFXZZBGLXT_SDGLXX.DJ
  is '����';
comment on column SFXZZBGLXT_SDGLXX.SL
  is '����';
comment on column SFXZZBGLXT_SDGLXX.ZJE
  is '�ܽ��';
comment on column SFXZZBGLXT_SDGLXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_SDGLXX.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_SDGLXX.DJRQ
  is '�Ǽ�����';
comment on column SFXZZBGLXT_SDGLXX.BZ
  is '��ע';

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
  is '��ӡ�豸ά����Ϣ';
comment on column SFXZZBGLXT_WYSBWXXX.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_WYSBWXXX.WXBH
  is 'ά�ޱ��';
comment on column SFXZZBGLXT_WYSBWXXX.SQBM
  is '���벿��';
comment on column SFXZZBGLXT_WYSBWXXX.SQRBS
  is '�����˱�ʶ';
comment on column SFXZZBGLXT_WYSBWXXX.SQR
  is '������';
comment on column SFXZZBGLXT_WYSBWXXX.SQSJ
  is '����ʱ��';
comment on column SFXZZBGLXT_WYSBWXXX.DH
  is '�绰';
comment on column SFXZZBGLXT_WYSBWXXX.FJH
  is '�����';
comment on column SFXZZBGLXT_WYSBWXXX.GHHC
  is '�����Ĳ�';
comment on column SFXZZBGLXT_WYSBWXXX.HCLB
  is '�Ĳ����';
comment on column SFXZZBGLXT_WYSBWXXX.JX
  is '����';
comment on column SFXZZBGLXT_WYSBWXXX.JQWX
  is '����ά��';
comment on column SFXZZBGLXT_WYSBWXXX.SL
  is '����';
comment on column SFXZZBGLXT_WYSBWXXX.WXJQXK
  is 'ά�޻����ֿ�';
comment on column SFXZZBGLXT_WYSBWXXX.WXQK
  is 'ά�����';
comment on column SFXZZBGLXT_WYSBWXXX.BMLDSPJG
  is '�����쵼�������';
comment on column SFXZZBGLXT_WYSBWXXX.BMLDSPYJ
  is '�����쵼�������';
comment on column SFXZZBGLXT_WYSBWXXX.BMLDSPSJ
  is '�����쵼����ʱ��';
comment on column SFXZZBGLXT_WYSBWXXX.BMLDSPR
  is '�����쵼������';
comment on column SFXZZBGLXT_WYSBWXXX.SXCLDSPJG
  is '˾�д��쵼�������';
comment on column SFXZZBGLXT_WYSBWXXX.SXCLDSPYJ
  is '˾�д��쵼�������';
comment on column SFXZZBGLXT_WYSBWXXX.SXCLDSPSJ
  is '˾�д��쵼����ʱ��';
comment on column SFXZZBGLXT_WYSBWXXX.SXCLDSPR
  is '˾�д��쵼������';
comment on column SFXZZBGLXT_WYSBWXXX.XGKSPJG
  is '�йܿ��������';
comment on column SFXZZBGLXT_WYSBWXXX.XGKSPYJ
  is '�йܿ��������';
comment on column SFXZZBGLXT_WYSBWXXX.XGKSPSJ
  is '�йܿ�����ʱ��';
comment on column SFXZZBGLXT_WYSBWXXX.XGKSPR
  is '�йܿ�������';
comment on column SFXZZBGLXT_WYSBWXXX.DSPDJ
  is '�������ȼ�';
comment on column SFXZZBGLXT_WYSBWXXX.HJJE
  is '�ϼƽ��';
comment on column SFXZZBGLXT_WYSBWXXX.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_WYSBWXXX.DJSJ
  is '�Ǽ�ʱ��';
comment on column SFXZZBGLXT_WYSBWXXX.HZ
  is '��ִ';
comment on column SFXZZBGLXT_WYSBWXXX.SFHZ
  is '�Ƿ��ִ';
comment on column SFXZZBGLXT_WYSBWXXX.ZDSPR
  is 'ָ��������';
comment on column SFXZZBGLXT_WYSBWXXX.ZDSPYJ
  is 'ָ���������';
comment on column SFXZZBGLXT_WYSBWXXX.ZDSPJG
  is 'ָ���������';
comment on column SFXZZBGLXT_WYSBWXXX.ZDSPSJ
  is 'ָ������ʱ��';
comment on column SFXZZBGLXT_WYSBWXXX.ZDSPSM
  is 'ָ������˵��';

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
  is '���ʲɹ���Ӧ��';
comment on column SFXZZBGLXT_WZCGGYS.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_WZCGGYS.CGSBS
  is '�ɹ��̱�ʶ';
comment on column SFXZZBGLXT_WZCGGYS.CGBH
  is '�ɹ����';
comment on column SFXZZBGLXT_WZCGGYS.GYS
  is '��Ӧ��';
comment on column SFXZZBGLXT_WZCGGYS.BJ
  is '����';

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
  is '���ʲɹ���Ϣ';
comment on column SFXZZBGLXT_WZCGXX.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_WZCGXX.CGBH
  is '�ɹ����';
comment on column SFXZZBGLXT_WZCGXX.CGDH
  is '�ɹ�����';
comment on column SFXZZBGLXT_WZCGXX.SQBM
  is '���벿��';
comment on column SFXZZBGLXT_WZCGXX.SQRBS
  is '�����˱�ʶ';
comment on column SFXZZBGLXT_WZCGXX.SQR
  is '������';
comment on column SFXZZBGLXT_WZCGXX.SQSJ
  is '����ʱ��';
comment on column SFXZZBGLXT_WZCGXX.SYRBS
  is 'ʹ���˱�ʶ';
comment on column SFXZZBGLXT_WZCGXX.SYR
  is 'ʹ����';
comment on column SFXZZBGLXT_WZCGXX.WZLB
  is '�������';
comment on column SFXZZBGLXT_WZCGXX.PM
  is 'Ʒ��';
comment on column SFXZZBGLXT_WZCGXX.XH
  is '�ͺ�';
comment on column SFXZZBGLXT_WZCGXX.LB
  is '���';
comment on column SFXZZBGLXT_WZCGXX.DW
  is '��λ';
comment on column SFXZZBGLXT_WZCGXX.DJ
  is '����';
comment on column SFXZZBGLXT_WZCGXX.SL
  is '����';
comment on column SFXZZBGLXT_WZCGXX.HJJE
  is '�ϼƽ��';
comment on column SFXZZBGLXT_WZCGXX.XQYY
  is '����ԭ��';
comment on column SFXZZBGLXT_WZCGXX.BMLDSPJG
  is '�����쵼�������';
comment on column SFXZZBGLXT_WZCGXX.BMLDSPYJ
  is '�����쵼�������';
comment on column SFXZZBGLXT_WZCGXX.BMLDSPSJ
  is '�����쵼����ʱ��';
comment on column SFXZZBGLXT_WZCGXX.BMLDSPR
  is '�����쵼������';
comment on column SFXZZBGLXT_WZCGXX.ZGJSBMLDSPJG
  is '���ܼ��������쵼�������';
comment on column SFXZZBGLXT_WZCGXX.ZGJSBMLDSPYJ
  is '���ܼ��������쵼�������';
comment on column SFXZZBGLXT_WZCGXX.ZGJSBMLDSPSJ
  is '���ܼ��������쵼����ʱ��';
comment on column SFXZZBGLXT_WZCGXX.ZGJSBMLDSPR
  is '���ܼ��������쵼������';
comment on column SFXZZBGLXT_WZCGXX.GDZCGLBMLDSPJG
  is '�̶��ʲ��������쵼�������';
comment on column SFXZZBGLXT_WZCGXX.GDZCGLBMLDSPYJ
  is '�̶��ʲ��������쵼�������';
comment on column SFXZZBGLXT_WZCGXX.GDZCGLBMLDSPSJ
  is '�̶��ʲ��������쵼����ʱ��';
comment on column SFXZZBGLXT_WZCGXX.GDZCGLBMLDSPR
  is '�̶��ʲ��������쵼������';
comment on column SFXZZBGLXT_WZCGXX.ZGCWBMLDSPJG
  is '���ܲ������쵼�������';
comment on column SFXZZBGLXT_WZCGXX.ZGCWBMLDSPYJ
  is '���ܲ������쵼�������';
comment on column SFXZZBGLXT_WZCGXX.ZGCWBMLDSPSJ
  is '���ܲ������쵼����ʱ��';
comment on column SFXZZBGLXT_WZCGXX.ZGCWBMLDSPR
  is '���ܲ������쵼������';
comment on column SFXZZBGLXT_WZCGXX.FGCWYLDSPJG
  is '�ֹܲ���Ժ�쵼�������';
comment on column SFXZZBGLXT_WZCGXX.FGCWYLDSPYJ
  is '�ֹܲ���Ժ�쵼�������';
comment on column SFXZZBGLXT_WZCGXX.FGCWYLDSPSJ
  is '�ֹܲ���Ժ�쵼����ʱ��';
comment on column SFXZZBGLXT_WZCGXX.FGCWYLDSPR
  is '�ֹܲ���Ժ�쵼������';
comment on column SFXZZBGLXT_WZCGXX.YKJHSQ
  is '�ÿ�ƻ�����';
comment on column SFXZZBGLXT_WZCGXX.CGFS
  is '�ɹ���ʽ';
comment on column SFXZZBGLXT_WZCGXX.ZBS
  is '�б���';
comment on column SFXZZBGLXT_WZCGXX.CGJ
  is '�ɹ���(����)';
comment on column SFXZZBGLXT_WZCGXX.QDHTSJ
  is 'ǩ����ͬʱ��';
comment on column SFXZZBGLXT_WZCGXX.CGRDB
  is '�ɹ��˴���';
comment on column SFXZZBGLXT_WZCGXX.GHSJ
  is '����ʱ��';
comment on column SFXZZBGLXT_WZCGXX.YHR
  is '�����';
comment on column SFXZZBGLXT_WZCGXX.FKSJ
  is '����ʱ��';
comment on column SFXZZBGLXT_WZCGXX.JE
  is '���';
comment on column SFXZZBGLXT_WZCGXX.BZ
  is '��ע';

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
  is '�¶����Ļ��ܵǼ���ϸ��';
comment on column SFXZZBGLXT_YDXHHZDJMXB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_YDXHHZDJMXB.MXBH
  is '��ϸ���';
comment on column SFXZZBGLXT_YDXHHZDJMXB.ZBBS
  is '�����ʶ';
comment on column SFXZZBGLXT_YDXHHZDJMXB.BM
  is '����';
comment on column SFXZZBGLXT_YDXHHZDJMXB.MH
  is 'ī��';
comment on column SFXZZBGLXT_YDXHHZDJMXB.XG
  is '����';
comment on column SFXZZBGLXT_YDXHHZDJMXB.SD
  is 'ɫ��';
comment on column SFXZZBGLXT_YDXHHZDJMXB.HPJE
  is '��Ʒ���';

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
  is '�¶����Ļ��ܵǼ�����';
comment on column SFXZZBGLXT_YDXHHZDJZB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_YDXHHZDJZB.ZBBS
  is '�����ʶ';
comment on column SFXZZBGLXT_YDXHHZDJZB.ND
  is '���';
comment on column SFXZZBGLXT_YDXHHZDJZB.YF
  is '�·�';
comment on column SFXZZBGLXT_YDXHHZDJZB.HJJE
  is '�ϼƽ��';
comment on column SFXZZBGLXT_YDXHHZDJZB.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_YDXHHZDJZB.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_YDXHHZDJZB.DJSJ
  is '�Ǽ�ʱ��';

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
  is '�ʲ��䶯��';
comment on column SFXZZBGLXT_ZCBDB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ZCBDB.BH
  is '���';
comment on column SFXZZBGLXT_ZCBDB.BDDJH
  is '�䶯���ݺ�';
comment on column SFXZZBGLXT_ZCBDB.ZCBH
  is '�ʲ����';
comment on column SFXZZBGLXT_ZCBDB.YSYRBS
  is 'ԭʹ���˱�ʶ';
comment on column SFXZZBGLXT_ZCBDB.YSYR
  is 'ԭʹ����';
comment on column SFXZZBGLXT_ZCBDB.XSYRBS
  is '��ʹ���˱�ʶ';
comment on column SFXZZBGLXT_ZCBDB.XSYR
  is '��ʹ����';
comment on column SFXZZBGLXT_ZCBDB.YCFDD
  is 'ԭ��ŵص�';
comment on column SFXZZBGLXT_ZCBDB.XCFDD
  is '�ִ�ŵص�';
comment on column SFXZZBGLXT_ZCBDB.YSYZK
  is 'ԭʹ��״��';
comment on column SFXZZBGLXT_ZCBDB.XSYZK
  is '��ʹ��״��';
comment on column SFXZZBGLXT_ZCBDB.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_ZCBDB.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_ZCBDB.DJRQ
  is '�Ǽ�����';

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
  is '�ʲ�������ϸ';
comment on column SFXZZBGLXT_ZCCKMX.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ZCCKMX.MXBH
  is '��ϸ���';
comment on column SFXZZBGLXT_ZCCKMX.CKBH
  is '������';
comment on column SFXZZBGLXT_ZCCKMX.ZCBH
  is '�ʲ����';
comment on column SFXZZBGLXT_ZCCKMX.MC
  is '����';
comment on column SFXZZBGLXT_ZCCKMX.PP
  is 'Ʒ��';
comment on column SFXZZBGLXT_ZCCKMX.XH
  is '�ͺ�';
comment on column SFXZZBGLXT_ZCCKMX.DW
  is '��λ';
comment on column SFXZZBGLXT_ZCCKMX.DJ
  is '����';
comment on column SFXZZBGLXT_ZCCKMX.SL
  is '����';
comment on column SFXZZBGLXT_ZCCKMX.SYRBS
  is 'ʹ���˱�ʶ';
comment on column SFXZZBGLXT_ZCCKMX.SYR
  is 'ʹ����';
comment on column SFXZZBGLXT_ZCCKMX.FZDD
  is '���õص�';

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
  is '�ʲ���������';
comment on column SFXZZBGLXT_ZCCKZB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ZCCKZB.CKBH
  is '������';
comment on column SFXZZBGLXT_ZCCKZB.CKDH
  is '���ⵥ��';
comment on column SFXZZBGLXT_ZCCKZB.CKRQ
  is '��������';
comment on column SFXZZBGLXT_ZCCKZB.CKYT
  is '������;';
comment on column SFXZZBGLXT_ZCCKZB.JBRBS
  is '�����˱�ʶ';
comment on column SFXZZBGLXT_ZCCKZB.JBR
  is '������';
comment on column SFXZZBGLXT_ZCCKZB.HJJE
  is '�ϼƽ��';
comment on column SFXZZBGLXT_ZCCKZB.BZ
  is '��ע';
comment on column SFXZZBGLXT_ZCCKZB.LYBM
  is '���ò���';
comment on column SFXZZBGLXT_ZCCKZB.LYRBS
  is '�����˱�ʶ';
comment on column SFXZZBGLXT_ZCCKZB.LYR
  is '������';
comment on column SFXZZBGLXT_ZCCKZB.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_ZCCKZB.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_ZCCKZB.DJRQ
  is '�Ǽ�����';
comment on column SFXZZBGLXT_ZCCKZB.LX
  is '����';
comment on column SFXZZBGLXT_ZCCKZB.SHRBS
  is '����˱�ʶ';
comment on column SFXZZBGLXT_ZCCKZB.SHR
  is '�����';
comment on column SFXZZBGLXT_ZCCKZB.SHRQ
  is '�������';

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
  is '�ʲ�������ϸ';
comment on column SFXZZBGLXT_ZCCZMX.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ZCCZMX.CZBH
  is '���ñ��';
comment on column SFXZZBGLXT_ZCCZMX.MXBH
  is '��ϸ���';
comment on column SFXZZBGLXT_ZCCZMX.ZCBH
  is '�ʲ����';
comment on column SFXZZBGLXT_ZCCZMX.MC
  is '����';
comment on column SFXZZBGLXT_ZCCZMX.PP
  is 'Ʒ��';
comment on column SFXZZBGLXT_ZCCZMX.XH
  is '�ͺ�';
comment on column SFXZZBGLXT_ZCCZMX.DW
  is '��λ';
comment on column SFXZZBGLXT_ZCCZMX.DJ
  is '����';
comment on column SFXZZBGLXT_ZCCZMX.SL
  is '����';
comment on column SFXZZBGLXT_ZCCZMX.SYQK
  is 'ʹ�����';

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
  is '�ʲ���������';
comment on column SFXZZBGLXT_ZCCZZB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ZCCZZB.CZBH
  is '���ñ��';
comment on column SFXZZBGLXT_ZCCZZB.CZDH
  is '���õ���';
comment on column SFXZZBGLXT_ZCCZZB.SBRQ
  is '�걨����';
comment on column SFXZZBGLXT_ZCCZZB.SBBM
  is '�걨����';
comment on column SFXZZBGLXT_ZCCZZB.CZFS
  is '���÷�ʽ';
comment on column SFXZZBGLXT_ZCCZZB.JBRJBR
  is '������jbr';
comment on column SFXZZBGLXT_ZCCZZB.JBR
  is '������';
comment on column SFXZZBGLXT_ZCCZZB.HJJE
  is '�ϼƽ��';
comment on column SFXZZBGLXT_ZCCZZB.BZ
  is '��ע';
comment on column SFXZZBGLXT_ZCCZZB.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_ZCCZZB.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_ZCCZZB.DJRQ
  is '�Ǽ�����';
comment on column SFXZZBGLXT_ZCCZZB.SPR1BS
  is '������1��ʶ';
comment on column SFXZZBGLXT_ZCCZZB.SPR1
  is '������1';
comment on column SFXZZBGLXT_ZCCZZB.SPYJ1
  is '�������1';
comment on column SFXZZBGLXT_ZCCZZB.SPYJBZ1
  is '���������ע1';
comment on column SFXZZBGLXT_ZCCZZB.SPSJ1
  is '����ʱ��1';
comment on column SFXZZBGLXT_ZCCZZB.SPR2BS
  is '������2��ʶ';
comment on column SFXZZBGLXT_ZCCZZB.SPR2
  is '������2';
comment on column SFXZZBGLXT_ZCCZZB.SPYJ2
  is '�������2';
comment on column SFXZZBGLXT_ZCCZZB.SPYJBZ2
  is '���������ע2';
comment on column SFXZZBGLXT_ZCCZZB.SPSJ2
  is '����ʱ��2';
comment on column SFXZZBGLXT_ZCCZZB.SPR3BS
  is '������3��ʶ';
comment on column SFXZZBGLXT_ZCCZZB.SPR3
  is '������3';
comment on column SFXZZBGLXT_ZCCZZB.SPYJ3
  is '�������3';
comment on column SFXZZBGLXT_ZCCZZB.SPYJBZ3
  is '���������ע3';
comment on column SFXZZBGLXT_ZCCZZB.SPSJ3
  is '����ʱ��3';
comment on column SFXZZBGLXT_ZCCZZB.SPR4BS
  is '������4��ʶ';
comment on column SFXZZBGLXT_ZCCZZB.SPR4
  is '������4';
comment on column SFXZZBGLXT_ZCCZZB.SPYJ4
  is '�������4';
comment on column SFXZZBGLXT_ZCCZZB.SPYJBZ4
  is '���������ע4';
comment on column SFXZZBGLXT_ZCCZZB.SPSJ4
  is '����ʱ��4';
comment on column SFXZZBGLXT_ZCCZZB.SPR5BS
  is '������5��ʶ';
comment on column SFXZZBGLXT_ZCCZZB.SPR5
  is '������5';
comment on column SFXZZBGLXT_ZCCZZB.SPYJ5
  is '�������5';
comment on column SFXZZBGLXT_ZCCZZB.SPYJBZ5
  is '���������ע5';
comment on column SFXZZBGLXT_ZCCZZB.SPSJ5
  is '����ʱ��5';

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
  is '�ʲ��ǼǱ�';
comment on column SFXZZBGLXT_ZCDJB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ZCDJB.BH
  is '���';
comment on column SFXZZBGLXT_ZCDJB.ZCBH
  is '�ʲ����';
comment on column SFXZZBGLXT_ZCDJB.MC
  is '����';
comment on column SFXZZBGLXT_ZCDJB.DW
  is '��λ';
comment on column SFXZZBGLXT_ZCDJB.LB
  is '���';
comment on column SFXZZBGLXT_ZCDJB.XH
  is '�ͺ�';
comment on column SFXZZBGLXT_ZCDJB.PP
  is 'Ʒ��';
comment on column SFXZZBGLXT_ZCDJB.DJ
  is '����';
comment on column SFXZZBGLXT_ZCDJB.SCRQJGRQ
  is '�������ڿ�������';
comment on column SFXZZBGLXT_ZCDJB.SYNX
  is 'ʹ������';
comment on column SFXZZBGLXT_ZCDJB.LYBM
  is '���ò���';
comment on column SFXZZBGLXT_ZCDJB.CFDDZLWZ
  is '��ŵص�����λ��';
comment on column SFXZZBGLXT_ZCDJB.SYRBS
  is 'ʹ���˱�ʶ';
comment on column SFXZZBGLXT_ZCDJB.SYR
  is 'ʹ����';
comment on column SFXZZBGLXT_ZCDJB.SYZK
  is 'ʹ��״��';
comment on column SFXZZBGLXT_ZCDJB.CD
  is '����';
comment on column SFXZZBGLXT_ZCDJB.CPH
  is '���ƺ�';
comment on column SFXZZBGLXT_ZCDJB.FDJH
  is '��������';
comment on column SFXZZBGLXT_ZCDJB.CJH
  is '���ܺ�';
comment on column SFXZZBGLXT_ZCDJB.PQL
  is '������';
comment on column SFXZZBGLXT_ZCDJB.YTFL
  is '��;����';
comment on column SFXZZBGLXT_ZCDJB.BZQK
  is '�������';
comment on column SFXZZBGLXT_ZCDJB.JZMJ
  is '�������';
comment on column SFXZZBGLXT_ZCDJB.SYMJ
  is 'ʹ�����';
comment on column SFXZZBGLXT_ZCDJB.RKDH
  is '��ⵥ��';
comment on column SFXZZBGLXT_ZCDJB.CKDH
  is '���ⵥ��';
comment on column SFXZZBGLXT_ZCDJB.CZDH
  is '���õ���';
comment on column SFXZZBGLXT_ZCDJB.PDDH
  is '�̵㵥��';
comment on column SFXZZBGLXT_ZCDJB.GQTS
  is '������ʾ';
comment on column SFXZZBGLXT_ZCDJB.DQRQ
  is '��������';

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
  is '�ʲ�����';
comment on column SFXZZBGLXT_ZCKCB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ZCKCB.BH
  is '���';
comment on column SFXZZBGLXT_ZCKCB.ZCBH
  is '�ʲ����';
comment on column SFXZZBGLXT_ZCKCB.MC
  is '����';
comment on column SFXZZBGLXT_ZCKCB.DW
  is '��λ';
comment on column SFXZZBGLXT_ZCKCB.SL
  is '����';

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
  is '�ʲ��̵���ϸ';
comment on column SFXZZBGLXT_ZCPDMX.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ZCPDMX.MXBH
  is '��ϸ���';
comment on column SFXZZBGLXT_ZCPDMX.PDBH
  is '�̵���';
comment on column SFXZZBGLXT_ZCPDMX.ZCBH
  is '�ʲ����';
comment on column SFXZZBGLXT_ZCPDMX.MC
  is '����';
comment on column SFXZZBGLXT_ZCPDMX.DW
  is '��λ';
comment on column SFXZZBGLXT_ZCPDMX.KFSL
  is '�ⷿ����';
comment on column SFXZZBGLXT_ZCPDMX.PDSL
  is '�̵�����';

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
  is '�ʲ��̵�����';
comment on column SFXZZBGLXT_ZCPDZB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ZCPDZB.PDBH
  is '�̵���';
comment on column SFXZZBGLXT_ZCPDZB.PDDH
  is '�̵㵥��';
comment on column SFXZZBGLXT_ZCPDZB.PDRQ
  is '�̵�����';
comment on column SFXZZBGLXT_ZCPDZB.PDRBS
  is '�̵��˱�ʶ';
comment on column SFXZZBGLXT_ZCPDZB.PDR
  is '�̵���';
comment on column SFXZZBGLXT_ZCPDZB.SHRQ
  is '�������';
comment on column SFXZZBGLXT_ZCPDZB.SHRBS
  is '����˱�ʶ';
comment on column SFXZZBGLXT_ZCPDZB.SHR
  is '�����';
comment on column SFXZZBGLXT_ZCPDZB.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_ZCPDZB.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_ZCPDZB.DJRQ
  is '�Ǽ�����';

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
  is '�ʲ������ϸ';
comment on column SFXZZBGLXT_ZCRKMX.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ZCRKMX.MXBH
  is '��ϸ���';
comment on column SFXZZBGLXT_ZCRKMX.RKBH
  is '�����';
comment on column SFXZZBGLXT_ZCRKMX.ZCBH
  is '�ʲ����';
comment on column SFXZZBGLXT_ZCRKMX.MC
  is '����';
comment on column SFXZZBGLXT_ZCRKMX.PP
  is 'Ʒ��';
comment on column SFXZZBGLXT_ZCRKMX.XH
  is '�ͺ�';
comment on column SFXZZBGLXT_ZCRKMX.DW
  is '��λ';
comment on column SFXZZBGLXT_ZCRKMX.DJ
  is '����';
comment on column SFXZZBGLXT_ZCRKMX.SL
  is '����';
comment on column SFXZZBGLXT_ZCRKMX.SCRQJGRQ
  is '�������ڿ�������';
comment on column SFXZZBGLXT_ZCRKMX.SYNX
  is 'ʹ������';
comment on column SFXZZBGLXT_ZCRKMX.HSYY
  is '����ԭ��';
comment on column SFXZZBGLXT_ZCRKMX.SYZK
  is 'ʹ��״��';
comment on column SFXZZBGLXT_ZCRKMX.CD
  is '����';
comment on column SFXZZBGLXT_ZCRKMX.CPH
  is '���ƺ�';
comment on column SFXZZBGLXT_ZCRKMX.FDJH
  is '��������';
comment on column SFXZZBGLXT_ZCRKMX.CJH
  is '���ܺ�';
comment on column SFXZZBGLXT_ZCRKMX.PQL
  is '������';
comment on column SFXZZBGLXT_ZCRKMX.YTFL
  is '��;����';

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
  is '�ʲ��������';
comment on column SFXZZBGLXT_ZCRKZB.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ZCRKZB.RKBH
  is '�����';
comment on column SFXZZBGLXT_ZCRKZB.RKDH
  is '��ⵥ��';
comment on column SFXZZBGLXT_ZCRKZB.RKRQ
  is '�������';
comment on column SFXZZBGLXT_ZCRKZB.LB
  is '���';
comment on column SFXZZBGLXT_ZCRKZB.RKLY
  is '�����Դ';
comment on column SFXZZBGLXT_ZCRKZB.JBRBS
  is '�����˱�ʶ';
comment on column SFXZZBGLXT_ZCRKZB.JBR
  is '������';
comment on column SFXZZBGLXT_ZCRKZB.HJJE
  is '�ϼƽ��';
comment on column SFXZZBGLXT_ZCRKZB.HSYY
  is '����ԭ��';
comment on column SFXZZBGLXT_ZCRKZB.HSBM
  is '���ղ���';
comment on column SFXZZBGLXT_ZCRKZB.BZ
  is '��ע';
comment on column SFXZZBGLXT_ZCRKZB.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_ZCRKZB.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_ZCRKZB.DJRQ
  is '�Ǽ�����';
comment on column SFXZZBGLXT_ZCRKZB.LX
  is '����';
comment on column SFXZZBGLXT_ZCRKZB.SHRBS
  is '����˱�ʶ';
comment on column SFXZZBGLXT_ZCRKZB.SHR
  is '�����';
comment on column SFXZZBGLXT_ZCRKZB.SHRQ
  is '�������';

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
  is '�ʲ�̨��';
comment on column SFXZZBGLXT_ZCTZ.FYBM
  is '��Ժ����';
comment on column SFXZZBGLXT_ZCTZ.ZJ
  is '����';
comment on column SFXZZBGLXT_ZCTZ.ZCBH
  is '�ʲ����';
comment on column SFXZZBGLXT_ZCTZ.MC
  is '����';
comment on column SFXZZBGLXT_ZCTZ.DJH
  is '���ݺ�';
comment on column SFXZZBGLXT_ZCTZ.DJLX
  is '��������';
comment on column SFXZZBGLXT_ZCTZ.BDSL
  is '�䶯����';
comment on column SFXZZBGLXT_ZCTZ.KFSL
  is '�ⷿ����';
comment on column SFXZZBGLXT_ZCTZ.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SFXZZBGLXT_ZCTZ.DJR
  is '�Ǽ���';
comment on column SFXZZBGLXT_ZCTZ.DJRQ
  is '�Ǽ�����';

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
  is '�Ĺ�����ת��¼';
comment on column SGKXT_SGKLZJL.FYBM
  is '��Ժ����';
comment on column SGKXT_SGKLZJL.XH
  is '���';
comment on column SGKXT_SGKLZJL.SGKBS
  is '�Ĺ�����ʶ';
comment on column SGKXT_SGKLZJL.GZMC
  is '��������';
comment on column SGKXT_SGKLZJL.FSRBS
  is '�����˱�ʶ';
comment on column SGKXT_SGKLZJL.FSR
  is '������';
comment on column SGKXT_SGKLZJL.FSSJ
  is '����ʱ��';
comment on column SGKXT_SGKLZJL.JSRBS
  is '�����˱�ʶ';
comment on column SGKXT_SGKLZJL.JSR
  is '������';
comment on column SGKXT_SGKLZJL.JSSJ
  is '����ʱ��';

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
  is '�Ĺ���ʵ��';
comment on column SGKXT_SGKST.FYBM
  is '��Ժ����';
comment on column SGKXT_SGKST.SGKBS
  is '�Ĺ�����ʶ';
comment on column SGKXT_SGKST.XH
  is '���';
comment on column SGKXT_SGKST.STLX
  is 'ʵ������';
comment on column SGKXT_SGKST.WJMC
  is '�ļ�����';
comment on column SGKXT_SGKST.STWJM
  is 'ʵ���ļ���';

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
  is '�Ĺ���������Ϣ';
comment on column SGKXT_SGKZTXX.FYBM
  is '��Ժ����';
comment on column SGKXT_SGKZTXX.SGKBS
  is '�Ĺ�����ʶ';
comment on column SGKXT_SGKZTXX.LWBT
  is '���ı���';
comment on column SGKXT_SGKZTXX.BH
  is '���';
comment on column SGKXT_SGKZTXX.BHNF
  is '������';
comment on column SGKXT_SGKZTXX.FYJC
  is '��Ժ���';
comment on column SGKXT_SGKZTXX.BHZH
  is '����ֺ�';
comment on column SGKXT_SGKZTXX.HS
  is '����';
comment on column SGKXT_SGKZTXX.DJRQ
  is '�Ǽ�����';
comment on column SGKXT_SGKZTXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SGKXT_SGKZTXX.DJR
  is '�Ǽ���';
comment on column SGKXT_SGKZTXX.LDXSJ
  is '���磨�ţ�ʱ��';
comment on column SGKXT_SGKZTXX.DSR
  is '������';
comment on column SGKXT_SGKZTXX.LXFS
  is '��ϵ��ʽ';
comment on column SGKXT_SGKZTXX.XXLY
  is '��Ϣ��Դ';
comment on column SGKXT_SGKZTXX.WTLB
  is '�������';
comment on column SGKXT_SGKZTXX.NRXZ
  is '��������';
comment on column SGKXT_SGKZTXX.FYSXZYNR
  is '��ӳ������Ҫ����';
comment on column SGKXT_SGKZTXX.SJDW
  is '�漰��λ';
comment on column SGKXT_SGKZTXX.LDPS
  is '�쵼��ʾ';
comment on column SGKXT_SGKZTXX.NBYJHBLQK
  is '��������������';
comment on column SGKXT_SGKZTXX.SFZY
  is '�Ƿ���Ҫ';
comment on column SGKXT_SGKZTXX.ZFCS
  is '�ظ�����';
comment on column SGKXT_SGKZTXX.LSDJBH
  is '��ʵ�ǼǱ��';
comment on column SGKXT_SGKZTXX.SFBJG
  is '�Ƿ񱨽��';
comment on column SGKXT_SGKZTXX.XBDW
  is 'Э�쵥λ';
comment on column SGKXT_SGKZTXX.SJAH
  is '�漰����';
comment on column SGKXT_SGKZTXX.DBBM
  is '���첿��';
comment on column SGKXT_SGKZTXX.SFSBJG
  is '�Ƿ��ϱ����';
comment on column SGKXT_SGKZTXX.WCQX
  is '�������';
comment on column SGKXT_SGKZTXX.BLRBS
  is '�����˱�ʶ';
comment on column SGKXT_SGKZTXX.BLR
  is '������';
comment on column SGKXT_SGKZTXX.ZBDW
  is '���쵥λ';
comment on column SGKXT_SGKZTXX.LJBS
  is '�˽��ʶ';
comment on column SGKXT_SGKZTXX.LJRQ
  is '�˽�����';
comment on column SGKXT_SGKZTXX.GDBS
  is '�鵵��ʶ';
comment on column SGKXT_SGKZTXX.TQGDRQ
  is '����鵵����';
comment on column SGKXT_SGKZTXX.GDRQ
  is '�鵵����';
comment on column SGKXT_SGKZTXX.SGKGLBH
  is '�Ĺ����������';
comment on column SGKXT_SGKZTXX.HFTD
  is '�ظ�̬��';
comment on column SGKXT_SGKZTXX.MYD
  is '�����';

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
  is '����������Ϣ';
comment on column SPGKXT_AJJBXX.FYBM
  is '��Ժ����';
comment on column SPGKXT_AJJBXX.BH
  is '���';
comment on column SPGKXT_AJJBXX.AJBS
  is '������ʶ';
comment on column SPGKXT_AJJBXX.FYMC
  is '��Ժ����';
comment on column SPGKXT_AJJBXX.AJLB
  is '�������';
comment on column SPGKXT_AJJBXX.SPCX
  is '���г���';
comment on column SPGKXT_AJJBXX.AH
  is '����';
comment on column SPGKXT_AJJBXX.ND
  is '���';
comment on column SPGKXT_AJJBXX.FYJC
  is '��Ժ���';
comment on column SPGKXT_AJJBXX.AZ
  is '����';
comment on column SPGKXT_AJJBXX.HS
  is '����';
comment on column SPGKXT_AJJBXX.LAAY
  is '��������';
comment on column SPGKXT_AJJBXX.CBRBS
  is '�а��˱�ʶ';
comment on column SPGKXT_AJJBXX.CBR
  is '�а���';
comment on column SPGKXT_AJJBXX.HYTCY
  is '����ͥ��Ա';
comment on column SPGKXT_AJJBXX.SJYBS
  is '���Ա��ʶ';
comment on column SPGKXT_AJJBXX.SJY
  is '���Ա';
comment on column SPGKXT_AJJBXX.DSR
  is '������';
comment on column SPGKXT_AJJBXX.SYCX
  is '���ó���';
comment on column SPGKXT_AJJBXX.LXDH
  is '��ϵ�绰';
comment on column SPGKXT_AJJBXX.SFYX
  is '�Ƿ���Ч';
comment on column SPGKXT_AJJBXX.LARQ
  is '��������';
comment on column SPGKXT_AJJBXX.YG
  is 'ԭ��';
comment on column SPGKXT_AJJBXX.BG
  is '����';
comment on column SPGKXT_AJJBXX.BDJE
  is '��Ľ��';
comment on column SPGKXT_AJJBXX.YYR
  is '������';
comment on column SPGKXT_AJJBXX.YYLY
  is '��������';
comment on column SPGKXT_AJJBXX.CLJG
  is '������';
comment on column SPGKXT_AJJBXX.AJLY
  is '������Դ';
comment on column SPGKXT_AJJBXX.YSLX
  is 'һ������';
comment on column SPGKXT_AJJBXX.JSXRQ
  is '����Ч����';
comment on column SPGKXT_AJJBXX.MSBD
  is '���±��';
comment on column SPGKXT_AJJBXX.SSLY
  is '������Դ';
comment on column SPGKXT_AJJBXX.JABS
  is '�᰸��ʶ';
comment on column SPGKXT_AJJBXX.JARQ
  is '�᰸����';
comment on column SPGKXT_AJJBXX.BDLX
  is '�������';
comment on column SPGKXT_AJJBXX.BDZ
  is '���ֵ';
comment on column SPGKXT_AJJBXX.FLWSBH
  is '����������';
comment on column SPGKXT_AJJBXX.YSFY
  is 'ԭ��Ժ';
comment on column SPGKXT_AJJBXX.SSRQ
  is '��������';
comment on column SPGKXT_AJJBXX.YSAH
  is 'ԭ�󰸺�';
comment on column SPGKXT_AJJBXX.JAFS
  is '�᰸��ʽ';
comment on column SPGKXT_AJJBXX.FARQ
  is '�ְ�����';
comment on column SPGKXT_AJJBXX.SPT
  is '����ͥ';
comment on column SPGKXT_AJJBXX.ZXXX
  is 'ִ����Ϣ';
comment on column SPGKXT_AJJBXX.GKRQ
  is '��������';

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
  is '��������';
comment on column SPGKXT_AJPQ.FYBM
  is '��Ժ����';
comment on column SPGKXT_AJPQ.BH
  is '���';
comment on column SPGKXT_AJPQ.AJBS
  is '������ʶ';
comment on column SPGKXT_AJPQ.XH
  is '���';
comment on column SPGKXT_AJPQ.FYMC
  is '��Ժ����';
comment on column SPGKXT_AJPQ.AJLB
  is '�������';
comment on column SPGKXT_AJPQ.KTRQ
  is '��ͥ����';
comment on column SPGKXT_AJPQ.KTSJ
  is '��ͥʱ��';
comment on column SPGKXT_AJPQ.FT
  is '��ͥ';
comment on column SPGKXT_AJPQ.CBR
  is '�а���';
comment on column SPGKXT_AJPQ.AH
  is '����';
comment on column SPGKXT_AJPQ.LAAY
  is '��������';
comment on column SPGKXT_AJPQ.DSR
  is '������';
comment on column SPGKXT_AJPQ.SFYX
  is '�Ƿ���Ч';

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
  is '��������';
comment on column SPGKXT_AKSR.FYBM
  is '��Ժ����';
comment on column SPGKXT_AKSR.BH
  is '���';
comment on column SPGKXT_AKSR.AJBS
  is '������ʶ';
comment on column SPGKXT_AKSR.FYMC
  is '��Ժ����';
comment on column SPGKXT_AKSR.XH
  is '���';
comment on column SPGKXT_AKSR.SKZL
  is '�տ�����';
comment on column SPGKXT_AKSR.SKRQ
  is '�տ�����';
comment on column SPGKXT_AKSR.SKDX
  is '�տ����';
comment on column SPGKXT_AKSR.JE
  is '���';
comment on column SPGKXT_AKSR.JLRBS
  is '��¼�˱�ʶ';
comment on column SPGKXT_AKSR.JLR
  is '��¼��';
comment on column SPGKXT_AKSR.JLSJ
  is '��¼ʱ��';
comment on column SPGKXT_AKSR.SKYE
  is '�տ����';

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
  is '����ִ��';
comment on column SPGKXT_AKZX.FYBM
  is '��Ժ����';
comment on column SPGKXT_AKZX.BH
  is '���';
comment on column SPGKXT_AKZX.AJBS
  is '������ʶ';
comment on column SPGKXT_AKZX.XH
  is '���';
comment on column SPGKXT_AKZX.ZKZL
  is '֧������';
comment on column SPGKXT_AKZX.ZKRQ
  is '֧������';
comment on column SPGKXT_AKZX.ZKSX
  is '֧������';
comment on column SPGKXT_AKZX.ZKJE
  is '֧����';
comment on column SPGKXT_AKZX.SQRBS
  is '�����˱�ʶ';
comment on column SPGKXT_AKZX.SQR
  is '������';
comment on column SPGKXT_AKZX.SQRQ
  is '��������';
comment on column SPGKXT_AKZX.CZSPRBS
  is '���������˱�ʶ';
comment on column SPGKXT_AKZX.CZSPR
  is '����������';
comment on column SPGKXT_AKZX.CZSFPZ
  is '�����Ƿ���׼';
comment on column SPGKXT_AKZX.CZSPYJ
  is '�����������';
comment on column SPGKXT_AKZX.CZSPRQ
  is '������������';
comment on column SPGKXT_AKZX.TCSPRBS
  is 'ͥ�������˱�ʶ';
comment on column SPGKXT_AKZX.TCSPR
  is 'ͥ��������';
comment on column SPGKXT_AKZX.TCSFPZ
  is 'ͥ���Ƿ���׼';
comment on column SPGKXT_AKZX.TCSPYJ
  is 'ͥ���������';
comment on column SPGKXT_AKZX.TCSPRQ
  is 'ͥ����������';
comment on column SPGKXT_AKZX.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column SPGKXT_AKZX.YCSPR
  is 'Ժ��������';
comment on column SPGKXT_AKZX.YCSFPZ
  is 'Ժ���Ƿ���׼';
comment on column SPGKXT_AKZX.YCYJ
  is 'Ժ�����';
comment on column SPGKXT_AKZX.YCSPRQ
  is 'Ժ����������';
comment on column SPGKXT_AKZX.ZKYE
  is '֧�����';
comment on column SPGKXT_AKZX.SFCL
  is '�Ƿ���';
comment on column SPGKXT_AKZX.QRR
  is 'ȷ����';
comment on column SPGKXT_AKZX.QRRQ
  is 'ȷ������';
comment on column SPGKXT_AKZX.ZFFS
  is '֧����ʽ';
comment on column SPGKXT_AKZX.SKRZH
  is '�տ����˻�';
comment on column SPGKXT_AKZX.QTZXR
  is '����ִ����';
comment on column SPGKXT_AKZX.QTFYZXR
  is '������Ժִ����';
comment on column SPGKXT_AKZX.BZXRSF
  is '��ִ�����շ�';
comment on column SPGKXT_AKZX.ZKLJJE
  is '֧���ۼƽ��';
comment on column SPGKXT_AKZX.YJ
  is '���';
comment on column SPGKXT_AKZX.SM
  is '˵��';
comment on column SPGKXT_AKZX.ZKLY
  is '֧������';
comment on column SPGKXT_AKZX.SPRBS
  is '�����˱�ʶ';
comment on column SPGKXT_AKZX.SPR
  is '������';
comment on column SPGKXT_AKZX.SPYS
  is '������˼';
comment on column SPGKXT_AKZX.SFPZ
  is '�Ƿ���׼';
comment on column SPGKXT_AKZX.SPRQ
  is '��������';
comment on column SPGKXT_AKZX.AKXZ
  is '��������';

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
  is '�а��˱����¼';
comment on column SPGKXT_CBRBGJL.FYBM
  is '��Ժ����';
comment on column SPGKXT_CBRBGJL.BH
  is '���';
comment on column SPGKXT_CBRBGJL.AJBS
  is '������ʶ';
comment on column SPGKXT_CBRBGJL.BGQCBRBS
  is '���ǰ�а��˱�ʶ';
comment on column SPGKXT_CBRBGJL.BGQCBR
  is '���ǰ�а���';
comment on column SPGKXT_CBRBGJL.BGHCBRBGH
  is '�����а���bgh';
comment on column SPGKXT_CBRBGJL.BGHCBR
  is '�����а���';
comment on column SPGKXT_CBRBGJL.CLR
  is '������';
comment on column SPGKXT_CBRBGJL.BGRQ
  is '�������';

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
  is '��������';
comment on column SPGKXT_CPWS.FYBM
  is '��Ժ����';
comment on column SPGKXT_CPWS.BH
  is '���';
comment on column SPGKXT_CPWS.AJBS
  is '������ʶ';
comment on column SPGKXT_CPWS.FYMC
  is '��Ժ����';
comment on column SPGKXT_CPWS.AH
  is '����';
comment on column SPGKXT_CPWS.BT
  is '����';
comment on column SPGKXT_CPWS.FBSJ
  is '����ʱ��';
comment on column SPGKXT_CPWS.SFYX
  is '�Ƿ���Ч';
comment on column SPGKXT_CPWS.LAAY
  is '��������';
comment on column SPGKXT_CPWS.DSR
  is '������';
comment on column SPGKXT_CPWS.PJSBZ
  is '�о����־';
comment on column SPGKXT_CPWS.WSNR
  is '��������';
comment on column SPGKXT_CPWS.GKSJ
  is '����ʱ��';

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
  is '�����˻�����Ϣ';
comment on column SPGKXT_DSRJBXX.FYBM
  is '��Ժ����';
comment on column SPGKXT_DSRJBXX.BH
  is '���';
comment on column SPGKXT_DSRJBXX.AJBS
  is '������ʶ';
comment on column SPGKXT_DSRJBXX.XH
  is '���';
comment on column SPGKXT_DSRJBXX.FYMC
  is '��Ժ����';
comment on column SPGKXT_DSRJBXX.SSDW
  is '���ϵ�λ';
comment on column SPGKXT_DSRJBXX.DSRMC
  is '����������';
comment on column SPGKXT_DSRJBXX.ZSD
  is 'ס����';
comment on column SPGKXT_DSRJBXX.FDDBR
  is '����������';
comment on column SPGKXT_DSRJBXX.SFZHM
  is '���֤����';
comment on column SPGKXT_DSRJBXX.CXMM
  is '��ѯ����';
comment on column SPGKXT_DSRJBXX.SFYX
  is '�Ƿ���Ч';
comment on column SPGKXT_DSRJBXX.YXZJ
  is '��Ч֤��';
comment on column SPGKXT_DSRJBXX.CSRQ
  is '��������';
comment on column SPGKXT_DSRJBXX.XB
  is '�Ա�';
comment on column SPGKXT_DSRJBXX.NL
  is '����';
comment on column SPGKXT_DSRJBXX.MZ
  is '����';
comment on column SPGKXT_DSRJBXX.GJ
  is '����';
comment on column SPGKXT_DSRJBXX.DZ
  is '��ַ';
comment on column SPGKXT_DSRJBXX.SF
  is '���';
comment on column SPGKXT_DSRJBXX.YZBM
  is '��������';
comment on column SPGKXT_DSRJBXX.XZYY
  is '��������';
comment on column SPGKXT_DSRJBXX.BHRXM
  is '�滤������';
comment on column SPGKXT_DSRJBXX.BHRLX
  is '�绤������';
comment on column SPGKXT_DSRJBXX.BHRDW
  is '�绤�˵�λ';
comment on column SPGKXT_DSRJBXX.BHRSFZHM
  is '�滤�����֤����';
comment on column SPGKXT_DSRJBXX.BHRSF
  is '�滤�����';
comment on column SPGKXT_DSRJBXX.BHRDZ
  is '�滤�˵�ַ';
comment on column SPGKXT_DSRJBXX.BZ
  is '��ע';
comment on column SPGKXT_DSRJBXX.QTBHRXM
  is '�����滤������';
comment on column SPGKXT_DSRJBXX.QTBHRDW
  is '�����滤�˵�λ';
comment on column SPGKXT_DSRJBXX.QTBHRLX
  is '�����滤������';
comment on column SPGKXT_DSRJBXX.QTBHRSF
  is '�����滤�����';
comment on column SPGKXT_DSRJBXX.QTBHRSFZHM
  is '�����滤�����֤����';
comment on column SPGKXT_DSRJBXX.QTBHRDH
  is '�����滤�˵绰';
comment on column SPGKXT_DSRJBXX.QTBHRDZ
  is '�����滤�˵�ַ';
comment on column SPGKXT_DSRJBXX.QYDM
  is '��ҵ����';
comment on column SPGKXT_DSRJBXX.ZJH
  is '֤����';
comment on column SPGKXT_DSRJBXX.DWXZ
  is '��λ����';
comment on column SPGKXT_DSRJBXX.JSPQK
  is '���������';
comment on column SPGKXT_DSRJBXX.LXFS
  is '��ϵ��ʽ';
comment on column SPGKXT_DSRJBXX.ZY
  is 'ְҵ';
comment on column SPGKXT_DSRJBXX.JYCS
  is '������ʩ';
comment on column SPGKXT_DSRJBXX.WHCD
  is '�Ļ��̶�';

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
  is '��������';
comment on column SPGKXT_JDPM.FYBM
  is '��Ժ����';
comment on column SPGKXT_JDPM.BH
  is '���';
comment on column SPGKXT_JDPM.AJBS
  is '������ʶ';
comment on column SPGKXT_JDPM.WDBH
  is '�ĵ����';
comment on column SPGKXT_JDPM.FYMC
  is '��Ժ����';
comment on column SPGKXT_JDPM.AH
  is '����';
comment on column SPGKXT_JDPM.SQR
  is '������';
comment on column SPGKXT_JDPM.SQSX
  is '��������';
comment on column SPGKXT_JDPM.SLSJ
  is '����ʱ��';
comment on column SPGKXT_JDPM.WTJGXZFS
  is 'ί�л���ѡ�з�ʽ';
comment on column SPGKXT_JDPM.JGMC
  is '��������';
comment on column SPGKXT_JDPM.JGDH
  is '�����绰';
comment on column SPGKXT_JDPM.WTSJ
  is 'ί��ʱ��';
comment on column SPGKXT_JDPM.SFYX
  is '�Ƿ���Ч';
comment on column SPGKXT_JDPM.PMDD
  is '�����ص�';
comment on column SPGKXT_JDPM.WCSJ
  is '���ʱ��';
comment on column SPGKXT_JDPM.PMJG
  is '��������';
comment on column SPGKXT_JDPM.PMSJ
  is '����ʱ��';
comment on column SPGKXT_JDPM.WTSX
  is 'ί������';
comment on column SPGKXT_JDPM.PMJGXZFS
  is '��������ѡ��ʽ';
comment on column SPGKXT_JDPM.PMJGMC
  is '������������';
comment on column SPGKXT_JDPM.PMJGDH
  is '���������绰';
comment on column SPGKXT_JDPM.PMWTRQ
  is '����ί������';
comment on column SPGKXT_JDPM.YPDD
  is 'һ�ĵص�';
comment on column SPGKXT_JDPM.YPWTSJ
  is 'һ��ί��ʱ��';
comment on column SPGKXT_JDPM.YPSJ
  is 'һ��ʱ��';
comment on column SPGKXT_JDPM.YPJG
  is 'һ�Ľ��';
comment on column SPGKXT_JDPM.YPJGDH
  is 'һ�Ļ����绰';
comment on column SPGKXT_JDPM.YPXZFS
  is 'һ��ѡ��ʽ';
comment on column SPGKXT_JDPM.YPGGSJ
  is 'һ�Ĺ���ʱ��';
comment on column SPGKXT_JDPM.EPDD
  is '���ĵص�';
comment on column SPGKXT_JDPM.EPWTSJ
  is '����ί��ʱ��';
comment on column SPGKXT_JDPM.EPSJ
  is '����ʱ��';
comment on column SPGKXT_JDPM.EPJG
  is '���Ľ��';
comment on column SPGKXT_JDPM.EPJGDH
  is '���Ļ����绰';
comment on column SPGKXT_JDPM.EPXZFS
  is '��������ʽ';
comment on column SPGKXT_JDPM.EPGGSJ
  is '���Ĺ���ʱ��';
comment on column SPGKXT_JDPM.SPWTSJ
  is '����ί��ʱ��';
comment on column SPGKXT_JDPM.SPSJ
  is '����ʱ��';
comment on column SPGKXT_JDPM.SPDD
  is '���ĵص�';
comment on column SPGKXT_JDPM.SPJG
  is '���Ľ��';
comment on column SPGKXT_JDPM.SPDH
  is '���ĵ绰';
comment on column SPGKXT_JDPM.SPXZFS
  is '����ѡ��ʽ';
comment on column SPGKXT_JDPM.SPGGSJ
  is '���Ĺ���ʱ��';
comment on column SPGKXT_JDPM.JDLB
  is '�������';
comment on column SPGKXT_JDPM.JDDW
  is '������λ';
comment on column SPGKXT_JDPM.JDFYF
  is '�������÷�';
comment on column SPGKXT_JDPM.QDSJ
  is 'ȷ��ʱ��';
comment on column SPGKXT_JDPM.QDSX
  is 'ȷ������';
comment on column SPGKXT_JDPM.SQRQ
  is '��������';

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
  is '��ͥ����';
comment on column SPGKXT_KTGG.FYBM
  is '��Ժ����';
comment on column SPGKXT_KTGG.BH
  is '���';
comment on column SPGKXT_KTGG.AJBS
  is '������ʶ';
comment on column SPGKXT_KTGG.FYMC
  is '��Ժ����';
comment on column SPGKXT_KTGG.AH
  is '����';
comment on column SPGKXT_KTGG.DSR
  is '������';
comment on column SPGKXT_KTGG.DD
  is '�ص�';
comment on column SPGKXT_KTGG.SJ
  is 'ʱ��';
comment on column SPGKXT_KTGG.SYCX
  is '���ó���';
comment on column SPGKXT_KTGG.AY
  is '����';
comment on column SPGKXT_KTGG.SFYX
  is '�Ƿ���Ч';
comment on column SPGKXT_KTGG.CBRBS
  is '�а��˱�ʶ';
comment on column SPGKXT_KTGG.CBR
  is '�а���';
comment on column SPGKXT_KTGG.SJYBS
  is '���Ա��ʶ';
comment on column SPGKXT_KTGG.SJY
  is '���Ա';
comment on column SPGKXT_KTGG.GKSJ
  is '����ʱ��';

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
  is '������Ϣ';
comment on column SPGKXT_PGXX.FYBM
  is '��Ժ����';
comment on column SPGKXT_PGXX.BH
  is '���';
comment on column SPGKXT_PGXX.AJBS
  is '������ʶ';
comment on column SPGKXT_PGXX.WDBH
  is '�ĵ����';
comment on column SPGKXT_PGXX.FYMC
  is '��Ժ����';
comment on column SPGKXT_PGXX.SQR
  is '������';
comment on column SPGKXT_PGXX.BZXR
  is '��ִ����';
comment on column SPGKXT_PGXX.CZZL
  is '��������';
comment on column SPGKXT_PGXX.CZDX
  is '���ö���';
comment on column SPGKXT_PGXX.CZSJ
  is '����ʱ��';
comment on column SPGKXT_PGXX.CZJG
  is '���ý��';

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
  is '������Ϣ2';
comment on column SPGKXT_PGXX2.FYBM
  is '��Ժ����';
comment on column SPGKXT_PGXX2.BH
  is '���';
comment on column SPGKXT_PGXX2.AJBS
  is '������ʶ';
comment on column SPGKXT_PGXX2.FYMC
  is '��Ժ����';
comment on column SPGKXT_PGXX2.AH
  is '����';
comment on column SPGKXT_PGXX2.SQR
  is '������';
comment on column SPGKXT_PGXX2.SQSX
  is '��������';
comment on column SPGKXT_PGXX2.SLSJ
  is '����ʱ��';
comment on column SPGKXT_PGXX2.XZFS
  is 'ѡ��ʽ';
comment on column SPGKXT_PGXX2.JGMC
  is '��������';
comment on column SPGKXT_PGXX2.DGDH
  is '�繹�绰';
comment on column SPGKXT_PGXX2.WTSJ
  is 'ί��ʱ��';
comment on column SPGKXT_PGXX2.SFYX
  is '�Ƿ���Ч';

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
  is 'ǿ�ƴ�ʩ';
comment on column SPGKXT_QZCS.FYBM
  is '��Ժ����';
comment on column SPGKXT_QZCS.BH
  is '���';
comment on column SPGKXT_QZCS.AJBS
  is '������ʶ';
comment on column SPGKXT_QZCS.WDBH
  is '�ĵ����';
comment on column SPGKXT_QZCS.FYMC
  is '��Ժ����';
comment on column SPGKXT_QZCS.SQR
  is '������';
comment on column SPGKXT_QZCS.BZXR
  is '��ִ����';
comment on column SPGKXT_QZCS.CSLX
  is '��ʩ����';
comment on column SPGKXT_QZCS.XZ
  is '����';
comment on column SPGKXT_QZCS.RY
  is '��Ա';
comment on column SPGKXT_QZCS.CQSJ
  is '��ȡʱ��';
comment on column SPGKXT_QZCS.JMSJ
  is '����ʱ��';
comment on column SPGKXT_QZCS.XXCS
  is '��ϸ��ʩ';
comment on column SPGKXT_QZCS.CSSJ
  is '��ʩʱ��';
comment on column SPGKXT_QZCS.CSNR
  is '��ʩ����';
comment on column SPGKXT_QZCS.CSMC
  is '��ʩ����';
comment on column SPGKXT_QZCS.CCXS
  is '�Ʋ�����';

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
  is 'ͥ����Ƶ';
comment on column SPGKXT_TSSP.FYBM
  is '��Ժ����';
comment on column SPGKXT_TSSP.BH
  is '���';
comment on column SPGKXT_TSSP.AJBS
  is '������ʶ';
comment on column SPGKXT_TSSP.AH
  is '����';
comment on column SPGKXT_TSSP.SPMC
  is '��Ƶ����';
comment on column SPGKXT_TSSP.LJ
  is '·��';
comment on column SPGKXT_TSSP.SFYX
  is '�Ƿ���Ч';
comment on column SPGKXT_TSSP.GKSJ
  is '����ʱ��';

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
  is 'ִ�а���';
comment on column SPGKXT_ZXAK.FYBM
  is '��Ժ����';
comment on column SPGKXT_ZXAK.BH
  is '���';
comment on column SPGKXT_ZXAK.AJBS
  is '������ʶ';
comment on column SPGKXT_ZXAK.XH
  is '���';
comment on column SPGKXT_ZXAK.LB
  is '���';
comment on column SPGKXT_ZXAK.RQ
  is '����';
comment on column SPGKXT_ZXAK.ZL
  is '����';
comment on column SPGKXT_ZXAK.JE
  is '���';
comment on column SPGKXT_ZXAK.SZR
  is '��֧��';

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
  is '���Ϸ���Ʋ����';
comment on column SSFWXT_SSFWCCQK.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWCCQK.BH
  is '���';
comment on column SSFWXT_SSFWCCQK.SSFWBH
  is '���Ϸ�����';
comment on column SSFWXT_SSFWCCQK.CCZL
  is '�Ʋ�����';
comment on column SSFWXT_SSFWCCQK.CCMC
  is '�Ʋ�����';
comment on column SSFWXT_SSFWCCQK.CXSJ
  is '��ѯʱ��';
comment on column SSFWXT_SSFWCCQK.CXJG
  is '��ѯ���';
comment on column SSFWXT_SSFWCCQK.FWCQDZ
  is '���ݲ�Ȩ��ַ';
comment on column SSFWXT_SSFWCCQK.FWMJ
  is '�������';
comment on column SSFWXT_SSFWCCQK.FWHZ
  is '���ݻ���';
comment on column SSFWXT_SSFWCCQK.SFYDY
  is '�Ƿ��ѵ�Ѻ';
comment on column SSFWXT_SSFWCCQK.KHX
  is '������';
comment on column SSFWXT_SSFWCCQK.CKHM
  is '����';
comment on column SSFWXT_SSFWCCQK.CKZH
  is '����˺�';
comment on column SSFWXT_SSFWCCQK.CKBZ
  is '������';
comment on column SSFWXT_SSFWCCQK.CKJE
  is '�����';
comment on column SSFWXT_SSFWCCQK.DSRMC
  is '����������';
comment on column SSFWXT_SSFWCCQK.GSDJH
  is '���̵ǼǺ�';
comment on column SSFWXT_SSFWCCQK.ZCDZ
  is 'ע���ַ';
comment on column SSFWXT_SSFWCCQK.GSMC
  is '��˾����';
comment on column SSFWXT_SSFWCCQK.JYRZK
  is '��Ӫ��״��';
comment on column SSFWXT_SSFWCCQK.CLMC
  is '��������';
comment on column SSFWXT_SSFWCCQK.SYQR
  is '����Ȩ��';
comment on column SSFWXT_SSFWCCQK.CLDJH
  is '�����ǼǺ�';
comment on column SSFWXT_SSFWCCQK.DCFS
  is '���鷽ʽ';
comment on column SSFWXT_SSFWCCQK.XSSS
  is '������ʵ';
comment on column SSFWXT_SSFWCCQK.PJZL
  is 'Ʊ������';
comment on column SSFWXT_SSFWCCQK.PJH
  is 'Ʊ�ݺ�';
comment on column SSFWXT_SSFWCCQK.PJJE
  is 'Ʊ�ݽ��';
comment on column SSFWXT_SSFWCCQK.QTCLCC
  is '���������Ʋ�';
comment on column SSFWXT_SSFWCCQK.QTCC
  is '�����Ʋ�';
comment on column SSFWXT_SSFWCCQK.BZ
  is '��ע';
comment on column SSFWXT_SSFWCCQK.JLRBS
  is '��¼�˱�ʶ';
comment on column SSFWXT_SSFWCCQK.JLR
  is '��¼��';
comment on column SSFWXT_SSFWCCQK.JLRQ
  is '��¼����';
comment on column SSFWXT_SSFWCCQK.JTCY
  is '��ͥ��Ա';
comment on column SSFWXT_SSFWCCQK.JTCYGZDW
  is '��ͥ��Ա������λ';
comment on column SSFWXT_SSFWCCQK.JTCYLXDH
  is '��ͥ��Ա��ϵ�绰';
comment on column SSFWXT_SSFWCCQK.POXM
  is '��ż����';
comment on column SSFWXT_SSFWCCQK.POCSRQ
  is '��ż��������';
comment on column SSFWXT_SSFWCCQK.PODW
  is '��ż��λ';
comment on column SSFWXT_SSFWCCQK.POLXFS
  is '��ż��ϵ��ʽ';
comment on column SSFWXT_SSFWCCQK.POYGZSR
  is '��ż�¹�������';
comment on column SSFWXT_SSFWCCQK.POQYNDSR
  is '��żǰһ�������';
comment on column SSFWXT_SSFWCCQK.TZRXM
  is 'Ͷ��������';
comment on column SSFWXT_SSFWCCQK.BTZR
  is '��Ͷ����';
comment on column SSFWXT_SSFWCCQK.TZJE
  is 'Ͷ�ʽ��';
comment on column SSFWXT_SSFWCCQK.YSZQJE
  is 'Ӧ��ծȨ���';
comment on column SSFWXT_SSFWCCQK.ZWR
  is 'ծ����';
comment on column SSFWXT_SSFWCCQK.ZQDQRQ
  is 'ծȨ��������';
comment on column SSFWXT_SSFWCCQK.CCSYR
  is '�Ʋ�������';
comment on column SSFWXT_SSFWCCQK.CCXS
  is '�Ʋ�����';

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
  is '���Ϸ����������Ϣ';
comment on column SSFWXT_SSFWCLQKXX.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWCLQKXX.BH
  is '���';
comment on column SSFWXT_SSFWCLQKXX.SSFWBH
  is '���Ϸ�����';
comment on column SSFWXT_SSFWCLQKXX.JDBH
  is '�ڵ���';
comment on column SSFWXT_SSFWCLQKXX.JDMC
  is '�ڵ�����';
comment on column SSFWXT_SSFWCLQKXX.FSRBS
  is '�����˱�ʶ';
comment on column SSFWXT_SSFWCLQKXX.FSR
  is '������';
comment on column SSFWXT_SSFWCLQKXX.FSSJ
  is '����ʱ��';
comment on column SSFWXT_SSFWCLQKXX.JSRBS
  is '�����˱�ʶ';
comment on column SSFWXT_SSFWCLQKXX.JSR
  is '������';
comment on column SSFWXT_SSFWCLQKXX.JSSJ
  is '����ʱ��';
comment on column SSFWXT_SSFWCLQKXX.FSBZ
  is '���ͱ�־';
comment on column SSFWXT_SSFWCLQKXX.XH
  is '���';
comment on column SSFWXT_SSFWCLQKXX.SFJJ
  is '�Ƿ����';
comment on column SSFWXT_SSFWCLQKXX.SFSC
  is '�Ƿ��ղ�';
comment on column SSFWXT_SSFWCLQKXX.SFCL
  is '�Ƿ���';

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
  is '���Ϸ����������Ϣ2';
comment on column SSFWXT_SSFWCLQKXX2.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWCLQKXX2.BH
  is '���';
comment on column SSFWXT_SSFWCLQKXX2.XH
  is '���';
comment on column SSFWXT_SSFWCLQKXX2.SSDW
  is '���ϵ�λ';
comment on column SSFWXT_SSFWCLQKXX2.SFZJZL
  is '���֤������';
comment on column SSFWXT_SSFWCLQKXX2.SFZJHM
  is '���֤������';
comment on column SSFWXT_SSFWCLQKXX2.DSRLX
  is '����������';
comment on column SSFWXT_SSFWCLQKXX2.NL
  is '����';
comment on column SSFWXT_SSFWCLQKXX2.MC
  is '����';
comment on column SSFWXT_SSFWCLQKXX2.DZ
  is '��ַ';
comment on column SSFWXT_SSFWCLQKXX2.XB
  is '�Ա�';
comment on column SSFWXT_SSFWCLQKXX2.MZ
  is '����';
comment on column SSFWXT_SSFWCLQKXX2.CSRQ
  is '��������';
comment on column SSFWXT_SSFWCLQKXX2.WHCD
  is '�Ļ��̶�';
comment on column SSFWXT_SSFWCLQKXX2.ZZMM
  is '������ò';
comment on column SSFWXT_SSFWCLQKXX2.LXDH
  is '��ϵ�绰';

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
  is '���Ϸ����������Ϣ3';
comment on column SSFWXT_SSFWCLQKXX3.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWCLQKXX3.BH
  is '���';
comment on column SSFWXT_SSFWCLQKXX3.SSFWBH
  is '���Ϸ�����';
comment on column SSFWXT_SSFWCLQKXX3.CLQK
  is '�������';
comment on column SSFWXT_SSFWCLQKXX3.WCLYY
  is 'δ����ԭ��';

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
  is '���Ϸ�������������Ϣ';
comment on column SSFWXT_SSFWLCPZXX.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWLCPZXX.BH
  is '���';
comment on column SSFWXT_SSFWLCPZXX.SSFWLBID
  is '���Ϸ������ID';
comment on column SSFWXT_SSFWLCPZXX.SSFWLB
  is '���Ϸ������';
comment on column SSFWXT_SSFWLCPZXX.LCMC
  is '��������';
comment on column SSFWXT_SSFWLCPZXX.LCJG
  is '���̽��';
comment on column SSFWXT_SSFWLCPZXX.TS
  is '����';
comment on column SSFWXT_SSFWLCPZXX.KSLCMC
  is '��ʼ��������';
comment on column SSFWXT_SSFWLCPZXX.JSLCMC
  is '������������';

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
  is '���Ϸ���������־';
comment on column SSFWXT_SSFWLCRZ.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWLCRZ.BH
  is '���';
comment on column SSFWXT_SSFWLCRZ.LCBH
  is '���̱��';
comment on column SSFWXT_SSFWLCRZ.LCMC
  is '��������';
comment on column SSFWXT_SSFWLCRZ.LCTS
  is '��������';
comment on column SSFWXT_SSFWLCRZ.KSSJ
  is '��ʼʱ��';
comment on column SSFWXT_SSFWLCRZ.JSSJ
  is '����ʱ��';
comment on column SSFWXT_SSFWLCRZ.YJRBS
  is '�ƽ��˱�ʶ';
comment on column SSFWXT_SSFWLCRZ.YJR
  is '�ƽ���';
comment on column SSFWXT_SSFWLCRZ.YJBM
  is '�ƽ�����';
comment on column SSFWXT_SSFWLCRZ.BLBM
  is '������';
comment on column SSFWXT_SSFWLCRZ.BLRBS
  is '�����˱�ʶ';
comment on column SSFWXT_SSFWLCRZ.BLR
  is '������';

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
  is '���Ϸ���ǩ�ּ�¼';
comment on column SSFWXT_SSFWQZJL.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWQZJL.BH
  is '���';
comment on column SSFWXT_SSFWQZJL.SSFWBH
  is '���Ϸ�����';
comment on column SSFWXT_SSFWQZJL.QZNR
  is 'ǩ������';
comment on column SSFWXT_SSFWQZJL.CJRQ
  is '��������';
comment on column SSFWXT_SSFWQZJL.XGRQ
  is '�޸�����';

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
  is '���Ϸ�����־��Ϣ';
comment on column SSFWXT_SSFWRZXX.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWRZXX.BH
  is '���';
comment on column SSFWXT_SSFWRZXX.SSFWBH
  is '���Ϸ�����';
comment on column SSFWXT_SSFWRZXX.KSRQ
  is '��ʼ����';
comment on column SSFWXT_SSFWRZXX.JSRQ
  is '��������';
comment on column SSFWXT_SSFWRZXX.BM
  is '����';
comment on column SSFWXT_SSFWRZXX.RYBS
  is '��Ա��ʶ';
comment on column SSFWXT_SSFWRZXX.XM
  is '����';

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
  is '���Ϸ����ʹ��¼';
comment on column SSFWXT_SSFWSDJL.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWSDJL.BH
  is '���';
comment on column SSFWXT_SSFWSDJL.SSFWBH
  is '���Ϸ�����';
comment on column SSFWXT_SSFWSDJL.WSMC
  is '��������';
comment on column SSFWXT_SSFWSDJL.BSDR
  is '���ʹ���';
comment on column SSFWXT_SSFWSDJL.BSDRLXDH
  is '���ʹ�����ϵ�绰';
comment on column SSFWXT_SSFWSDJL.SDFS
  is '�ʹ﷽ʽ';
comment on column SSFWXT_SSFWSDJL.QZR
  is 'ǩ����';
comment on column SSFWXT_SSFWSDJL.SDRQ
  is '�ʹ�����';
comment on column SSFWXT_SSFWSDJL.SDRBS
  is '�ʹ��˱�ʶ';
comment on column SSFWXT_SSFWSDJL.SDR
  is '�ʹ���';
comment on column SSFWXT_SSFWSDJL.SDDD
  is '�ʹ�ص�';
comment on column SSFWXT_SSFWSDJL.SDJG
  is '�ʹ���';
comment on column SSFWXT_SSFWSDJL.WSDLY
  is 'δ�ʹ�����';
comment on column SSFWXT_SSFWSDJL.HZLB
  is '��֤���';
comment on column SSFWXT_SSFWSDJL.SDCS
  is '�ʹ����';
comment on column SSFWXT_SSFWSDJL.SDWJFS
  is '�ʹ��ļ�����';
comment on column SSFWXT_SSFWSDJL.LQQX
  is '��ȡ����';
comment on column SSFWXT_SSFWSDJL.SMWJMC
  is 'ɨ���ļ�����';

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
  is '���Ϸ���ʵ��';
comment on column SSFWXT_SSFWST.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWST.SSFWBH
  is '���Ϸ�����';
comment on column SSFWXT_SSFWST.XH
  is '���';
comment on column SSFWXT_SSFWST.WJMC
  is '�ļ�����';
comment on column SSFWXT_SSFWST.STWJM
  is 'ʵ���ļ���';

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
  is '���Ϸ���������ѯ������������Ϣ';
comment on column SSFWXT_SSFWWWCXAJDSRXX.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWWWCXAJDSRXX.BH
  is '���';
comment on column SSFWXT_SSFWWWCXAJDSRXX.AJBS
  is '������ʶ';
comment on column SSFWXT_SSFWWWCXAJDSRXX.DSRXH
  is '���������';
comment on column SSFWXT_SSFWWWCXAJDSRXX.LX
  is '����';
comment on column SSFWXT_SSFWWWCXAJDSRXX.MC
  is '����';
comment on column SSFWXT_SSFWWWCXAJDSRXX.SSDW
  is '���ϵ�λ';
comment on column SSFWXT_SSFWWWCXAJDSRXX.CXBM
  is '��ѯ����';

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
  is '���Ϸ���������ѯ����������Ϣ';
comment on column SSFWXT_SSFWWWCXAJJBXX.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWWWCXAJJBXX.AJBS
  is '������ʶ';
comment on column SSFWXT_SSFWWWCXAJJBXX.NH
  is '���';
comment on column SSFWXT_SSFWWWCXAJJBXX.AZ
  is '����';
comment on column SSFWXT_SSFWWWCXAJJBXX.HS
  is '����';
comment on column SSFWXT_SSFWWWCXAJJBXX.AJLB
  is '�������';
comment on column SSFWXT_SSFWWWCXAJJBXX.LAAY
  is '��������';
comment on column SSFWXT_SSFWWWCXAJJBXX.LARQ
  is '��������';
comment on column SSFWXT_SSFWWWCXAJJBXX.CBRBS
  is '�а��˱�ʶ';
comment on column SSFWXT_SSFWWWCXAJJBXX.CBR
  is '�а���';
comment on column SSFWXT_SSFWWWCXAJJBXX.DSR
  is '������';
comment on column SSFWXT_SSFWWWCXAJJBXX.CBSPT
  is '�а�����ͥ';
comment on column SSFWXT_SSFWWWCXAJJBXX.JAAY
  is '�᰸����';
comment on column SSFWXT_SSFWWWCXAJJBXX.JARQ
  is '�᰸����';
comment on column SSFWXT_SSFWWWCXAJJBXX.JABZ
  is '�᰸��־';
comment on column SSFWXT_SSFWWWCXAJJBXX.JDWJ
  is '�ڵ����';

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
  is '���Ϸ���������ѯ�������Ƚڵ���Ϣ';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.JDBH
  is '�ڵ���';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.JDDM
  is '�ڵ����';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.JDMC
  is '�ڵ�����';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.XSXX
  is '��ʾ��Ϣ';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.XXCXDM
  is '��Ϣ��ѯ����';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.JDXSCXDM
  is '�ڵ���ʾ��ѯ����';
comment on column SSFWXT_SSFWWWCXAJJDJDXX.BZ
  is '��ע';

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
  is '���Ϸ���������ѯ�������ȼ�¼';
comment on column SSFWXT_SSFWWWCXAJJDJL.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWWWCXAJJDJL.BH
  is '���';
comment on column SSFWXT_SSFWWWCXAJJDJL.AJBS
  is '������ʶ';
comment on column SSFWXT_SSFWWWCXAJJDJL.JDBH
  is '�ڵ���';
comment on column SSFWXT_SSFWWWCXAJJDJL.JDMC
  is '�ڵ�����';
comment on column SSFWXT_SSFWWWCXAJJDJL.JDXH
  is '�ڵ����';
comment on column SSFWXT_SSFWWWCXAJJDJL.JDXX
  is '�ڵ���Ϣ';

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
  is '���Ϸ���������ѯ��ͥ��Ϣ';
comment on column SSFWXT_SSFWWWCXKTXX.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWWWCXKTXX.BH
  is '���';
comment on column SSFWXT_SSFWWWCXKTXX.AJBS
  is '������ʶ';
comment on column SSFWXT_SSFWWWCXKTXX.AH
  is '����';
comment on column SSFWXT_SSFWWWCXKTXX.CBRBS
  is '�а��˱�ʶ';
comment on column SSFWXT_SSFWWWCXKTXX.CBR
  is '�а���';
comment on column SSFWXT_SSFWWWCXKTXX.SJYBS
  is '���Ա��ʶ';
comment on column SSFWXT_SSFWWWCXKTXX.SJY
  is '���Ա';
comment on column SSFWXT_SSFWWWCXKTXX.HYTCY
  is '����ͥ��Ա';
comment on column SSFWXT_SSFWWWCXKTXX.AY
  is '����';
comment on column SSFWXT_SSFWWWCXKTXX.DSR
  is '������';
comment on column SSFWXT_SSFWWWCXKTXX.KTSJ
  is '��ͥʱ��';
comment on column SSFWXT_SSFWWWCXKTXX.KTDD
  is '��ͥ�ص�';

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
  is '���Ϸ����������ԡ�����';
comment on column SSFWXT_SSFWWWLYSY.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWWWLYSY.BH
  is '���';
comment on column SSFWXT_SSFWWWLYSY.AJBS
  is '������ʶ';
comment on column SSFWXT_SSFWWWLYSY.XM
  is '����';
comment on column SSFWXT_SSFWWWLYSY.BT
  is '����';
comment on column SSFWXT_SSFWWWLYSY.LYNR
  is '��������';
comment on column SSFWXT_SSFWWWLYSY.HFNR
  is '�ظ�����';
comment on column SSFWXT_SSFWWWLYSY.JLSJ
  is '����ʱ��';
comment on column SSFWXT_SSFWWWLYSY.HFSJ
  is '�ظ�ʱ��';

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
  is '���Ϸ�������ԤԼ��������';
comment on column SSFWXT_SSFWWWYYLASQ.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWWWYYLASQ.SQBH
  is '������';
comment on column SSFWXT_SSFWWWYYLASQ.YYBH
  is 'ԤԼ���';
comment on column SSFWXT_SSFWWWYYLASQ.YYMM
  is 'ԤԼ����';
comment on column SSFWXT_SSFWWWYYLASQ.LXYX
  is '��ϵ����';
comment on column SSFWXT_SSFWWWYYLASQ.LXDH
  is '��ϵ�绰';
comment on column SSFWXT_SSFWWWYYLASQ.SSQQ
  is '��������';
comment on column SSFWXT_SSFWWWYYLASQ.SSYLY
  is '��ʵ������';
comment on column SSFWXT_SSFWWWYYLASQ.YYLASJ
  is 'ԤԼ����ʱ��';
comment on column SSFWXT_SSFWWWYYLASQ.YYLAHF
  is 'ԤԼ�����ظ�';
comment on column SSFWXT_SSFWWWYYLASQ.JLSJ
  is '����ʱ��';

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
  is '���Ϸ�������ԤԼ����������Ա����';
comment on column SSFWXT_SSFWWWYYLASSRYGC.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWWWYYLASSRYGC.BH
  is '���';
comment on column SSFWXT_SSFWWWYYLASSRYGC.SQBH
  is '������';
comment on column SSFWXT_SSFWWWYYLASSRYGC.SSDW
  is '���ϵ�λ';
comment on column SSFWXT_SSFWWWYYLASSRYGC.SFZJZL
  is '���֤������';
comment on column SSFWXT_SSFWWWYYLASSRYGC.SFZJHM
  is '���֤������';
comment on column SSFWXT_SSFWWWYYLASSRYGC.DSRLX
  is '����������';
comment on column SSFWXT_SSFWWWYYLASSRYGC.NL
  is '����';
comment on column SSFWXT_SSFWWWYYLASSRYGC.MC
  is '����';
comment on column SSFWXT_SSFWWWYYLASSRYGC.DZ
  is '��ַ';
comment on column SSFWXT_SSFWWWYYLASSRYGC.XB
  is '�Ա�';
comment on column SSFWXT_SSFWWWYYLASSRYGC.MZ
  is '����';
comment on column SSFWXT_SSFWWWYYLASSRYGC.CSRQ
  is '��������';
comment on column SSFWXT_SSFWWWYYLASSRYGC.WHCD
  is '�Ļ��̶�';
comment on column SSFWXT_SSFWWWYYLASSRYGC.ZZMM
  is '������ò';
comment on column SSFWXT_SSFWWWYYLASSRYGC.LXDH
  is '��ϵ�绰';

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
  is '���Ϸ�������ԤԼ����֤�ݲ���';
comment on column SSFWXT_SSFWWWYYLAZJCL.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWWWYYLAZJCL.BH
  is '���';
comment on column SSFWXT_SSFWWWYYLAZJCL.SQBH
  is '������';
comment on column SSFWXT_SSFWWWYYLAZJCL.WJMC
  is '�ļ�����';
comment on column SSFWXT_SSFWWWYYLAZJCL.BT
  is '����';
comment on column SSFWXT_SSFWWWYYLAZJCL.SM
  is '˵��';

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
  is '���Ϸ�����������';
comment on column SSFWXT_SSFWYQSQ.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWYQSQ.BH
  is '���';
comment on column SSFWXT_SSFWYQSQ.SSFWBH
  is '���Ϸ�����';
comment on column SSFWXT_SSFWYQSQ.SQYQRBS
  is '���������˱�ʶ';
comment on column SSFWXT_SSFWYQSQ.SQYQR
  is '����������';
comment on column SSFWXT_SSFWYQSQ.YQYY
  is '����ԭ��';
comment on column SSFWXT_SSFWYQSQ.YQTS
  is '��������';

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
  is '���Ϸ���������ת��¼';
comment on column SSFWXT_SSFWYSLZJL.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWYSLZJL.BH
  is '���';
comment on column SSFWXT_SSFWYSLZJL.SSFWBH
  is '���Ϸ�����';
comment on column SSFWXT_SSFWYSLZJL.YSRBS
  is '�����˱�ʶ';
comment on column SSFWXT_SSFWYSLZJL.YSR
  is '������';
comment on column SSFWXT_SSFWYSLZJL.YSLCNR
  is '������������';
comment on column SSFWXT_SSFWYSLZJL.YSRQ
  is '��������';
comment on column SSFWXT_SSFWYSLZJL.JSRBS
  is '�����˱�ʶ';
comment on column SSFWXT_SSFWYSLZJL.JSR
  is '������';
comment on column SSFWXT_SSFWYSLZJL.JSRQ
  is '��������';
comment on column SSFWXT_SSFWYSLZJL.YSFS
  is '���ͷ�ʽ';
comment on column SSFWXT_SSFWYSLZJL.GLLCNR
  is '������������';
comment on column SSFWXT_SSFWYSLZJL.THSJ
  is '�˻�ʱ��';

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
  is '���Ϸ���������Ϣ';
comment on column SSFWXT_SSFWZTXX.FYBM
  is '��Ժ����';
comment on column SSFWXT_SSFWZTXX.BHBH
  is '���bh';
comment on column SSFWXT_SSFWZTXX.SSFWLBBS
  is '���Ϸ�������ʶ';
comment on column SSFWXT_SSFWZTXX.SSFWLB
  is '���Ϸ������';
comment on column SSFWXT_SSFWZTXX.BH
  is '���';
comment on column SSFWXT_SSFWZTXX.BHN
  is '�����';
comment on column SSFWXT_SSFWZTXX.BHZ
  is '�����';
comment on column SSFWXT_SSFWZTXX.BHHS
  is '��ź���';
comment on column SSFWXT_SSFWZTXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column SSFWXT_SSFWZTXX.DJR
  is '�Ǽ���';
comment on column SSFWXT_SSFWZTXX.DJRQ
  is '�Ǽ�����';
comment on column SSFWXT_SSFWZTXX.SQRQ
  is '��������';
comment on column SSFWXT_SSFWZTXX.SJAJAY
  is '�漰��������';
comment on column SSFWXT_SSFWZTXX.SJAJAYBM
  is '�漰�������ɱ���';
comment on column SSFWXT_SSFWZTXX.DCSX
  is '��������';
comment on column SSFWXT_SSFWZTXX.SJSYDSR
  is '�漰���е�����';
comment on column SSFWXT_SSFWZTXX.SFWT
  is '�Ƿ�ί��';
comment on column SSFWXT_SSFWZTXX.WTRQ
  is 'ί������';
comment on column SSFWXT_SSFWZTXX.WTR
  is 'ί����';
comment on column SSFWXT_SSFWZTXX.BZ
  is '��ע';
comment on column SSFWXT_SSFWZTXX.DQSPRBS
  is '��ǰ�����˱�ʶ';
comment on column SSFWXT_SSFWZTXX.DQSPRMC
  is '��ǰ����������';
comment on column SSFWXT_SSFWZTXX.YBJQX
  is 'Ӧ�������';
comment on column SSFWXT_SSFWZTXX.SJAJCBRBS
  is '�漰�����а��˱�ʶ';
comment on column SSFWXT_SSFWZTXX.SJAJCBR
  is '�漰�����а���';
comment on column SSFWXT_SSFWZTXX.SSFWCBRBS
  is '���Ϸ���а��˱�ʶ';
comment on column SSFWXT_SSFWZTXX.SSFWCBR
  is '���Ϸ���а���';
comment on column SSFWXT_SSFWZTXX.CBBM
  is '�а첿��';
comment on column SSFWXT_SSFWZTXX.YQTS
  is '��������';
comment on column SSFWXT_SSFWZTXX.SQR
  is '������';
comment on column SSFWXT_SSFWZTXX.BSQR
  is '��������';
comment on column SSFWXT_SSFWZTXX.SJAH
  is '�漰����';
comment on column SSFWXT_SSFWZTXX.WTDL
  is 'ί�д���';
comment on column SSFWXT_SSFWZTXX.WTXL
  is 'ί��С��';
comment on column SSFWXT_SSFWZTXX.WSQK
  is '�������';
comment on column SSFWXT_SSFWZTXX.BQCCMC
  is '��ȫ�Ʋ�����';
comment on column SSFWXT_SSFWZTXX.DBCCMC
  is '�����Ʋ�����';
comment on column SSFWXT_SSFWZTXX.YSAJCBRRQ
  is '���Ͱ����а�������';
comment on column SSFWXT_SSFWZTXX.BLJSBZ
  is '���������־';
comment on column SSFWXT_SSFWZTXX.BJRQ
  is '�������';
comment on column SSFWXT_SSFWZTXX.BJFS
  is '��᷽ʽ';
comment on column SSFWXT_SSFWZTXX.DQZT
  is '��ǰ״̬';
comment on column SSFWXT_SSFWZTXX.SFTQGD
  is '�Ƿ�����鵵';
comment on column SSFWXT_SSFWZTXX.TQGDRQ
  is '����鵵����';
comment on column SSFWXT_SSFWZTXX.LCMC
  is '��������';
comment on column SSFWXT_SSFWZTXX.SFSCBJ
  is '�Ƿ�ɾ�����';
comment on column SSFWXT_SSFWZTXX.GDH
  is '�鵵��';
comment on column SSFWXT_SSFWZTXX.GDSJ
  is '�鵵ʱ��';
comment on column SSFWXT_SSFWZTXX.CFDD
  is '��ŵص�';
comment on column SSFWXT_SSFWZTXX.SWH
  is '��΢��';
comment on column SSFWXT_SSFWZTXX.BGQX
  is '��������';
comment on column SSFWXT_SSFWZTXX.MJ
  is '�ܼ�';
comment on column SSFWXT_SSFWZTXX.SJAJBH
  is '�漰�������';
comment on column SSFWXT_SSFWZTXX.ZJDQDW
  is '֤�ݵ�ȡ��λ';
comment on column SSFWXT_SSFWZTXX.ZJDQDWLXFS
  is '֤�ݵ�ȡ��λ��ϵ��ʽ';
comment on column SSFWXT_SSFWZTXX.DQDZ
  is '��ȡ��ַ';
comment on column SSFWXT_SSFWZTXX.XGDSRLXFS
  is '��ص�������ϵ��ʽ';
comment on column SSFWXT_SSFWZTXX.ZXRBS
  is 'ִ���˱�ʶ';
comment on column SSFWXT_SSFWZTXX.ZXR
  is 'ִ����';
comment on column SSFWXT_SSFWZTXX.ZXRQ
  is 'ִ������';
comment on column SSFWXT_SSFWZTXX.WBLYY
  is 'δ����ԭ��';
comment on column SSFWXT_SSFWZTXX.YCBBM
  is 'ԭ�а첿��';
comment on column SSFWXT_SSFWZTXX.GGFY
  is '�������';
comment on column SSFWXT_SSFWZTXX.YSSSZXRQ
  is '����������������';
comment on column SSFWXT_SSFWZTXX.SJBSRQ
  is '�漰��������';
comment on column SSFWXT_SSFWZTXX.SSZYQSRQ
  is '������Ժǩ������';
comment on column SSFWXT_SSFWZTXX.TJRQ
  is '�˾�����';
comment on column SSFWXT_SSFWZTXX.JMHLB
  is '���⻺���';
comment on column SSFWXT_SSFWZTXX.YSBLRRQ
  is '���Ͱ���������';
comment on column SSFWXT_SSFWZTXX.DSRTYSYZXDC
  is '������ͬ������ִ�ж���';
comment on column SSFWXT_SSFWZTXX.CCZL
  is '�Ʋ�����';
comment on column SSFWXT_SSFWZTXX.JMHBH
  is '���⻺���';
comment on column SSFWXT_SSFWZTXX.JMHJE
  is '���⻺���';
comment on column SSFWXT_SSFWZTXX.CJR
  is '�μ���';
comment on column SSFWXT_SSFWZTXX.CXSWLB
  is '��ѯ�������';
comment on column SSFWXT_SSFWZTXX.YJFGJLD
  is 'Լ�����ټ��쵼';
comment on column SSFWXT_SSFWZTXX.LXDH
  is '��ϵ�绰';
comment on column SSFWXT_SSFWZTXX.CLQK
  is '�������';
comment on column SSFWXT_SSFWZTXX.ZJZL
  is '֤������';
comment on column SSFWXT_SSFWZTXX.SFZHM
  is '���֤����';
comment on column SSFWXT_SSFWZTXX.MZ
  is '����';
comment on column SSFWXT_SSFWZTXX.XB
  is '�Ա�';
comment on column SSFWXT_SSFWZTXX.DZ
  is '��ַ';
comment on column SSFWXT_SSFWZTXX.CSRQ
  is '��������';
comment on column SSFWXT_SSFWZTXX.SFZLA
  is '�Ƿ�ת����';
comment on column SSFWXT_SSFWZTXX.ZLARQ
  is 'ת��������';
comment on column SSFWXT_SSFWZTXX.ZLAHAJBH
  is 'ת�����󰸼����';
comment on column SSFWXT_SSFWZTXX.ZLAHAH
  is 'ת�����󰸺�';

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
  is '������';
comment on column SSXT_BGR.FYBM
  is '��Ժ����';
comment on column SSXT_BGR.BGRBS
  is '�����˱�ʶ';
comment on column SSXT_BGR.AJBS
  is '������ʶ';
comment on column SSXT_BGR.YSSSDW
  is 'һ�����ϵ�λ';
comment on column SSXT_BGR.ESSSDW
  is '�������ϵ�λ';
comment on column SSXT_BGR.ZSSSDW
  is '�������ϵ�λ';
comment on column SSXT_BGR.LX
  is '����';
comment on column SSXT_BGR.XH
  is '���';
comment on column SSXT_BGR.XM
  is '����';
comment on column SSXT_BGR.BM
  is '����';
comment on column SSXT_BGR.XB
  is '�Ա�';
comment on column SSXT_BGR.GJ
  is '����';
comment on column SSXT_BGR.MZ
  is '����';
comment on column SSXT_BGR.CSRQ
  is '��������';
comment on column SSXT_BGR.SXFZSNL
  is '���ӷ���ʱ����';
comment on column SSXT_BGR.SFZJZL
  is '���֤������';
comment on column SSXT_BGR.SFZJHM
  is '���֤������';
comment on column SSXT_BGR.CSD
  is '������';
comment on column SSXT_BGR.YJ
  is 'ԭ��';
comment on column SSXT_BGR.HJSZD
  is '�������ڵ�';
comment on column SSXT_BGR.XZZHZZD
  is '��סַ����ס��';
comment on column SSXT_BGR.HYZK
  is '����״��';
comment on column SSXT_BGR.WHCD
  is '�Ļ��̶�';
comment on column SSXT_BGR.ZZMM
  is '������ò';
comment on column SSXT_BGR.LXDH
  is '��ϵ�绰';
comment on column SSXT_BGR.YZBM
  is '��������';
comment on column SSXT_BGR.ZY
  is 'ְҵ';
comment on column SSXT_BGR.SF
  is '���';
comment on column SSXT_BGR.JB
  is '����';
comment on column SSXT_BGR.JRSF
  is '�������';
comment on column SSXT_BGR.JRZW
  is '����ְ��';
comment on column SSXT_BGR.JRGBZL
  is '���˸ɲ�����';
comment on column SSXT_BGR.ZW
  is 'ְ��';
comment on column SSXT_BGR.BQDW
  is '��ǰ��λ';
comment on column SSXT_BGR.TSSF
  is '�������';
comment on column SSXT_BGR.TSSLHBL
  is '�����������';
comment on column SSXT_BGR.XBQSZRR
  is 'ϵ������������';

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
  is '�����˽᰸����';
comment on column SSXT_BGRJAZM.FYBM
  is '��Ժ����';
comment on column SSXT_BGRJAZM.BH
  is '���';
comment on column SSXT_BGRJAZM.ZM
  is '����';
comment on column SSXT_BGRJAZM.ZMZS
  is '����ע��';

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
  is '��������������';
comment on column SSXT_BGRLAZM.FYBM
  is '��Ժ����';
comment on column SSXT_BGRLAZM.BH
  is '���';
comment on column SSXT_BGRLAZM.ZM
  is '����';
comment on column SSXT_BGRLAZM.ZMZS
  is '����ע��';

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
  is '�������������';
comment on column SSXT_BGRLXQJ.FYBM
  is '��Ժ����';
comment on column SSXT_BGRLXQJ.BH
  is '���';
comment on column SSXT_BGRLXQJ.BGRBS
  is '�����˱�ʶ';
comment on column SSXT_BGRLXQJ.QJZL
  is '�������';
comment on column SSXT_BGRLXQJ.LXLY
  is '��������';

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
  is '������ǰ���Ӽ�';
comment on column SSXT_BGRQKLJ.FYBM
  is '��Ժ����';
comment on column SSXT_BGRQKLJ.BH
  is '���';
comment on column SSXT_BGRQKLJ.BGRBS
  is '�����˱�ʶ';
comment on column SSXT_BGRQKLJ.CFNR
  is '��������';
comment on column SSXT_BGRQKLJ.CFYY
  is '����ԭ��';
comment on column SSXT_BGRQKLJ.PCJG
  is '�д�����';
comment on column SSXT_BGRQKLJ.KSRQ
  is '��ʼ����';
comment on column SSXT_BGRQKLJ.JSRQ
  is '��������';

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
  is '���µ�����';
comment on column SSXT_MSDSR.FYBM
  is '��Ժ����';
comment on column SSXT_MSDSR.AJBS
  is '������ʶ';
comment on column SSXT_MSDSR.LX
  is '����';
comment on column SSXT_MSDSR.YSSSDW
  is 'һ�����ϵ�λ';
comment on column SSXT_MSDSR.ESSSDW
  is '�������ϵ�λ';
comment on column SSXT_MSDSR.ZSSSDW
  is '�������ϵ�λ';
comment on column SSXT_MSDSR.XMHDWMC
  is '������λ����';
comment on column SSXT_MSDSR.XB
  is '�Ա�';
comment on column SSXT_MSDSR.GJ
  is '����';
comment on column SSXT_MSDSR.MZ
  is '����';
comment on column SSXT_MSDSR.NL
  is '����';
comment on column SSXT_MSDSR.ZY
  is 'ְҵ';
comment on column SSXT_MSDSR.WHCD
  is '�Ļ��̶�';
comment on column SSXT_MSDSR.SFZJZL
  is '���֤������';
comment on column SSXT_MSDSR.SFZJHM
  is '���֤������';
comment on column SSXT_MSDSR.TSSLHBL
  is '�����������';
comment on column SSXT_MSDSR.ZZJGDM
  is '��֯��������';
comment on column SSXT_MSDSR.DWXZ
  is '��λ����';
comment on column SSXT_MSDSR.YZBM
  is '��������';
comment on column SSXT_MSDSR.LXDH
  is '��ϵ�绰';
comment on column SSXT_MSDSR.DZ
  is '��ַ';
comment on column SSXT_MSDSR.FDDBR
  is '����������';
comment on column SSXT_MSDSR.DBRZJZL
  is '������֤������';
comment on column SSXT_MSDSR.DBRZJHM
  is '������֤������';
comment on column SSXT_MSDSR.DLRXM1
  is '����������1';
comment on column SSXT_MSDSR.DLRZW1
  is '������ְ��1';
comment on column SSXT_MSDSR.DLRLX1
  is '����������1';
comment on column SSXT_MSDSR.DLRXM2
  is '����������2';
comment on column SSXT_MSDSR.DLRZW2
  is '������ְ��2';
comment on column SSXT_MSDSR.DLRLX2
  is '����������2';

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
  is '���¶��󰸼�';
comment on column SSXT_MSESAJ.FYBM
  is '��Ժ����';
comment on column SSXT_MSESAJ.AJBS
  is '������ʶ';
comment on column SSXT_MSESAJ.DJFY
  is '�ǼǷ�Ժ';
comment on column SSXT_MSESAJ.DJFYJB
  is '�ǼǷ�Ժ����';
comment on column SSXT_MSESAJ.YSFYCLR
  is 'ԭ��Ժ������';
comment on column SSXT_MSESAJ.ESFYCLR
  is '����Ժ������';
comment on column SSXT_MSESAJ.AJLBBS
  is '��������ʶ';
comment on column SSXT_MSESAJ.SPCX
  is '���г���';
comment on column SSXT_MSESAJ.AZ
  is '����';
comment on column SSXT_MSESAJ.DSRHB
  is '�����ˣ��ϲ���';
comment on column SSXT_MSESAJ.SPJS
  is '��������';
comment on column SSXT_MSESAJ.DJR
  is '�Ǽ���';
comment on column SSXT_MSESAJ.DJBM
  is '�Ǽǲ���';
comment on column SSXT_MSESAJ.DJRQ
  is '�Ǽ�����';
comment on column SSXT_MSESAJ.SSAJLX
  is '���߰�������';
comment on column SSXT_MSESAJ.YSXCPFY
  is 'ԭ��Ч���з�Ժ';
comment on column SSXT_MSESAJ.YSXAH
  is 'ԭ��Ч����';
comment on column SSXT_MSESAJ.TCSSRQ
  is '�����������';
comment on column SSXT_MSESAJ.SDYSFYYSAJRQ
  is '�յ�һ��Ժ���Ͱ�������';
comment on column SSXT_MSESAJ.LAAY
  is '��������';
comment on column SSXT_MSESAJ.LAAYBM
  is '�������ɱ���';
comment on column SSXT_MSESAJ.LAAYZS
  is '��������ע��';
comment on column SSXT_MSESAJ.JZSL
  is '��������';
comment on column SSXT_MSESAJ.BQFS
  is '��ȫ��ʽ';
comment on column SSXT_MSESAJ.WSQK
  is '�������';
comment on column SSXT_MSESAJ.ZJBQ
  is '֤�ݱ�ȫ';
comment on column SSXT_MSESAJ.SSBD
  is '���߱��';
comment on column SSXT_MSESAJ.YSSLF
  is 'Ӧ�������';
comment on column SSXT_MSESAJ.YJSLF
  is 'Ԥ�������';
comment on column SSXT_MSESAJ.JFRQ
  is '�ɷ�����';
comment on column SSXT_MSESAJ.JJ
  is '����';
comment on column SSXT_MSESAJ.JJJE
  is '�������';
comment on column SSXT_MSESAJ.MJ
  is '�⽻';
comment on column SSXT_MSESAJ.MJJE
  is '�⽻���';
comment on column SSXT_MSESAJ.HJ
  is '����';
comment on column SSXT_MSESAJ.HJJE
  is '�������';
comment on column SSXT_MSESAJ.JJAJLX
  is '������������';
comment on column SSXT_MSESAJ.SFJZDX
  is '˾����������';
comment on column SSXT_MSESAJ.SFJZDXLX
  is '˾��������������';
comment on column SSXT_MSESAJ.SSQQ
  is '��������';
comment on column SSXT_MSESAJ.SSLY
  is '��������';
comment on column SSXT_MSESAJ.BZ
  is '��ע';
comment on column SSXT_MSESAJ.BQAH
  is '��ȫ����';
comment on column SSXT_MSESAJ.SJHM
  is '�վݺ���';
comment on column SSXT_MSESAJ.BDLX
  is '�������';
comment on column SSXT_MSESAJ.BDJE
  is '��Ľ��';
comment on column SSXT_MSESAJ.BQFY
  is '��ȫ����';
comment on column SSXT_MSESAJ.FYJDFY
  is '��ҽ��������';
comment on column SSXT_MSESAJ.SJZSCQ
  is '�漰֪ʶ��Ȩ';
comment on column SSXT_MSESAJ.BQQFSJGB
  is '����Ȩ���漰����';
comment on column SSXT_MSESAJ.YSBDJE
  is 'ԭ���Ľ��(Ԫ)';
comment on column SSXT_MSESAJ.LABS
  is '������ʶ';
comment on column SSXT_MSESAJ.LARQ
  is '��������';
comment on column SSXT_MSESAJ.ESLAAH
  is '������������';
comment on column SSXT_MSESAJ.ESAJBH
  is '���󰸼����';

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
  is '��������Ǽ�';
comment on column SSXT_MSZSDJ.FYBM
  is '��Ժ����';
comment on column SSXT_MSZSDJ.AJBS
  is '������ʶ';
comment on column SSXT_MSZSDJ.DJFY
  is '�ǼǷ�Ժ';
comment on column SSXT_MSZSDJ.DJFYJB
  is '�ǼǷ�Ժ����';
comment on column SSXT_MSZSDJ.YSFYCLR
  is 'ԭ��Ժ������';
comment on column SSXT_MSZSDJ.ESFYCLR
  is '����Ժ������';
comment on column SSXT_MSZSDJ.AJLBBS
  is '��������ʶ';
comment on column SSXT_MSZSDJ.AJLBBSS
  is '��������ʶs';
comment on column SSXT_MSZSDJ.SPCX
  is '���г���';
comment on column SSXT_MSZSDJ.AZ
  is '����';
comment on column SSXT_MSZSDJ.DSRHB
  is '�����ˣ��ϲ���';
comment on column SSXT_MSZSDJ.SPJS
  is '��������';
comment on column SSXT_MSZSDJ.DJR
  is '�Ǽ���';
comment on column SSXT_MSZSDJ.DJBM
  is '�Ǽǲ���';
comment on column SSXT_MSZSDJ.DJRQ
  is '�Ǽ�����';
comment on column SSXT_MSZSDJ.AJLY
  is '������Դ';
comment on column SSXT_MSZSDJ.YSCPLX
  is 'ԭ���������';
comment on column SSXT_MSZSDJ.CDZSRQ
  is '�ö���������';
comment on column SSXT_MSZSDJ.CDZSFLWSBH
  is '�ö�������������';
comment on column SSXT_MSZSDJ.JDLADZSSQSCRQ
  is '�������������������������';
comment on column SSXT_MSZSDJ.YSXCPAY
  is 'ԭ��Ч���а���';
comment on column SSXT_MSZSDJ.YSXCPFY
  is 'ԭ��Ч���з�Ժ';
comment on column SSXT_MSZSDJ.YSXAH
  is 'ԭ��Ч����';
comment on column SSXT_MSZSDJ.YSXRQ
  is 'ԭ��Ч����';
comment on column SSXT_MSZSDJ.LAAY
  is '��������';
comment on column SSXT_MSZSDJ.LAAYBM
  is '�������ɱ���';
comment on column SSXT_MSZSDJ.LAAYZS
  is '��������ע��';
comment on column SSXT_MSZSDJ.WSQK
  is '�������';
comment on column SSXT_MSZSDJ.JZSL
  is '��������';
comment on column SSXT_MSZSDJ.KSJGMC
  is '���߻�������';
comment on column SSXT_MSZSDJ.TCKSRQ
  is '�����������';
comment on column SSXT_MSZSDJ.KSSBH
  is '��������';
comment on column SSXT_MSZSDJ.SSBDJE
  is '���߱�Ľ��';
comment on column SSXT_MSZSDJ.YSSLF
  is 'Ӧ�������';
comment on column SSXT_MSZSDJ.YJSLF
  is 'Ԥ�������';
comment on column SSXT_MSZSDJ.JFRQ
  is '�ɷ�����';
comment on column SSXT_MSZSDJ.SFJJ
  is '�Ƿ����';
comment on column SSXT_MSZSDJ.JJJE
  is '�������';
comment on column SSXT_MSZSDJ.SFMJ
  is '�Ƿ��⽻';
comment on column SSXT_MSZSDJ.MJJE
  is '�⽻���';
comment on column SSXT_MSZSDJ.SFHJ
  is '�Ƿ񻺽�';
comment on column SSXT_MSZSDJ.HJJE
  is '�������';
comment on column SSXT_MSZSDJ.JJAJLX
  is '������������';
comment on column SSXT_MSZSDJ.SFJZDX
  is '˾����������';
comment on column SSXT_MSZSDJ.SFJZDXLX
  is '˾��������������';
comment on column SSXT_MSZSDJ.SSQQ
  is '��������';
comment on column SSXT_MSZSDJ.SSLY
  is '��������';
comment on column SSXT_MSZSDJ.BZ
  is '��ע';
comment on column SSXT_MSZSDJ.SJHM
  is '�վݺ���';
comment on column SSXT_MSZSDJ.BDLX
  is '�������';
comment on column SSXT_MSZSDJ.BDJE
  is '��Ľ��';
comment on column SSXT_MSZSDJ.BQFY
  is '��ȫ����';
comment on column SSXT_MSZSDJ.FYJDFY
  is '��ҽ��������';
comment on column SSXT_MSZSDJ.SFSJZSCQ
  is '�Ƿ��漰֪ʶ��Ȩ';
comment on column SSXT_MSZSDJ.BQQFSJGB
  is '����Ȩ���漰����';
comment on column SSXT_MSZSDJ.YSBDJE
  is 'ԭ���Ľ��(Ԫ)';
comment on column SSXT_MSZSDJ.LABS
  is '������ʶ';
comment on column SSXT_MSZSDJ.LARQ
  is '��������';
comment on column SSXT_MSZSDJ.ESLAAH
  is '������������';
comment on column SSXT_MSZSDJ.ESAJBH
  is '���󰸼����';

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
  is '�о����';
comment on column SSXT_PJQK.FYBM
  is '��Ժ����';
comment on column SSXT_PJQK.BH
  is '���';
comment on column SSXT_PJQK.AJBS
  is '������ʶ';
comment on column SSXT_PJQK.PJQK
  is '�о����';
comment on column SSXT_PJQK.WZYY
  is '����ԭ��';
comment on column SSXT_PJQK.PCZX
  is '�д�����';
comment on column SSXT_PJQK.HQZX
  is '����ִ��';
comment on column SSXT_PJQK.PCZXN
  is '�д�������';
comment on column SSXT_PJQK.PCZXY
  is '�д�������';
comment on column SSXT_PJQK.PCHXN
  is '�д�������';
comment on column SSXT_PJQK.PCHXY
  is '�д�������';
comment on column SSXT_PJQK.FJXZL
  is '����������';
comment on column SSXT_PJQK.FJXZL2
  is '����������2';
comment on column SSXT_PJQK.BDZZQLN
  is '��������Ȩ����';
comment on column SSXT_PJQK.BDZZQLY
  is '��������Ȩ����';
comment on column SSXT_PJQK.FJSE
  is '��������';
comment on column SSXT_PJQK.DWFJSE
  is '��λ��������';
comment on column SSXT_PJQK.MSCCSE
  is 'û�ղƲ�����';
comment on column SSXT_PJQK.BDZZQLZS
  is '��������Ȩ������';
comment on column SSXT_PJQK.FDMSCLJG
  is '�������ߴ�����';
comment on column SSXT_PJQK.FDMSPCJE
  is '���������⳥���';
comment on column SSXT_PJQK.WCGP
  is 'ά�ָ���';
comment on column SSXT_PJQK.GPYY
  is '����ԭ��';
comment on column SSXT_PJQK.GPQK
  is '�������';
comment on column SSXT_PJQK.CPSX
  is '������Ч';
comment on column SSXT_PJQK.FHLX
  is '��������';
comment on column SSXT_PJQK.BHRQ
  is '��������';
comment on column SSXT_PJQK.HZFY
  is '��׼��Ժ';
comment on column SSXT_PJQK.HZRQ
  is '��׼����';

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
  is '�������';
comment on column SSXT_QSQK.FYBM
  is '��Ժ����';
comment on column SSXT_QSQK.QSBS
  is '���߱�ʶ';
comment on column SSXT_QSQK.AJBS
  is '������ʶ';
comment on column SSXT_QSQK.YRQ
  is '�Ѻ����';
comment on column SSXT_QSQK.YCS
  is '�Ѻ����';
comment on column SSXT_QSQK.FDMS
  is '��������';
comment on column SSXT_QSQK.FFSDCWJZ
  is '�Ƿ����ò����ֵ';
comment on column SSXT_QSQK.QZCSZL
  is 'ǿ�ƴ�ʩ����';
comment on column SSXT_QSQK.CQQZCSRQ
  is '��ȡǿ�ƴ�ʩ����';
comment on column SSXT_QSQK.BZR
  is '��֤��';
comment on column SSXT_QSQK.BZJE
  is '��֤���';
comment on column SSXT_QSQK.FZJEWFJS
  is '�������޷�����';
comment on column SSXT_QSQK.FZJE
  is '������';
comment on column SSXT_QSQK.ZFZ
  is '������';
comment on column SSXT_QSQK.ZLJ
  is '���ͽ�';
comment on column SSXT_QSQK.LF
  is '�۷�';
comment on column SSXT_QSQK.SZBF
  is '���ﲢ��';

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
  is 'ʵ���ļ�';
comment on column SSXT_STWJ.FYBM
  is '��Ժ����';
comment on column SSXT_STWJ.AJBS
  is '������ʶ';
comment on column SSXT_STWJ.BH
  is '���';
comment on column SSXT_STWJ.WJMC
  is '�ļ�����';
comment on column SSXT_STWJ.STWJM
  is 'ʵ���ļ���';

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
  is '���¶���Ǽ�';
comment on column SSXT_XSESDJ.FYBM
  is '��Ժ����';
comment on column SSXT_XSESDJ.AJBS
  is '������ʶ';
comment on column SSXT_XSESDJ.DJFY
  is '�ǼǷ�Ժ';
comment on column SSXT_XSESDJ.DJFYJB
  is '�ǼǷ�Ժ����';
comment on column SSXT_XSESDJ.YSFYCLR
  is 'ԭ��Ժ������';
comment on column SSXT_XSESDJ.ESFYCLR
  is '����Ժ������';
comment on column SSXT_XSESDJ.AJLBBS
  is '��������ʶ';
comment on column SSXT_XSESDJ.SPCX
  is '���г���';
comment on column SSXT_XSESDJ.AZ
  is '����';
comment on column SSXT_XSESDJ.DSRHB
  is '�����ˣ��ϲ���';
comment on column SSXT_XSESDJ.SFSPJS
  is '�Ƿ���������';
comment on column SSXT_XSESDJ.DJR
  is '�Ǽ���';
comment on column SSXT_XSESDJ.DJBM
  is '�Ǽǲ���';
comment on column SSXT_XSESDJ.DJRQ
  is '�Ǽ�����';
comment on column SSXT_XSESDJ.AJLX
  is '��������';
comment on column SSXT_XSESDJ.ESAJLY
  is '���󰸼���Դ';
comment on column SSXT_XSESDJ.TCS
  is '�����(��)������';
comment on column SSXT_XSESDJ.KSJG
  is '���߻���';
comment on column SSXT_XSESDJ.KSSBH
  is '��������';
comment on column SSXT_XSESDJ.JZSL
  is '��������';
comment on column SSXT_XSESDJ.YSFYYSAJRQ
  is 'һ��Ժ���Ͱ�������';
comment on column SSXT_XSESDJ.ESAJLX
  is '���󰸼�����';
comment on column SSXT_XSESDJ.YSFY
  is 'ԭ��Ժ';
comment on column SSXT_XSESDJ.YSAH
  is 'ԭ�󰸺�';
comment on column SSXT_XSESDJ.LAAY
  is '��������';
comment on column SSXT_XSESDJ.LAAYBM
  is '�������ɱ���';
comment on column SSXT_XSESDJ.LAAYZS
  is '��������ע��';
comment on column SSXT_XSESDJ.LAAY1
  is '��������1';
comment on column SSXT_XSESDJ.LAAY2
  is '��������2';
comment on column SSXT_XSESDJ.LAAY3
  is '��������3';
comment on column SSXT_XSESDJ.LAAY4
  is '��������4';
comment on column SSXT_XSESDJ.AJGK
  is '�����ſ�';
comment on column SSXT_XSESDJ.BZ
  is '��ע';
comment on column SSXT_XSESDJ.FDMSSS
  is '������������';
comment on column SSXT_XSESDJ.KSR
  is '������';
comment on column SSXT_XSESDJ.SJZSCQ
  is '�漰֪ʶ��Ȩ';
comment on column SSXT_XSESDJ.LABS
  is '������ʶ';
comment on column SSXT_XSESDJ.LARQ
  is '��������';
comment on column SSXT_XSESDJ.ESLAAH
  is '������������';
comment on column SSXT_XSESDJ.ESAJBH
  is '���󰸼����';

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
  is '��������Ǽ�';
comment on column SSXT_XSZSDJ.FYBM
  is '��Ժ����';
comment on column SSXT_XSZSDJ.AJBS
  is '������ʶ';
comment on column SSXT_XSZSDJ.DJFY
  is '�ǼǷ�Ժ';
comment on column SSXT_XSZSDJ.DJFYJB
  is '�ǼǷ�Ժ����';
comment on column SSXT_XSZSDJ.YSFYCLR
  is 'ԭ��Ժ������';
comment on column SSXT_XSZSDJ.ESFYCLR
  is '����Ժ������';
comment on column SSXT_XSZSDJ.AJLBBS
  is '��������ʶ';
comment on column SSXT_XSZSDJ.SPCX
  is '���г���';
comment on column SSXT_XSZSDJ.AZ
  is '����';
comment on column SSXT_XSZSDJ.DSRHB
  is '�����ˣ��ϲ���';
comment on column SSXT_XSZSDJ.SFSPJS
  is '�Ƿ���������';
comment on column SSXT_XSZSDJ.DJR
  is '�Ǽ���';
comment on column SSXT_XSZSDJ.DJBM
  is '�Ǽǲ���';
comment on column SSXT_XSZSDJ.DJRQ
  is '�Ǽ�����';
comment on column SSXT_XSZSDJ.AJLY
  is '������Դ';
comment on column SSXT_XSZSDJ.JDLAJXSSSCRI
  is '����������������';
comment on column SSXT_XSZSDJ.JDZSFLWSBH
  is '����������������';
comment on column SSXT_XSZSDJ.JDZSRQ
  is '������������';
comment on column SSXT_XSZSDJ.JZSL
  is '��������';
comment on column SSXT_XSZSDJ.YSXRQ
  is 'ԭ��Ч����';
comment on column SSXT_XSZSDJ.YSXCPAY
  is 'ԭ��Ч���а���';
comment on column SSXT_XSZSDJ.YSCPLX
  is 'ԭ���������';
comment on column SSXT_XSZSDJ.YSXCPFY
  is 'ԭ��Ч���з�Ժ';
comment on column SSXT_XSZSDJ.YSXAH
  is 'ԭ��Ч����';
comment on column SSXT_XSZSDJ.LAAY
  is '��������';
comment on column SSXT_XSZSDJ.LAAYBM
  is '�������ɱ���';
comment on column SSXT_XSZSDJ.LAAYZS
  is '��������ע��';
comment on column SSXT_XSZSDJ.LAAY1
  is '��������1';
comment on column SSXT_XSZSDJ.LAAY2
  is '��������2';
comment on column SSXT_XSZSDJ.LAAY3
  is '��������3';
comment on column SSXT_XSZSDJ.LAAY4
  is '��������4';
comment on column SSXT_XSZSDJ.AJGK
  is '�����ſ�';
comment on column SSXT_XSZSDJ.BZ
  is '��ע';
comment on column SSXT_XSZSDJ.SJZSCQ
  is '�漰֪ʶ��Ȩ';
comment on column SSXT_XSZSDJ.SFLA
  is '�Ƿ�����';
comment on column SSXT_XSZSDJ.LARQ
  is '��������';
comment on column SSXT_XSZSDJ.ESLAAH
  is '������������';
comment on column SSXT_XSZSDJ.ESAJBH
  is '���󰸼����';

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
  is '����������';
comment on column SSXT_XZDSR.FYBM
  is '��Ժ����';
comment on column SSXT_XZDSR.AJBS
  is '������ʶ';
comment on column SSXT_XZDSR.DSRBS
  is '�����˱�ʶ';
comment on column SSXT_XZDSR.LX
  is '����';
comment on column SSXT_XZDSR.YSSSDW
  is 'һ�����ϵ�λ';
comment on column SSXT_XZDSR.ESSSDW
  is '�������ϵ�λ';
comment on column SSXT_XZDSR.ZSSSDW
  is '�������ϵ�λ';
comment on column SSXT_XZDSR.XMHDWMC
  is '������λ����';
comment on column SSXT_XZDSR.XB
  is '�Ա�';
comment on column SSXT_XZDSR.GJ
  is '����';
comment on column SSXT_XZDSR.MZ
  is '����';
comment on column SSXT_XZDSR.NL
  is '����';
comment on column SSXT_XZDSR.ZY
  is 'ְҵ';
comment on column SSXT_XZDSR.WHCD
  is '�Ļ��̶�';
comment on column SSXT_XZDSR.SFZJZL
  is '���֤������';
comment on column SSXT_XZDSR.SFZJHM
  is '���֤������';
comment on column SSXT_XZDSR.TSSLHBL
  is '�����������';
comment on column SSXT_XZDSR.ZZJGDM
  is '��֯��������';
comment on column SSXT_XZDSR.DWXZ
  is '��λ����';
comment on column SSXT_XZDSR.YZBM
  is '��������';
comment on column SSXT_XZDSR.LXDH
  is '��ϵ�绰';
comment on column SSXT_XZDSR.DZ
  is '��ַ';
comment on column SSXT_XZDSR.FDDBR
  is '����������';
comment on column SSXT_XZDSR.DBRZJZL
  is '������֤������';
comment on column SSXT_XZDSR.DBRZJHM
  is '������֤������';
comment on column SSXT_XZDSR.DLRXM1
  is '����������1';
comment on column SSXT_XZDSR.DLRZW1
  is '������ְ��1';
comment on column SSXT_XZDSR.DLRLX1
  is '����������1';
comment on column SSXT_XZDSR.DLRXM2
  is '����������2';
comment on column SSXT_XZDSR.DLRZW2
  is '������ְ��2';
comment on column SSXT_XZDSR.DLRLX2
  is '����������2';

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
  is '�������󰸼�';
comment on column SSXT_XZESAJ.FYBM
  is '��Ժ����';
comment on column SSXT_XZESAJ.AJBS
  is '������ʶ';
comment on column SSXT_XZESAJ.DJFY
  is '�ǼǷ�Ժ';
comment on column SSXT_XZESAJ.DJFYJB
  is '�ǼǷ�Ժ����';
comment on column SSXT_XZESAJ.YSFYCLR
  is 'ԭ��Ժ������';
comment on column SSXT_XZESAJ.ESFYCLR
  is '����Ժ������';
comment on column SSXT_XZESAJ.AJLBBS
  is '��������ʶ';
comment on column SSXT_XZESAJ.SPCX
  is '���г���';
comment on column SSXT_XZESAJ.AZ
  is '����';
comment on column SSXT_XZESAJ.DSRHB
  is '�����ˣ��ϲ���';
comment on column SSXT_XZESAJ.SFSPJS
  is '�Ƿ���������';
comment on column SSXT_XZESAJ.DJR
  is '�Ǽ���';
comment on column SSXT_XZESAJ.DJBM
  is '�Ǽǲ���';
comment on column SSXT_XZESAJ.DJRQ
  is '�Ǽ�����';
comment on column SSXT_XZESAJ.SSAJLX
  is '���߰�������';
comment on column SSXT_XZESAJ.YSXCPFY
  is 'ԭ��Ч���з�Ժ';
comment on column SSXT_XZESAJ.YSXAH
  is 'ԭ��Ч����';
comment on column SSXT_XZESAJ.TCSSRQ
  is '�����������';
comment on column SSXT_XZESAJ.SDYSFYYSAJRQ
  is '�յ�һ��Ժ���Ͱ�������';
comment on column SSXT_XZESAJ.PCBD
  is '�⳥���';
comment on column SSXT_XZESAJ.LAAY
  is '��������';
comment on column SSXT_XZESAJ.LAAYBM
  is '�������ɱ���';
comment on column SSXT_XZESAJ.LAAYZS
  is '��������ע��';
comment on column SSXT_XZESAJ.TQXZPCFS
  is '���������⳥��ʽ';
comment on column SSXT_XZESAJ.WSQK
  is '�������';
comment on column SSXT_XZESAJ.JZSL
  is '��������';
comment on column SSXT_XZESAJ.YSSLF
  is 'Ӧ�������';
comment on column SSXT_XZESAJ.YJSLF
  is 'Ԥ�������';
comment on column SSXT_XZESAJ.JFRQ
  is '�ɷ�����';
comment on column SSXT_XZESAJ.SFJJ
  is '�Ƿ����';
comment on column SSXT_XZESAJ.JJJE
  is '�������';
comment on column SSXT_XZESAJ.SFMJ
  is '�Ƿ��⽻';
comment on column SSXT_XZESAJ.MJJE
  is '�⽻���';
comment on column SSXT_XZESAJ.SFHJ
  is '�Ƿ񻺽�';
comment on column SSXT_XZESAJ.HJJE
  is '�������';
comment on column SSXT_XZESAJ.SFCCBQ
  is '�Ƿ�Ʋ���ȫ';
comment on column SSXT_XZESAJ.SFZJBQ
  is '�Ƿ�֤�ݱ�ȫ';
comment on column SSXT_XZESAJ.JJAJLX
  is '������������';
comment on column SSXT_XZESAJ.SFJZDX
  is '˾����������';
comment on column SSXT_XZESAJ.SFJZDXLX
  is '˾��������������';
comment on column SSXT_XZESAJ.SSQQ
  is '��������';
comment on column SSXT_XZESAJ.SSLY
  is '��������';
comment on column SSXT_XZESAJ.BZ
  is '��ע';
comment on column SSXT_XZESAJ.QTSSF
  is '�������Ϸ�';
comment on column SSXT_XZESAJ.SJHM
  is '�վݺ���';
comment on column SSXT_XZESAJ.BDLX
  is '�������';
comment on column SSXT_XZESAJ.BDJE
  is '��Ľ��';
comment on column SSXT_XZESAJ.SFSJZSCQ
  is '�Ƿ��漰֪ʶ��Ȩ';
comment on column SSXT_XZESAJ.BQQFSJGB
  is '����Ȩ���漰����';
comment on column SSXT_XZESAJ.LABS
  is '������ʶ';
comment on column SSXT_XZESAJ.LARQ
  is '��������';
comment on column SSXT_XZESAJ.ESLAAH
  is '������������';
comment on column SSXT_XZESAJ.ESAJBH
  is '���󰸼����';

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
  is '�������󰸼�';
comment on column SSXT_XZZSAJ.FYBM
  is '��Ժ����';
comment on column SSXT_XZZSAJ.AJBS
  is '������ʶ';
comment on column SSXT_XZZSAJ.DJFY
  is '�ǼǷ�Ժ';
comment on column SSXT_XZZSAJ.DJFYJB
  is '�ǼǷ�Ժ����';
comment on column SSXT_XZZSAJ.YSFYCLR
  is 'ԭ��Ժ������';
comment on column SSXT_XZZSAJ.ESFYCLR
  is '����Ժ������';
comment on column SSXT_XZZSAJ.AJLBBS
  is '��������ʶ';
comment on column SSXT_XZZSAJ.SPCX
  is '���г���';
comment on column SSXT_XZZSAJ.AZ
  is '����';
comment on column SSXT_XZZSAJ.DSRHB
  is '�����ˣ��ϲ���';
comment on column SSXT_XZZSAJ.SPJS
  is '��������';
comment on column SSXT_XZZSAJ.DJR
  is '�Ǽ���';
comment on column SSXT_XZZSAJ.DJBM
  is '�Ǽǲ���';
comment on column SSXT_XZZSAJ.DJRQ
  is '�Ǽ�����';
comment on column SSXT_XZZSAJ.AJLY
  is '������Դ';
comment on column SSXT_XZZSAJ.YSCPLX
  is 'ԭ���������';
comment on column SSXT_XZZSAJ.YSXCPAY
  is 'ԭ��Ч���а���';
comment on column SSXT_XZZSAJ.YSXCPFY
  is 'ԭ��Ч���з�Ժ';
comment on column SSXT_XZZSAJ.YSXAH
  is 'ԭ��Ч����';
comment on column SSXT_XZZSAJ.YSXRQ
  is 'ԭ��Ч����';
comment on column SSXT_XZZSAJ.CDZSFLWSBH
  is '�ö�������������';
comment on column SSXT_XZZSAJ.KSJGHSQZSR
  is '���߻��ػ�����������';
comment on column SSXT_XZZSAJ.JZSLS
  is '��������s';
comment on column SSXT_XZZSAJ.TCKSRQ
  is '�����������';
comment on column SSXT_XZZSAJ.KSSBH
  is '��������';
comment on column SSXT_XZZSAJ.JZSL
  is '��������';
comment on column SSXT_XZZSAJ.LAAY
  is '��������';
comment on column SSXT_XZZSAJ.LAAYBM
  is '�������ɱ���';
comment on column SSXT_XZZSAJ.LAAYZS
  is '��������ע��';
comment on column SSXT_XZZSAJ.TQXZPCDFS
  is '���������⳥�ķ�ʽ';
comment on column SSXT_XZZSAJ.YSXPJQDDPCJE
  is 'ԭ��Ч�о�ȷ�����⳥���(Ԫ)';
comment on column SSXT_XZZSAJ.YSSLF
  is 'Ӧ�������';
comment on column SSXT_XZZSAJ.YJSLF
  is 'Ԥ�������';
comment on column SSXT_XZZSAJ.JFRQ
  is '�ɷ�����';
comment on column SSXT_XZZSAJ.SFJJ
  is '�Ƿ����';
comment on column SSXT_XZZSAJ.JJJE
  is '�������';
comment on column SSXT_XZZSAJ.SFMJ
  is '�Ƿ��⽻';
comment on column SSXT_XZZSAJ.MJJE
  is '�⽻���';
comment on column SSXT_XZZSAJ.SFHJ
  is '�Ƿ񻺽�';
comment on column SSXT_XZZSAJ.HJJE
  is '�������';
comment on column SSXT_XZZSAJ.JJAJLX
  is '������������';
comment on column SSXT_XZZSAJ.SFJZDX
  is '˾����������';
comment on column SSXT_XZZSAJ.SFJZDXLX
  is '˾��������������';
comment on column SSXT_XZZSAJ.SSQQ
  is '��������';
comment on column SSXT_XZZSAJ.SSLY
  is '��������';
comment on column SSXT_XZZSAJ.BZ
  is '��ע';
comment on column SSXT_XZZSAJ.QTSSF
  is '�������Ϸ�';
comment on column SSXT_XZZSAJ.SJHM
  is '�վݺ���';
comment on column SSXT_XZZSAJ.BDLX
  is '�������';
comment on column SSXT_XZZSAJ.BDJE
  is '��Ľ��';
comment on column SSXT_XZZSAJ.SFSJZSCQ
  is '�Ƿ��漰֪ʶ��Ȩ';
comment on column SSXT_XZZSAJ.BQQFSJGB
  is '����Ȩ���漰����';
comment on column SSXT_XZZSAJ.LABS
  is '������ʶ';
comment on column SSXT_XZZSAJ.LARQ
  is '��������';
comment on column SSXT_XZZSAJ.ESLAAH
  is '������������';
comment on column SSXT_XZZSAJ.ESAJBH
  is '���󰸼����';

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
  is 'ԭ���о����(���󡢸��ˡ��������)';
comment on column SSXT_YSPJQK.FYBM
  is '��Ժ����';
comment on column SSXT_YSPJQK.BH
  is '���';
comment on column SSXT_YSPJQK.AJBS
  is '������ʶ';
comment on column SSXT_YSPJQK.PJQK
  is '�о����';
comment on column SSXT_YSPJQK.WZYY
  is '����ԭ��';
comment on column SSXT_YSPJQK.PCZX
  is '�д�����';
comment on column SSXT_YSPJQK.HQZX
  is '����ִ��';
comment on column SSXT_YSPJQK.PCZXN
  is '�д�������';
comment on column SSXT_YSPJQK.PCZXY
  is '�д�������';
comment on column SSXT_YSPJQK.HXN
  is '������';
comment on column SSXT_YSPJQK.HXY
  is '������';
comment on column SSXT_YSPJQK.FJXZL
  is '����������';
comment on column SSXT_YSPJQK.FJXZL2
  is '����������2';
comment on column SSXT_YSPJQK.BDZZQLN
  is '��������Ȩ����';
comment on column SSXT_YSPJQK.BDZZQLY
  is '��������Ȩ����';
comment on column SSXT_YSPJQK.BDZZQLZS
  is '��������Ȩ������';
comment on column SSXT_YSPJQK.MSCCSE
  is 'û�ղƲ�����';
comment on column SSXT_YSPJQK.FJSE
  is '��������';
comment on column SSXT_YSPJQK.FDMSCLJG
  is '�������ߴ�����';
comment on column SSXT_YSPJQK.FDMSPCJE
  is '���������⳥���';
comment on column SSXT_YSPJQK.DWFJSE
  is '��λ��������';

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
  is 'ִ�а����ǼǱ�';
comment on column SSXT_ZXAJDJB.FYBM
  is '��Ժ����';
comment on column SSXT_ZXAJDJB.AJBS
  is '������ʶ';
comment on column SSXT_ZXAJDJB.XFBH
  is '�ŷñ��';
comment on column SSXT_ZXAJDJB.LCMC
  is '��������';
comment on column SSXT_ZXAJDJB.KSRQ
  is '��ʼ����';
comment on column SSXT_ZXAJDJB.JSRQ
  is '��������';
comment on column SSXT_ZXAJDJB.BM
  is '����';
comment on column SSXT_ZXAJDJB.XM
  is '����';

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
  is '���λ����¼��Ϣ';
comment on column SWHXT_LCHYJLXX.FYBM
  is '��Ժ����';
comment on column SWHXT_LCHYJLXX.XH
  is '���';
comment on column SWHXT_LCHYJLXX.SWHBS
  is '��ί���ʶ';
comment on column SWHXT_LCHYJLXX.ND
  is '���';
comment on column SWHXT_LCHYJLXX.NDDJCTL
  is '��ȵڼ�������';
comment on column SWHXT_LCHYJLXX.TLCS
  is '���۴���';
comment on column SWHXT_LCHYJLXX.ZCRBS
  is '�����˱�ʶ';
comment on column SWHXT_LCHYJLXX.ZCR
  is '������';
comment on column SWHXT_LCHYJLXX.CJWY
  is '�μ�ίԱ';
comment on column SWHXT_LCHYJLXX.CJRS
  is '�μ�����';
comment on column SWHXT_LCHYJLXX.QJWY
  is '���ίԱ';
comment on column SWHXT_LCHYJLXX.QJRS
  is '�������';
comment on column SWHXT_LCHYJLXX.JLRBS
  is '��¼�˱�ʶ';
comment on column SWHXT_LCHYJLXX.JLR
  is '��¼��';
comment on column SWHXT_LCHYJLXX.HYJL
  is '�����¼';
comment on column SWHXT_LCHYJLXX.HYJD
  is '�������';
comment on column SWHXT_LCHYJLXX.LXRY
  is '��ϯ��Ա';
comment on column SWHXT_LCHYJLXX.TLJSSJ
  is '���۽���ʱ��';
comment on column SWHXT_LCHYJLXX.HYDD
  is '����ص�';
comment on column SWHXT_LCHYJLXX.AJXZ
  is '��������';
comment on column SWHXT_LCHYJLXX.HYYT
  is '��������';
comment on column SWHXT_LCHYJLXX.GAYJ
  is '�����о�';
comment on column SWHXT_LCHYJLXX.AJLY
  is '������Դ';
comment on column SWHXT_LCHYJLXX.SWHYJCS
  is '��ί���о�����';
comment on column SWHXT_LCHYJLXX.JL
  is '����';
comment on column SWHXT_LCHYJLXX.JLXS
  is '������ʽ';
comment on column SWHXT_LCHYJLXX.JLZY
  is '����ժҪ';
comment on column SWHXT_LCHYJLXX.YHYTYJ
  is '�����ͥ���';
comment on column SWHXT_LCHYJLXX.SWHJDZY
  is '��ί�����ժҪ';
comment on column SWHXT_LCHYJLXX.XCGZ
  is '�γɹ���';
comment on column SWHXT_LCHYJLXX.ZM
  is '����';
comment on column SWHXT_LCHYJLXX.ZX
  is '����';
comment on column SWHXT_LCHYJLXX.FJX
  is '������';
comment on column SWHXT_LCHYJLXX.JCXM
  is '������Ŀ';
comment on column SWHXT_LCHYJLXX.ZRRBS
  is '�����˱�ʶ';
comment on column SWHXT_LCHYJLXX.ZRR
  is '������';
comment on column SWHXT_LCHYJLXX.HBRBS
  is '�㱨�˱�ʶ';
comment on column SWHXT_LCHYJLXX.HBR
  is '�㱨��';

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
  is 'ǩ�ּ�¼��Ϣ';
comment on column SWHXT_QZJLXX.FYBM
  is '��Ժ����';
comment on column SWHXT_QZJLXX.XH
  is '���';
comment on column SWHXT_QZJLXX.SWHBS
  is '��ί���ʶ';
comment on column SWHXT_QZJLXX.QZRBS
  is 'ǩ���˱�ʶ';
comment on column SWHXT_QZJLXX.QZRMC
  is 'ǩ��������';
comment on column SWHXT_QZJLXX.QZYJ
  is 'ǩ�����';
comment on column SWHXT_QZJLXX.QZRQ
  is 'ǩ������';

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
  is '��ί�����۸���';
comment on column SWHXT_SWHTLFJ.FYBM
  is '��Ժ����';
comment on column SWHXT_SWHTLFJ.XH
  is '���';
comment on column SWHXT_SWHTLFJ.SWHBS
  is '��ί���ʶ';
comment on column SWHXT_SWHTLFJ.CLLX
  is '��������';
comment on column SWHXT_SWHTLFJ.CLMC
  is '��������';
comment on column SWHXT_SWHTLFJ.GLBH
  is '�������';

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
  is '��ί��������Ϣ';
comment on column SWHXT_SWHZTXX.FYBM
  is '��Ժ����';
comment on column SWHXT_SWHZTXX.SWHBS
  is '��ί���ʶ';
comment on column SWHXT_SWHZTXX.SWHBH
  is '��ί����';
comment on column SWHXT_SWHZTXX.AJBS
  is '������ʶ';
comment on column SWHXT_SWHZTXX.CBRBS
  is '�ʱ��˱�ʶ';
comment on column SWHXT_SWHZTXX.CBR
  is '�ʱ���';
comment on column SWHXT_SWHZTXX.CBRQ
  is '�ʱ�����';
comment on column SWHXT_SWHZTXX.CBDW
  is '�ʱ���λ';
comment on column SWHXT_SWHZTXX.BPXM
  is '������Ŀ';
comment on column SWHXT_SWHZTXX.AJLX
  is '��������';
comment on column SWHXT_SWHZTXX.SJ
  is '��';
comment on column SWHXT_SWHZTXX.HJ
  is '����';
comment on column SWHXT_SWHZTXX.DJDWTYD
  is '����������Ҫ��';
comment on column SWHXT_SWHZTXX.TQLY
  is '��������';
comment on column SWHXT_SWHZTXX.TQTLSX
  is '������������';
comment on column SWHXT_SWHZTXX.APRQ
  is '��������';
comment on column SWHXT_SWHZTXX.SWHJDSJ
  is '��ί�����ʱ��';
comment on column SWHXT_SWHZTXX.HYJD
  is '�������';
comment on column SWHXT_SWHZTXX.JLRBS
  is '��¼�˱�ʶ';
comment on column SWHXT_SWHZTXX.JLR
  is '��¼��';
comment on column SWHXT_SWHZTXX.ZCRBS
  is '�����˱�ʶ';
comment on column SWHXT_SWHZTXX.ZCR
  is '������';
comment on column SWHXT_SWHZTXX.LXRY
  is '��ϯ��Ա';
comment on column SWHXT_SWHZTXX.BZ
  is '��ע';
comment on column SWHXT_SWHZTXX.SPR1BS
  is '������1��ʶ';
comment on column SWHXT_SWHZTXX.SPR1
  is '������1';
comment on column SWHXT_SWHZTXX.SPR1SFPZ
  is '������1�Ƿ���׼';
comment on column SWHXT_SWHZTXX.SPR1SPYJ
  is '������1�������';
comment on column SWHXT_SWHZTXX.SPR1SPRQ
  is '������1��������';
comment on column SWHXT_SWHZTXX.SPR2BS
  is '������2��ʶ';
comment on column SWHXT_SWHZTXX.SPR2
  is '������2';
comment on column SWHXT_SWHZTXX.SPR2SFPZ
  is '������2�Ƿ���׼';
comment on column SWHXT_SWHZTXX.SPR2SPYJ
  is '������2�������';
comment on column SWHXT_SWHZTXX.SPR2SPRQ
  is '������2��������';
comment on column SWHXT_SWHZTXX.SPR3BS
  is '������3��ʶ';
comment on column SWHXT_SWHZTXX.SPR3
  is '������3';
comment on column SWHXT_SWHZTXX.SPR3SFPZ
  is '������3�Ƿ���׼';
comment on column SWHXT_SWHZTXX.SPR3SPYJ
  is '������3�������';
comment on column SWHXT_SWHZTXX.SPR3SPRQ
  is '������3��������';
comment on column SWHXT_SWHZTXX.SPR4BS
  is '������4��ʶ';
comment on column SWHXT_SWHZTXX.SPR4
  is '������4';
comment on column SWHXT_SWHZTXX.SPR4SPRQ
  is '������4��������';
comment on column SWHXT_SWHZTXX.SPR4SPYJ
  is '������4�������';
comment on column SWHXT_SWHZTXX.YCQFRQ
  is 'Ժ��ǩ������';
comment on column SWHXT_SWHZTXX.APRBS
  is '�����˱�ʶ';
comment on column SWHXT_SWHZTXX.APR
  is '������';
comment on column SWHXT_SWHZTXX.SFFSAPR
  is '�Ƿ��Ͱ�����';
comment on column SWHXT_SWHZTXX.SFBYAP
  is '�Ƿ��谲��';
comment on column SWHXT_SWHZTXX.SFFSQZ
  is '�Ƿ���ǩ��';
comment on column SWHXT_SWHZTXX.JSRQ
  is '��������';
comment on column SWHXT_SWHZTXX.TLJG
  is '���۽��';
comment on column SWHXT_SWHZTXX.BYAPLY
  is '���谲������';
comment on column SWHXT_SWHZTXX.GDSJ
  is '�鵵ʱ��';

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
  is '���˵绰��';
comment on column TXLXT_GRDHB.FYBM
  is '��Ժ����';
comment on column TXLXT_GRDHB.BH
  is '���';
comment on column TXLXT_GRDHB.DHBZRBS
  is '�绰�����˱�ʶ';
comment on column TXLXT_GRDHB.DHBZRXM
  is '�绰����������';
comment on column TXLXT_GRDHB.FYMC
  is '��Ժ����';
comment on column TXLXT_GRDHB.XM
  is '����';
comment on column TXLXT_GRDHB.DH
  is '�绰';
comment on column TXLXT_GRDHB.TJSJ
  is '���ʱ��';
comment on column TXLXT_GRDHB.DW
  is '��λ';
comment on column TXLXT_GRDHB.DZ
  is '��ַ';
comment on column TXLXT_GRDHB.ZJ
  is '����';
comment on column TXLXT_GRDHB.QT
  is '����';
comment on column TXLXT_GRDHB.SSFZ
  is '��������';

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
  is '���˵绰������';
comment on column TXLXT_GRDHBFZ.FYBM
  is '��Ժ����';
comment on column TXLXT_GRDHBFZ.BH
  is '���';
comment on column TXLXT_GRDHBFZ.DHBZRBS
  is '�绰�����˱�ʶ';
comment on column TXLXT_GRDHBFZ.FZMC
  is '��������';
comment on column TXLXT_GRDHBFZ.FYMC
  is '��Ժ����';
comment on column TXLXT_GRDHBFZ.PXYXJ
  is '�������ȼ�';

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
  is '������Ϣ��';
comment on column TXLXT_LYXXB.FYBM
  is '��Ժ����';
comment on column TXLXT_LYXXB.LYBH
  is '���Ա��';
comment on column TXLXT_LYXXB.BMMC
  is '��������';
comment on column TXLXT_LYXXB.FYMC
  is '��Ժ����';
comment on column TXLXT_LYXXB.SSBM
  is '��������';
comment on column TXLXT_LYXXB.RYBS
  is '��Ա��ʶ';
comment on column TXLXT_LYXXB.RYXM
  is '��Ա����';
comment on column TXLXT_LYXXB.LYNR
  is '��������';
comment on column TXLXT_LYXXB.HFNR
  is '�ظ�����';
comment on column TXLXT_LYXXB.LYSJ
  is '����ʱ��';

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
  is '��Ϣ';
comment on column TXLXT_XX.FYBM
  is '��Ժ����';
comment on column TXLXT_XX.ZJ
  is '����';
comment on column TXLXT_XX.FYMC
  is '��Ժ����';
comment on column TXLXT_XX.BMMC
  is '��������';
comment on column TXLXT_XX.RYXMBS
  is '��Ա������ʶ';
comment on column TXLXT_XX.RYXM
  is '��Ա����';
comment on column TXLXT_XX.ZB
  is 'ְ��';
comment on column TXLXT_XX.BGSDH
  is '�칫�ҵ绰';
comment on column TXLXT_XX.FJH
  is '�ֻ���';
comment on column TXLXT_XX.ZZDH
  is 'סլ�绰';
comment on column TXLXT_XX.YDDH
  is '�ƶ��绰';
comment on column TXLXT_XX.CJRCJR
  is '������cjr';
comment on column TXLXT_XX.CJR
  is '������';
comment on column TXLXT_XX.CJRQ
  is '��������';
comment on column TXLXT_XX.ZHYCGXR
  is '���һ�θ�����';
comment on column TXLXT_XX.ZHYCGXRQ
  is '���һ�θ�������';
comment on column TXLXT_XX.ZHYCCXR
  is '���һ�β�ѯ��';
comment on column TXLXT_XX.ZHYCCXRQ
  is '���һ�β�ѯ����';
comment on column TXLXT_XX.CXCS
  is '��ѯ����';
comment on column TXLXT_XX.FJHFJH
  is '�����fjh';
comment on column TXLXT_XX.PX
  is '����';
comment on column TXLXT_XX.SFGKYDDH
  is '�Ƿ񹫿��ƶ��绰';
comment on column TXLXT_XX.SFGKZZDH
  is '�Ƿ񹫿�סլ�绰';
comment on column TXLXT_XX.CJRCJRS
  is '������cjrs';

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
  is '���ô𸴺�';
comment on column XFXT_CFDFH.FYBM
  is '��Ժ����';
comment on column XFXT_CFDFH.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_CFDFH.XH
  is '���';
comment on column XFXT_CFDFH.XFR
  is '�ŷ���';
comment on column XFXT_CFDFH.DSR
  is '������';
comment on column XFXT_CFDFH.BH
  is '���';
comment on column XFXT_CFDFH.RQ
  is '����';
comment on column XFXT_CFDFH.YJ
  is '���';

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
  is '���ýӴ��ظ���';
comment on column XFXT_CFJDHFD.FYBM
  is '��Ժ����';
comment on column XFXT_CFJDHFD.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_CFJDHFD.XH
  is '���';
comment on column XFXT_CFJDHFD.WDBH
  is '�ĵ����';
comment on column XFXT_CFJDHFD.SSR
  is '������';
comment on column XFXT_CFJDHFD.DHHM
  is '�绰����';
comment on column XFXT_CFJDHFD.BSSR
  is '��������';
comment on column XFXT_CFJDHFD.YPSJ
  is 'ԭ��ʱ��';
comment on column XFXT_CFJDHFD.AJXZ
  is '��������';
comment on column XFXT_CFJDHFD.YPAH
  is 'ԭ�а���';
comment on column XFXT_CFJDHFD.YPHYT
  is 'ԭ�к���ͥ';
comment on column XFXT_CFJDHFD.LXR
  is '��ϵ��';
comment on column XFXT_CFJDHFD.XFLXR
  is '�ŷ���ϵ��';
comment on column XFXT_CFJDHFD.XFLXDH
  is '�ŷ���ϵ�绰';
comment on column XFXT_CFJDHFD.YYJDSJ
  is 'ԤԼ�Ӵ�ʱ��';
comment on column XFXT_CFJDHFD.JDDD
  is '�Ӵ��ص�';
comment on column XFXT_CFJDHFD.JFCY
  is '�ӷó�Ա';
comment on column XFXT_CFJDHFD.CLYJ
  is '�������';
comment on column XFXT_CFJDHFD.SQRYJ
  is '���������';

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
  is '���ýӴ�֪ͨ��';
comment on column XFXT_CFJDTZD.FYBM
  is '��Ժ����';
comment on column XFXT_CFJDTZD.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_CFJDTZD.XH
  is '���';
comment on column XFXT_CFJDTZD.BH
  is '���';
comment on column XFXT_CFJDTZD.YSYG
  is 'ԭ��ԭ��';
comment on column XFXT_CFJDTZD.YSBG
  is 'ԭ�󱻸�';
comment on column XFXT_CFJDTZD.YPAH
  is 'ԭ�а���';
comment on column XFXT_CFJDTZD.YHYT
  is 'ԭ����ͥ';
comment on column XFXT_CFJDTZD.JASJ
  is '�᰸ʱ��';
comment on column XFXT_CFJDTZD.SSR
  is '������';
comment on column XFXT_CFJDTZD.DH
  is '�绰';
comment on column XFXT_CFJDTZD.BSSR
  is '��������';
comment on column XFXT_CFJDTZD.XFFGBS
  is '�ŷ÷��ٱ�ʶ';
comment on column XFXT_CFJDTZD.XFFG
  is '�ŷ÷���';
comment on column XFXT_CFJDTZD.TZRQ
  is '֪ͨ����';

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
  is '������¼';
comment on column XFXT_CZJL.FYBM
  is '��Ժ����';
comment on column XFXT_CZJL.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_CZJL.XH
  is '���';
comment on column XFXT_CZJL.JDBH
  is '�ڵ���';
comment on column XFXT_CZJL.JDMC
  is '�ڵ�����';
comment on column XFXT_CZJL.FSRBS
  is '�����˱�ʶ';
comment on column XFXT_CZJL.FSR
  is '������';
comment on column XFXT_CZJL.FSSJ
  is '����ʱ��';
comment on column XFXT_CZJL.JSRBS
  is '�����˱�ʶ';
comment on column XFXT_CZJL.JSR
  is '������';
comment on column XFXT_CZJL.JSSJ
  is '����ʱ��';
comment on column XFXT_CZJL.FSBZ
  is '���ͱ�־';
comment on column XFXT_CZJL.XHS
  is '���s';
comment on column XFXT_CZJL.SFJJ
  is '�Ƿ����';
comment on column XFXT_CZJL.SFSC
  is '�Ƿ��ղ�';
comment on column XFXT_CZJL.SFCL
  is '�Ƿ���';

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
  is '�����ŷõǼ�';
comment on column XFXT_LCXFDJ.FYBM
  is '��Ժ����';
comment on column XFXT_LCXFDJ.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_LCXFDJ.XH
  is '���';
comment on column XFXT_LCXFDJ.XFSJ
  is '�ŷ�ʱ��';
comment on column XFXT_LCXFDJ.XFCS
  is '�ŷô���';
comment on column XFXT_LCXFDJ.SFJTF
  is '�Ƿ����';
comment on column XFXT_LCXFDJ.LFRS
  is '��������';
comment on column XFXT_LCXFDJ.SFGJF
  is '�Ƿ������';
comment on column XFXT_LCXFDJ.GJFRS
  is '����������';
comment on column XFXT_LCXFDJ.SFLDJD
  is '�Ƿ��쵼�Ӵ�';
comment on column XFXT_LCXFDJ.JDR
  is '�Ӵ���';
comment on column XFXT_LCXFDJ.CLJG
  is '������';
comment on column XFXT_LCXFDJ.FYQK
  is '��ӳ���';
comment on column XFXT_LCXFDJ.NH
  is '���';
comment on column XFXT_LCXFDJ.AZ
  is '����';
comment on column XFXT_LCXFDJ.HS
  is '����';
comment on column XFXT_LCXFDJ.BZ
  is '��ע';
comment on column XFXT_LCXFDJ.ZFLB
  is '�ط����';
comment on column XFXT_LCXFDJ.ZFYJ
  is '�ط����';
comment on column XFXT_LCXFDJ.SFYJF
  is '�Ƿ�Խ����';

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
  is '�����ŷ��漰��Ժ';
comment on column XFXT_LCXFSJFY.FYBM
  is '��Ժ����';
comment on column XFXT_LCXFSJFY.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_LCXFSJFY.XH
  is '���';
comment on column XFXT_LCXFSJFY.FYMC
  is '��Ժ����';
comment on column XFXT_LCXFSJFY.XFRQ
  is '�ŷ�����';
comment on column XFXT_LCXFSJFY.ZFRQ
  is '�ط�����';
comment on column XFXT_LCXFSJFY.CLJG
  is '�������';
comment on column XFXT_LCXFSJFY.CLR
  is '������';
comment on column XFXT_LCXFSJFY.XFCS
  is '�ŷô���';

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
  is '��֤֪ͨ��';
comment on column XFXT_TZTZS.FYBM
  is '��Ժ����';
comment on column XFXT_TZTZS.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_TZTZS.XH
  is '���';
comment on column XFXT_TZTZS.WDBH
  is '�ĵ����';
comment on column XFXT_TZTZS.TZDX
  is '֪ͨ����';
comment on column XFXT_TZTZS.YG
  is 'ԭ��';
comment on column XFXT_TZTZS.BG
  is '����';
comment on column XFXT_TZTZS.BFPJDSR
  is '�����о�������';
comment on column XFXT_TZTZS.CDJG
  is '�ö�����';
comment on column XFXT_TZTZS.SXWSBH
  is '��Ч������';
comment on column XFXT_TZTZS.SXWSLB
  is '��Ч�������';
comment on column XFXT_TZTZS.TZSJ
  is '��֤ʱ��';
comment on column XFXT_TZTZS.TZDD
  is '��֤�ص�';
comment on column XFXT_TZTZS.TZRQ
  is '֪ͨ����';

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
  is '�ŷõ����˼�¼';
comment on column XFXT_XFDSRJL.FYBM
  is '��Ժ����';
comment on column XFXT_XFDSRJL.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_XFDSRJL.XH
  is '���';
comment on column XFXT_XFDSRJL.SSDW
  is '���ϵ�λ';
comment on column XFXT_XFDSRJL.MC
  is '����';
comment on column XFXT_XFDSRJL.DWFZR
  is '��λ������';
comment on column XFXT_XFDSRJL.DWSYZ
  is '��λ������';
comment on column XFXT_XFDSRJL.XB
  is '�Ա�';
comment on column XFXT_XFDSRJL.NL
  is '����';
comment on column XFXT_XFDSRJL.MZ
  is '����';
comment on column XFXT_XFDSRJL.SF
  is '���';
comment on column XFXT_XFDSRJL.WHCD
  is '�Ļ��̶�';
comment on column XFXT_XFDSRJL.DZ
  is '��ַ';
comment on column XFXT_XFDSRJL.CSRQ
  is '��������';
comment on column XFXT_XFDSRJL.BZ
  is '��ע';
comment on column XFXT_XFDSRJL.CS
  is '����';
comment on column XFXT_XFDSRJL.PJQK
  is '�о����';
comment on column XFXT_XFDSRJL.WZYY
  is '����ԭ��';
comment on column XFXT_XFDSRJL.SFBDZZQLZS
  is '�Ƿ��������Ȩ������';
comment on column XFXT_XFDSRJL.ZXLX
  is '��������';
comment on column XFXT_XFDSRJL.XQN
  is '������';
comment on column XFXT_XFDSRJL.XQY
  is '������';
comment on column XFXT_XFDSRJL.XQR
  is '������';
comment on column XFXT_XFDSRJL.HXQN
  is '��������';
comment on column XFXT_XFDSRJL.HXQY
  is '��������';
comment on column XFXT_XFDSRJL.HXQR
  is '��������';
comment on column XFXT_XFDSRJL.FJX1
  is '������1';
comment on column XFXT_XFDSRJL.FJX2
  is '������2';
comment on column XFXT_XFDSRJL.MSCCJE
  is '���²Ʋ����';
comment on column XFXT_XFDSRJL.FJ
  is '����';
comment on column XFXT_XFDSRJL.BDZZQLN
  is '��������Ȩ�� ��';
comment on column XFXT_XFDSRJL.BDZZQLY
  is '��������Ȩ�� ��';
comment on column XFXT_XFDSRJL.BDZZQLR
  is '��������Ȩ�� ��';
comment on column XFXT_XFDSRJL.FDMSQK
  is '����û�����';
comment on column XFXT_XFDSRJL.FDMSJE
  is '����û�ս��';
comment on column XFXT_XFDSRJL.LXFS
  is '��ϵ��ʽ';
comment on column XFXT_XFDSRJL.SFRDDB
  is '�Ƿ��˴����';
comment on column XFXT_XFDSRJL.SFZXWY
  is '�Ƿ���ЭίԱ';
comment on column XFXT_XFDSRJL.SFZMRS
  is '�Ƿ�֪����ʿ';
comment on column XFXT_XFDSRJL.JZD
  is '��ס��';
comment on column XFXT_XFDSRJL.PJQKHB
  is '�о�������ϲ���';

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
  is '�ŷûظ���';
comment on column XFXT_XFHFH.FYBM
  is '��Ժ����';
comment on column XFXT_XFHFH.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_XFHFH.XH
  is '���';
comment on column XFXT_XFHFH.WDBH
  is '�ĵ����';
comment on column XFXT_XFHFH.XFR
  is '�ŷ���';
comment on column XFXT_XFHFH.YG
  is 'ԭ��';
comment on column XFXT_XFHFH.BG
  is '����';

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
  is '�ŷýӴ�����';
comment on column XFXT_XFJDAP.FYBM
  is '��Ժ����';
comment on column XFXT_XFJDAP.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_XFJDAP.XH
  is '���';
comment on column XFXT_XFJDAP.SXH
  is '˳���';
comment on column XFXT_XFJDAP.ND
  is '���';
comment on column XFXT_XFJDAP.HS
  is '����';
comment on column XFXT_XFJDAP.JDRBS
  is '�Ӵ��˱�ʶ';
comment on column XFXT_XFJDAP.JDR
  is '�Ӵ���';
comment on column XFXT_XFJDAP.KSSJ
  is '��ʼʱ��';
comment on column XFXT_XFJDAP.KHSJ
  is '����ʱ��';
comment on column XFXT_XFJDAP.XFAH
  is '�ŷð���';
comment on column XFXT_XFJDAP.JDDD
  is '�Ӵ��ص�';
comment on column XFXT_XFJDAP.DJRQ
  is '�Ǽ�����';
comment on column XFXT_XFJDAP.DJR
  is '�Ǽ���';
comment on column XFXT_XFJDAP.BZ
  is '��ע';
comment on column XFXT_XFJDAP.LFRXM
  is '����������';
comment on column XFXT_XFJDAP.CJRY
  is '�μ���Ա';

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
  is '�ŷýӴ�������';
comment on column XFXT_XFJDSPB.FYBM
  is '��Ժ����';
comment on column XFXT_XFJDSPB.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_XFJDSPB.XH
  is '���';
comment on column XFXT_XFJDSPB.BH
  is '���';
comment on column XFXT_XFJDSPB.LXLFR
  is '����������';
comment on column XFXT_XFJDSPB.YSAH
  is 'ԭ�󰸺�';
comment on column XFXT_XFJDSPB.YSFY
  is 'ԭ��Ժ';
comment on column XFXT_XFJDSPB.CBRYJ
  is '�а������';
comment on column XFXT_XFJDSPB.FYNR
  is '��ӳ����';
comment on column XFXT_XFJDSPB.SQLY
  is '��������';
comment on column XFXT_XFJDSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column XFXT_XFJDSPB.JCSPR
  is '�ֳ�������';
comment on column XFXT_XFJDSPB.JCSFPZ
  is '�ֳ��Ƿ���׼';
comment on column XFXT_XFJDSPB.JCSPYJ
  is '�ֳ��������';
comment on column XFXT_XFJDSPB.JCSPRQ
  is '�ֳ���������';
comment on column XFXT_XFJDSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column XFXT_XFJDSPB.YCSPR
  is 'Ժ��������';
comment on column XFXT_XFJDSPB.YCSFPZ
  is 'Ժ���Ƿ���׼';
comment on column XFXT_XFJDSPB.YCSPYJ
  is 'Ժ���������';
comment on column XFXT_XFJDSPB.YCSPRQ
  is 'Ժ����������';
comment on column XFXT_XFJDSPB.JDLD
  is '�Ӵ��쵼';

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
  is '�ŷ�������Ϣ';
comment on column XFXT_XFLCXX.FYBM
  is '��Ժ����';
comment on column XFXT_XFLCXX.LCBH
  is '���̱��';
comment on column XFXT_XFLCXX.LCMC
  is '��������';
comment on column XFXT_XFLCXX.JCTJ
  is '�������';
comment on column XFXT_XFLCXX.TSTS
  is '��ʾ����';
comment on column XFXT_XFLCXX.ZRRBS
  is '�����˱�ʶ';
comment on column XFXT_XFLCXX.ZRR
  is '������';

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
  is '�ŷ���־��¼';
comment on column XFXT_XFRZJL.FYBM
  is '��Ժ����';
comment on column XFXT_XFRZJL.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_XFRZJL.XH
  is '���';
comment on column XFXT_XFRZJL.LCMC
  is '��������';
comment on column XFXT_XFRZJL.KSRQ
  is '��ʼ����';
comment on column XFXT_XFRZJL.JSRQ
  is '��������';
comment on column XFXT_XFRZJL.BM
  is '����';
comment on column XFXT_XFRZJL.RYBS
  is '��Ա��ʶ';
comment on column XFXT_XFRZJL.RYXM
  is '��Ա����';

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
  is '�ŷ��漰����';
comment on column XFXT_XFSJAH.FYBM
  is '��Ժ����';
comment on column XFXT_XFSJAH.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_XFSJAH.XH
  is '���';
comment on column XFXT_XFSJAH.SJ
  is 'ʱ��';
comment on column XFXT_XFSJAH.YSFY
  is 'ԭ��Ժ';
comment on column XFXT_XFSJAH.NH
  is '���';
comment on column XFXT_XFSJAH.FYJC
  is '��Ժ���';
comment on column XFXT_XFSJAH.AZ
  is '����';
comment on column XFXT_XFSJAH.HS
  is '����';
comment on column XFXT_XFSJAH.FH
  is '����';
comment on column XFXT_XFSJAH.AJZT
  is '����״̬';

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
  is '�ŷ�ʵ���ļ�';
comment on column XFXT_XFSTWJ.FYBM
  is '��Ժ����';
comment on column XFXT_XFSTWJ.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_XFSTWJ.XH
  is '���';
comment on column XFXT_XFSTWJ.WJMC
  is '�ļ�����';
comment on column XFXT_XFSTWJ.STWJM
  is 'ʵ���ļ���';

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
  is '�ŷ����������';
comment on column XFXT_XFYQSQB.FYBM
  is '��Ժ����';
comment on column XFXT_XFYQSQB.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_XFYQSQB.XH
  is '���';
comment on column XFXT_XFYQSQB.WDBH
  is '�ĵ����';
comment on column XFXT_XFYQSQB.SJ
  is 'ʱ��';
comment on column XFXT_XFYQSQB.JTDD
  is '��̸�ص�';
comment on column XFXT_XFYQSQB.JTRBS
  is '��̸�˱�ʶ';
comment on column XFXT_XFYQSQB.JTR
  is '��̸��';
comment on column XFXT_XFYQSQB.SJYBS
  is '���Ա��ʶ';
comment on column XFXT_XFYQSQB.SJY
  is '���Ա';
comment on column XFXT_XFYQSQB.LFR
  is '������';
comment on column XFXT_XFYQSQB.ZCR
  is '�ڳ���';
comment on column XFXT_XFYQSQB.JTJG
  is '��̸���';
comment on column XFXT_XFYQSQB.BZ
  is '��ע';

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
  is '�ŷ�ת����¼';
comment on column XFXT_XFZFJL.FYBM
  is '��Ժ����';
comment on column XFXT_XFZFJL.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_XFZFJL.XH
  is '���';
comment on column XFXT_XFZFJL.FSFYMC
  is '���ͷ�Ժ����';
comment on column XFXT_XFZFJL.JSFYMC
  is '���շ�Ժ����';
comment on column XFXT_XFZFJL.FSSJ
  is '����ʱ��';
comment on column XFXT_XFZFJL.XXFH
  is '���ŷú�';
comment on column XFXT_XFZFJL.JSRQ
  is '��������';
comment on column XFXT_XFZFJL.JSRBS
  is '�����˱�ʶ';
comment on column XFXT_XFZFJL.JSR
  is '������';

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
  is '�ŷ�������Ϣ';
comment on column XFXT_XFZTXX.FYBM
  is '��Ժ����';
comment on column XFXT_XFZTXX.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_XFZTXX.AJLB
  is '�������';
comment on column XFXT_XFZTXX.BT
  is '����';
comment on column XFXT_XFZTXX.BH
  is '���';
comment on column XFXT_XFZTXX.NH
  is '���';
comment on column XFXT_XFZTXX.FYJC
  is '��Ժ���';
comment on column XFXT_XFZTXX.AZ
  is '����';
comment on column XFXT_XFZTXX.HS
  is '����';
comment on column XFXT_XFZTXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column XFXT_XFZTXX.DJR
  is '�Ǽ���';
comment on column XFXT_XFZTXX.DJRQ
  is '�Ǽ�����';
comment on column XFXT_XFZTXX.LAAY
  is '��������';
comment on column XFXT_XFZTXX.CBSPT
  is '�а�����ͥ';
comment on column XFXT_XFZTXX.XFLY
  is '�ŷ���Դ';
comment on column XFXT_XFZTXX.XFSY
  is '�ŷ�����';
comment on column XFXT_XFZTXX.SFLM
  is '�Ƿ�����';
comment on column XFXT_XFZTXX.SFSJJGJB
  is '�Ƿ��ϼ����ؽ���';
comment on column XFXT_XFZTXX.JBDW
  is '���쵥λ';
comment on column XFXT_XFZTXX.JBLDPSNR
  is '�����쵼��ʾ����';
comment on column XFXT_XFZTXX.SFXFZJ
  is '�Ƿ��ŷ��ս�';
comment on column XFXT_XFZTXX.SFYJWK
  is '�Ƿ��ƽ��ȿ�';
comment on column XFXT_XFZTXX.SSDQ
  is '��������';
comment on column XFXT_XFZTXX.QSSJ
  is 'ǩ��ʱ��';
comment on column XFXT_XFZTXX.SFHFBLJG
  is '�Ƿ�ظ�������';
comment on column XFXT_XFZTXX.BLFS
  is '����ʽ';
comment on column XFXT_XFZTXX.AJZT
  is '����״̬';
comment on column XFXT_XFZTXX.AJCBR
  is '�����а���';
comment on column XFXT_XFZTXX.WTLX
  is '��������';
comment on column XFXT_XFZTXX.FYWTSJFY
  is '��ӳ�����漰��Ժ';
comment on column XFXT_XFZTXX.SJBM
  is '�漰����';
comment on column XFXT_XFZTXX.JDRBS
  is '�Ӵ��˱�ʶ';
comment on column XFXT_XFZTXX.JDR
  is '�Ӵ���';
comment on column XFXT_XFZTXX.SJWT
  is '�漰����';
comment on column XFXT_XFZTXX.ZCDD
  is 'ת���ص�';
comment on column XFXT_XFZTXX.SYNR
  is '��������';
comment on column XFXT_XFZTXX.CBRBS
  is '�а��˱�ʶ';
comment on column XFXT_XFZTXX.CBR
  is '�а���';
comment on column XFXT_XFZTXX.FYZYNR
  is '��ӳ��Ҫ����';
comment on column XFXT_XFZTXX.SJSYAH
  is '�漰���а���';
comment on column XFXT_XFZTXX.SXFY
  is '��Ч��Ժ';
comment on column XFXT_XFZTXX.SJSXAH
  is '�漰��Ч����';
comment on column XFXT_XFZTXX.SFJA
  is '�Ƿ�᰸';
comment on column XFXT_XFZTXX.JARQ
  is '�᰸����';
comment on column XFXT_XFZTXX.JAFS
  is '�᰸��ʽ';
comment on column XFXT_XFZTXX.BLQK
  is '�������';
comment on column XFXT_XFZTXX.LDPSNR
  is '�쵼��ʾ����';
comment on column XFXT_XFZTXX.JABZ
  is '�᰸��ע';
comment on column XFXT_XFZTXX.DSR
  is '������';
comment on column XFXT_XFZTXX.BZ
  is '��ע';
comment on column XFXT_XFZTXX.XFCS
  is '�ŷô���';
comment on column XFXT_XFZTXX.SFXS
  is '�Ƿ�Ϣ��';
comment on column XFXT_XFZTXX.SFJZ
  is '�Ƿ����';
comment on column XFXT_XFZTXX.JZJE
  is '�������';
comment on column XFXT_XFZTXX.ZLAAH
  is 'ת��������';
comment on column XFXT_XFZTXX.ZLARQ
  is 'ת��������';
comment on column XFXT_XFZTXX.SFBA
  is '�Ƿ����';
comment on column XFXT_XFZTXX.ZLABH
  is 'ת�������';
comment on column XFXT_XFZTXX.XFFYJC
  is '�ŷ÷�Ժ���';
comment on column XFXT_XFZTXX.XJLY
  is '�ż���Դ';
comment on column XFXT_XFZTXX.SFGJF
  is '�Ƿ������';
comment on column XFXT_XFZTXX.GJFRS
  is '����������';
comment on column XFXT_XFZTXX.SFSGCL
  is '�Ƿ��ܹ�����';
comment on column XFXT_XFZTXX.SGCLRS
  is '�ܹ���������';
comment on column XFXT_XFZTXX.JDAPBH
  is '�Ӵ����ű��';
comment on column XFXT_XFZTXX.SFSQJD
  is '�Ƿ�����Ӵ�';
comment on column XFXT_XFZTXX.SFQF
  is '�Ƿ�ǲ��';
comment on column XFXT_XFZTXX.SFYCJD
  is '�Ƿ�Ժ���Ӵ�';
comment on column XFXT_XFZTXX.SFTCJD
  is '�Ƿ�ͥ���Ӵ�';
comment on column XFXT_XFZTXX.XFRS
  is '�ŷ�����';
comment on column XFXT_XFZTXX.LMRS
  is '��������';
comment on column XFXT_XFZTXX.BLJSQX
  is '�����������';
comment on column XFXT_XFZTXX.SFYJF
  is '�Ƿ�Խ����';
comment on column XFXT_XFZTXX.SFSQJDS
  is '�Ƿ�����Ӵ�s';
comment on column XFXT_XFZTXX.JDRZW
  is '�Ӵ���ְ��';
comment on column XFXT_XFZTXX.XFZT
  is '�ŷ�״̬';
comment on column XFXT_XFZTXX.CLYJ
  is '�������';
comment on column XFXT_XFZTXX.CFSFJA
  is '�����Ƿ�᰸';
comment on column XFXT_XFZTXX.CFJARQ
  is '���ý᰸����';
comment on column XFXT_XFZTXX.CFNH
  is '�������';
comment on column XFXT_XFZTXX.CFFYJC
  is '���÷�Ժ���';
comment on column XFXT_XFZTXX.CFAZ
  is '���ð���';
comment on column XFXT_XFZTXX.CFHS
  is '���ú���';
comment on column XFXT_XFZTXX.SJFY
  is '�ϼ���Ժ';

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
  is 'Ϣ��֪ͨ��';
comment on column XFXT_XSTZS.FYBM
  is '��Ժ����';
comment on column XFXT_XSTZS.XFBS
  is '�ŷñ�ʶ';
comment on column XFXT_XSTZS.XH
  is '���';
comment on column XFXT_XSTZS.BH
  is '���';
comment on column XFXT_XSTZS.XFR
  is '�ŷ���';
comment on column XFXT_XSTZS.YG
  is 'ԭ��';
comment on column XFXT_XSTZS.BG
  is '����';
comment on column XFXT_XSTZS.XFLY
  is '�ŷ�����';
comment on column XFXT_XSTZS.CDJG
  is '�ö�����';
comment on column XFXT_XSTZS.SXWSBH
  is '��Ч������';
comment on column XFXT_XSTZS.SXWSLB
  is '��Ч�������';
comment on column XFXT_XSTZS.TZRQ
  is '֪ͨ����';

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
  is '������Ϣ';
comment on column XZGLXT_LXXX.FYBM
  is '��Ժ����';
comment on column XZGLXT_LXXX.BH
  is '���';
comment on column XZGLXT_LXXX.SXBH
  is '������';
comment on column XZGLXT_LXXX.BT
  is '����';
comment on column XZGLXT_LXXX.FSRBS
  is '�����˱�ʶ';
comment on column XZGLXT_LXXX.FSR
  is '������';
comment on column XZGLXT_LXXX.JSBM
  is '���ղ���';
comment on column XZGLXT_LXXX.JSRBS
  is '�����˱�ʶ';
comment on column XZGLXT_LXXX.JSR
  is '������';

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
  is '�����������';
comment on column XZGLXT_SXCXSPB.FYBM
  is '��Ժ����';
comment on column XZGLXT_SXCXSPB.BH
  is '���';
comment on column XZGLXT_SXCXSPB.SXBS
  is '�����ʶ';
comment on column XZGLXT_SXCXSPB.NR
  is '����';
comment on column XZGLXT_SXCXSPB.SJ
  is 'ʱ��';

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
  is '���������Ϣ';
comment on column XZGLXT_SXJDXX.FYBM
  is '��Ժ����';
comment on column XZGLXT_SXJDXX.BH
  is '���';
comment on column XZGLXT_SXJDXX.SXBS
  is '�����ʶ';
comment on column XZGLXT_SXJDXX.BT
  is '����';
comment on column XZGLXT_SXJDXX.BM
  is '����';
comment on column XZGLXT_SXJDXX.RYBS
  is '��Ա��ʶ';
comment on column XZGLXT_SXJDXX.XM
  is '����';
comment on column XZGLXT_SXJDXX.ZT
  is '״̬';

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
  is '���������Ϣ2';
comment on column XZGLXT_SXJDXX2.FYBM
  is '��Ժ����';
comment on column XZGLXT_SXJDXX2.BH
  is '���';
comment on column XZGLXT_SXJDXX2.SXBS
  is '�����ʶ';
comment on column XZGLXT_SXJDXX2.DBNR
  is '��������';
comment on column XZGLXT_SXJDXX2.DBRBS
  is '�����˱�ʶ';
comment on column XZGLXT_SXJDXX2.DBR
  is '������';
comment on column XZGLXT_SXJDXX2.SJ
  is 'ʱ��';

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
  is '����������־��Ϣ';
comment on column XZGLXT_SXLCRZXX.FYBM
  is '��Ժ����';
comment on column XZGLXT_SXLCRZXX.BH
  is '���';
comment on column XZGLXT_SXLCRZXX.SXBS
  is '�����ʶ';
comment on column XZGLXT_SXLCRZXX.LCBH
  is '���̱��';
comment on column XZGLXT_SXLCRZXX.LCMC
  is '��������';
comment on column XZGLXT_SXLCRZXX.FSRBS
  is '�����˱�ʶ';
comment on column XZGLXT_SXLCRZXX.FSR
  is '������';
comment on column XZGLXT_SXLCRZXX.FSSJ
  is '����ʱ��';
comment on column XZGLXT_SXLCRZXX.JSRBS
  is '�����˱�ʶ';
comment on column XZGLXT_SXLCRZXX.JSR
  is '������';
comment on column XZGLXT_SXLCRZXX.JSSJ
  is '����ʱ��';

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
  is '����ʵ��';
comment on column XZGLXT_SXST.FYBM
  is '��Ժ����';
comment on column XZGLXT_SXST.SXBS
  is '�����ʶ';
comment on column XZGLXT_SXST.XH
  is '���';
comment on column XZGLXT_SXST.WJMC
  is '�ļ�����';
comment on column XZGLXT_SXST.STWJM
  is 'ʵ���ļ���';

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
  is '����������Ϣ';
comment on column XZGLXT_SXZTXX.FYBM
  is '��Ժ����';
comment on column XZGLXT_SXZTXX.SXBS
  is '�����ʶ';
comment on column XZGLXT_SXZTXX.SXXZ
  is '��������';
comment on column XZGLXT_SXZTXX.SXLX
  is '��������';
comment on column XZGLXT_SXZTXX.BH
  is '���';
comment on column XZGLXT_SXZTXX.JLRBS
  is '�����˱�ʶ';
comment on column XZGLXT_SXZTXX.JLR
  is '������';
comment on column XZGLXT_SXZTXX.LXSJ
  is '����ʱ��';
comment on column XZGLXT_SXZTXX.WCSJ
  is '���ʱ��';
comment on column XZGLXT_SXZTXX.CBRBS
  is '�а��˱�ʶ';
comment on column XZGLXT_SXZTXX.CBR
  is '�а���';
comment on column XZGLXT_SXZTXX.CBRBM
  is '�а��˲���';
comment on column XZGLXT_SXZTXX.SPLDBS
  is '�����쵼��ʶ';
comment on column XZGLXT_SXZTXX.SPLD
  is '�����쵼';
comment on column XZGLXT_SXZTXX.GZL
  is '������';
comment on column XZGLXT_SXZTXX.GZND
  is '�����Ѷ�';
comment on column XZGLXT_SXZTXX.XBBM
  is 'Э�첿��';
comment on column XZGLXT_SXZTXX.XBRBS
  is 'Э���˱�ʶ';
comment on column XZGLXT_SXZTXX.XBR
  is 'Э����';
comment on column XZGLXT_SXZTXX.PJSJ
  is '����ʱ��';
comment on column XZGLXT_SXZTXX.PJGZL
  is '���۹�����';
comment on column XZGLXT_SXZTXX.PJGZXL
  is '���۹���Ч��';
comment on column XZGLXT_SXZTXX.PLGZXG
  is '���۹���Ч��';
comment on column XZGLXT_SXZTXX.PJGWZL
  is '���۹�������';
comment on column XZGLXT_SXZTXX.PJQTKD
  is '���������϶�';
comment on column XZGLXT_SXZTXX.BZ
  is '��ע';
comment on column XZGLXT_SXZTXX.SFYQ
  is '�Ƿ�����';
comment on column XZGLXT_SXZTXX.YQTS
  is '��������';
comment on column XZGLXT_SXZTXX.SFZZ
  is '�Ƿ���ֹ';
comment on column XZGLXT_SXZTXX.ZZTS
  is '��ֹ����';
comment on column XZGLXT_SXZTXX.SFDB
  is '�Ƿ񶽰�';
comment on column XZGLXT_SXZTXX.ZTPJ
  is '��������';
comment on column XZGLXT_SXZTXX.SXZT
  is '����״̬';

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
  is 'Э������Ϣ';
comment on column XZGLXT_XBRXX.FYBM
  is '��Ժ����';
comment on column XZGLXT_XBRXX.BH
  is '���';
comment on column XZGLXT_XBRXX.SXBS
  is '�����ʶ';
comment on column XZGLXT_XBRXX.XBRBS
  is 'Э���˱�ʶ';
comment on column XZGLXT_XBRXX.XBRMC
  is 'Э��������';
comment on column XZGLXT_XBRXX.XBRBM
  is 'Э���˲���';
comment on column XZGLXT_XBRXX.XBZT
  is 'Э��״̬';
comment on column XZGLXT_XBRXX.JLSJ
  is '����ʱ��';

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
  is '����������';
comment on column XZGLXT_YQSPB.FYBM
  is '��Ժ����';
comment on column XZGLXT_YQSPB.BH
  is '���';
comment on column XZGLXT_YQSPB.SXBS
  is '�����ʶ';
comment on column XZGLXT_YQSPB.YQLY
  is '��������';
comment on column XZGLXT_YQSPB.YQTS
  is '��������';

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
  is '����������';
comment on column XZGLXT_YSSPB.FYBM
  is '��Ժ����';
comment on column XZGLXT_YSSPB.BH
  is '���';
comment on column XZGLXT_YSSPB.SXBS
  is '�����ʶ';
comment on column XZGLXT_YSSPB.NR
  is '����';
comment on column XZGLXT_YSSPB.RYYBS
  is '��Ա���ʶ';
comment on column XZGLXT_YSSPB.RYXM
  is '��Ա����';
comment on column XZGLXT_YSSPB.SJ
  is 'ʱ��';

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
  is '���鰲����Ϣ';
comment on column YCBGHXT_HYAPXX.FYBM
  is '��Ժ����';
comment on column YCBGHXT_HYAPXX.HYBS
  is '�����ʶ';
comment on column YCBGHXT_HYAPXX.YCBGHZJ
  is 'Ժ���칫������';
comment on column YCBGHXT_HYAPXX.NH
  is '���';
comment on column YCBGHXT_HYAPXX.XH
  is '���';
comment on column YCBGHXT_HYAPXX.APRQ
  is '��������';
comment on column YCBGHXT_HYAPXX.APRBS
  is '�����˱�ʶ';
comment on column YCBGHXT_HYAPXX.APR
  is '������';
comment on column YCBGHXT_HYAPXX.HYKSSJ
  is '���鿪ʼʱ��';
comment on column YCBGHXT_HYAPXX.HYJSSJ
  is '�������ʱ��';
comment on column YCBGHXT_HYAPXX.ZCRBS
  is '�����˱�ʶ';
comment on column YCBGHXT_HYAPXX.ZCR
  is '������';
comment on column YCBGHXT_HYAPXX.CJWY
  is '�μ�ίԱ';
comment on column YCBGHXT_HYAPXX.CJRS
  is '�μ�����';
comment on column YCBGHXT_HYAPXX.QJWY
  is '���ίԱ';
comment on column YCBGHXT_HYAPXX.QJRS
  is '�������';
comment on column YCBGHXT_HYAPXX.LXRY
  is '��ϯ��Ա';
comment on column YCBGHXT_HYAPXX.HYDD
  is '����ص�';
comment on column YCBGHXT_HYAPXX.JLRBS
  is '��¼�˱�ʶ';
comment on column YCBGHXT_HYAPXX.JLR
  is '��¼��';

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
  is 'Ժ���칫��λ���Ա';
comment on column YCBGHXT_YCBGHCHRY.FYBM
  is '��Ժ����';
comment on column YCBGHXT_YCBGHCHRY.XH
  is '���';
comment on column YCBGHXT_YCBGHCHRY.RYBS
  is '��Ա��ʶ';
comment on column YCBGHXT_YCBGHCHRY.RYXM
  is '��Ա����';

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
  is 'Ժ���칫����Ϣ';
comment on column YCBGHXT_YCBGHXX.FYBM
  is '��Ժ����';
comment on column YCBGHXT_YCBGHXX.YCBGHBS
  is 'Ժ���칫���ʶ';
comment on column YCBGHXT_YCBGHXX.BH
  is '���';
comment on column YCBGHXT_YCBGHXX.GWBS
  is '���ı�ʶ';
comment on column YCBGHXT_YCBGHXX.YTBT
  is '�������';
comment on column YCBGHXT_YCBGHXX.YTBH
  is '������';
comment on column YCBGHXT_YCBGHXX.NGRBS
  is '����˱�ʶ';
comment on column YCBGHXT_YCBGHXX.NGR
  is '�����';
comment on column YCBGHXT_YCBGHXX.HBRBS
  is '�㱨�˱�ʶ';
comment on column YCBGHXT_YCBGHXX.HBR
  is '�㱨��';
comment on column YCBGHXT_YCBGHXX.CBRQ
  is '�ʱ�����';
comment on column YCBGHXT_YCBGHXX.CBDW
  is '�ʱ���λ';
comment on column YCBGHXT_YCBGHXX.HYKSSJ
  is '���鿪ʼʱ��';
comment on column YCBGHXT_YCBGHXX.GWDYSPRBS
  is '���ĵ�һ�����˱�ʶ';
comment on column YCBGHXT_YCBGHXX.GWDYSPR
  is '���ĵ�һ������';
comment on column YCBGHXT_YCBGHXX.THBZ
  is '�˻ر�־';
comment on column YCBGHXT_YCBGHXX.STWJM
  is 'ʵ���ļ���';

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
  is 'Ժ���칫��������Ա��¼';
comment on column YCBGHXT_YCBGHZXRYJL.FYBM
  is '��Ժ����';
comment on column YCBGHXT_YCBGHZXRYJL.XH
  is '���';
comment on column YCBGHXT_YCBGHZXRYJL.HYAPBS
  is '���鰲�ű�ʶ';
comment on column YCBGHXT_YCBGHZXRYJL.RYBS
  is '��Ա��ʶ';
comment on column YCBGHXT_YCBGHZXRYJL.RYXM
  is '��Ա����';
comment on column YCBGHXT_YCBGHZXRYJL.DLSJ
  is '��¼ʱ��';

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
  is '�ʼ�������Ϣ';
comment on column YJXT_YJJSXX.FYBM
  is '��Ժ����';
comment on column YJXT_YJJSXX.JSBS
  is '���ձ�ʶ';
comment on column YJXT_YJJSXX.YJBS
  is '�ʼ���ʶ';
comment on column YJXT_YJJSXX.JSRBS
  is '�����˱�ʶ';
comment on column YJXT_YJJSXX.JSR
  is '������';
comment on column YJXT_YJJSXX.YDBZ
  is '�Ķ���־';
comment on column YJXT_YJJSXX.YDSJ
  is '�Ķ�ʱ��';

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
  is '�ʼ���Ϣ';
comment on column YJXT_YJXX.FYBM
  is '��Ժ����';
comment on column YJXT_YJXX.FJBS
  is '������ʶ';
comment on column YJXT_YJXX.YJBS
  is '�ʼ���ʶ';
comment on column YJXT_YJXX.WJM
  is '�ļ���';

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
  is '�ʼ���Ϣ2';
comment on column YJXT_YJXX2.FYBM
  is '��Ժ����';
comment on column YJXT_YJXX2.YJBS
  is '�ʼ���ʶ';
comment on column YJXT_YJXX2.BMMC
  is '��������';
comment on column YJXT_YJXX2.FSRBS
  is '�����˱�ʶ';
comment on column YJXT_YJXX2.FSR
  is '������';
comment on column YJXT_YJXX2.BT
  is '����';
comment on column YJXT_YJXX2.NR
  is '����';
comment on column YJXT_YJXX2.FSRQ
  is '��������';

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
  is '������Ϣ';
comment on column YZGZAP_APXX.FYBM
  is '��Ժ����';
comment on column YZGZAP_APXX.APBS
  is '���ű�ʶ';
comment on column YZGZAP_APXX.GZRQ
  is '��������';
comment on column YZGZAP_APXX.GZSJ
  is '����ʱ��';
comment on column YZGZAP_APXX.GZSX
  is '��������';
comment on column YZGZAP_APXX.SYFW
  is '���÷�Χ';
comment on column YZGZAP_APXX.RYBS
  is '��Ա��ʶ';
comment on column YZGZAP_APXX.RY
  is '��Ա';
comment on column YZGZAP_APXX.APRBS
  is '�����˱�ʶ';
comment on column YZGZAP_APXX.APR
  is '������';
comment on column YZGZAP_APXX.SXWBS
  is '�������ʶ';

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
  is '������ת��¼';
comment on column ZXDBXT_DBLZJL.FYBM
  is '��Ժ����';
comment on column ZXDBXT_DBLZJL.XH
  is '���';
comment on column ZXDBXT_DBLZJL.DBBS
  is '�����ʶ';
comment on column ZXDBXT_DBLZJL.GZMC
  is '��������';
comment on column ZXDBXT_DBLZJL.FSRBS
  is '�����˱�ʶ';
comment on column ZXDBXT_DBLZJL.FSR
  is '������';
comment on column ZXDBXT_DBLZJL.FSSJ
  is '����ʱ��';
comment on column ZXDBXT_DBLZJL.JSRBS
  is '�����˱�ʶ';
comment on column ZXDBXT_DBLZJL.JSR
  is '������';
comment on column ZXDBXT_DBLZJL.JSSJ
  is '����ʱ��';
comment on column ZXDBXT_DBLZJL.FSBS
  is '���ͱ�ʶ';
comment on column ZXDBXT_DBLZJL.SFJJ
  is '�Ƿ����';
comment on column ZXDBXT_DBLZJL.SFSC
  is '�Ƿ��ղ�';
comment on column ZXDBXT_DBLZJL.SFCL
  is '�Ƿ���';

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
  is '������־��¼';
comment on column ZXDBXT_DBRZJL.FYBM
  is '��Ժ����';
comment on column ZXDBXT_DBRZJL.XH
  is '���';
comment on column ZXDBXT_DBRZJL.DBBS
  is '�����ʶ';
comment on column ZXDBXT_DBRZJL.LCMC
  is '��������';
comment on column ZXDBXT_DBRZJL.KSRQ
  is '��ʼ����';
comment on column ZXDBXT_DBRZJL.JSRQ
  is '��������';
comment on column ZXDBXT_DBRZJL.BM
  is '����';
comment on column ZXDBXT_DBRZJL.RYBS
  is '��Ա��ʶ';
comment on column ZXDBXT_DBRZJL.RYXM
  is '��Ա����';

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
  is '����ʵ��';
comment on column ZXDBXT_DBST.FYBM
  is '��Ժ����';
comment on column ZXDBXT_DBST.DBBS
  is '�����ʶ';
comment on column ZXDBXT_DBST.XH
  is '���';
comment on column ZXDBXT_DBST.STLX
  is 'ʵ������';
comment on column ZXDBXT_DBST.WJMC
  is '�ļ�����';
comment on column ZXDBXT_DBST.STWJM
  is 'ʵ���ļ���';

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
  is 'ִ�ж���������Ϣ';
comment on column ZXDBXT_ZXDBZTXX.FYBM
  is '��Ժ����';
comment on column ZXDBXT_ZXDBZTXX.DBBS
  is '�����ʶ';
comment on column ZXDBXT_ZXDBZTXX.DCDBLB
  is '���鶽�����';
comment on column ZXDBXT_ZXDBZTXX.LWBT
  is '���ı���';
comment on column ZXDBXT_ZXDBZTXX.DBWH
  is '�����ĺ�';
comment on column ZXDBXT_ZXDBZTXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXDBXT_ZXDBZTXX.DJR
  is '�Ǽ���';
comment on column ZXDBXT_ZXDBZTXX.DJRQ
  is '�Ǽ�����';
comment on column ZXDBXT_ZXDBZTXX.LWBH
  is '���ı��';
comment on column ZXDBXT_ZXDBZTXX.LWDW
  is '���ĵ�λ';
comment on column ZXDBXT_ZXDBZTXX.SJFY
  is '�漰��Ժ';
comment on column ZXDBXT_ZXDBZTXX.SJAH
  is '�漰����';
comment on column ZXDBXT_ZXDBZTXX.YAJCBR
  is 'ԭ�����а���';
comment on column ZXDBXT_ZXDBZTXX.SQR
  is '������';
comment on column ZXDBXT_ZXDBZTXX.BZXR
  is '��ִ����';
comment on column ZXDBXT_ZXDBZTXX.FYNR
  is '��ӳ����';
comment on column ZXDBXT_ZXDBZTXX.PSLD
  is '��ʾ�쵼';
comment on column ZXDBXT_ZXDBZTXX.PSDW
  is '��ʾ��λ';
comment on column ZXDBXT_ZXDBZTXX.PSRQ
  is '��ʾ����';
comment on column ZXDBXT_ZXDBZTXX.PSNR
  is '��ʾ����';
comment on column ZXDBXT_ZXDBZTXX.DBJSRQ
  is '�����������';
comment on column ZXDBXT_ZXDBZTXX.CBRBS
  is '�а��˱�ʶ';
comment on column ZXDBXT_ZXDBZTXX.CBR
  is '�а���';
comment on column ZXDBXT_ZXDBZTXX.CBBM
  is '�а첿��';
comment on column ZXDBXT_ZXDBZTXX.LJBZ
  is '�˽��־';
comment on column ZXDBXT_ZXDBZTXX.LJRQ
  is '�˽�����';
comment on column ZXDBXT_ZXDBZTXX.SFTQGD
  is '�Ƿ�����鵵';
comment on column ZXDBXT_ZXDBZTXX.TQGDRQ
  is '����鵵����';
comment on column ZXDBXT_ZXDBZTXX.SFGD
  is '�Ƿ�鵵';
comment on column ZXDBXT_ZXDBZTXX.SFYQ
  is '�Ƿ�����';
comment on column ZXDBXT_ZXDBZTXX.GDH
  is '�鵵��';
comment on column ZXDBXT_ZXDBZTXX.GDRQ
  is '�鵵����';
comment on column ZXDBXT_ZXDBZTXX.SQYCBJQX
  is '�����ӳ��������';
comment on column ZXDBXT_ZXDBZTXX.SJAJBH
  is '�漰�������';
comment on column ZXDBXT_ZXDBZTXX.DBHFRQ
  is '����ظ�����';
comment on column ZXDBXT_ZXDBZTXX.ZXZM
  is 'ִ������';
comment on column ZXDBXT_ZXDBZTXX.ZXCM
  is 'ִ�д���';
comment on column ZXDBXT_ZXDBZTXX.SFLRZB
  is '�Ƿ������ܱ�';
comment on column ZXDBXT_ZXDBZTXX.QQLB
  is '�������';
comment on column ZXDBXT_ZXDBZTXX.CJ
  is '�㼶';

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
  is '������Ϣ';
comment on column ZXPGXT_AJXX.FYBM
  is '��Ժ����';
comment on column ZXPGXT_AJXX.AJBS
  is '������ʶ';
comment on column ZXPGXT_AJXX.FYNAJBS
  is '��Ժ�ڰ�����ʶ';
comment on column ZXPGXT_AJXX.AH
  is '����';
comment on column ZXPGXT_AJXX.ND
  is '���';
comment on column ZXPGXT_AJXX.FYJC
  is '��Ժ���';
comment on column ZXPGXT_AJXX.AZ
  is '����';
comment on column ZXPGXT_AJXX.HS
  is '����';
comment on column ZXPGXT_AJXX.AJLB
  is '�������';
comment on column ZXPGXT_AJXX.SPCX
  is '���г���';
comment on column ZXPGXT_AJXX.SYCX
  is '���ó���';
comment on column ZXPGXT_AJXX.CBRBS
  is '�а��˱�ʶ';
comment on column ZXPGXT_AJXX.CBR
  is '�а���';
comment on column ZXPGXT_AJXX.CBSPT
  is '�а�����ͥ';
comment on column ZXPGXT_AJXX.LARQ
  is '��������';
comment on column ZXPGXT_AJXX.JARQ
  is '�᰸����';
comment on column ZXPGXT_AJXX.GDRQ
  is '�鵵����';
comment on column ZXPGXT_AJXX.SDESSZRQ
  is '�յ�������״����(��������)';
comment on column ZXPGXT_AJXX.SFCL
  is '�Ƿ���';
comment on column ZXPGXT_AJXX.SFLA
  is '�Ƿ�����';
comment on column ZXPGXT_AJXX.SFJA
  is '�Ƿ�᰸';
comment on column ZXPGXT_AJXX.JAFS
  is '�᰸��ʽ';
comment on column ZXPGXT_AJXX.ZXAJ
  is 'ִ�а���';
comment on column ZXPGXT_AJXX.GKSP
  is '��������';
comment on column ZXPGXT_AJXX.ESJAFS
  is '����᰸��ʽ';
comment on column ZXPGXT_AJXX.FHZSYY
  is '��������ԭ��';
comment on column ZXPGXT_AJXX.SFPSYCY
  is '�Ƿ�����Ա����';
comment on column ZXPGXT_AJXX.SFCS
  is '�Ϸô���';
comment on column ZXPGXT_AJXX.LFRQ
  is '��������';
comment on column ZXPGXT_AJXX.KTTZ
  is '��ͥ����';
comment on column ZXPGXT_AJXX.KTTZCS
  is '��ͥ/��֤����';
comment on column ZXPGXT_AJXX.SFSX
  is '�Ƿ���Ч';
comment on column ZXPGXT_AJXX.BYAJ
  is '��Ժ����';
comment on column ZXPGXT_AJXX.SABD
  is '�հ����';
comment on column ZXPGXT_AJXX.JABD
  is '�᰸���';
comment on column ZXPGXT_AJXX.FDSX
  is '��������';
comment on column ZXPGXT_AJXX.FDKCSJ
  is '�����۳�ʱ��';
comment on column ZXPGXT_AJXX.CXTS
  is '��������';
comment on column ZXPGXT_AJXX.ZRTS
  is '��Ȼ����';
comment on column ZXPGXT_AJXX.SZH
  is '���ݻ�';
comment on column ZXPGXT_AJXX.KTCD
  is '��ͷ�ö�';
comment on column ZXPGXT_AJXX.SFZZG
  is '�Ƿ���ֹ��';
comment on column ZXPGXT_AJXX.DQSFZZ
  is '��ǰ�Ƿ���ֹ';
comment on column ZXPGXT_AJXX.GXYY
  is '��Ͻ����';
comment on column ZXPGXT_AJXX.SSRQ
  is '��������';
comment on column ZXPGXT_AJXX.ZSRQ
  is '��������';
comment on column ZXPGXT_AJXX.AJLY
  is '������Դ';
comment on column ZXPGXT_AJXX.SDSZRQS
  is '�յ���״����s';
comment on column ZXPGXT_AJXX.SJYBS
  is '���Ա��ʶ';
comment on column ZXPGXT_AJXX.SJY
  is '���Ա';
comment on column ZXPGXT_AJXX.SPCBS
  is '���г���ʶ';
comment on column ZXPGXT_AJXX.SPC
  is '���г�';
comment on column ZXPGXT_AJXX.SFSFLH
  is '�Ƿ��Ϸ��ϻ�';
comment on column ZXPGXT_AJXX.ZSJAFS
  is '����᰸��ʽ';
comment on column ZXPGXT_AJXX.ZSJARQ
  is '����᰸����';
comment on column ZXPGXT_AJXX.ESJARQ
  is '����᰸����';
comment on column ZXPGXT_AJXX.DTXP
  is '��ͥ����';
comment on column ZXPGXT_AJXX.WSQK
  is '�������';
comment on column ZXPGXT_AJXX.SJFYSDCS
  is '�ϼ���Ժ�յ�����';
comment on column ZXPGXT_AJXX.LAAY
  is '��������';
comment on column ZXPGXT_AJXX.JAAY
  is '�᰸����';
comment on column ZXPGXT_AJXX.YSFY
  is 'ԭ��Ժ';
comment on column ZXPGXT_AJXX.YSAH
  is 'ԭ�󰸺�';
comment on column ZXPGXT_AJXX.SFZRR
  is '�Ƿ���Ȼ��';
comment on column ZXPGXT_AJXX.MSAJ
  is '���̰���';
comment on column ZXPGXT_AJXX.YCBT
  is 'ԭ�а�ͥ';
comment on column ZXPGXT_AJXX.YCBR
  is 'ԭ�а���';
comment on column ZXPGXT_AJXX.XSTZJSRQ
  is '���������������';
comment on column ZXPGXT_AJXX.JLGXRQ
  is '��¼��������';
comment on column ZXPGXT_AJXX.SXJSRQ
  is '���޽�������';
comment on column ZXPGXT_AJXX.SDSZRQ
  is '�յ���״����';
comment on column ZXPGXT_AJXX.FDMSJAFS
  is '�������½᰸��ʽ';
comment on column ZXPGXT_AJXX.SFYQ
  is '�Ƿ�����';
comment on column ZXPGXT_AJXX.YQTS
  is '��������';
comment on column ZXPGXT_AJXX.SFKC
  is '�Ƿ�۳�';
comment on column ZXPGXT_AJXX.KCTS
  is '�۳�����';
comment on column ZXPGXT_AJXX.ZZTS
  is '��ֹ����';
comment on column ZXPGXT_AJXX.FDMSSS
  is '������������';
comment on column ZXPGXT_AJXX.WSPCAJ
  is '�������鰸��';
comment on column ZXPGXT_AJXX.PCDF
  is '����÷�';
comment on column ZXPGXT_AJXX.SCZZRQ
  is '�״���ֹ����';
comment on column ZXPGXT_AJXX.ZHZZRQ
  is '�����ֹ����';
comment on column ZXPGXT_AJXX.PCLB
  is '�⳥���';
comment on column ZXPGXT_AJXX.LARBS
  is '�����˱�ʶ';
comment on column ZXPGXT_AJXX.LAR
  is '������';
comment on column ZXPGXT_AJXX.LABM
  is '��������';
comment on column ZXPGXT_AJXX.YSLABM
  is 'ԭ����������';
comment on column ZXPGXT_AJXX.YSLAR
  is 'ԭ��������';
comment on column ZXPGXT_AJXX.AJSXRQ
  is '������Ч����';
comment on column ZXPGXT_AJXX.SFFHAJ
  is '�Ƿ񸴺˰���';
comment on column ZXPGXT_AJXX.SFLABG
  is '�Ƿ��������';
comment on column ZXPGXT_AJXX.YSSFLQGLAJ
  is 'ԭ���Ƿ���Ȩ������';
comment on column ZXPGXT_AJXX.SFLQGLAJ
  is '�Ƿ���Ȩ������';
comment on column ZXPGXT_AJXX.GPYY
  is '����ԭ��';
comment on column ZXPGXT_AJXX.SSAJLX
  is '���߰�������';
comment on column ZXPGXT_AJXX.YSJAFS
  is 'ԭ��᰸��ʽ';
comment on column ZXPGXT_AJXX.SFCA
  is '�Ƿ��';
comment on column ZXPGXT_AJXX.FJXZL
  is '����������';
comment on column ZXPGXT_AJXX.XZPCTQFS
  is '�����⳥���뷽ʽ';
comment on column ZXPGXT_AJXX.CSLY
  is '��������';
comment on column ZXPGXT_AJXX.GKKTGG
  is '������ͥ����';
comment on column ZXPGXT_AJXX.GKJDPGGG
  is '����������������';
comment on column ZXPGXT_AJXX.GKJDPGRQ
  is '����������������';
comment on column ZXPGXT_AJXX.GKLA
  is '��������';
comment on column ZXPGXT_AJXX.GKSPGKSP
  is '������Ƶgksp';
comment on column ZXPGXT_AJXX.GKWS
  is '��������';
comment on column ZXPGXT_AJXX.GKZJ
  is '����֤��';
comment on column ZXPGXT_AJXX.SSAJYSCLRQ
  is '���߰������Ͳ�������';
comment on column ZXPGXT_AJXX.GKLASH
  is '�����������';
comment on column ZXPGXT_AJXX.GKSPSH
  is '������Ƶ���';
comment on column ZXPGXT_AJXX.GKWSSH
  is '�����������';
comment on column ZXPGXT_AJXX.GKZJSH
  is '����֤�����';
comment on column ZXPGXT_AJXX.SJRQ
  is '�;�����';
comment on column ZXPGXT_AJXX.GKSPXXRQ
  is '������Ƶ��Ϣ����';
comment on column ZXPGXT_AJXX.GKCPWSRQ
  is '����������������';
comment on column ZXPGXT_AJXX.GKZJRQ
  is '����֤������';
comment on column ZXPGXT_AJXX.GKZXXXRQ
  is '����ִ����Ϣ����';
comment on column ZXPGXT_AJXX.KTGGRQ
  is '��ͥ��������';
comment on column ZXPGXT_AJXX.ZXAJBDLX
  is 'ִ�а����������';
comment on column ZXPGXT_AJXX.YSSPC
  is 'ԭ�����г�';
comment on column ZXPGXT_AJXX.DTJSZX
  is '��ͥ��ʱִ��';
comment on column ZXPGXT_AJXX.QTSSLB
  is '�����������';
comment on column ZXPGXT_AJXX.ZJBCZXAJ
  is '�ս᱾��ִ�а���';
comment on column ZXPGXT_AJXX.ESTJRQ
  is '�����˾�����';

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
  is '����������Ϣ';
comment on column ZXPGXT_LXLFXX.FYBM
  is '��Ժ����';
comment on column ZXPGXT_LXLFXX.XFBS
  is '�ŷñ�ʶ';
comment on column ZXPGXT_LXLFXX.FYXFBS
  is '��Ժ�ŷñ�ʶ';
comment on column ZXPGXT_LXLFXX.XFRQ
  is '�ŷ�����';
comment on column ZXPGXT_LXLFXX.XFCS
  is '�ŷô���';
comment on column ZXPGXT_LXLFXX.SJRS
  is '�漰����';
comment on column ZXPGXT_LXLFXX.XFSJFY
  is '�ŷ��漰��Ժ';
comment on column ZXPGXT_LXLFXX.XFSJAH
  is '�ŷ��漰����';
comment on column ZXPGXT_LXLFXX.XGAJ
  is '��ذ���';
comment on column ZXPGXT_LXLFXX.SFMSAJ
  is '�Ƿ����̰���';
comment on column ZXPGXT_LXLFXX.AJLX
  is '��������';
comment on column ZXPGXT_LXLFXX.SJYBABM
  is '�漰ԭ�참����';
comment on column ZXPGXT_LXLFXX.XFLX
  is '�ŷ�����';
comment on column ZXPGXT_LXLFXX.SJBM
  is '�漰����';
comment on column ZXPGXT_LXLFXX.XFLY
  is '�ŷ���Դ';
comment on column ZXPGXT_LXLFXX.SJCBR
  is '�漰�а���';
comment on column ZXPGXT_LXLFXX.XFRXM
  is '�ŷ�������';
comment on column ZXPGXT_LXLFXX.AY
  is '����';
comment on column ZXPGXT_LXLFXX.SHJB
  is '��˼���';
comment on column ZXPGXT_LXLFXX.SJSPC
  is '�漰���г�';

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
  is '��Ա��Ϣ';
comment on column ZXPGXT_RYXX.FYBM
  is '��Ժ����';
comment on column ZXPGXT_RYXX.RYBS
  is '��Ա��ʶ';
comment on column ZXPGXT_RYXX.SFFG
  is '�Ƿ񷨹�';
comment on column ZXPGXT_RYXX.SFZXG
  is '�Ƿ�ִ�й�';
comment on column ZXPGXT_RYXX.SFGZRY
  is '�Ƿ�����Ա';
comment on column ZXPGXT_RYXX.SFZXGZRY
  is '�Ƿ�ִ�й�����Ա';
comment on column ZXPGXT_RYXX.QZTP
  is 'ǩ��ͼƬ';
comment on column ZXPGXT_RYXX.DLID
  is '��¼ID';
comment on column ZXPGXT_RYXX.YHM
  is '�û���';

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
  is 'ָ��ȡֵ����';
comment on column ZXPGXT_ZBQZDY.FYBM
  is '��Ժ����';
comment on column ZXPGXT_ZBQZDY.DYBS
  is '�����ʶ';
comment on column ZXPGXT_ZBQZDY.ZBMC
  is 'ָ������';
comment on column ZXPGXT_ZBQZDY.ZBSYFW
  is 'ָ�����÷�Χ';
comment on column ZXPGXT_ZBQZDY.XH
  is '���';
comment on column ZXPGXT_ZBQZDY.ZBFL
  is 'ָ�����';
comment on column ZXPGXT_ZBQZDY.ZBDY
  is 'ָ�궨��';
comment on column ZXPGXT_ZBQZDY.ZBMS
  is 'ָ������';

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
  is 'ָ�����ݼ�¼';
comment on column ZXPGXT_ZBSJJL.FYBM
  is '��Ժ����';
comment on column ZXPGXT_ZBSJJL.SJBS
  is '���ݱ�ʶ';
comment on column ZXPGXT_ZBSJJL.ZBBH
  is 'ָ����';
comment on column ZXPGXT_ZBSJJL.ZBM
  is 'ָ����';
comment on column ZXPGXT_ZBSJJL.BM
  is '����';
comment on column ZXPGXT_ZBSJJL.RY
  is '��Ա';
comment on column ZXPGXT_ZBSJJL.N
  is '��';
comment on column ZXPGXT_ZBSJJL.Y
  is '��';
comment on column ZXPGXT_ZBSJJL.R
  is '��';
comment on column ZXPGXT_ZBSJJL.BY1
  is '����1';
comment on column ZXPGXT_ZBSJJL.BY2
  is '����2';
comment on column ZXPGXT_ZBSJJL.BY3
  is '����3';
comment on column ZXPGXT_ZBSJJL.ZBSJ
  is 'ָ������';
comment on column ZXPGXT_ZBSJJL.CJSJ
  is '����ʱ��';
comment on column ZXPGXT_ZBSJJL.QZLY
  is 'ȡֵ��Դ';
comment on column ZXPGXT_ZBSJJL.PM
  is '����';
comment on column ZXPGXT_ZBSJJL.ZBJB
  is 'ָ�꼶��';
comment on column ZXPGXT_ZBSJJL.PGLB
  is '�������';
comment on column ZXPGXT_ZBSJJL.ZXZ
  is '��Сֵ';
comment on column ZXPGXT_ZBSJJL.ZDZ
  is '���ֵ';

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
  is 'ָ�����ݼ�¼��־';
comment on column ZXPGXT_ZBSJJLRZ.FYBM
  is '��Ժ����';
comment on column ZXPGXT_ZBSJJLRZ.RZBS
  is '��־��ʶ';
comment on column ZXPGXT_ZBSJJLRZ.BSKHQJ
  is '��ʶ��������';
comment on column ZXPGXT_ZBSJJLRZ.FYMC
  is '��Ժ����';
comment on column ZXPGXT_ZBSJJLRZ.ZBM
  is 'ָ����';
comment on column ZXPGXT_ZBSJJLRZ.ZBZ
  is 'ָ��ֵ';
comment on column ZXPGXT_ZBSJJLRZ.BM
  is '����';
comment on column ZXPGXT_ZBSJJLRZ.CBRBS
  is '�а��˱�ʶ';
comment on column ZXPGXT_ZBSJJLRZ.CBR
  is '�а���';
comment on column ZXPGXT_ZBSJJLRZ.KSRQ
  is '��ʼ����';
comment on column ZXPGXT_ZBSJJLRZ.JSRQ
  is '��������';
comment on column ZXPGXT_ZBSJJLRZ.CJRQ
  is '��������';
comment on column ZXPGXT_ZBSJJLRZ.QZLY
  is 'ȡֵ��Դ';
comment on column ZXPGXT_ZBSJJLRZ.PM
  is '����';
comment on column ZXPGXT_ZBSJJLRZ.ZBJB
  is 'ָ�꼶��';
comment on column ZXPGXT_ZBSJJLRZ.ZBLB
  is 'ָ�����';

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
  is 'ָ����Ϣ';
comment on column ZXPGXT_ZBXX.FYBM
  is '��Ժ����';
comment on column ZXPGXT_ZBXX.ZBBH
  is 'ָ����';
comment on column ZXPGXT_ZBXX.ZBM
  is 'ָ����';
comment on column ZXPGXT_ZBXX.BM
  is '����';
comment on column ZXPGXT_ZBXX.RY
  is '��Ա';
comment on column ZXPGXT_ZBXX.N
  is '��';
comment on column ZXPGXT_ZBXX.Y
  is '��';
comment on column ZXPGXT_ZBXX.R
  is '��';
comment on column ZXPGXT_ZBXX.BY1
  is '����1';
comment on column ZXPGXT_ZBXX.BY2
  is '����2';
comment on column ZXPGXT_ZBXX.BY3
  is '����3';

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
  is 'XML������ϸ��';
comment on column ZXWWJKXT_XMLBMMXB.FYBM
  is '��Ժ����';
comment on column ZXWWJKXT_XMLBMMXB.SXH
  is '˳���';
comment on column ZXWWJKXT_XMLBMMXB.ZBBH
  is '������';
comment on column ZXWWJKXT_XMLBMMXB.XH
  is '���';
comment on column ZXWWJKXT_XMLBMMXB.KZ
  is '��չ';
comment on column ZXWWJKXT_XMLBMMXB.DM
  is '����';
comment on column ZXWWJKXT_XMLBMMXB.MC
  is '����';
comment on column ZXWWJKXT_XMLBMMXB.SJDM
  is '��ƴ���';
comment on column ZXWWJKXT_XMLBMMXB.FJM
  is '������';
comment on column ZXWWJKXT_XMLBMMXB.LX
  is '����';
comment on column ZXWWJKXT_XMLBMMXB.SM
  is '˵��';
comment on column ZXWWJKXT_XMLBMMXB.DMLX
  is '��������';

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
  is 'XML��������';
comment on column ZXWWJKXT_XMLBMZB.FYBM
  is '��Ժ����';
comment on column ZXWWJKXT_XMLBMZB.BH
  is '���';
comment on column ZXWWJKXT_XMLBMZB.DMLX
  is '��������';
comment on column ZXWWJKXT_XMLBMZB.MC
  is '����';
comment on column ZXWWJKXT_XMLBMZB.DM
  is '����';
comment on column ZXWWJKXT_XMLBMZB.SM
  is '˵��';

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
  is 'ִ�нӿڱ�����Ϣ';
comment on column ZXWWJKXT_ZXJKBDYXX.FYBM
  is '��Ժ����';
comment on column ZXWWJKXT_ZXJKBDYXX.SXH
  is '˳���';
comment on column ZXWWJKXT_ZXJKBDYXX.DMLX
  is '��������';
comment on column ZXWWJKXT_ZXJKBDYXX.SM
  is '˵��';
comment on column ZXWWJKXT_ZXJKBDYXX.DM
  is '����';
comment on column ZXWWJKXT_ZXJKBDYXX.SJ
  is '����';
comment on column ZXWWJKXT_ZXJKBDYXX.SFYX
  is '�Ƿ���Ч';

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
  is 'ִ�нӿڱ�����Ϣ2';
comment on column ZXWWJKXT_ZXJKBDYXX2.FYBM
  is '��Ժ����';
comment on column ZXWWJKXT_ZXJKBDYXX2.BBH
  is '����';
comment on column ZXWWJKXT_ZXJKBDYXX2.ZDBH
  is '�ֶα��';
comment on column ZXWWJKXT_ZXJKBDYXX2.XMLM
  is 'xml��';
comment on column ZXWWJKXT_ZXJKBDYXX2.ZDM
  is '�ֶ���';
comment on column ZXWWJKXT_ZXJKBDYXX2.ZDLX
  is '�ֶ�����';
comment on column ZXWWJKXT_ZXJKBDYXX2.DM
  is '����';
comment on column ZXWWJKXT_ZXJKBDYXX2.ZWM
  is '������';
comment on column ZXWWJKXT_ZXJKBDYXX2.SFYXK
  is '�Ƿ������';
comment on column ZXWWJKXT_ZXJKBDYXX2.SFYXSC
  is '�Ƿ�����ɾ��';
comment on column ZXWWJKXT_ZXJKBDYXX2.SFYXBZ
  is '�Ƿ���Ч��־';

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
  is 'ִ�нӿڱ�����Ϣ3';
comment on column ZXWWJKXT_ZXJKBDYXX3.FYBM
  is '��Ժ����';
comment on column ZXWWJKXT_ZXJKBDYXX3.BBH
  is '����';
comment on column ZXWWJKXT_ZXJKBDYXX3.XMLM
  is 'xml��';
comment on column ZXWWJKXT_ZXJKBDYXX3.BM
  is '����';
comment on column ZXWWJKXT_ZXJKBDYXX3.TJ
  is '����';
comment on column ZXWWJKXT_ZXJKBDYXX3.ZWM
  is '������';
comment on column ZXWWJKXT_ZXJKBDYXX3.GJZ1
  is '�ؼ���1';
comment on column ZXWWJKXT_ZXJKBDYXX3.GJZ2
  is '�ؼ���2';
comment on column ZXWWJKXT_ZXJKBDYXX3.SFYXBZ
  is '�Ƿ���Ч��־';

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
  is '���ֱ�ӻ�������������������о���¼';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.FYBM
  is '��Ժ����';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.XH
  is '���';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.AJBH
  is '�������';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.SQR
  is '������';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.BZXR
  is '��ִ����';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.AKBZJHFDSQRSXHYYJJLSJ
  is '���ֱ�ӻ�������������������о���¼ʱ��';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.DD
  is '�ص�';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.CJR
  is '�μ���';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.CBR
  is '�а���';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.JLR
  is '��¼��';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.AKQK
  is '�������';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.CBRYJ
  is '�а������';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.HYQK
  is '�������';
comment on column ZXXT_AKBZJHFDSQRSXHYYJJL.YJYJ
  is '�о����';

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
  is '�����֪ͨ��';
comment on column ZXXT_AKHBTZS.FYBM
  is '��Ժ����';
comment on column ZXXT_AKHBTZS.XH
  is '���';
comment on column ZXXT_AKHBTZS.BH
  is '���';
comment on column ZXXT_AKHBTZS.CCMC
  is '�Ʋ�����';
comment on column ZXXT_AKHBTZS.QZCSNR
  is 'ǿ�ƴ�ʩ����';
comment on column ZXXT_AKHBTZS.DW
  is '��λ';
comment on column ZXXT_AKHBTZS.BCXR
  is '����ѯ��';
comment on column ZXXT_AKHBTZS.CXR
  is '��ѯ��';
comment on column ZXXT_AKHBTZS.CXNR
  is '��ѯ����';
comment on column ZXXT_AKHBTZS.XHAK
  is '�ֻ�����';
comment on column ZXXT_AKHBTZS.XYAK
  is '���స��';

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
  is '����������';
comment on column ZXXT_AWRYY.FYBM
  is '��Ժ����';
comment on column ZXXT_AWRYY.XH
  is '���';
comment on column ZXXT_AWRYY.BH
  is '���';
comment on column ZXXT_AWRYY.KPLB
  is '��Ƭ���';
comment on column ZXXT_AWRYY.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_AWRYY.DJR
  is '�Ǽ���';
comment on column ZXXT_AWRYY.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_AWRYY.YYR
  is '������';
comment on column ZXXT_AWRYY.YYNR
  is '��������';
comment on column ZXXT_AWRYY.TCRQ
  is '�������';
comment on column ZXXT_AWRYY.BZ
  is '��ע';
comment on column ZXXT_AWRYY.SCSX
  is '�������';
comment on column ZXXT_AWRYY.SCCBRBS
  is '���а��˱�ʶ';
comment on column ZXXT_AWRYY.SCCBR
  is '���а���';
comment on column ZXXT_AWRYY.SCJG
  is '�����';
comment on column ZXXT_AWRYY.CDRQ
  is '�ö�����';

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
  is '����������������';
comment on column ZXXT_BBJDFSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_BBJDFSPB.XH
  is '���';
comment on column ZXXT_BBJDFSPB.WDBH
  is '�ĵ����';
comment on column ZXXT_BBJDFSPB.AJBH
  is '�������';
comment on column ZXXT_BBJDFSPB.DXXBZFCYRXM
  is '�������������ϳ���������';
comment on column ZXXT_BBJDFSPB.SFZHM
  is '���֤����';
comment on column ZXXT_BBJDFSPB.ZJLXJHM
  is '֤�����ͼ�����';
comment on column ZXXT_BBJDFSPB.ZJCYRZZ
  is '֤��������סַ';
comment on column ZXXT_BBJDFSPB.SBSJ
  is '�걨ʱ��';
comment on column ZXXT_BBJDFSPB.SQRQ
  is '��������';
comment on column ZXXT_BBJDFSPB.LXFS
  is '��ϵ��ʽ';
comment on column ZXXT_BBJDFSPB.ZJYXQ
  is '֤����Ч��';
comment on column ZXXT_BBJDFSPB.CQHZCS
  is '��ȡ���ִ�ʩ';
comment on column ZXXT_BBJDFSPB.SYJFLYJ
  is '���ɼ���������';
comment on column ZXXT_BBJDFSPB.SBDWJCBRQ
  is '�걨��λ���ʱ�����';
comment on column ZXXT_BBJDFSPB.BLJGBLRBLSJJJG
  is '�������������ˡ�����ʱ�估�����';
comment on column ZXXT_BBJDFSPB.BH
  is '���';
comment on column ZXXT_BBJDFSPB.XM
  is '����';
comment on column ZXXT_BBJDFSPB.XB
  is '�Ա�';
comment on column ZXXT_BBJDFSPB.ZYM
  is '������';
comment on column ZXXT_BBJDFSPB.MZ
  is '����';
comment on column ZXXT_BBJDFSPB.WHCD
  is '�Ļ��̶�';
comment on column ZXXT_BBJDFSPB.HYZK
  is '����״��';
comment on column ZXXT_BBJDFSPB.SFZHMSFZ
  is '���֤�������֤';
comment on column ZXXT_BBJDFSPB.CSD
  is '������';
comment on column ZXXT_BBJDFSPB.CSRQ
  is '��������';
comment on column ZXXT_BBJDFSPB.CRJZJMCJHM
  is '���뾳֤�����Ƽ�����';
comment on column ZXXT_BBJDFSPB.GZDW
  is '������λ';
comment on column ZXXT_BBJDFSPB.DH
  is '�� ��';
comment on column ZXXT_BBJDFSPB.XZZ
  is '�� ס ַ';
comment on column ZXXT_BBJDFSPB.HKSZD
  is '�������ڵ�';
comment on column ZXXT_BBJDFSPB.TBBAQXKS
  is 'ͨ���������޿�ʼ';
comment on column ZXXT_BBJDFSPB.TBBAQXJS
  is 'ͨ���������޽���';
comment on column ZXXT_BBJDFSPB.BASY
  is '��������';
comment on column ZXXT_BBJDFSPB.FLYJ
  is '��������';
comment on column ZXXT_BBJDFSPB.DWSC
  is '����˵��';
comment on column ZXXT_BBJDFSPB.TBBAJGYJ
  is 'ͨ�������������';
comment on column ZXXT_BBJDFSPB.TBRQ
  is '�������';
comment on column ZXXT_BBJDFSPB.LXR
  is '�� ϵ ��';
comment on column ZXXT_BBJDFSPB.LXDH
  is '��ϵ�绰';
comment on column ZXXT_BBJDFSPB.SFFSZHC
  is '�Ƿ����ۺϴ�';
comment on column ZXXT_BBJDFSPB.FSZHCSJ
  is '�����ۺϴ�ʱ��';
comment on column ZXXT_BBJDFSPB.ZHCJS
  is '�ۺϴ�����';
comment on column ZXXT_BBJDFSPB.ZHCJSSJ
  is '�ۺϴ�����ʱ��';

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
  is '��������ԭִ�д�ʩ��������о���¼';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.FYBM
  is '��Ժ����';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.BH
  is '���';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.AJBH
  is '�������';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.SQR
  is '������';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.BZXR
  is '��ִ����';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.BGJCYZXCSSXHYYJJLSJ
  is '��������ԭִ�д�ʩ��������о���¼ʱ��';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.DD
  is '�ص�';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.CJR
  is '�μ���';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.CBR
  is '�а���';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.JLR
  is '��¼��';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.AQQK
  is '�������';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.CBRYJ
  is '�а������';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.HYQK
  is '�������';
comment on column ZXXT_BGJCYZXCSSXHYYJJL.YJYJ
  is '�о����';

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
  is '�������ִ���˼�׷�ӡ������ִ������������¼';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.FYBM
  is '��Ժ����';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.BH
  is '���';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.WDBH
  is '�ĵ����';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.AJBH
  is '�������';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.SQR
  is '������';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.BZXR
  is '��ִ����';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.BGSQZXRJZJBGBZXRSXHYSJ
  is '�������ִ���˼�׷�ӡ������ִ�����������ʱ��';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.DD
  is '�ص�';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.CJR
  is '�μ���';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.CBR
  is '�а���';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.JLR
  is '��¼��';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.AQQK
  is '�������';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.CBRYJ
  is '�а������';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.HYQK
  is '�������';
comment on column ZXXT_BGSQZXRJZJBGBZXRSXHYJL.YJYJ
  is '�о����';

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
  is '������¼';
comment on column ZXXT_BMJL.FYBM
  is '��Ժ����';
comment on column ZXXT_BMJL.XH
  is '���';
comment on column ZXXT_BMJL.BH
  is '���';
comment on column ZXXT_BMJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_BMJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_BMJL.DJR
  is '�Ǽ���';
comment on column ZXXT_BMJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_BMJL.BMYY
  is '����ԭ��';
comment on column ZXXT_BMJL.BDWQD
  is '������嵥';
comment on column ZXXT_BMJL.SYQR
  is '����Ȩ��';
comment on column ZXXT_BMJL.CKJG
  is '�ο��۸�';
comment on column ZXXT_BMJL.BMKSRQ
  is '������ʼ����';
comment on column ZXXT_BMJL.BMZE
  is '�����ܶ�';
comment on column ZXXT_BMJL.BMJG
  is '�������';
comment on column ZXXT_BMJL.BMJSRQ
  is '������������';
comment on column ZXXT_BMJL.MSRMC
  is '����������';
comment on column ZXXT_BMJL.BZ
  is '��ע';

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
  is '����������';
comment on column ZXXT_BMSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_BMSPB.BH
  is '���';
comment on column ZXXT_BMSPB.WDBH
  is '�ĵ����';
comment on column ZXXT_BMSPB.AJBH
  is '�������';
comment on column ZXXT_BMSPB.SQR
  is '������';
comment on column ZXXT_BMSPB.AH
  is '����';
comment on column ZXXT_BMSPB.CCQS
  is '�Ʋ�Ȩ��';
comment on column ZXXT_BMSPB.ZXZYJ
  is 'ִ�������';
comment on column ZXXT_BMSPB.BMSQRQ
  is '������������';
comment on column ZXXT_BMSPB.BD
  is '��    ��';
comment on column ZXXT_BMSPB.PGJG
  is '�����۸�';
comment on column ZXXT_BMSPB.BMSFJSQZXRSQ
  is '�����Ƿ�����ִ��������';
comment on column ZXXT_BMSPB.JYBMJ
  is '���������';
comment on column ZXXT_BMSPB.BMPJWZ
  is '����Ʒ��λ��';
comment on column ZXXT_BMSPB.BZXR
  is '��ִ����';
comment on column ZXXT_BMSPB.BMPCQK
  is '����Ʒ覴����';

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
  is '���˴���������';
comment on column ZXXT_BYCZSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_BYCZSPB.XH
  is '���';
comment on column ZXXT_BYCZSPB.AJBH
  is '�������';
comment on column ZXXT_BYCZSPB.AY
  is '����';
comment on column ZXXT_BYCZSPB.AH
  is '����';
comment on column ZXXT_BYCZSPB.BZXR
  is '��ִ����';
comment on column ZXXT_BYCZSPB.LASJ
  is '����ʱ��';
comment on column ZXXT_BYCZSPB.SQR
  is '������';
comment on column ZXXT_BYCZSPB.DKZCFCCQK
  is '��������Ʋ����';
comment on column ZXXT_BYCZSPB.BYCZLY
  is '���˴�������';
comment on column ZXXT_BYCZSPB.BZ
  is '��ע';

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
  is '�����ύ���������ύ������';
comment on column ZXXT_BYTJZXMYTJSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_BYTJZXMYTJSPB.XH
  is '���';
comment on column ZXXT_BYTJZXMYTJSPB.BH
  is '���';
comment on column ZXXT_BYTJZXMYTJSPB.AJBH
  is '�������';
comment on column ZXXT_BYTJZXMYTJSPB.SQR
  is '������';
comment on column ZXXT_BYTJZXMYTJSPB.BZXR
  is '��ִ����';
comment on column ZXXT_BYTJZXMYTJSPB.CBRYJ
  is '�а������';
comment on column ZXXT_BYTJZXMYTJSPB.BYTJZXMYTJYY
  is '�����ύ���������ύԭ��';
comment on column ZXXT_BYTJZXMYTJSPB.QTXYSMDQK
  is '������Ҫ˵�������';
comment on column ZXXT_BYTJZXMYTJSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_BYTJZXMYTJSPB.ZCSFPZ
  is '�鳤�Ƿ���׼';
comment on column ZXXT_BYTJZXMYTJSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_BYTJZXMYTJSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_BYTJZXMYTJSPB.CCSPR
  is '����������';
comment on column ZXXT_BYTJZXMYTJSPB.CCSFPZ
  is '�����Ƿ���׼';
comment on column ZXXT_BYTJZXMYTJSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_BYTJZXMYTJSPB.CCSPRQ
  is '������������';
comment on column ZXXT_BYTJZXMYTJSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_BYTJZXMYTJSPB.JCSFPZ
  is '�ֳ��Ƿ���׼';
comment on column ZXXT_BYTJZXMYTJSPB.JCCSPYJ
  is '�ֳ����������';
comment on column ZXXT_BYTJZXMYTJSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_BYTJZXMYTJSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_BYTJZXMYTJSPB.YCSFPZ
  is 'Ժ���Ƿ���׼';
comment on column ZXXT_BYTJZXMYTJSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_BYTJZXMYTJSPB.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_BYTJZXMYTJSPB.SFFSZHC
  is '�Ƿ����ۺϴ�';
comment on column ZXXT_BYTJZXMYTJSPB.FSZHCSJ
  is '�����ۺϴ�ʱ��';
comment on column ZXXT_BYTJZXMYTJSPB.ZHCJS
  is '�ۺϴ�����';
comment on column ZXXT_BYTJZXMYTJSPB.ZHCJSSJ
  is '�ۺϴ�����ʱ��';
comment on column ZXXT_BYTJZXMYTJSPB.SFFHCBR
  is '�Ƿ񷵻سа���';
comment on column ZXXT_BYTJZXMYTJSPB.FHCBRSJ
  is '���سа���ʱ��';

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
  is '����ִ��';
comment on column ZXXT_BYZX.FYBM
  is '��Ժ����';
comment on column ZXXT_BYZX.XH
  is '���';
comment on column ZXXT_BYZX.BH
  is '���';
comment on column ZXXT_BYZX.KPLB
  is '��Ƭ���';
comment on column ZXXT_BYZX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_BYZX.DJR
  is '�Ǽ���';
comment on column ZXXT_BYZX.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_BYZX.BYZXYY
  is '����ִ��ԭ��';
comment on column ZXXT_BYZX.CDRQ
  is '�ö�����';
comment on column ZXXT_BYZX.BZ
  is '��ע';

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
  is '��ִ���˲Ʋ��걨��ʵ';
comment on column ZXXT_BZXRCCSBHS.FYBM
  is '��Ժ����';
comment on column ZXXT_BZXRCCSBHS.XH
  is '���';
comment on column ZXXT_BZXRCCSBHS.BH
  is '���';
comment on column ZXXT_BZXRCCSBHS.AJBH
  is '�������';
comment on column ZXXT_BZXRCCSBHS.SFSB
  is '�Ƿ��걨';
comment on column ZXXT_BZXRCCSBHS.BZXRSFJXCCSB
  is '��ִ�����Ƿ���вƲ��걨';
comment on column ZXXT_BZXRCCSBHS.DBZXRCQFK
  is '�Ա�ִ���˲�ȡ����';
comment on column ZXXT_BZXRCCSBHS.JL
  is '����';
comment on column ZXXT_BZXRCCSBHS.QT
  is '����';
comment on column ZXXT_BZXRCCSBHS.WCQ
  is 'δ��ȡ';
comment on column ZXXT_BZXRCCSBHS.BZXRCCSBQKSFRS
  is '��ִ���˲Ʋ��걨����Ƿ���ʵ';
comment on column ZXXT_BZXRCCSBHS.SFDSBSSCCCQKZCSSF
  is '�Ƿ���걨��ʵ�Ʋ���ȡ���ƴ�ʩsf';
comment on column ZXXT_BZXRCCSBHS.SFDSBSSCCCQKZCS
  is '�Ƿ���걨��ʵ�Ʋ���ȡ���ƴ�ʩ';

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
  is '������ϵ�ӱ�';
comment on column ZXXT_CAGXZB.FYBM
  is '��Ժ����';
comment on column ZXXT_CAGXZB.CABH
  is '�������';
comment on column ZXXT_CAGXZB.AJBH
  is '�������';
comment on column ZXXT_CAGXZB.GLAJBH
  is '�����������';
comment on column ZXXT_CAGXZB.GLRQ
  is '��������';
comment on column ZXXT_CAGXZB.DSR
  is '������';
comment on column ZXXT_CAGXZB.GLDSR
  is '����������';

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
  is '����Ϣ���������';
comment on column ZXXT_CBXXBGSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_CBXXBGSPB.WDBH
  is '�ĵ����';
comment on column ZXXT_CBXXBGSPB.BH
  is '���';
comment on column ZXXT_CBXXBGSPB.AJBH
  is '�������';
comment on column ZXXT_CBXXBGSPB.SQR
  is '������';
comment on column ZXXT_CBXXBGSPB.BZXR
  is '��ִ����';
comment on column ZXXT_CBXXBGSPB.CBRYJ
  is '�а������';
comment on column ZXXT_CBXXBGSPB.WBCBXXSCBGWBCBYY
  is '�󱨡�����Ϣɾ����������󱨡���ԭ��';
comment on column ZXXT_CBXXBGSPB.QTXYSMDQK
  is '������Ҫ˵�������';
comment on column ZXXT_CBXXBGSPB.TQSPSXSCHBG
  is '�����������ɾ��������';
comment on column ZXXT_CBXXBGSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_CBXXBGSPB.ZCSFPZ
  is '�鳤�Ƿ���׼';
comment on column ZXXT_CBXXBGSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_CBXXBGSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_CBXXBGSPB.CCSPR
  is '����������';
comment on column ZXXT_CBXXBGSPB.CCSFPZ
  is '�����Ƿ���׼';
comment on column ZXXT_CBXXBGSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_CBXXBGSPB.CCSPRQ
  is '������������';
comment on column ZXXT_CBXXBGSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_CBXXBGSPB.JCSFPZ
  is '�ֳ��Ƿ���׼';
comment on column ZXXT_CBXXBGSPB.JCCSPYJ
  is '�ֳ����������';
comment on column ZXXT_CBXXBGSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_CBXXBGSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_CBXXBGSPB.YCSFPZ
  is 'Ժ���Ƿ���׼';
comment on column ZXXT_CBXXBGSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_CBXXBGSPB.YCSPRQ
  is 'Ժ����������';

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
  is '������';
comment on column ZXXT_CCBGB.FYBM
  is '��Ժ����';
comment on column ZXXT_CCBGB.WDBH
  is '�ĵ����';
comment on column ZXXT_CCBGB.BH
  is '���';
comment on column ZXXT_CCBGB.AJBH
  is '�������';
comment on column ZXXT_CCBGB.BGSJ
  is '����ʱ��';
comment on column ZXXT_CCBGB.YJSJ
  is 'Ԥ��ʱ��';
comment on column ZXXT_CCBGB.CCKSSJ
  is '���ʼʱ��';
comment on column ZXXT_CCBGB.CCJSSJ
  is '�������ʱ��';
comment on column ZXXT_CCBGB.JBAQ
  is '��������';
comment on column ZXXT_CCBGB.CCSY
  is '��������';
comment on column ZXXT_CCBGB.CCRY
  is '������Ա';
comment on column ZXXT_CCBGB.JTGJ
  is '��ͨ����';
comment on column ZXXT_CCBGB.CCDZ
  is '�����ַ';

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
  is '�Ʋ��������ۼ�¼';
comment on column ZXXT_CCPMTLJL.FYBM
  is '��Ժ����';
comment on column ZXXT_CCPMTLJL.XH
  is '���';
comment on column ZXXT_CCPMTLJL.BH
  is '���';
comment on column ZXXT_CCPMTLJL.TLSJ
  is '����ʱ��';
comment on column ZXXT_CCPMTLJL.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_CCPMTLJL.CBR
  is '�а���';
comment on column ZXXT_CCPMTLJL.LASJ
  is '����ʱ��';
comment on column ZXXT_CCPMTLJL.DZ
  is '��ַ';
comment on column ZXXT_CCPMTLJL.ZCRBS
  is '�����˱�ʶ';
comment on column ZXXT_CCPMTLJL.ZCR
  is '������';
comment on column ZXXT_CCPMTLJL.SQR
  is '������';
comment on column ZXXT_CCPMTLJL.BZXR
  is '��ִ����';
comment on column ZXXT_CCPMTLJL.CJRY
  is '�μ���Ա';
comment on column ZXXT_CCPMTLJL.CBRJSAQ
  is '�а��˽��ܰ���';
comment on column ZXXT_CCPMTLJL.TLSX
  is '��������';
comment on column ZXXT_CCPMTLJL.TLJG
  is '���۽��';

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
  is '����������';
comment on column ZXXT_CCSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_CCSPB.BH
  is '���';
comment on column ZXXT_CCSPB.WDBH
  is '�ĵ����';
comment on column ZXXT_CCSPB.AJBH
  is '�������';
comment on column ZXXT_CCSPB.CCDD
  is '����ص�';
comment on column ZXXT_CCSPB.YJSJ
  is 'Ԥ��ʱ��';
comment on column ZXXT_CCSPB.CCKSSJ
  is '���ʼʱ��';
comment on column ZXXT_CCSPB.CCJSSJ
  is '�������ʱ��';
comment on column ZXXT_CCSPB.JBAQ
  is '��������';
comment on column ZXXT_CCSPB.CCSY
  is '��������';
comment on column ZXXT_CCSPB.CCRY
  is '������Ա';
comment on column ZXXT_CCSPB.JTGJ
  is '��ͨ����';

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
  is '�Ʋ�����';
comment on column ZXXT_CCXS.FYBM
  is '��Ժ����';
comment on column ZXXT_CCXS.XH
  is '���';
comment on column ZXXT_CCXS.BH
  is '���';
comment on column ZXXT_CCXS.CCZL
  is '�Ʋ�����';
comment on column ZXXT_CCXS.CCMC
  is '�Ʋ�����';
comment on column ZXXT_CCXS.CXSJ
  is '��ѯʱ��';
comment on column ZXXT_CCXS.CXJG
  is '��ѯ���';
comment on column ZXXT_CCXS.KHX
  is '������';
comment on column ZXXT_CCXS.CKHM
  is '����';
comment on column ZXXT_CCXS.CKZH
  is '����˺�';
comment on column ZXXT_CCXS.CKBZ
  is '������';
comment on column ZXXT_CCXS.CKJE
  is '�����';
comment on column ZXXT_CCXS.DSRMC
  is '����������';
comment on column ZXXT_CCXS.SYQR
  is '����Ȩ��';
comment on column ZXXT_CCXS.XSSS
  is '������ʵ';
comment on column ZXXT_CCXS.BZ
  is '��ע';
comment on column ZXXT_CCXS.CCSYR
  is '�Ʋ�������';
comment on column ZXXT_CCXS.CCXS
  is '�Ʋ�����';

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
  is '����¼';
comment on column ZXXT_CFJL.FYBM
  is '��Ժ����';
comment on column ZXXT_CFJL.XH
  is '���';
comment on column ZXXT_CFJL.BH
  is '���';
comment on column ZXXT_CFJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_CFJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_CFJL.DJR
  is '�Ǽ���';
comment on column ZXXT_CFJL.RQ
  is '����';
comment on column ZXXT_CFJL.CFLX
  is '�������';
comment on column ZXXT_CFJL.TQFS
  is '���뷽ʽ';
comment on column ZXXT_CFJL.CFWSYR
  is '�����������';
comment on column ZXXT_CFJL.QD
  is '�嵥';
comment on column ZXXT_CFJL.ZXBDE
  is 'ִ�б�Ķ�';
comment on column ZXXT_CFJL.CFSXDD
  is '�����Ч�ص�';
comment on column ZXXT_CFJL.CFJMRQ
  is '����������';
comment on column ZXXT_CFJL.DD
  is '�ص�';
comment on column ZXXT_CFJL.FF
  is '����';
comment on column ZXXT_CFJL.BGRBS
  is '�����˱�ʶ';
comment on column ZXXT_CFJL.BGR
  is '������';
comment on column ZXXT_CFJL.BGDD
  is '���ܵص�';
comment on column ZXXT_CFJL.BZ
  is '��ע';

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
  is '����������¼';
comment on column ZXXT_CHPGJL.FYBM
  is '��Ժ����';
comment on column ZXXT_CHPGJL.WDBH
  is '�ĵ����';
comment on column ZXXT_CHPGJL.BH
  is '���';
comment on column ZXXT_CHPGJL.SQR
  is '������';
comment on column ZXXT_CHPGJL.BZXR
  is '��ִ����';
comment on column ZXXT_CHPGJL.PMJG
  is '��������';
comment on column ZXXT_CHPGJL.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_CHPGJL.CBR
  is '�а���';
comment on column ZXXT_CHPGJL.BZ
  is '��ע';
comment on column ZXXT_CHPGJL.CHLY
  is '��������';
comment on column ZXXT_CHPGJL.BZQX
  is '��������';
comment on column ZXXT_CHPGJL.ZCSPR
  is '�鳤������';
comment on column ZXXT_CHPGJL.ZCSFPZSFSP
  is '�鳤�Ƿ���׼sfsp';
comment on column ZXXT_CHPGJL.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_CHPGJL.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_CHPGJL.CCSPR
  is '����������';
comment on column ZXXT_CHPGJL.CCSFPZ
  is '�����Ƿ���׼';
comment on column ZXXT_CHPGJL.CCSPYJ
  is '�����������';
comment on column ZXXT_CHPGJL.CCSPRQ
  is '������������';
comment on column ZXXT_CHPGJL.JCSPR
  is '�ֳ�������';
comment on column ZXXT_CHPGJL.JCSFPZ
  is '�ֳ��Ƿ���׼';
comment on column ZXXT_CHPGJL.JCCSPYJ
  is '�ֳ����������';
comment on column ZXXT_CHPGJL.JCSPRQJCSP
  is '�ֳ���������jcsp';
comment on column ZXXT_CHPGJL.YCSPR
  is 'Ժ��������';
comment on column ZXXT_CHPGJL.YCSFPZ
  is 'Ժ���Ƿ���׼';
comment on column ZXXT_CHPGJL.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_CHPGJL.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_CHPGJL.ZCSPRZZSP
  is '�鳤������zzsp';
comment on column ZXXT_CHPGJL.ZCSFPZ
  is '�鳤�Ƿ���׼';
comment on column ZXXT_CHPGJL.ZCSPYJSPYJ
  is '�鳤�������spyj';
comment on column ZXXT_CHPGJL.CCMC
  is '�Ʋ�����';
comment on column ZXXT_CHPGJL.CCXS
  is '�Ʋ�����';

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
  is '��������������';
comment on column ZXXT_CHPGSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_CHPGSPB.XH
  is '���';
comment on column ZXXT_CHPGSPB.BH
  is '���';
comment on column ZXXT_CHPGSPB.SQR
  is '������';
comment on column ZXXT_CHPGSPB.BZXR
  is '��ִ����';
comment on column ZXXT_CHPGSPB.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_CHPGSPB.CBR
  is '�а���';
comment on column ZXXT_CHPGSPB.CCMC
  is '�Ʋ�����';
comment on column ZXXT_CHPGSPB.BZ
  is '��ע';
comment on column ZXXT_CHPGSPB.CHPGLY
  is '������������';
comment on column ZXXT_CHPGSPB.CCXS
  is '�Ʋ�����';
comment on column ZXXT_CHPGSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_CHPGSPB.ZCSFPZ
  is '�鳤�Ƿ���׼';
comment on column ZXXT_CHPGSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_CHPGSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_CHPGSPB.CCSPR
  is '����������';
comment on column ZXXT_CHPGSPB.CCSFPZ
  is '�����Ƿ���׼';
comment on column ZXXT_CHPGSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_CHPGSPB.CCSPRQ
  is '������������';
comment on column ZXXT_CHPGSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_CHPGSPB.JCSFPZ
  is '�ֳ��Ƿ���׼';
comment on column ZXXT_CHPGSPB.JCCSPYJ
  is '�ֳ����������';
comment on column ZXXT_CHPGSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_CHPGSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_CHPGSPB.YCSFPZ
  is 'Ժ���Ƿ���׼';
comment on column ZXXT_CHPGSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_CHPGSPB.YCSPRQ
  is 'Ժ����������';

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
  is '��������ί����';
comment on column ZXXT_CHPGWTS.FYBM
  is '��Ժ����';
comment on column ZXXT_CHPGWTS.XH
  is '���';
comment on column ZXXT_CHPGWTS.BH
  is '���';
comment on column ZXXT_CHPGWTS.AJBH
  is '�������';
comment on column ZXXT_CHPGWTS.CHPGNR
  is '������������';
comment on column ZXXT_CHPGWTS.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_CHPGWTS.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_CHPGWTS.BDWQD
  is '������嵥';
comment on column ZXXT_CHPGWTS.SQRQ
  is '��������';
comment on column ZXXT_CHPGWTS.ZCSPR
  is '�鳤������';
comment on column ZXXT_CHPGWTS.ZCSFPZ
  is '�鳤�Ƿ���׼';
comment on column ZXXT_CHPGWTS.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_CHPGWTS.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_CHPGWTS.CCSPR
  is '����������';
comment on column ZXXT_CHPGWTS.CCSFPZ
  is '�����Ƿ���׼';
comment on column ZXXT_CHPGWTS.CCSPYJ
  is '�����������';
comment on column ZXXT_CHPGWTS.CCSPRQ
  is '������������';
comment on column ZXXT_CHPGWTS.JCSPR
  is '�ֳ�������';
comment on column ZXXT_CHPGWTS.JCSFPZ
  is '�ֳ��Ƿ���׼';
comment on column ZXXT_CHPGWTS.JCCSPYJ
  is '�ֳ����������';
comment on column ZXXT_CHPGWTS.SPJCSPRQJZPS
  is 'sp�ֳ���������jzps';
comment on column ZXXT_CHPGWTS.YCSPR
  is 'Ժ��������';
comment on column ZXXT_CHPGWTS.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_CHPGWTS.JSSJ
  is '����ʱ��';
comment on column ZXXT_CHPGWTS.BDW
  is '�����';

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
  is '��������';
comment on column ZXXT_CHPM.FYBM
  is '��Ժ����';
comment on column ZXXT_CHPM.XH
  is '���';
comment on column ZXXT_CHPM.BH
  is '���';
comment on column ZXXT_CHPM.SQR
  is '������';
comment on column ZXXT_CHPM.BZXR
  is '��ִ����';
comment on column ZXXT_CHPM.CHLY
  is '��������';
comment on column ZXXT_CHPM.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_CHPM.CBR
  is '�а���';
comment on column ZXXT_CHPM.BZ
  is '��ע';
comment on column ZXXT_CHPM.PMJG
  is '�������';
comment on column ZXXT_CHPM.SQRQ
  is '��������';
comment on column ZXXT_CHPM.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_CHPM.ZCSPR
  is '�鳤������';
comment on column ZXXT_CHPM.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_CHPM.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_CHPM.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_CHPM.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_CHPM.CCSPR
  is '����������';
comment on column ZXXT_CHPM.CCPZ
  is '������׼';
comment on column ZXXT_CHPM.CCSPYJ
  is '�����������';
comment on column ZXXT_CHPM.CCSPRQ
  is '������������';
comment on column ZXXT_CHPM.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_CHPM.JCSPR
  is '�ֳ�������';
comment on column ZXXT_CHPM.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_CHPM.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_CHPM.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_CHPM.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_CHPM.YCSPR
  is 'Ժ��������';
comment on column ZXXT_CHPM.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_CHPM.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_CHPM.YCSPRQ
  is 'Ժ����������';

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
  is '��������ί����';
comment on column ZXXT_CHPMWTS.FYBM
  is '��Ժ����';
comment on column ZXXT_CHPMWTS.XH
  is '���';
comment on column ZXXT_CHPMWTS.AJBH
  is '�������';
comment on column ZXXT_CHPMWTS.SQZXR
  is '����ִ����';
comment on column ZXXT_CHPMWTS.BZXR
  is '��ִ����';
comment on column ZXXT_CHPMWTS.AY
  is '����';
comment on column ZXXT_CHPMWTS.PMJG
  is '��������';
comment on column ZXXT_CHPMWTS.CHYY
  is '����ԭ��';
comment on column ZXXT_CHPMWTS.BZXRCCQK
  is '��ִ���˲Ʋ����';
comment on column ZXXT_CHPMWTS.TXRQ
  is '��д����';
comment on column ZXXT_CHPMWTS.SQRQ
  is '��������';
comment on column ZXXT_CHPMWTS.ZCSPR
  is '�鳤������';
comment on column ZXXT_CHPMWTS.ZCSFPZ
  is '�鳤�Ƿ���׼';
comment on column ZXXT_CHPMWTS.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_CHPMWTS.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_CHPMWTS.CCSPR
  is '����������';
comment on column ZXXT_CHPMWTS.CCSFPZ
  is '�����Ƿ���׼';
comment on column ZXXT_CHPMWTS.CCSPYJ
  is '�����������';
comment on column ZXXT_CHPMWTS.CCSPRQ
  is '������������';
comment on column ZXXT_CHPMWTS.JCSPR
  is '�ֳ�������';
comment on column ZXXT_CHPMWTS.JCSFPZ
  is '�ֳ��Ƿ���׼';
comment on column ZXXT_CHPMWTS.JCCSPYJ
  is '�ֳ����������';
comment on column ZXXT_CHPMWTS.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_CHPMWTS.YCSPR
  is 'Ժ��������';
comment on column ZXXT_CHPMWTS.YCSFPZ
  is 'Ժ���Ƿ���׼';
comment on column ZXXT_CHPMWTS.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_CHPMWTS.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_CHPMWTS.JSRQ
  is '��������';

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
  is '��ȡǿ�ƴ�ʩ������';
comment on column ZXXT_CQQZCSSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_CQQZCSSPB.XH
  is '���';
comment on column ZXXT_CQQZCSSPB.BH
  is '���';
comment on column ZXXT_CQQZCSSPB.AH
  is '����';
comment on column ZXXT_CQQZCSSPB.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_CQQZCSSPB.CBR
  is '�а���';
comment on column ZXXT_CQQZCSSPB.BD
  is '���';
comment on column ZXXT_CQQZCSSPB.TBSJ
  is '���ʱ��';
comment on column ZXXT_CQQZCSSPB.SQR
  is '������';
comment on column ZXXT_CQQZCSSPB.BZXR
  is '��ִ����';
comment on column ZXXT_CQQZCSSPB.XXDFLWS
  is '��Я����������';
comment on column ZXXT_CQQZCSSPB.CQQZCSFS
  is '��ȡǿ�ƴ�ʩ��ʽ';
comment on column ZXXT_CQQZCSSPB.CQQZCSDLY
  is '��ȡǿ�ƴ�ʩ������';
comment on column ZXXT_CQQZCSSPB.DSRLXDH
  is '��������ϵ�绰';
comment on column ZXXT_CQQZCSSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_CQQZCSSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_CQQZCSSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_CQQZCSSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_CQQZCSSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_CQQZCSSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_CQQZCSSPB.CCSPR
  is '����������';
comment on column ZXXT_CQQZCSSPB.CCPZ
  is '������׼';
comment on column ZXXT_CQQZCSSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_CQQZCSSPB.CCSPRQ
  is '������������';
comment on column ZXXT_CQQZCSSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_CQQZCSSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_CQQZCSSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_CQQZCSSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_CQQZCSSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_CQQZCSSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_CQQZCSSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_CQQZCSSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_CQQZCSSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_CQQZCSSPB.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_CQQZCSSPB.FJCSPRBS
  is '���ֳ������˱�ʶ';
comment on column ZXXT_CQQZCSSPB.FJCSPR
  is '���ֳ�������';
comment on column ZXXT_CQQZCSSPB.FJCPZ
  is '���ֳ���׼';
comment on column ZXXT_CQQZCSSPB.FJCSPYJ
  is '���ֳ��������';
comment on column ZXXT_CQQZCSSPB.FJCSPRQ
  is '���ֳ���������';

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
  is '��ȡǿ�ƴ�ʩ������2';
comment on column ZXXT_CQQZCSSPB2.FYBM
  is '��Ժ����';
comment on column ZXXT_CQQZCSSPB2.XH
  is '���';
comment on column ZXXT_CQQZCSSPB2.BH
  is '���';
comment on column ZXXT_CQQZCSSPB2.KPLB
  is '��Ƭ���';
comment on column ZXXT_CQQZCSSPB2.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_CQQZCSSPB2.DJR
  is '�Ǽ���';
comment on column ZXXT_CQQZCSSPB2.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_CQQZCSSPB2.BZ
  is '��ע';
comment on column ZXXT_CQQZCSSPB2.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_CQQZCSSPB2.CBR
  is '�а���';
comment on column ZXXT_CQQZCSSPB2.CQQZCSFS
  is '��ȡǿ�ƴ�ʩ��ʽ';
comment on column ZXXT_CQQZCSSPB2.CQQZCSLY
  is '��ȡǿ�ƴ�ʩ����';

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
  is '�����տ�Ǽ�';
comment on column ZXXT_CWSKDJ.FYBM
  is '��Ժ����';
comment on column ZXXT_CWSKDJ.XH
  is '���';
comment on column ZXXT_CWSKDJ.BH
  is '���';
comment on column ZXXT_CWSKDJ.NH
  is '���';
comment on column ZXXT_CWSKDJ.FYJC
  is '��Ժ���';
comment on column ZXXT_CWSKDJ.AZ
  is '����';
comment on column ZXXT_CWSKDJ.HS
  is '����';
comment on column ZXXT_CWSKDJ.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_CWSKDJ.CBR
  is '�а���';
comment on column ZXXT_CWSKDJ.SKZL
  is '�տ�����';
comment on column ZXXT_CWSKDJ.SKRQ
  is '�տ�����';
comment on column ZXXT_CWSKDJ.SKDX
  is '�տ����';
comment on column ZXXT_CWSKDJ.SKJE
  is '�տ���';
comment on column ZXXT_CWSKDJ.SJHM
  is '�վݺ���';
comment on column ZXXT_CWSKDJ.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_CWSKDJ.DJR
  is '�Ǽ���';
comment on column ZXXT_CWSKDJ.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_CWSKDJ.QRRBS
  is 'ȷ���˱�ʶ';
comment on column ZXXT_CWSKDJ.QRR
  is 'ȷ����';
comment on column ZXXT_CWSKDJ.QRRQ
  is 'ȷ������';
comment on column ZXXT_CWSKDJ.CBSPT
  is '�а�����ͥ';
comment on column ZXXT_CWSKDJ.YSRQ
  is 'ԭ������';
comment on column ZXXT_CWSKDJ.KJAKSJSJ
  is '���߰����վ�ʱ��';
comment on column ZXXT_CWSKDJ.LDCBYJ
  is '�쵼�߰����';
comment on column ZXXT_CWSKDJ.LDCBRQ
  is '�쵼�߰�����';
comment on column ZXXT_CWSKDJ.LDCBRBS
  is '�쵼�߰��˱�ʶ';
comment on column ZXXT_CWSKDJ.LDCBR
  is '�쵼�߰���';
comment on column ZXXT_CWSKDJ.CBRHFYJ
  is '�а��˻ظ����';
comment on column ZXXT_CWSKDJ.CBRHFRQ
  is '�а��˻ظ�����';
comment on column ZXXT_CWSKDJ.HFRBS
  is '�ظ��˱�ʶ';
comment on column ZXXT_CWSKDJ.HFR
  is '�ظ���';
comment on column ZXXT_CWSKDJ.SFBZJ
  is '�Ƿ�֤��';
comment on column ZXXT_CWSKDJ.ZRAKSJ
  is 'ת�밸��ʱ��';

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
  is '��������������';
comment on column ZXXT_CXPGSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_CXPGSPB.XH
  is '���';
comment on column ZXXT_CXPGSPB.BH
  is '���';
comment on column ZXXT_CXPGSPB.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_CXPGSPB.CBR
  is '�а���';
comment on column ZXXT_CXPGSPB.KZCCSJ
  is '���ƲƲ�ʱ��';
comment on column ZXXT_CXPGSPB.LABD
  is '�������';
comment on column ZXXT_CXPGSPB.PGQXKS
  is '�������޿�ʼ';
comment on column ZXXT_CXPGSPB.PGQXJS
  is '�������޽���';
comment on column ZXXT_CXPGSPB.PGQX
  is '��������';
comment on column ZXXT_CXPGSPB.PGBCXRQ
  is '��������������';
comment on column ZXXT_CXPGSPB.CCMC
  is '�Ʋ�����';
comment on column ZXXT_CXPGSPB.SQR
  is '������';
comment on column ZXXT_CXPGSPB.BZXR
  is '��ִ����';
comment on column ZXXT_CXPGSPB.CXPGYY
  is '��������ԭ��';
comment on column ZXXT_CXPGSPB.CXPGLY
  is '������������';
comment on column ZXXT_CXPGSPB.CCXS
  is '�Ʋ�����';
comment on column ZXXT_CXPGSPB.DSRLXFS
  is '��������ϵ��ʽ';
comment on column ZXXT_CXPGSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_CXPGSPB.ZCSFPZ
  is '�鳤�Ƿ���׼';
comment on column ZXXT_CXPGSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_CXPGSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_CXPGSPB.CCSPR
  is '����������';
comment on column ZXXT_CXPGSPB.CCSFPZ
  is '�����Ƿ���׼';
comment on column ZXXT_CXPGSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_CXPGSPB.CCSPRQ
  is '������������';
comment on column ZXXT_CXPGSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_CXPGSPB.JCSFPZ
  is '�ֳ��Ƿ���׼';
comment on column ZXXT_CXPGSPB.JCCSPYJ
  is '�ֳ����������';
comment on column ZXXT_CXPGSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_CXPGSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_CXPGSPB.YCSFPZ
  is 'Ժ���Ƿ���׼';
comment on column ZXXT_CXPGSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_CXPGSPB.YCSPRQ
  is 'Ժ����������';

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
  is '�������Ԥ����������о���¼';
comment on column ZXXT_CYFPYASXHYYJJL.FYBM
  is '��Ժ����';
comment on column ZXXT_CYFPYASXHYYJJL.XH
  is '���';
comment on column ZXXT_CYFPYASXHYYJJL.WDBH
  is '�ĵ����';
comment on column ZXXT_CYFPYASXHYYJJL.SQR
  is '������';
comment on column ZXXT_CYFPYASXHYYJJL.CYFPYASXHYYJSJCYFPYBA
  is '�������Ԥ����������о�ʱ��cyfpyba';
comment on column ZXXT_CYFPYASXHYYJJL.DD
  is '�ص�';
comment on column ZXXT_CYFPYASXHYYJJL.CBRBS
  is '�ΰ��˱�ʶ';
comment on column ZXXT_CYFPYASXHYYJJL.CJR
  is '�μ���';
comment on column ZXXT_CYFPYASXHYYJJL.CBRBSCBR
  is '�а��˱�ʶcbr';
comment on column ZXXT_CYFPYASXHYYJJL.CBR
  is '�а���';
comment on column ZXXT_CYFPYASXHYYJJL.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_CYFPYASXHYYJJL.JLR
  is '��¼��';
comment on column ZXXT_CYFPYASXHYYJJL.AQQK
  is '�������';
comment on column ZXXT_CYFPYASXHYYJJL.CBRYJ
  is '�а������';
comment on column ZXXT_CYFPYASXHYYJJL.HYQK
  is '�������';
comment on column ZXXT_CYFPYASXHYYJJL.YJYJ
  is '�о����';
comment on column ZXXT_CYFPYASXHYYJJL.CYFPYASXHYYJSJ
  is '�������Ԥ����������о�ʱ��';

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
  is '�����¼';
comment on column ZXXT_DCJL.FYBM
  is '��Ժ����';
comment on column ZXXT_DCJL.XH
  is '���';
comment on column ZXXT_DCJL.BH
  is '���';
comment on column ZXXT_DCJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_DCJL.DJR
  is '�Ǽ���';
comment on column ZXXT_DCJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_DCJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_DCJL.BDCR
  is '��������';
comment on column ZXXT_DCJL.DCSJ
  is '����ʱ��';
comment on column ZXXT_DCJL.DCDD
  is '����ص�';
comment on column ZXXT_DCJL.DCNR
  is '��������';
comment on column ZXXT_DCJL.DCJG
  is '������';
comment on column ZXXT_DCJL.JSRQ
  is '��������';
comment on column ZXXT_DCJL.CLJG
  is '������';

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
  is '�������';
comment on column ZXXT_DCQK.FYBM
  is '��Ժ����';
comment on column ZXXT_DCQK.XH
  is '���';
comment on column ZXXT_DCQK.BH
  is '���';
comment on column ZXXT_DCQK.DCSJ
  is '����ʱ��';
comment on column ZXXT_DCQK.DCYY
  is '����ԭ��';

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
  is '����ծȨִ�м�¼';
comment on column ZXXT_DQZQZXJL.FYBM
  is '��Ժ����';
comment on column ZXXT_DQZQZXJL.XH
  is '���';
comment on column ZXXT_DQZQZXJL.BH
  is '���';
comment on column ZXXT_DQZQZXJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_DQZQZXJL.DJR
  is '�Ǽ���';
comment on column ZXXT_DQZQZXJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_DQZQZXJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_DQZQZXJL.LY
  is '����';
comment on column ZXXT_DQZQZXJL.DSR
  is '������';
comment on column ZXXT_DQZQZXJL.BZ
  is '��ע';
comment on column ZXXT_DQZQZXJL.YYRQ
  is '��������';
comment on column ZXXT_DQZQZXJL.YYNR
  is '��������';
comment on column ZXXT_DQZQZXJL.YYCLJG
  is '���鴦����';
comment on column ZXXT_DQZQZXJL.KBBCLDYY
  is '���粻������ԭ��';
comment on column ZXXT_DQZQZXJL.CDRQ
  is '�ö�����';
comment on column ZXXT_DQZQZXJL.QDDZQSE
  is 'ȷ����ծȨ����';
comment on column ZXXT_DQZQZXJL.CDNR
  is '�ö�����';
comment on column ZXXT_DQZQZXJL.BZBZ
  is '��עbz';

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
  is '����Ϊ��ִ�м�¼';
comment on column ZXXT_DXWDZXJL.FYBM
  is '��Ժ����';
comment on column ZXXT_DXWDZXJL.XH
  is '���';
comment on column ZXXT_DXWDZXJL.BH
  is '���';
comment on column ZXXT_DXWDZXJL.XWDNR
  is '��Ϊ������';
comment on column ZXXT_DXWDZXJL.ZXRQ
  is 'ִ������';
comment on column ZXXT_DXWDZXJL.ZXQK
  is 'ִ�����';
comment on column ZXXT_DXWDZXJL.BZ
  is '��ע';

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
  is '���̼�¼��';
comment on column ZXXT_GCJLB.FYBM
  is '��Ժ����';
comment on column ZXXT_GCJLB.BH
  is '���';
comment on column ZXXT_GCJLB.XFBH
  is '�ŷñ��';
comment on column ZXXT_GCJLB.JDBH
  is '�ڵ���';
comment on column ZXXT_GCJLB.JDMC
  is '�ڵ�����';
comment on column ZXXT_GCJLB.FSRBS
  is '�����˱�ʶ';
comment on column ZXXT_GCJLB.FSRJSR
  is '������jsr';
comment on column ZXXT_GCJLB.FSSJ
  is '����ʱ��';
comment on column ZXXT_GCJLB.JSRBSJSRBS
  is '�����˱�ʶjsrbs';
comment on column ZXXT_GCJLB.JSR
  is '������';
comment on column ZXXT_GCJLB.SFCL
  is '�Ƿ���';
comment on column ZXXT_GCJLB.JSSJ
  is '����ʱ��';
comment on column ZXXT_GCJLB.FSBZ
  is '���ͱ�־';
comment on column ZXXT_GCJLB.XH
  is '���';
comment on column ZXXT_GCJLB.SFJJ
  is '�Ƿ����';
comment on column ZXXT_GCJLB.SFSC
  is '�Ƿ��ղ�';
comment on column ZXXT_GCJLB.JSRBS
  is '�����˱�ʶ';
comment on column ZXXT_GCJLB.JSRJSR
  is '������jsr';
comment on column ZXXT_GCJLB.SFCLSFCL
  is '�Ƿ���sfcl';

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
  is '������������������¼';
comment on column ZXXT_GLAJPGPMJL.FYBM
  is '��Ժ����';
comment on column ZXXT_GLAJPGPMJL.XH
  is '���';
comment on column ZXXT_GLAJPGPMJL.BH
  is '���';
comment on column ZXXT_GLAJPGPMJL.GLAJBS
  is '����������ʶ';
comment on column ZXXT_GLAJPGPMJL.GLAH
  is '��������';
comment on column ZXXT_GLAJPGPMJL.WSLB
  is '�������';
comment on column ZXXT_GLAJPGPMJL.AJZT
  is '����״̬';
comment on column ZXXT_GLAJPGPMJL.RQ
  is '����';
comment on column ZXXT_GLAJPGPMJL.BDW
  is '�����';
comment on column ZXXT_GLAJPGPMJL.CLRBS
  is '�����˱�ʶ';
comment on column ZXXT_GLAJPGPMJL.CLR
  is '������';

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
  is '���̵Ǽǵ���';
comment on column ZXXT_GSDJDC.FYBM
  is '��Ժ����';
comment on column ZXXT_GSDJDC.XH
  is '���';
comment on column ZXXT_GSDJDC.BH
  is '���';
comment on column ZXXT_GSDJDC.XZDCGSDJJG
  is 'Э�����鹤�̵Ǽǻ���';
comment on column ZXXT_GSDJDC.DCRBS
  is '�����˱�ʶ';
comment on column ZXXT_GSDJDC.DCR
  is '������';
comment on column ZXXT_GSDJDC.DCSJ
  is '����ʱ��';
comment on column ZXXT_GSDJDC.BZXR
  is '��ִ����';
comment on column ZXXT_GSDJDC.SFZCCCCFKYDMSCD
  is '��҅�����Ʋ���⡢��Ѻ�����²ö�';
comment on column ZXXT_GSDJDC.CCCFKYDMSCDSWH
  is '�Ʋ���⡢��Ѻ�����²ö����ĺ�';
comment on column ZXXT_GSDJDC.BZ
  is '��ע';
comment on column ZXXT_GSDJDC.CCDCQK
  is '�Ʋ��������';
comment on column ZXXT_GSDJDC.CCCQK
  is '�Ʋ�覴����';

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
  is '�ָ�����������';
comment on column ZXXT_HFPGSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_HFPGSPB.XH
  is '���';
comment on column ZXXT_HFPGSPB.BH
  is '���';
comment on column ZXXT_HFPGSPB.AY
  is '����';
comment on column ZXXT_HFPGSPB.AH
  is '����';
comment on column ZXXT_HFPGSPB.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_HFPGSPB.CBR
  is '�а���';
comment on column ZXXT_HFPGSPB.SQR
  is '������';
comment on column ZXXT_HFPGSPB.BZXR
  is '��ִ����';
comment on column ZXXT_HFPGSPB.CCMC
  is '�Ʋ�����';
comment on column ZXXT_HFPGSPB.BZ
  is '��ע';
comment on column ZXXT_HFPGSPB.CCXS
  is '�Ʋ�����';
comment on column ZXXT_HFPGSPB.HFLY
  is '�ָ�����';
comment on column ZXXT_HFPGSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_HFPGSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_HFPGSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_HFPGSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_HFPGSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_HFPGSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_HFPGSPB.CCSPR
  is '����������';
comment on column ZXXT_HFPGSPB.CCPZ
  is '������׼';
comment on column ZXXT_HFPGSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_HFPGSPB.CCSPRQ
  is '������������';
comment on column ZXXT_HFPGSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_HFPGSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_HFPGSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_HFPGSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_HFPGSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_HFPGSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_HFPGSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_HFPGSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_HFPGSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_HFPGSPB.YCSPRQ
  is 'Ժ����������';

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
  is '�ָ�����';
comment on column ZXXT_HFPM.FYBM
  is '��Ժ����';
comment on column ZXXT_HFPM.XH
  is '���';
comment on column ZXXT_HFPM.BH
  is '���';
comment on column ZXXT_HFPM.SQR
  is '������';
comment on column ZXXT_HFPM.SYQR
  is '����Ȩ��';
comment on column ZXXT_HFPM.HFLY
  is '�ָ�����';
comment on column ZXXT_HFPM.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_HFPM.CBR
  is '�а���';
comment on column ZXXT_HFPM.PMJG
  is '�����۸�';
comment on column ZXXT_HFPM.SQSJ
  is '����ʱ��';
comment on column ZXXT_HFPM.BDWQD
  is '������嵥';
comment on column ZXXT_HFPM.TZSQR
  is 'ֹͣ������';
comment on column ZXXT_HFPM.TZAY
  is 'ֹͣ����';
comment on column ZXXT_HFPM.TZCCQK
  is 'ֹͣ�Ʋ����';
comment on column ZXXT_HFPM.TZHFLY
  is 'ֹͣ�ָ�����';
comment on column ZXXT_HFPM.TZPMJG
  is 'ֹͣ��������';
comment on column ZXXT_HFPM.TZZTSJ
  is 'ֹͣ��ͣʱ��';
comment on column ZXXT_HFPM.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_HFPM.ZCSPR
  is '�鳤������';
comment on column ZXXT_HFPM.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_HFPM.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_HFPM.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_HFPM.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_HFPM.CCSPR
  is '����������';
comment on column ZXXT_HFPM.CCPZ
  is '������׼';
comment on column ZXXT_HFPM.CCSPYJ
  is '�����������';
comment on column ZXXT_HFPM.CCSPRQ
  is '������������';
comment on column ZXXT_HFPM.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_HFPM.JCSPR
  is '�ֳ�������';
comment on column ZXXT_HFPM.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_HFPM.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_HFPM.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_HFPM.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_HFPM.YCSPR
  is 'Ժ��������';
comment on column ZXXT_HFPM.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_HFPM.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_HFPM.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_HFPM.BZXR
  is '��ִ����';
comment on column ZXXT_HFPM.ZTKSSJ
  is '��ͣ��ʼʱ��';
comment on column ZXXT_HFPM.BZXRCCQK
  is '��ִ���˲Ʋ����';

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
  is '�ָ�����1';
comment on column ZXXT_HFPM1.FYBM
  is '��Ժ����';
comment on column ZXXT_HFPM1.XH
  is '���';
comment on column ZXXT_HFPM1.BH
  is '���';
comment on column ZXXT_HFPM1.KPLB
  is '��Ƭ���';
comment on column ZXXT_HFPM1.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_HFPM1.DJR
  is '�Ǽ���';
comment on column ZXXT_HFPM1.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_HFPM1.HFLY
  is '�ָ�����';
comment on column ZXXT_HFPM1.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_HFPM1.CBR
  is '�а���';
comment on column ZXXT_HFPM1.BZ
  is '��ע';
comment on column ZXXT_HFPM1.PMJG
  is '�������';
comment on column ZXXT_HFPM1.SQRQ
  is '��������';
comment on column ZXXT_HFPM1.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_HFPM1.ZCSPR
  is '�鳤������';
comment on column ZXXT_HFPM1.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_HFPM1.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_HFPM1.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_HFPM1.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_HFPM1.CCSPR
  is '����������';
comment on column ZXXT_HFPM1.CCPZ
  is '������׼';
comment on column ZXXT_HFPM1.CCSPYJ
  is '�����������';
comment on column ZXXT_HFPM1.CCSPRQ
  is '������������';
comment on column ZXXT_HFPM1.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_HFPM1.JCSPR
  is '�ֳ�������';
comment on column ZXXT_HFPM1.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_HFPM1.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_HFPM1.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_HFPM1.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_HFPM1.YCSPR
  is 'Ժ��������';
comment on column ZXXT_HFPM1.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_HFPM1.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_HFPM1.YCSPRQ
  is 'Ժ����������';

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
  is '�ָ�����������';
comment on column ZXXT_HFPMSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_HFPMSPB.XH
  is '���';
comment on column ZXXT_HFPMSPB.BH
  is '���';
comment on column ZXXT_HFPMSPB.SQR
  is '������';
comment on column ZXXT_HFPMSPB.BZXR
  is '��ִ����';
comment on column ZXXT_HFPMSPB.SYQR
  is '����Ȩ��';
comment on column ZXXT_HFPMSPB.BZQK
  is '��ע���';
comment on column ZXXT_HFPMSPB.HFPMLY
  is '�ָ���������';
comment on column ZXXT_HFPMSPB.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_HFPMSPB.CBR
  is '�а���';
comment on column ZXXT_HFPMSPB.BZ
  is '��ע';
comment on column ZXXT_HFPMSPB.PMJG
  is '��������';
comment on column ZXXT_HFPMSPB.SQRQ
  is '��������';
comment on column ZXXT_HFPMSPB.CCMC
  is '�Ʋ�����';
comment on column ZXXT_HFPMSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_HFPMSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_HFPMSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_HFPMSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_HFPMSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_HFPMSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_HFPMSPB.CCSPR
  is '����������';
comment on column ZXXT_HFPMSPB.CCPZ
  is '������׼';
comment on column ZXXT_HFPMSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_HFPMSPB.CCSPRQ
  is '������������';
comment on column ZXXT_HFPMSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_HFPMSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_HFPMSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_HFPMSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_HFPMSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_HFPMSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_HFPMSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_HFPMSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_HFPMSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_HFPMSPB.YCSPRQ
  is 'Ժ����������';

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
  is '�ָ��ύ����ϵͳ������';
comment on column ZXXT_HFTJZXXTSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_HFTJZXXTSPB.XH
  is '���';
comment on column ZXXT_HFTJZXXTSPB.BH
  is '���';
comment on column ZXXT_HFTJZXXTSPB.SQR
  is '������';
comment on column ZXXT_HFTJZXXTSPB.BZXR
  is '��ִ����';
comment on column ZXXT_HFTJZXXTSPB.CBRYJ
  is '�а������';
comment on column ZXXT_HFTJZXXTSPB.HFTJZXYMYTJYY
  is '�ָ��ύ����ԭ�����ύԭ��';
comment on column ZXXT_HFTJZXXTSPB.QTXYSMDQK
  is '������Ҫ˵�������';
comment on column ZXXT_HFTJZXXTSPB.HFTJYY
  is '�ָ��ύԭ��';
comment on column ZXXT_HFTJZXXTSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_HFTJZXXTSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_HFTJZXXTSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_HFTJZXXTSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_HFTJZXXTSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_HFTJZXXTSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_HFTJZXXTSPB.CCSPR
  is '����������';
comment on column ZXXT_HFTJZXXTSPB.CCPZ
  is '������׼';
comment on column ZXXT_HFTJZXXTSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_HFTJZXXTSPB.CCSPRQ
  is '������������';
comment on column ZXXT_HFTJZXXTSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_HFTJZXXTSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_HFTJZXXTSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_HFTJZXXTSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_HFTJZXXTSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_HFTJZXXTSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_HFTJZXXTSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_HFTJZXXTSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_HFTJZXXTSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_HFTJZXXTSPB.YCSPRQ
  is 'Ժ����������';

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
  is '�᰸������';
comment on column ZXXT_JASPB.FYBM
  is '��Ժ����';
comment on column ZXXT_JASPB.XH
  is '���';
comment on column ZXXT_JASPB.BH
  is '���';
comment on column ZXXT_JASPB.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_JASPB.CBR
  is '�а���';
comment on column ZXXT_JASPB.CBRYJ
  is '�а������';
comment on column ZXXT_JASPB.SQRQ
  is '��������';
comment on column ZXXT_JASPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_JASPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_JASPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_JASPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_JASPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_JASPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_JASPB.CCSPR
  is '����������';
comment on column ZXXT_JASPB.CCPZ
  is '������׼';
comment on column ZXXT_JASPB.CCSPYJ
  is '�����������';
comment on column ZXXT_JASPB.CCSPRQ
  is '������������';
comment on column ZXXT_JASPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_JASPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_JASPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_JASPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_JASPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_JASPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_JASPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_JASPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_JASPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_JASPB.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_JASPB.FJCSPRBS
  is '���ֳ������˱�ʶ';
comment on column ZXXT_JASPB.FJCSPR
  is '���ֳ�������';
comment on column ZXXT_JASPB.FJCPZ
  is '���ֳ���׼';
comment on column ZXXT_JASPB.FJCSPYJ
  is '���ֳ��������';
comment on column ZXXT_JASPB.FJCSPRQ
  is '���ֳ���������';

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
  is '���참��������';
comment on column ZXXT_JBAJSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_JBAJSPB.XH
  is '���';
comment on column ZXXT_JBAJSPB.BH
  is '���';
comment on column ZXXT_JBAJSPB.AY
  is '����';
comment on column ZXXT_JBAJSPB.AH
  is '����';
comment on column ZXXT_JBAJSPB.SQR
  is '������';
comment on column ZXXT_JBAJSPB.BZXR
  is '��ִ����';
comment on column ZXXT_JBAJSPB.LASJ
  is '����ʱ��';
comment on column ZXXT_JBAJSPB.SJ
  is 'ʱ��';
comment on column ZXXT_JBAJSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_JBAJSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_JBAJSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_JBAJSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_JBAJSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_JBAJSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_JBAJSPB.CCSPR
  is '����������';
comment on column ZXXT_JBAJSPB.CCPZ
  is '������׼';
comment on column ZXXT_JBAJSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_JBAJSPB.CCSPRQ
  is '������������';
comment on column ZXXT_JBAJSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_JBAJSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_JBAJSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_JBAJSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_JBAJSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_JBAJSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_JBAJSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_JBAJSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_JBAJSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_JBAJSPB.YCSPRQ
  is 'Ժ����������';

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
  is '���참��������2';
comment on column ZXXT_JBAJSPB2.FYBM
  is '��Ժ����';
comment on column ZXXT_JBAJSPB2.XH
  is '���';
comment on column ZXXT_JBAJSPB2.BH
  is '���';
comment on column ZXXT_JBAJSPB2.AY
  is '����';
comment on column ZXXT_JBAJSPB2.AH
  is '����';
comment on column ZXXT_JBAJSPB2.SQR
  is '������';
comment on column ZXXT_JBAJSPB2.BZXR
  is '��ִ����';
comment on column ZXXT_JBAJSPB2.LARQ
  is '��������';
comment on column ZXXT_JBAJSPB2.JBYY
  is '����ԭ��';
comment on column ZXXT_JBAJSPB2.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_JBAJSPB2.CBR
  is '�а���';
comment on column ZXXT_JBAJSPB2.NJBFY
  is '�⽻�취Ժ';
comment on column ZXXT_JBAJSPB2.BZ
  is '��ע';

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
  is '�����⡢��Ѻ�������ǿ��ִ�д�ʩ�ö���';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.FYBM
  is '��Ժ����';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.XH
  is '���';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.BH
  is '���';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.SQZXR
  is '����ִ����';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.BZXR
  is '��ִ����';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.ZXYBS
  is 'ִ��Ա��ʶ';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.ZXY
  is 'ִ��Ա';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.ZXRJBXX
  is 'ִ���˻�����Ϣ';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.BZXRJBXX
  is '��ִ���˻�����Ϣ';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.ZCCDRQ
  is '�����ö�����';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.CDXZ
  is '�ö�����';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.CCMCSEDQK
  is '�Ʋ����ơ���������';
comment on column ZXXT_JCCFKYDJDQZZXCSCDS.JCQZZXCSSSHLY
  is '���ǿ��ִ�д�ʩ��ʵ������';

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
  is '����(�������)��¼��';
comment on column ZXXT_JL.FYBM
  is '��Ժ����';
comment on column ZXXT_JL.XH
  is '���';
comment on column ZXXT_JL.BH
  is '���';
comment on column ZXXT_JL.BJLR
  is '��������';
comment on column ZXXT_JL.JLDD
  is '�����ص�';
comment on column ZXXT_JL.YY
  is 'ԭ��';
comment on column ZXXT_JL.KSRQ
  is '��ʼ����';
comment on column ZXXT_JL.JLDQR
  is '����������';
comment on column ZXXT_JL.JJRQ
  is '�������';
comment on column ZXXT_JL.JJYY
  is '���ԭ��';
comment on column ZXXT_JL.BZ
  is '��ע';
comment on column ZXXT_JL.FYNR
  is '��������';
comment on column ZXXT_JL.DFRQ
  is '������';
comment on column ZXXT_JL.FYFY
  is '���鷨Ժ';
comment on column ZXXT_JL.FYJG
  is '������';
comment on column ZXXT_JL.CLJG
  is '������';

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
  is '����������¼';
comment on column ZXXT_JWHYJJL.FYBM
  is '��Ժ����';
comment on column ZXXT_JWHYJJL.XH
  is '���';
comment on column ZXXT_JWHYJJL.BH
  is '���';
comment on column ZXXT_JWHYJJL.SQZXRJBQK
  is '����ִ���˻������';
comment on column ZXXT_JWHYJJL.BZXRJBQK
  is '��ִ���˻������';
comment on column ZXXT_JWHYJJL.ZXXLJWHYJJLSJ
  is 'ִ��Ч�ʾ�����о���¼ʱ��';
comment on column ZXXT_JWHYJJL.DD
  is '�ص�';
comment on column ZXXT_JWHYJJL.CJRBS
  is '�μ��˱�ʶ';
comment on column ZXXT_JWHYJJL.CJR
  is '�μ���';
comment on column ZXXT_JWHYJJL.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_JWHYJJL.CBR
  is '�а���';
comment on column ZXXT_JWHYJJL.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_JWHYJJL.JLR
  is '��¼��';
comment on column ZXXT_JWHYJJL.AQQK
  is '�������';
comment on column ZXXT_JWHYJJL.CBRYJ
  is '�а������';
comment on column ZXXT_JWHYJJL.HYQK
  is '�������';
comment on column ZXXT_JWHYJJL.TXNR
  is '��д����';
comment on column ZXXT_JWHYJJL.YJYJ
  is '�о����';

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
  is '������ͣ����������';
comment on column ZXXT_JXZTPGSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_JXZTPGSPB.XH
  is '���';
comment on column ZXXT_JXZTPGSPB.BH
  is '���';
comment on column ZXXT_JXZTPGSPB.AY
  is '����';
comment on column ZXXT_JXZTPGSPB.AH
  is '����';
comment on column ZXXT_JXZTPGSPB.LASJ
  is '����ʱ��';
comment on column ZXXT_JXZTPGSPB.ZTPGLY
  is '��ͣ��������';
comment on column ZXXT_JXZTPGSPB.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_JXZTPGSPB.CBR
  is '�а���';
comment on column ZXXT_JXZTPGSPB.BZ
  is '��ע';
comment on column ZXXT_JXZTPGSPB.SQR
  is '������';
comment on column ZXXT_JXZTPGSPB.BZXR
  is '��ִ����';
comment on column ZXXT_JXZTPGSPB.CCMC
  is '�Ʋ�����';
comment on column ZXXT_JXZTPGSPB.CCXS
  is '�Ʋ�����';
comment on column ZXXT_JXZTPGSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_JXZTPGSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_JXZTPGSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_JXZTPGSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_JXZTPGSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_JXZTPGSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_JXZTPGSPB.CCSPR
  is '����������';
comment on column ZXXT_JXZTPGSPB.CCPZ
  is '������׼';
comment on column ZXXT_JXZTPGSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_JXZTPGSPB.CCSPRQ
  is '������������';
comment on column ZXXT_JXZTPGSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_JXZTPGSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_JXZTPGSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_JXZTPGSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_JXZTPGSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_JXZTPGSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_JXZTPGSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_JXZTPGSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_JXZTPGSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_JXZTPGSPB.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_JXZTPGSPB.HFRQ
  is '�ظ�����';

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
  is '������ͣ����';
comment on column ZXXT_JXZTPM.FYBM
  is '��Ժ����';
comment on column ZXXT_JXZTPM.XH
  is '���';
comment on column ZXXT_JXZTPM.BH
  is '���';
comment on column ZXXT_JXZTPM.ZTTS
  is '��ͣ����';
comment on column ZXXT_JXZTPM.CCMC
  is '�Ʋ�����';
comment on column ZXXT_JXZTPM.ZTPMLY
  is '��ͣ��������';
comment on column ZXXT_JXZTPM.PMJG
  is '�����۸�';
comment on column ZXXT_JXZTPM.BZ
  is '��ע';
comment on column ZXXT_JXZTPM.SQR
  is '������';
comment on column ZXXT_JXZTPM.BZXR
  is '��ִ����';
comment on column ZXXT_JXZTPM.CCXS
  is '�Ʋ�����';
comment on column ZXXT_JXZTPM.ZCSPRBSZZSP
  is '�鳤�����˱�ʶzzsp';
comment on column ZXXT_JXZTPM.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_JXZTPM.ZCSPR
  is '�鳤������';
comment on column ZXXT_JXZTPM.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_JXZTPM.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_JXZTPM.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_JXZTPM.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_JXZTPM.CCSPR
  is '����������';
comment on column ZXXT_JXZTPM.CCPZ
  is '������׼';
comment on column ZXXT_JXZTPM.CCSPYJ
  is '�����������';
comment on column ZXXT_JXZTPM.CCSPRQ
  is '������������';
comment on column ZXXT_JXZTPM.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_JXZTPM.JCSPR
  is '�ֳ�������';
comment on column ZXXT_JXZTPM.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_JXZTPM.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_JXZTPM.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_JXZTPM.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_JXZTPM.YCSPR
  is 'Ժ��������';
comment on column ZXXT_JXZTPM.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_JXZTPM.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_JXZTPM.YCSPRQ
  is 'Ժ����������';

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
  is '�����б�';
comment on column ZXXT_JZLB.FYBM
  is '��Ժ����';
comment on column ZXXT_JZLB.BH
  is '���';
comment on column ZXXT_JZLB.AJBS
  is '������ʶ';
comment on column ZXXT_JZLB.XH
  is '���';
comment on column ZXXT_JZLB.WJMC
  is '�ļ�����';
comment on column ZXXT_JZLB.STWJM
  is 'ʵ���ļ���';
comment on column ZXXT_JZLB.LWBH
  is '���ı��';

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
  is '���� ��ȡ�������� ����¼';
comment on column ZXXT_KLTQGRSRCKJL.FYBM
  is '��Ժ����';
comment on column ZXXT_KLTQGRSRCKJL.XH
  is '���';
comment on column ZXXT_KLTQGRSRCKJL.BH
  is '���';
comment on column ZXXT_KLTQGRSRCKJL.LB
  is '���';
comment on column ZXXT_KLTQGRSRCKJL.BZXR
  is '��ִ����';
comment on column ZXXT_KLTQGRSRCKJL.XZYWR
  is 'Э��������';
comment on column ZXXT_KLTQGRSRCKJL.TQRQ
  is '��ȡ����';
comment on column ZXXT_KLTQGRSRCKJL.TQZH
  is '��ȡ�ʺ�';
comment on column ZXXT_KLTQGRSRCKJL.TQKLJE
  is '��ȡ�������';
comment on column ZXXT_KLTQGRSRCKJL.BZ
  is '��ע';

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
  is '���е����˵���ծȨ��������о���¼';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.FYBM
  is '��Ժ����';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.XH
  is '���';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.BH
  is '���';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.SQR
  is '������';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.BZXR
  is '��ִ����';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.LXDSRDQZQSXHYYJJLSJ
  is '���е����˵���ծȨ��������о���¼ʱ��';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.DD
  is '�ص�';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.CJRBS
  is '�μ��˱�ʶ';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.CJR
  is '�μ���';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.CBR
  is '�а���';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.JLR
  is '��¼��';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.AQQK
  is '�������';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.CBRYJ
  is '�а������';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.HYQK
  is '�������';
comment on column ZXXT_LXDSRDQZQSXHYYJJL.YJYJ
  is '�о����';

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
  is '������Ϊ';
comment on column ZXXT_LXXW.FYBM
  is '��Ժ����';
comment on column ZXXT_LXXW.XH
  is '���';
comment on column ZXXT_LXXW.BH
  is '���';
comment on column ZXXT_LXXW.LXSJ
  is '����ʱ��';
comment on column ZXXT_LXXW.LXXW
  is '������Ϊ';

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
  is '�⳥���μ�¼';
comment on column ZXXT_PCZRJL.FYBM
  is '��Ժ����';
comment on column ZXXT_PCZRJL.XH
  is '���';
comment on column ZXXT_PCZRJL.BH
  is '���';
comment on column ZXXT_PCZRJL.PCZRR
  is '�⳥������';
comment on column ZXXT_PCZRJL.PCYY
  is '�⳥ԭ��';
comment on column ZXXT_PCZRJL.PCJE
  is '�⳥���';
comment on column ZXXT_PCZRJL.CDPCRQ
  is '�ö��⳥����';
comment on column ZXXT_PCZRJL.BZ
  is '��ע';

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
  is '��������';
comment on column ZXXT_PGBZ.FYBM
  is '��Ժ����';
comment on column ZXXT_PGBZ.XH
  is '���';
comment on column ZXXT_PGBZ.BH
  is '���';
comment on column ZXXT_PGBZ.SQR
  is '������';
comment on column ZXXT_PGBZ.SYQR
  is '����Ȩ��';
comment on column ZXXT_PGBZ.BZQX
  is '��������';
comment on column ZXXT_PGBZ.BZLY
  is '��������';
comment on column ZXXT_PGBZ.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_PGBZ.CBR
  is '�а���';
comment on column ZXXT_PGBZ.PGJG
  is '��������';
comment on column ZXXT_PGBZ.BZ
  is '��ע';
comment on column ZXXT_PGBZ.BDWQD
  is '������嵥';
comment on column ZXXT_PGBZ.SQRQ
  is '��������';
comment on column ZXXT_PGBZ.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_PGBZ.ZCSPR
  is '�鳤������';
comment on column ZXXT_PGBZ.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_PGBZ.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_PGBZ.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_PGBZ.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_PGBZ.CCSPR
  is '����������';
comment on column ZXXT_PGBZ.CCPZ
  is '������׼';
comment on column ZXXT_PGBZ.CCSPYJ
  is '�����������';
comment on column ZXXT_PGBZ.CCSPRQ
  is '������������';
comment on column ZXXT_PGBZ.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_PGBZ.JCSPR
  is '�ֳ�������';
comment on column ZXXT_PGBZ.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_PGBZ.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_PGBZ.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_PGBZ.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_PGBZ.YCSPR
  is 'Ժ��������';
comment on column ZXXT_PGBZ.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_PGBZ.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_PGBZ.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_PGBZ.BZYY
  is '����ԭ��';
comment on column ZXXT_PGBZ.PGSX
  is '����ʱ��';
comment on column ZXXT_PGBZ.AY
  is '����';
comment on column ZXXT_PGBZ.CBRLXFS
  is '�а�����ϵ��ʽ';
comment on column ZXXT_PGBZ.PGBD
  is '�������';
comment on column ZXXT_PGBZ.FYSDBZBGRQ
  is '��Ժ�յ�������������';
comment on column ZXXT_PGBZ.NRZY
  is '����ժҪ';

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
  is '��������1';
comment on column ZXXT_PGBZ1.FYBM
  is '��Ժ����';
comment on column ZXXT_PGBZ1.XH
  is '���';
comment on column ZXXT_PGBZ1.BH
  is '���';
comment on column ZXXT_PGBZ1.SQR
  is '������';
comment on column ZXXT_PGBZ1.BZXR
  is '��ִ����';
comment on column ZXXT_PGBZ1.BZQX
  is '��������';
comment on column ZXXT_PGBZ1.BZLY
  is '��������';
comment on column ZXXT_PGBZ1.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_PGBZ1.CBR
  is '�а���';
comment on column ZXXT_PGBZ1.PGJG
  is '�������';
comment on column ZXXT_PGBZ1.SQRQ
  is '��������';

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
  is '��������ֹͣ';
comment on column ZXXT_PGCXTZ.FYBM
  is '��Ժ����';
comment on column ZXXT_PGCXTZ.XH
  is '���';
comment on column ZXXT_PGCXTZ.BH
  is '���';
comment on column ZXXT_PGCXTZ.BCXZL
  is '����������';
comment on column ZXXT_PGCXTZ.BCXRQ
  is '����������';
comment on column ZXXT_PGCXTZ.SQR
  is '������';
comment on column ZXXT_PGCXTZ.BZXR
  is '��ִ����';
comment on column ZXXT_PGCXTZ.CXLY
  is '��������';
comment on column ZXXT_PGCXTZ.BZ
  is '��ע';
comment on column ZXXT_PGCXTZ.CCMC
  is '�Ʋ�����';
comment on column ZXXT_PGCXTZ.CCXS
  is '�Ʋ�����';

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
  is '������¼';
comment on column ZXXT_PGJL.FYBM
  is '��Ժ����';
comment on column ZXXT_PGJL.XH
  is '���';
comment on column ZXXT_PGJL.BH
  is '���';
comment on column ZXXT_PGJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_PGJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_PGJL.DJR
  is '�Ǽ���';
comment on column ZXXT_PGJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_PGJL.BDWQD
  is '������嵥';
comment on column ZXXT_PGJL.SYQR
  is '����Ȩ��';
comment on column ZXXT_PGJL.PGJGMC
  is '������������';
comment on column ZXXT_PGJL.XDFS
  is 'ѡ����ʽ';
comment on column ZXXT_PGJL.PGKSRQ
  is '������ʼ����';
comment on column ZXXT_PGJL.FYSDYYHFRQ
  is '��Ժ�յ�����ظ�����';
comment on column ZXXT_PGJL.FYSDRQ
  is '��Ժ�յ�����';
comment on column ZXXT_PGJL.PGJSRQ
  is '������������';
comment on column ZXXT_PGJL.PGJGBZ
  is '����������ע';
comment on column ZXXT_PGJL.YYR
  is '������';
comment on column ZXXT_PGJL.TCYYRQ
  is '�����������';
comment on column ZXXT_PGJL.YYNR
  is '��������';
comment on column ZXXT_PGJL.CLRQ
  is '��������';
comment on column ZXXT_PGJL.CLJG
  is '������';
comment on column ZXXT_PGJL.YYBZ
  is '���鱸ע';
comment on column ZXXT_PGJL.PGKSSJ
  is '������ʼʱ��';
comment on column ZXXT_PGJL.PGJSSJ
  is '��������ʱ��';
comment on column ZXXT_PGJL.PGQX
  is '��������';
comment on column ZXXT_PGJL.PGYY
  is '����ԭ��';
comment on column ZXXT_PGJL.PGBD
  is '�������';
comment on column ZXXT_PGJL.CCZK
  is '�Ʋ�״��';
comment on column ZXXT_PGJL.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_PGJL.ZCSPR
  is '�鳤������';
comment on column ZXXT_PGJL.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_PGJL.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_PGJL.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_PGJL.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_PGJL.CCSPR
  is '����������';
comment on column ZXXT_PGJL.CCPZ
  is '������׼';
comment on column ZXXT_PGJL.CCSPYJ
  is '�����������';
comment on column ZXXT_PGJL.CCSPRQ
  is '������������';
comment on column ZXXT_PGJL.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_PGJL.JCSPR
  is '�ֳ�������';
comment on column ZXXT_PGJL.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_PGJL.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_PGJL.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_PGJL.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_PGJL.YCSPR
  is 'Ժ��������';
comment on column ZXXT_PGJL.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_PGJL.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_PGJL.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_PGJL.KZCCSJ
  is '���ƲƲ�ʱ��';
comment on column ZXXT_PGJL.LABD
  is '�������';
comment on column ZXXT_PGJL.CBRLXFS
  is '�а�����ϵ��ʽ';
comment on column ZXXT_PGJL.CCMC
  is '�Ʋ�����';
comment on column ZXXT_PGJL.CCXS
  is '�Ʋ�����';
comment on column ZXXT_PGJL.PGQXKS
  is '�������޿�ʼ';
comment on column ZXXT_PGJL.PGQXJS
  is '�������޽���';
comment on column ZXXT_PGJL.ZTYSPGLY
  is '��ͣ������������';
comment on column ZXXT_PGJL.ZHYSPGLY
  is '�ݻ�������������';
comment on column ZXXT_PGJL.PGJG
  is '��������';

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
  is '�����������̼�¼';
comment on column ZXXT_PGPMLCJL.FYBM
  is '��Ժ����';
comment on column ZXXT_PGPMLCJL.XH
  is '�����';
comment on column ZXXT_PGPMLCJL.BH
  is '���';
comment on column ZXXT_PGPMLCJL.CCMC
  is '�Ʋ�����';
comment on column ZXXT_PGPMLCJL.SJ
  is 'ʱ��';
comment on column ZXXT_PGPMLCJL.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_PGPMLCJL.CBR
  is '�а���';
comment on column ZXXT_PGPMLCJL.JLSJ
  is '��¼ʱ��';

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
  is '������������о�';
comment on column ZXXT_PGSXHYYJ.FYBM
  is '��Ժ����';
comment on column ZXXT_PGSXHYYJ.XH
  is '���';
comment on column ZXXT_PGSXHYYJ.BH
  is '���';
comment on column ZXXT_PGSXHYYJ.ZXAJPGSXHYYJSQR
  is 'ִ�а���������������о�������';
comment on column ZXXT_PGSXHYYJ.BZXRXX
  is '��ִ������Ϣ';
comment on column ZXXT_PGSXHYYJ.SJ
  is 'ʱ��';
comment on column ZXXT_PGSXHYYJ.ZXAJPGSXHYYJDD
  is 'ִ�а���������������о��ص�';
comment on column ZXXT_PGSXHYYJ.JLRBSJLRBS
  is '��¼�˱�ʶjlrbs';
comment on column ZXXT_PGSXHYYJ.JLRJLR
  is '��¼��jlr';
comment on column ZXXT_PGSXHYYJ.CBRYJJLRYJ
  is '�а������jlryj';
comment on column ZXXT_PGSXHYYJ.JLR
  is '��¼��';
comment on column ZXXT_PGSXHYYJ.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_PGSXHYYJ.AQQK
  is '�������';
comment on column ZXXT_PGSXHYYJ.CBRYJ
  is '�а������';
comment on column ZXXT_PGSXHYYJ.HYQK
  is '�������';
comment on column ZXXT_PGSXHYYJ.YJYJ
  is '�о����';

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
  is '��������������';
comment on column ZXXT_PMDZSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_PMDZSPB.XH
  is '���';
comment on column ZXXT_PMDZSPB.BH
  is '���';
comment on column ZXXT_PMDZSPB.SQR
  is '������';
comment on column ZXXT_PMDZSPB.BZXR
  is '��ִ����';
comment on column ZXXT_PMDZSPB.CCMC
  is '�Ʋ�����';
comment on column ZXXT_PMDZSPB.PMKSFDZ
  is '�������Ƿ���';
comment on column ZXXT_PMDZSPB.PMCJJG
  is '�����ɽ��۸�';
comment on column ZXXT_PMDZSPB.SJDZJE
  is 'ʵ�ʵ��˽��';
comment on column ZXXT_PMDZSPB.SJDZSJ
  is 'ʵ�ʵ���ʱ��';
comment on column ZXXT_PMDZSPB.PMCJSJ
  is '�����ɽ�ʱ��';
comment on column ZXXT_PMDZSPB.PMJG
  is '��������';
comment on column ZXXT_PMDZSPB.MSRMC
  is '����������';
comment on column ZXXT_PMDZSPB.CBRQKSM
  is '�а������˵��';
comment on column ZXXT_PMDZSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_PMDZSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_PMDZSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_PMDZSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_PMDZSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_PMDZSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_PMDZSPB.CCSPR
  is '����������';
comment on column ZXXT_PMDZSPB.CCPZ
  is '������׼';
comment on column ZXXT_PMDZSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_PMDZSPB.CCSPRQ
  is '������������';
comment on column ZXXT_PMDZSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_PMDZSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_PMDZSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_PMDZSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_PMDZSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_PMDZSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_PMDZSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_PMDZSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_PMDZSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_PMDZSPB.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_PMDZSPB.FJCSPRBS
  is '���ֳ������˱�ʶ';
comment on column ZXXT_PMDZSPB.FJCSPR
  is '���ֳ�������';
comment on column ZXXT_PMDZSPB.FJCPZ
  is '���ֳ���׼';
comment on column ZXXT_PMDZSPB.FJCSPYJ
  is '���ֳ��������';
comment on column ZXXT_PMDZSPB.FJCSPRQ
  is '���ֳ���������';
comment on column ZXXT_PMDZSPB.SFFS
  is '�Ƿ���';
comment on column ZXXT_PMDZSPB.FSRQ
  is '��������';
comment on column ZXXT_PMDZSPB.SFJS
  is '�Ƿ����';
comment on column ZXXT_PMDZSPB.JSRQ
  is '��������';
comment on column ZXXT_PMDZSPB.SFFH
  is '�Ƿ����';
comment on column ZXXT_PMDZSPB.FHRQ
  is '��������';

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
  is '������¼';
comment on column ZXXT_PMJL.FYBM
  is '��Ժ����';
comment on column ZXXT_PMJL.XH
  is '���';
comment on column ZXXT_PMJL.BH
  is '���';
comment on column ZXXT_PMJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_PMJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_PMJL.DJR
  is '�Ǽ���';
comment on column ZXXT_PMJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_PMJL.BDWQD
  is '������嵥';
comment on column ZXXT_PMJL.SYQR
  is '����Ȩ��';
comment on column ZXXT_PMJL.PMJGMC
  is '������������';
comment on column ZXXT_PMJL.PMJGZSD
  is '��������ס����';
comment on column ZXXT_PMJL.XDFS
  is 'ѡ����ʽ';
comment on column ZXXT_PMJL.PMKSRQ
  is '������ʼ����';
comment on column ZXXT_PMJL.PGJG
  is '�����۸�';
comment on column ZXXT_PMJL.GGFBRQ
  is '���淢������';
comment on column ZXXT_PMJL.SCJZ
  is '�г���ֵ';
comment on column ZXXT_PMJL.PMJG
  is '�����۸�';
comment on column ZXXT_PMJL.PMRQ
  is '��������';
comment on column ZXXT_PMJL.PMCS
  is '��������';
comment on column ZXXT_PMJL.PMJGSS
  is '�������ss';
comment on column ZXXT_PMJL.CJJG
  is '�ɽ��۸�';
comment on column ZXXT_PMJL.HRJE
  is '������';
comment on column ZXXT_PMJL.HRRQ
  is '��������';
comment on column ZXXT_PMJL.PMJSRQ
  is '������������';
comment on column ZXXT_PMJL.PMBZ
  is '������ע';
comment on column ZXXT_PMJL.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_PMJL.ZCSPR
  is '�鳤������';
comment on column ZXXT_PMJL.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_PMJL.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_PMJL.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_PMJL.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_PMJL.CCSPR
  is '����������';
comment on column ZXXT_PMJL.CCPZ
  is '������׼';
comment on column ZXXT_PMJL.CCSPYJ
  is '�����������';
comment on column ZXXT_PMJL.CCSPRQ
  is '������������';
comment on column ZXXT_PMJL.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_PMJL.JCSPR
  is '�ֳ�������';
comment on column ZXXT_PMJL.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_PMJL.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_PMJL.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_PMJL.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_PMJL.YCSPR
  is 'Ժ��������';
comment on column ZXXT_PMJL.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_PMJL.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_PMJL.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_PMJL.PGYYCLQK
  is '�������鴦�����';
comment on column ZXXT_PMJL.PGJGPGJG
  is '�����۸�pgjg';
comment on column ZXXT_PMJL.PGBGSFSD
  is '���������Ƿ��ʹ�';
comment on column ZXXT_PMJL.PGSFTCYY
  is '�����Ƿ��������';
comment on column ZXXT_PMJL.JYBLJ
  is '���鱣����';
comment on column ZXXT_PMJL.CCMC
  is '�Ʋ�����';
comment on column ZXXT_PMJL.CCXS
  is '�Ʋ�����';
comment on column ZXXT_PMJL.ZXZYJ
  is 'ִ�������';
comment on column ZXXT_PMJL.PGJSRQ
  is '������������';
comment on column ZXXT_PMJL.BD
  is '���';
comment on column ZXXT_PMJL.PPCQK
  is '��Ʒ覴����';
comment on column ZXXT_PMJL.CBRLXFS
  is '�а�����ϵ��ʽ';
comment on column ZXXT_PMJL.LASJ
  is '����ʱ��';
comment on column ZXXT_PMJL.PMJGPMJG
  is '�������pmjg';
comment on column ZXXT_PMJL.SF1YHY
  is '�Ƿ�1�Ѻ���';
comment on column ZXXT_PMJL.PPZK
  is '��Ʒ״��';
comment on column ZXXT_PMJL.TZYY
  is 'ֹͣԭ��';

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
  is '������ȷ����';
comment on column ZXXT_PMKQRS.FYBM
  is '��Ժ����';
comment on column ZXXT_PMKQRS.XH
  is '���';
comment on column ZXXT_PMKQRS.BH
  is '���';
comment on column ZXXT_PMKQRS.SQR
  is '������';
comment on column ZXXT_PMKQRS.BZXR
  is '��ִ����';
comment on column ZXXT_PMKQRS.CCMC
  is '�Ʋ�����';
comment on column ZXXT_PMKQRS.PMJG
  is '�������';
comment on column ZXXT_PMKQRS.CJJG
  is '�ɽ��۸�';
comment on column ZXXT_PMKQRS.HRJE
  is '������';
comment on column ZXXT_PMKQRS.HRRQ
  is '��������';
comment on column ZXXT_PMKQRS.PMJSRQ
  is '������������';
comment on column ZXXT_PMKQRS.BZ
  is '��ע';
comment on column ZXXT_PMKQRS.MSRMC
  is '����������';
comment on column ZXXT_PMKQRS.CCXS
  is '�Ʋ�����';
comment on column ZXXT_PMKQRS.PMJGPMJG
  is '��������pmjg';

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
  is '����������';
comment on column ZXXT_PMSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_PMSPB.XH
  is '���';
comment on column ZXXT_PMSPB.BH
  is '���';
comment on column ZXXT_PMSPB.SQR
  is '������';
comment on column ZXXT_PMSPB.BZXR
  is '��ִ����';
comment on column ZXXT_PMSPB.SYQR
  is '����Ȩ��';
comment on column ZXXT_PMSPB.PGJSRQ
  is '������������';
comment on column ZXXT_PMSPB.PGYYCLQK
  is '�������鴦�����';
comment on column ZXXT_PMSPB.BD
  is '��� ';
comment on column ZXXT_PMSPB.PGJG
  is '�����۸�';
comment on column ZXXT_PMSPB.PGBGSFSD
  is '���������Ƿ��ʹ�';
comment on column ZXXT_PMSPB.PGSFTCYY
  is '�����Ƿ��������';
comment on column ZXXT_PMSPB.JYBLJ
  is '���鱣����';
comment on column ZXXT_PMSPB.BDWQD
  is '������嵥';
comment on column ZXXT_PMSPB.SQSJ
  is '����ʱ��';
comment on column ZXXT_PMSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_PMSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_PMSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_PMSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_PMSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_PMSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_PMSPB.CCSPR
  is '����������';
comment on column ZXXT_PMSPB.CCPZ
  is '������׼';
comment on column ZXXT_PMSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_PMSPB.CCSPRQ
  is '������������';
comment on column ZXXT_PMSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_PMSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_PMSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_PMSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_PMSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_PMSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_PMSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_PMSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_PMSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_PMSPB.YCSPRQ
  is 'Ժ����������';

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
  is '����ί����';
comment on column ZXXT_PMWTS.FYBM
  is '��Ժ����';
comment on column ZXXT_PMWTS.XH
  is '���';
comment on column ZXXT_PMWTS.BH
  is '���';
comment on column ZXXT_PMWTS.AH
  is '����';
comment on column ZXXT_PMWTS.SQR
  is '������';
comment on column ZXXT_PMWTS.BZXR
  is '��ִ����';
comment on column ZXXT_PMWTS.PMDW
  is '������λ';
comment on column ZXXT_PMWTS.PMW
  is '������';
comment on column ZXXT_PMWTS.PMBLJ
  is '����������';
comment on column ZXXT_PMWTS.PMJZRQ
  is '������ֹ����';
comment on column ZXXT_PMWTS.JMRBZJ
  is '�����˱�֤��';
comment on column ZXXT_PMWTS.AJLXR
  is '������ϵ��';
comment on column ZXXT_PMWTS.LXRDH
  is '��ϵ�˵绰';
comment on column ZXXT_PMWTS.WTRQ
  is 'ί������';
comment on column ZXXT_PMWTS.QT
  is '����';
comment on column ZXXT_PMWTS.CCMC
  is '�Ʋ�����';
comment on column ZXXT_PMWTS.GGFW
  is '���淶Χ';
comment on column ZXXT_PMWTS.CCXS
  is '�Ʋ�����';

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
  is 'ȷ�ϳ�������������';
comment on column ZXXT_QRCXPGSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_QRCXPGSPB.XH
  is '���';
comment on column ZXXT_QRCXPGSPB.BH
  is '���';
comment on column ZXXT_QRCXPGSPB.CCKZSJ
  is '�Ʋ�����ʱ��';
comment on column ZXXT_QRCXPGSPB.LABD
  is '�������';
comment on column ZXXT_QRCXPGSPB.PGBCXRQ
  is '��������������';
comment on column ZXXT_QRCXPGSPB.CCMC
  is '�Ʋ�����';
comment on column ZXXT_QRCXPGSPB.SQR
  is '������';
comment on column ZXXT_QRCXPGSPB.BZXR
  is '��ִ����';
comment on column ZXXT_QRCXPGSPB.CXPGYY
  is '��������ԭ��';
comment on column ZXXT_QRCXPGSPB.QRCXLY
  is 'ȷ�ϳ�������';
comment on column ZXXT_QRCXPGSPB.CCXS
  is '�Ʋ�����';
comment on column ZXXT_QRCXPGSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_QRCXPGSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_QRCXPGSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_QRCXPGSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_QRCXPGSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_QRCXPGSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_QRCXPGSPB.CCSPR
  is '����������';
comment on column ZXXT_QRCXPGSPB.CCPZ
  is '������׼';
comment on column ZXXT_QRCXPGSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_QRCXPGSPB.CCSPRQ
  is '������������';
comment on column ZXXT_QRCXPGSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_QRCXPGSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_QRCXPGSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_QRCXPGSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_QRCXPGSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_QRCXPGSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_QRCXPGSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_QRCXPGSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_QRCXPGSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_QRCXPGSPB.YCSPRQ
  is 'Ժ����������';

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
  is 'ȷ��������';
comment on column ZXXT_QRLBS.FYBM
  is '��Ժ����';
comment on column ZXXT_QRLBS.XH
  is '���';
comment on column ZXXT_QRLBS.BH
  is '���';
comment on column ZXXT_QRLBS.AY
  is '����';
comment on column ZXXT_QRLBS.AH
  is '����';
comment on column ZXXT_QRLBS.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_QRLBS.CBR
  is '�а���';
comment on column ZXXT_QRLBS.CBRLXFS
  is '�а�����ϵ��ʽ';
comment on column ZXXT_QRLBS.BZXR
  is '��ִ����';
comment on column ZXXT_QRLBS.SQR
  is '������';
comment on column ZXXT_QRLBS.CCMC
  is '�Ʋ�����';
comment on column ZXXT_QRLBS.PMJG
  is '�������';
comment on column ZXXT_QRLBS.YPSJ
  is 'һ��ʱ��';
comment on column ZXXT_QRLBS.PMBLJ
  is '����������';
comment on column ZXXT_QRLBS.BZ
  is '��ע';
comment on column ZXXT_QRLBS.CCXS
  is '�Ʋ�����';

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
  is '��������';
comment on column ZXXT_QTDC.FYBM
  is '��Ժ����';
comment on column ZXXT_QTDC.XH
  is '���';
comment on column ZXXT_QTDC.BH
  is '���';
comment on column ZXXT_QTDC.XZYXDC
  is 'Э�����е���';
comment on column ZXXT_QTDC.DCR
  is '������';
comment on column ZXXT_QTDC.DCSJ
  is '����ʱ��';
comment on column ZXXT_QTDC.BZXR
  is '��ִ����';
comment on column ZXXT_QTDC.SFZCCCCFKYDMSCD
  is '�Ƿ������Ʋ���⡢��Ѻ�����²ö�';
comment on column ZXXT_QTDC.CCCFKYDMSCDSWH
  is '�Ʋ���⡢��Ѻ�����²ö����ĺ�';
comment on column ZXXT_QTDC.BZ
  is '��ע';
comment on column ZXXT_QTDC.CCDCQK
  is '�Ʋ��������';
comment on column ZXXT_QTDC.CCCQK
  is '�Ʋ�覴����';

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
  is '��ִ�����ṩ��ִ���˲Ʋ�״���������ǼǱ�';
comment on column ZXXT_QZXRTGBZXRCCZKJXSDJB.FYBM
  is '��Ժ����';
comment on column ZXXT_QZXRTGBZXRCCZKJXSDJB.XH
  is '���';
comment on column ZXXT_QZXRTGBZXRCCZKJXSDJB.BH
  is '���';
comment on column ZXXT_QZXRTGBZXRCCZKJXSDJB.TGXSR
  is '�ṩ������';
comment on column ZXXT_QZXRTGBZXRCCZKJXSDJB.BZXR
  is '��ִ����';
comment on column ZXXT_QZXRTGBZXRCCZKJXSDJB.TGCCQK
  is '�ṩ�Ʋ����';

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
  is '��־��';
comment on column ZXXT_RZB.FYBM
  is '��Ժ����';
comment on column ZXXT_RZB.ZJ
  is '����';
comment on column ZXXT_RZB.ZXBH
  is 'ִ�б��';
comment on column ZXXT_RZB.LCMC
  is '��������';
comment on column ZXXT_RZB.KSRQ
  is '��ʼ����';
comment on column ZXXT_RZB.JSRQ
  is '��������';
comment on column ZXXT_RZB.BM
  is '����';
comment on column ZXXT_RZB.XM
  is '����';

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
  is '������¼';
comment on column ZXXT_SDJL.FYBM
  is '��Ժ����';
comment on column ZXXT_SDJL.BHZJ
  is '�������';
comment on column ZXXT_SDJL.PZBH
  is '���ñ��';
comment on column ZXXT_SDJL.AJBH
  is '�������';
comment on column ZXXT_SDJL.SDBT
  is '��������';
comment on column ZXXT_SDJL.SDSJ
  is '����ʱ��';
comment on column ZXXT_SDJL.JSR
  is '������';
comment on column ZXXT_SDJL.JSSJ
  is '����ʱ��';

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
  is '�������ñ�';
comment on column ZXXT_SDPZB.FYBM
  is '��Ժ����';
comment on column ZXXT_SDPZB.PZBH
  is '���ñ��';
comment on column ZXXT_SDPZB.SDBT
  is '��������';
comment on column ZXXT_SDPZB.JCTJ
  is '�������';
comment on column ZXXT_SDPZB.JSTJ1
  is '��������1';
comment on column ZXXT_SDPZB.JSTJ2
  is '��������2';
comment on column ZXXT_SDPZB.JSTJ3
  is '��������3';
comment on column ZXXT_SDPZB.MS
  is '����';

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
  is '˾��������ʷ��¼��';
comment on column ZXXT_SFWSLSJLB.FYBM
  is '��Ժ����';
comment on column ZXXT_SFWSLSJLB.BH
  is '���';
comment on column ZXXT_SFWSLSJLB.XWJBH
  is '���ļ����';
comment on column ZXXT_SFWSLSJLB.YWJBH
  is 'ԭ�ļ����';
comment on column ZXXT_SFWSLSJLB.CJRBS
  is '�����˱�ʶ';
comment on column ZXXT_SFWSLSJLB.CJR
  is '������';
comment on column ZXXT_SFWSLSJLB.CJRQ
  is '��������';
comment on column ZXXT_SFWSLSJLB.SCRBS
  is 'ɾ���˱�ʶ';
comment on column ZXXT_SFWSLSJLB.SCR
  is 'ɾ����';
comment on column ZXXT_SFWSLSJLB.SCSJ
  is 'ɾ��ʱ��';

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
  is '��Ƽ�¼';
comment on column ZXXT_SJJL.FYBM
  is '��Ժ����';
comment on column ZXXT_SJJL.XH
  is '���';
comment on column ZXXT_SJJL.BH
  is '���';
comment on column ZXXT_SJJL.SJJGSJJG
  is '��ƽ��sjjg';
comment on column ZXXT_SJJL.SJJG
  is '��ƽ��';
comment on column ZXXT_SJJL.CLJG
  is '������';

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
  is '��Ƽ�¼һ';
comment on column ZXXT_SJJLY.FYBM
  is '��Ժ����';
comment on column ZXXT_SJJLY.XH
  is '���';
comment on column ZXXT_SJJLY.BH
  is '���';
comment on column ZXXT_SJJLY.CCMC
  is '�Ʋ�����';
comment on column ZXXT_SJJLY.CCXS
  is '�Ʋ�����';
comment on column ZXXT_SJJLY.KZCCRQ
  is '���ƲƲ�����';
comment on column ZXXT_SJJLY.LABD
  is '�������';
comment on column ZXXT_SJJLY.CBRYJ
  is '�а������';
comment on column ZXXT_SJJLY.SJKSSJ
  is '��ƿ�ʼʱ��';
comment on column ZXXT_SJJLY.SJTS
  is '�������';
comment on column ZXXT_SJJLY.CBRLXFS
  is '�а�����ϵ��ʽ';
comment on column ZXXT_SJJLY.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_SJJLY.CBR
  is '�а���';
comment on column ZXXT_SJJLY.SQR
  is '������';
comment on column ZXXT_SJJLY.BZXR
  is '��ִ����';
comment on column ZXXT_SJJLY.SJYY
  is '���ԭ��';
comment on column ZXXT_SJJLY.SJJSSJ
  is '��ƽ���ʱ��';
comment on column ZXXT_SJJLY.DSRLXDH
  is '��������ϵ�绰';
comment on column ZXXT_SJJLY.SFSJ
  is '�Ƿ����';
comment on column ZXXT_SJJLY.JSRQ
  is '��������';
comment on column ZXXT_SJJLY.FHRQ
  is '��������';
comment on column ZXXT_SJJLY.SFFS
  is '�Ƿ���';
comment on column ZXXT_SJJLY.FSRQ
  is '��������';
comment on column ZXXT_SJJLY.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_SJJLY.ZCSPR
  is '�鳤������';
comment on column ZXXT_SJJLY.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_SJJLY.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_SJJLY.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_SJJLY.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_SJJLY.CCSPR
  is '����������';
comment on column ZXXT_SJJLY.CCPZ
  is '������׼';
comment on column ZXXT_SJJLY.CCSPYJ
  is '�����������';
comment on column ZXXT_SJJLY.CCSPRQ
  is '������������';
comment on column ZXXT_SJJLY.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_SJJLY.JCSPR
  is '�ֳ�������';
comment on column ZXXT_SJJLY.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_SJJLY.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_SJJLY.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_SJJLY.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_SJJLY.YCSPR
  is 'Ժ��������';
comment on column ZXXT_SJJLY.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_SJJLY.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_SJJLY.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_SJJLY.FJCSPRBS
  is '���ֳ������˱�ʶ';
comment on column ZXXT_SJJLY.FJCSPR
  is '���ֳ�������';
comment on column ZXXT_SJJLY.FJCPZ
  is '���ֳ���׼';
comment on column ZXXT_SJJLY.FJCSPYJ
  is '���ֳ��������';
comment on column ZXXT_SJJLY.FJCSPRQ
  is '���ֳ���������';

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
  is '�տ��¼';
comment on column ZXXT_SKJL.FYBM
  is '��Ժ����';
comment on column ZXXT_SKJL.XH
  is '���';
comment on column ZXXT_SKJL.BH
  is '���';
comment on column ZXXT_SKJL.SKZL
  is '�տ�����';
comment on column ZXXT_SKJL.RQ
  is '����';
comment on column ZXXT_SKJL.SKDX
  is '�տ����';
comment on column ZXXT_SKJL.JE
  is '���';
comment on column ZXXT_SKJL.SJHM
  is '�վݺ���';
comment on column ZXXT_SKJL.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_SKJL.JLR
  is '��¼��';
comment on column ZXXT_SKJL.JLSJ
  is '��¼ʱ��';
comment on column ZXXT_SKJL.SFCL
  is '�Ƿ���';
comment on column ZXXT_SKJL.QRRBS
  is 'ȷ���˱�ʶ';
comment on column ZXXT_SKJL.QRR
  is 'ȷ����';
comment on column ZXXT_SKJL.QRRQ
  is 'ȷ������';
comment on column ZXXT_SKJL.ZY
  is 'ժҪ';
comment on column ZXXT_SKJL.SKYE
  is '�տ����';
comment on column ZXXT_SKJL.GLCWBH
  is '����������';
comment on column ZXXT_SKJL.AKLY
  is '������Դ';

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
  is '��Ȩִ���˱����¼';
comment on column ZXXT_SQZXRBGJL.FYBM
  is '��Ժ����';
comment on column ZXXT_SQZXRBGJL.XH
  is '���';
comment on column ZXXT_SQZXRBGJL.BH
  is '���';
comment on column ZXXT_SQZXRBGJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_SQZXRBGJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_SQZXRBGJL.DJR
  is '�Ǽ���';
comment on column ZXXT_SQZXRBGJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_SQZXRBGJL.CDBGRQ
  is '�ö��������';
comment on column ZXXT_SQZXRBGJL.YSQZXR
  is 'ԭ����ִ����';
comment on column ZXXT_SQZXRBGJL.BGYY
  is '���ԭ��';
comment on column ZXXT_SQZXRBGJL.XSQZXR
  is '������ִ����';
comment on column ZXXT_SQZXRBGJL.BZ
  is '��ע';
comment on column ZXXT_SQZXRBGJL.LX
  is '����';
comment on column ZXXT_SQZXRBGJL.CDRQ
  is '�ö�����';
comment on column ZXXT_SQZXRBGJL.ZJDXBZXRMD
  is '���ӵ��±�ִ��������';
comment on column ZXXT_SQZXRBGJL.BGDXBZXRMD
  is '������±�ִ��������';
comment on column ZXXT_SQZXRBGJL.YY
  is 'ԭ��';

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
  is '���صǼǵ���';
comment on column ZXXT_TDDJDC.FYBM
  is '��Ժ����';
comment on column ZXXT_TDDJDC.XH
  is '���';
comment on column ZXXT_TDDJDC.BH
  is '���';
comment on column ZXXT_TDDJDC.XZDCTDGLJG
  is 'Э���������ع������';
comment on column ZXXT_TDDJDC.DCRBS
  is '�����˱�ʶ';
comment on column ZXXT_TDDJDC.DCR
  is '������';
comment on column ZXXT_TDDJDC.DCSJ
  is '����ʱ��';
comment on column ZXXT_TDDJDC.BZXR
  is '��ִ����';
comment on column ZXXT_TDDJDC.SFZCCCCFKYDMSCD
  is '�Ƿ������Ʋ���⡢��Ѻ�����²ö�';
comment on column ZXXT_TDDJDC.CCCFKYDMSCDSWH
  is '�Ʋ���⡢��Ѻ�����²ö����ĺ�';
comment on column ZXXT_TDDJDC.BZ
  is '��ע';
comment on column ZXXT_TDDJDC.CCDCQK
  is '�Ʋ��������';
comment on column ZXXT_TDDJDC.CCCQK
  is '�Ʋ�覴����';

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
  is '���������о�����';
comment on column ZXXT_TQJWHYJBG.FYBM
  is '��Ժ����';
comment on column ZXXT_TQJWHYJBG.XH
  is '���';
comment on column ZXXT_TQJWHYJBG.BH
  is '���';
comment on column ZXXT_TQJWHYJBG.SQZXR
  is '����ִ����';
comment on column ZXXT_TQJWHYJBG.BZXR
  is '��ִ����';
comment on column ZXXT_TQJWHYJBG.ZXQK
  is 'ִ�����';
comment on column ZXXT_TQJWHYJBG.XYYJSX
  is '��Ҫ�о�����';
comment on column ZXXT_TQJWHYJBG.CBRYJ
  is '�а������';
comment on column ZXXT_TQJWHYJBG.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_TQJWHYJBG.ZCSPR
  is '�鳤������';
comment on column ZXXT_TQJWHYJBG.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_TQJWHYJBG.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_TQJWHYJBG.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_TQJWHYJBG.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_TQJWHYJBG.CCSPR
  is '����������';
comment on column ZXXT_TQJWHYJBG.CCPZ
  is '������׼';
comment on column ZXXT_TQJWHYJBG.CCSPYJ
  is '�����������';
comment on column ZXXT_TQJWHYJBG.CCSPRQ
  is '������������';
comment on column ZXXT_TQJWHYJBG.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_TQJWHYJBG.JCSPR
  is '�ֳ�������';
comment on column ZXXT_TQJWHYJBG.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_TQJWHYJBG.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_TQJWHYJBG.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_TQJWHYJBG.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_TQJWHYJBG.YCSPR
  is 'Ժ��������';
comment on column ZXXT_TQJWHYJBG.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_TQJWHYJBG.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_TQJWHYJBG.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_TQJWHYJBG.SFFS
  is '�Ƿ���';
comment on column ZXXT_TQJWHYJBG.FSFSRQ
  is '���ͷ�������';
comment on column ZXXT_TQJWHYJBG.SFJS
  is '�Ƿ����';
comment on column ZXXT_TQJWHYJBG.JSRQ
  is '��������';
comment on column ZXXT_TQJWHYJBG.TQRQ
  is '��������';
comment on column ZXXT_TQJWHYJBG.CM
  is '����';
comment on column ZXXT_TQJWHYJBG.ZM
  is '����';
comment on column ZXXT_TQJWHYJBG.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_TQJWHYJBG.CBR
  is '�а���';
comment on column ZXXT_TQJWHYJBG.AH
  is '����';
comment on column ZXXT_TQJWHYJBG.WSNR
  is '��������';

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
  is '�޲Ʋ��������ش�ʩ��';
comment on column ZXXT_WCCHXDKCSB.FYBM
  is '��Ժ����';
comment on column ZXXT_WCCHXDKCSB.XH
  is '���';
comment on column ZXXT_WCCHXDKCSB.BH
  is '���';
comment on column ZXXT_WCCHXDKCSB.GSDASFDC
  is '���̵����Ƿ����';
comment on column ZXXT_WCCHXDKCSB.GSDAYWYZBG
  is '���̵����������ʱ���';
comment on column ZXXT_WCCHXDKCSB.GSDAZCZBSFDW
  is '���̵���ע���ʱ��Ƿ�λ';
comment on column ZXXT_WCCHXDKCSB.DWTZSFDC
  is '����Ͷ���Ƿ����';
comment on column ZXXT_WCCHXDKCSB.YWDWTZ
  is '���޶���Ͷ��';
comment on column ZXXT_WCCHXDKCSB.YWGLGSHQY
  is '���޹�����˾����ҵ';
comment on column ZXXT_WCCHXDKCSB.QYSFDC
  is '��ҵ�Ƿ����';
comment on column ZXXT_WCCHXDKCSB.QYSFZCJY
  is '��ҵ�Ƿ�������Ӫ';
comment on column ZXXT_WCCHXDKCSB.QYSFCX
  is '��ҵ�Ƿ���';
comment on column ZXXT_WCCHXDKCSB.QYSFZXYYZZ
  is '��ҵ�Ƿ�ע��Ӫҵִ��';
comment on column ZXXT_WCCHXDKCSB.QYSFDXYYZZ
  is '��ҵ�Ƿ����Ӫҵִ��';
comment on column ZXXT_WCCHXDKCSB.QYSFXY
  is '��ҵ�Ƿ�Ъҵ';
comment on column ZXXT_WCCHXDKCSB.SFQSBG
  is '�Ƿ����㱨��';
comment on column ZXXT_WCCHXDKCSB.XLQKSFDC
  is '��������Ƿ����';
comment on column ZXXT_WCCHXDKCSB.SFCMXZDZ
  is '�Ƿ������ס��ַ';
comment on column ZXXT_WCCHXDKCSB.SFCQQZCS
  is '�Ƿ��ȡǿ�ƴ�ʩ';
comment on column ZXXT_WCCHXDKCSB.SFBZXRDQXLQKDC
  is '�Ƿ�ִ���˵�ǰ�����������';
comment on column ZXXT_WCCHXDKCSB.YWQQZZ
  is '����ȷ��סַ';
comment on column ZXXT_WCCHXDKCSB.JMWYHDC
  is '����ίԱ�����';
comment on column ZXXT_WCCHXDKCSB.SFYDW
  is '�Ƿ��е�λ';
comment on column ZXXT_WCCHXDKCSB.SFLXTX
  is '�Ƿ����ݡ�����';
comment on column ZXXT_WCCHXDKCSB.SFDDWJXDC
  is '�Ƿ񵽵�λ���е���';

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
  is '�޲Ʋ����ư����ݲ���ȡǿ�ƴ�ʩ������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.XH
  is '���';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.BH
  is '���';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.SQR
  is '������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.BZXR
  is '��ִ����';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZBTJZXXT
  is '�ݲ��ύ����ϵͳ';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZBCQFKCS
  is '�ݲ���ȡ�����ʩ';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZBCQJLCS
  is '�ݲ���ȡ������ʩ';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZBCQXZCJCS
  is '�ݲ���ȡ���Ƴ�����ʩ';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZBCQQZCSLY
  is '�ݲ���ȡǿ�ƴ�ʩ����';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.CCSPR
  is '����������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.CCPZ
  is '������׼';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.CCSPRQ
  is '������������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_WCCKZAJZBCQQZCSSPB.YCSPRQ
  is 'Ժ����������';

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
  is 'ί�и���ظ�';
comment on column ZXXT_WTFYHF.FYBM
  is '��Ժ����';
comment on column ZXXT_WTFYHF.XH
  is '���';
comment on column ZXXT_WTFYHF.BH
  is '���';
comment on column ZXXT_WTFYHF.KPLB
  is '��Ƭ���';
comment on column ZXXT_WTFYHF.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_WTFYHF.DJR
  is '�Ǽ���';
comment on column ZXXT_WTFYHF.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_WTFYHF.HFRQ
  is '�ظ�����';
comment on column ZXXT_WTFYHF.HFNR
  is '�ظ�����';
comment on column ZXXT_WTFYHF.WTFYCLQK
  is 'ί�з�Ժ�������';

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
  is 'ί������ʱ����';
comment on column ZXXT_WTPMSJJK.FYBM
  is '��Ժ����';
comment on column ZXXT_WTPMSJJK.XH
  is '���';
comment on column ZXXT_WTPMSJJK.BH
  is '���';
comment on column ZXXT_WTPMSJJK.SQR
  is '������';
comment on column ZXXT_WTPMSJJK.BZXR
  is '��ִ����';
comment on column ZXXT_WTPMSJJK.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_WTPMSJJK.CBR
  is '�а���';
comment on column ZXXT_WTPMSJJK.PMGS
  is '������˾';
comment on column ZXXT_WTPMSJJK.YPWTSJ
  is 'һ��ί��ʱ��';
comment on column ZXXT_WTPMSJJK.YPGGSJ
  is 'һ�Ĺ���ʱ��';
comment on column ZXXT_WTPMSJJK.YPSJ
  is 'һ��ʱ��';
comment on column ZXXT_WTPMSJJK.YPBLJ
  is 'һ�ı�����';
comment on column ZXXT_WTPMSJJK.YPJG
  is 'һ�Ľ��';
comment on column ZXXT_WTPMSJJK.EPWTSJ
  is '����ί��ʱ��';
comment on column ZXXT_WTPMSJJK.EPGGSJ
  is '���Ĺ���ʱ��';
comment on column ZXXT_WTPMSJJK.EPSJ
  is '����ʱ��';
comment on column ZXXT_WTPMSJJK.EPBLJ
  is '���ı�����';
comment on column ZXXT_WTPMSJJK.EPJG
  is '���Ľ��';
comment on column ZXXT_WTPMSJJK.SPWTSJ
  is '����ί��ʱ��';
comment on column ZXXT_WTPMSJJK.SPGGSJ
  is '���Ĺ���ʱ��';
comment on column ZXXT_WTPMSJJK.SPSJ
  is '����ʱ��';
comment on column ZXXT_WTPMSJJK.SPBLJ
  is '���ı�����';
comment on column ZXXT_WTPMSJJK.SPJG
  is '���Ľ��';
comment on column ZXXT_WTPMSJJK.PMDZ
  is '������ַ';
comment on column ZXXT_WTPMSJJK.YPDZ
  is 'һ�ĵ�ַ';
comment on column ZXXT_WTPMSJJK.EPDZ
  is '���ĵ�ַ';
comment on column ZXXT_WTPMSJJK.SPDZ
  is '���ĵ�ַ';

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
  is 'ί��ִ��';
comment on column ZXXT_WTZX.FYBM
  is '��Ժ����';
comment on column ZXXT_WTZX.XH
  is '���';
comment on column ZXXT_WTZX.BH
  is '���';
comment on column ZXXT_WTZX.KPLB
  is '��Ƭ���';
comment on column ZXXT_WTZX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_WTZX.DJR
  is '�Ǽ���';
comment on column ZXXT_WTZX.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_WTZX.WTRQ
  is 'ί������';
comment on column ZXXT_WTZX.WTYY
  is 'ί��ԭ��';
comment on column ZXXT_WTZX.STFY
  is '���з�Ժ';
comment on column ZXXT_WTZX.BZ
  is '��    ע';
comment on column ZXXT_WTZX.ZDSJ
  is 'ָ��ʱ��';
comment on column ZXXT_WTZX.ZDFY
  is 'ָ����Ժ';
comment on column ZXXT_WTZX.HFRQ
  is '�ظ�����';
comment on column ZXXT_WTZX.HFBZ
  is '�ظ���ע';
comment on column ZXXT_WTZX.WTFYCLQK
  is 'ί�и��鴦�����';
comment on column ZXXT_WTZX.HFNR
  is '�ָ�����';

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
  is 'ί��ִ�а��������';
comment on column ZXXT_WTZXAJDJB.FYBM
  is '��Ժ����';
comment on column ZXXT_WTZXAJDJB.XH
  is '���';
comment on column ZXXT_WTZXAJDJB.BH
  is '���';
comment on column ZXXT_WTZXAJDJB.BQWTDFY
  is '����ί�еķ�Ժ';
comment on column ZXXT_WTZXAJDJB.ZXYJ
  is 'ִ������';
comment on column ZXXT_WTZXAJDJB.WTZXDSSHLY
  is 'ί��ִ�е���ʵ������';
comment on column ZXXT_WTZXAJDJB.WTZXWSJBH
  is 'ί��ִ�����鼰���';
comment on column ZXXT_WTZXAJDJB.SWTFY
  is '��ί�з�Ժ';
comment on column ZXXT_WTZXAJDJB.SQR
  is '������';
comment on column ZXXT_WTZXAJDJB.BZXR
  is '��ִ����';
comment on column ZXXT_WTZXAJDJB.ZXF
  is 'ִ�з�';
comment on column ZXXT_WTZXAJDJB.BZ
  is '��ע';
comment on column ZXXT_WTZXAJDJB.WTJG
  is 'ί�н��';
comment on column ZXXT_WTZXAJDJB.WTHDQK
  is 'ί�к�����';

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
  is 'ί��ִ�а���������';
comment on column ZXXT_WTZXAJSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_WTZXAJSPB.XH
  is '���';
comment on column ZXXT_WTZXAJSPB.BH
  is '���';
comment on column ZXXT_WTZXAJSPB.BQWTDFY
  is '����ί�еķ�Ժ';
comment on column ZXXT_WTZXAJSPB.BHBH
  is '���bh';
comment on column ZXXT_WTZXAJSPB.ZXYJ
  is 'ִ������';
comment on column ZXXT_WTZXAJSPB.WTZXWSJBH
  is 'ί��ִ�����鼰���';
comment on column ZXXT_WTZXAJSPB.WTZXDSSHLY
  is 'ί��ִ�е���ʵ������';
comment on column ZXXT_WTZXAJSPB.SWTFY
  is '��ί�з�Ժ';
comment on column ZXXT_WTZXAJSPB.SQR
  is '������';
comment on column ZXXT_WTZXAJSPB.BZXR
  is '��ִ����';
comment on column ZXXT_WTZXAJSPB.BZ
  is '��ע';

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
  is 'Э����ѯ�Ʋ�֪ͨ��';
comment on column ZXXT_XZCXCCTZS.FYBM
  is '��Ժ����';
comment on column ZXXT_XZCXCCTZS.BH
  is '���';
comment on column ZXXT_XZCXCCTZS.XH
  is '���';
comment on column ZXXT_XZCXCCTZS.AY
  is '����';
comment on column ZXXT_XZCXCCTZS.AH
  is '����';
comment on column ZXXT_XZCXCCTZS.SQR
  is '������';
comment on column ZXXT_XZCXCCTZS.BZXR
  is '��ִ����';
comment on column ZXXT_XZCXCCTZS.LASJ
  is '����ʱ��';
comment on column ZXXT_XZCXCCTZS.FWDW
  is '������λ';
comment on column ZXXT_XZCXCCTZS.BCXR
  is '����ѯ��';
comment on column ZXXT_XZCXCCTZS.CXSY
  is '��ѯ����';
comment on column ZXXT_XZCXCCTZS.CXR
  is '��ѯ��';
comment on column ZXXT_XZCXCCTZS.BCXNR
  is '����ѯ����';
comment on column ZXXT_XZCXCCTZS.RQ
  is '����';
comment on column ZXXT_XZCXCCTZS.QT
  is '����';

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
  is 'Э����ѯ���֪ͨ��';
comment on column ZXXT_XZCXCKTZS.FYBM
  is '��Ժ����';
comment on column ZXXT_XZCXCKTZS.XH
  is '���';
comment on column ZXXT_XZCXCKTZS.BH
  is '���';
comment on column ZXXT_XZCXCKTZS.AY
  is '����';
comment on column ZXXT_XZCXCKTZS.AH
  is '����';
comment on column ZXXT_XZCXCKTZS.SQR
  is '������';
comment on column ZXXT_XZCXCKTZS.BZXR
  is '��ִ����';
comment on column ZXXT_XZCXCKTZS.LASJ
  is '����ʱ��';
comment on column ZXXT_XZCXCKTZS.FWYX
  is '��������';
comment on column ZXXT_XZCXCKTZS.BCXDW
  is '����ѯ��λ';
comment on column ZXXT_XZCXCKTZS.CXSY
  is '��ѯ����';
comment on column ZXXT_XZCXCKTZS.CXR
  is '��ѯ��';
comment on column ZXXT_XZCXCKTZS.BCXZH
  is '����ѯ�ʺ�';
comment on column ZXXT_XZCXCKTZS.PZR
  is '��׼��';
comment on column ZXXT_XZCXCKTZS.ZBR
  is '׼����';
comment on column ZXXT_XZCXCKTZS.TFR
  is '���';
comment on column ZXXT_XZCXCKTZS.TXRQ
  is '��д����';
comment on column ZXXT_XZCXCKTZS.QT
  is '����';

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
  is 'Э��������֪ͨ��';
comment on column ZXXT_XZDJCKTZS.FYBM
  is '��Ժ����';
comment on column ZXXT_XZDJCKTZS.XH
  is '���';
comment on column ZXXT_XZDJCKTZS.BH
  is '���';
comment on column ZXXT_XZDJCKTZS.AY
  is '����';
comment on column ZXXT_XZDJCKTZS.AH
  is '����';
comment on column ZXXT_XZDJCKTZS.SQR
  is '������';
comment on column ZXXT_XZDJCKTZS.BZXR
  is '��ִ����';
comment on column ZXXT_XZDJCKTZS.BSQR
  is '��������';
comment on column ZXXT_XZDJCKTZS.FWYX
  is '��������';
comment on column ZXXT_XZDJCKTZS.CKYX
  is '�������';
comment on column ZXXT_XZDJCKTZS.CKJE
  is '�����';
comment on column ZXXT_XZDJCKTZS.PZR
  is '��׼��';
comment on column ZXXT_XZDJCKTZS.TXRQ
  is '��д����';
comment on column ZXXT_XZDJCKTZS.DZ
  is '����';
comment on column ZXXT_XZDJCKTZS.QT
  is '����';

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
  is '���Ƽ�¼';
comment on column ZXXT_XZJL.FYBM
  is '��Ժ����';
comment on column ZXXT_XZJL.XH
  is '���';
comment on column ZXXT_XZJL.BH
  is '���';
comment on column ZXXT_XZJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_XZJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_XZJL.DJR
  is '�Ǽ���';
comment on column ZXXT_XZJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_XZJL.BXZR
  is '��������';
comment on column ZXXT_XZJL.XZYY
  is '����ԭ��';
comment on column ZXXT_XZJL.XZZL
  is '��������';
comment on column ZXXT_XZJL.XZNR
  is '��������';
comment on column ZXXT_XZJL.XZZXR
  is 'Э��ִ����';
comment on column ZXXT_XZJL.KSRQ
  is '��ʼ����';
comment on column ZXXT_XZJL.JCRQ
  is '�������';
comment on column ZXXT_XZJL.JCYY
  is '���ԭ��';
comment on column ZXXT_XZJL.JCBZ
  is '�����ע';
comment on column ZXXT_XZJL.FYNR
  is '��������';
comment on column ZXXT_XZJL.DFRQ
  is '������';
comment on column ZXXT_XZJL.FYFY
  is '���鷨Ժ';
comment on column ZXXT_XZJL.FYJG
  is '������';
comment on column ZXXT_XZJL.CLJG
  is '������';
comment on column ZXXT_XZJL.BZ
  is '��ע';

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
  is 'Э��ִ����Ϣ';
comment on column ZXXT_XZZXXX.FYBM
  is '��Ժ����';
comment on column ZXXT_XZZXXX.XH
  is '���';
comment on column ZXXT_XZZXXX.BH
  is '���';
comment on column ZXXT_XZZXXX.KPLB
  is '��Ƭ���';
comment on column ZXXT_XZZXXX.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_XZZXXX.DJR
  is '�Ǽ���';
comment on column ZXXT_XZZXXX.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_XZZXXX.XZYWRLX
  is 'Э������������';
comment on column ZXXT_XZZXXX.XZYWR
  is 'Э��������';
comment on column ZXXT_XZZXXX.XZSX
  is 'Э������';
comment on column ZXXT_XZZXXX.RQ
  is '����';
comment on column ZXXT_XZZXXX.SFXZ
  is '�Ƿ�Э��';
comment on column ZXXT_XZZXXX.LXQK
  is '�������';
comment on column ZXXT_XZZXXX.BZ
  is '��ע';

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
  is '�вƲ���������������������';
comment on column ZXXT_YCCAJZQDPMSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_YCCAJZQDPMSPB.XH
  is '���';
comment on column ZXXT_YCCAJZQDPMSPB.BH
  is '���';
comment on column ZXXT_YCCAJZQDPMSPB.SQR
  is '������';
comment on column ZXXT_YCCAJZQDPMSPB.BZXR
  is '��ִ����';
comment on column ZXXT_YCCAJZQDPMSPB.CCMC
  is '�Ʋ�����';
comment on column ZXXT_YCCAJZQDPMSPB.CCXS
  is '�Ʋ�����';
comment on column ZXXT_YCCAJZQDPMSPB.ZBQDLY
  is '�ݲ���������';
comment on column ZXXT_YCCAJZQDPMSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_YCCAJZQDPMSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_YCCAJZQDPMSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_YCCAJZQDPMSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_YCCAJZQDPMSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_YCCAJZQDPMSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_YCCAJZQDPMSPB.CCSPR
  is '����������';
comment on column ZXXT_YCCAJZQDPMSPB.CCPZ
  is '������׼';
comment on column ZXXT_YCCAJZQDPMSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_YCCAJZQDPMSPB.CCSPRQ
  is '������������';
comment on column ZXXT_YCCAJZQDPMSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_YCCAJZQDPMSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_YCCAJZQDPMSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_YCCAJZQDPMSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_YCCAJZQDPMSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_YCCAJZQDPMSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_YCCAJZQDPMSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_YCCAJZQDPMSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_YCCAJZQDPMSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_YCCAJZQDPMSPB.YCSPRQ
  is 'Ժ����������';

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
  is '�вƲ������ݲ���������������';
comment on column ZXXT_YCCKZZBQDPGSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_YCCKZZBQDPGSPB.XH
  is '���';
comment on column ZXXT_YCCKZZBQDPGSPB.BH
  is '���';
comment on column ZXXT_YCCKZZBQDPGSPB.SQR
  is '������';
comment on column ZXXT_YCCKZZBQDPGSPB.CCMC
  is '�Ʋ�����';
comment on column ZXXT_YCCKZZBQDPGSPB.CCXS
  is '�Ʋ�����';
comment on column ZXXT_YCCKZZBQDPGSPB.ZBQDLY
  is '�ݲ���������';
comment on column ZXXT_YCCKZZBQDPGSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_YCCKZZBQDPGSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_YCCKZZBQDPGSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_YCCKZZBQDPGSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_YCCKZZBQDPGSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_YCCKZZBQDPGSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_YCCKZZBQDPGSPB.CCSPR
  is '����������';
comment on column ZXXT_YCCKZZBQDPGSPB.CCPZ
  is '������׼';
comment on column ZXXT_YCCKZZBQDPGSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_YCCKZZBQDPGSPB.CCSPRQ
  is '������������';
comment on column ZXXT_YCCKZZBQDPGSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_YCCKZZBQDPGSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_YCCKZZBQDPGSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_YCCKZZBQDPGSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_YCCKZZBQDPGSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_YCCKZZBQDPGSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_YCCKZZBQDPGSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_YCCKZZBQDPGSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_YCCKZZBQDPGSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_YCCKZZBQDPGSPB.YCSPRQ
  is 'Ժ����������';

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
  is '�вƲ������ݲ���������������';
comment on column ZXXT_YCCKZZBQDPMSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_YCCKZZBQDPMSPB.XH
  is '���';
comment on column ZXXT_YCCKZZBQDPMSPB.BH
  is '���';
comment on column ZXXT_YCCKZZBQDPMSPB.SFYHY
  is '�Ƿ��Ѻ���';
comment on column ZXXT_YCCKZZBQDPMSPB.SQR
  is '������';
comment on column ZXXT_YCCKZZBQDPMSPB.BZXR
  is '��ִ����';
comment on column ZXXT_YCCKZZBQDPMSPB.CCMC
  is '�Ʋ�����';
comment on column ZXXT_YCCKZZBQDPMSPB.CCXS
  is '�Ʋ�����';
comment on column ZXXT_YCCKZZBQDPMSPB.ZBQDYPLY
  is '�ݲ�����һ������';
comment on column ZXXT_YCCKZZBQDPMSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_YCCKZZBQDPMSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_YCCKZZBQDPMSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_YCCKZZBQDPMSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_YCCKZZBQDPMSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_YCCKZZBQDPMSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_YCCKZZBQDPMSPB.CCSPR
  is '����������';
comment on column ZXXT_YCCKZZBQDPMSPB.CCPZ
  is '������׼';
comment on column ZXXT_YCCKZZBQDPMSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_YCCKZZBQDPMSPB.CCSPRQ
  is '������������';
comment on column ZXXT_YCCKZZBQDPMSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_YCCKZZBQDPMSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_YCCKZZBQDPMSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_YCCKZZBQDPMSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_YCCKZZBQDPMSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_YCCKZZBQDPMSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_YCCKZZBQDPMSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_YCCKZZBQDPMSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_YCCKZZBQDPMSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_YCCKZZBQDPMSPB.YCSPRQ
  is 'Ժ����������';

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
  is '��������';
comment on column ZXXT_YQPG.FYBM
  is '��Ժ����';
comment on column ZXXT_YQPG.XH
  is '���';
comment on column ZXXT_YQPG.BH
  is '���';
comment on column ZXXT_YQPG.SQR
  is '������';
comment on column ZXXT_YQPG.LXDH
  is '��ϵ�绰';
comment on column ZXXT_YQPG.BZXR
  is '��ִ����';
comment on column ZXXT_YQPG.YQKSSJ
  is '���ڿ�ʼʱ��';
comment on column ZXXT_YQPG.YQJSSJ
  is '���ڽ���ʱ��';
comment on column ZXXT_YQPG.YQ
  is '����';
comment on column ZXXT_YQPG.PGCC
  is '�����Ʋ�';
comment on column ZXXT_YQPG.SQRQ
  is '��������';
comment on column ZXXT_YQPG.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_YQPG.ZCSPR
  is '�鳤������';
comment on column ZXXT_YQPG.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_YQPG.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_YQPG.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_YQPG.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_YQPG.CCSPR
  is '����������';
comment on column ZXXT_YQPG.CCPZ
  is '������׼';
comment on column ZXXT_YQPG.CCSPYJ
  is '�����������';
comment on column ZXXT_YQPG.CCSPRQ
  is '������������';
comment on column ZXXT_YQPG.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_YQPG.JCSPR
  is '�ֳ�������';
comment on column ZXXT_YQPG.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_YQPG.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_YQPG.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_YQPG.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_YQPG.YCSPR
  is 'Ժ��������';
comment on column ZXXT_YQPG.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_YQPG.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_YQPG.YCSPRQ
  is 'Ժ����������';

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
  is '����֧������������';
comment on column ZXXT_YQZFAKSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_YQZFAKSPB.XH
  is '���';
comment on column ZXXT_YQZFAKSPB.BH
  is '���';
comment on column ZXXT_YQZFAKSPB.YQLY
  is '��������';
comment on column ZXXT_YQZFAKSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_YQZFAKSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_YQZFAKSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_YQZFAKSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_YQZFAKSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_YQZFAKSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_YQZFAKSPB.CCSPR
  is '����������';
comment on column ZXXT_YQZFAKSPB.CCPZ
  is '������׼';
comment on column ZXXT_YQZFAKSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_YQZFAKSPB.CCSPRQ
  is '������������';
comment on column ZXXT_YQZFAKSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_YQZFAKSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_YQZFAKSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_YQZFAKSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_YQZFAKSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_YQZFAKSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_YQZFAKSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_YQZFAKSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_YQZFAKSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_YQZFAKSPB.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_YQZFAKSPB.YQTS
  is '��������';
comment on column ZXXT_YQZFAKSPB.SFFS
  is '�Ƿ���';
comment on column ZXXT_YQZFAKSPB.FSRQ
  is '��������';
comment on column ZXXT_YQZFAKSPB.SFJS
  is '�Ƿ����';
comment on column ZXXT_YQZFAKSPB.JSRQ
  is '��������';
comment on column ZXXT_YQZFAKSPB.SFHF
  is '�Ƿ�ָ�';
comment on column ZXXT_YQZFAKSPB.HFRQ
  is '�ָ�����';

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
  is '�����ծ��¼';
comment on column ZXXT_YWDZJL.FYBM
  is '��Ժ����';
comment on column ZXXT_YWDZJL.XH
  is '���';
comment on column ZXXT_YWDZJL.BH
  is '���';
comment on column ZXXT_YWDZJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_YWDZJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_YWDZJL.DJR
  is '�Ǽ���';
comment on column ZXXT_YWDZJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_YWDZJL.DCYY
  is '�ֳ�ԭ��';
comment on column ZXXT_YWDZJL.BDWQD
  is '������嵥';
comment on column ZXXT_YWDZJL.SYQR
  is '����Ȩ��';
comment on column ZXXT_YWDZJL.BZXR
  is '��ִ����';
comment on column ZXXT_YWDZJL.SQZXR
  is '����ִ����';
comment on column ZXXT_YWDZJL.ZDLXJE
  is '�Զ����н��';
comment on column ZXXT_YWDZJL.DCSJ
  is '�ֳ�ʱ��';
comment on column ZXXT_YWDZJL.BZ
  is '��ע';

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
  is '�ٴ�����������';
comment on column ZXXT_ZCLASPB.FYBM
  is '��Ժ����';
comment on column ZXXT_ZCLASPB.XH
  is '���';
comment on column ZXXT_ZCLASPB.BH
  is '���';
comment on column ZXXT_ZCLASPB.SQSJ
  is '����ʱ��';
comment on column ZXXT_ZCLASPB.BZ
  is '��ע';
comment on column ZXXT_ZCLASPB.YZXQK
  is 'ԭִ�����';
comment on column ZXXT_ZCLASPB.ZCLALY
  is '�ٴ���������';
comment on column ZXXT_ZCLASPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_ZCLASPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_ZCLASPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_ZCLASPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_ZCLASPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_ZCLASPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_ZCLASPB.CCSPR
  is '����������';
comment on column ZXXT_ZCLASPB.CCPZ
  is '������׼';
comment on column ZXXT_ZCLASPB.CCSPYJ
  is '�����������';
comment on column ZXXT_ZCLASPB.CCSPRQ
  is '������������';
comment on column ZXXT_ZCLASPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_ZCLASPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_ZCLASPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_ZCLASPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_ZCLASPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_ZCLASPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_ZCLASPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_ZCLASPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_ZCLASPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_ZCLASPB.YCSPRQ
  is 'Ժ����������';

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
  is '�Զ��ְ����ñ�';
comment on column ZXXT_ZDFAPZB.FYBM
  is '��Ժ����';
comment on column ZXXT_ZDFAPZB.BHZJ
  is '��ţ�������';
comment on column ZXXT_ZDFAPZB.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_ZDFAPZB.CBR
  is '�а���';
comment on column ZXXT_ZDFAPZB.CM
  is '����';
comment on column ZXXT_ZDFAPZB.ZM
  is '����';

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
  is '�Զ�������Ϊ��¼';
comment on column ZXXT_ZDLXXWJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZDLXXWJL.XH
  is '���';
comment on column ZXXT_ZDLXXWJL.BH
  is '���';
comment on column ZXXT_ZDLXXWJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZDLXXWJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZDLXXWJL.DJR
  is '�Ǽ���';
comment on column ZXXT_ZDLXXWJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZDLXXWJL.BZXR
  is '��ִ����';
comment on column ZXXT_ZDLXXWJL.SQZXR
  is '����ִ����';
comment on column ZXXT_ZDLXXWJL.LXBDJQ
  is '���б��-��Ǯ';
comment on column ZXXT_ZDLXXWJL.LXBDW
  is '���б��-��';
comment on column ZXXT_ZDLXXWJL.LXBDXW
  is '���б��-��Ϊ';
comment on column ZXXT_ZDLXXWJL.LXSJ
  is '����ʱ��';
comment on column ZXXT_ZDLXXWJL.BZ
  is '��ע';
comment on column ZXXT_ZDLXXWJL.LXFS
  is '���з�ʽ';

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
  is '�ݶ�ί�з�Ժ';
comment on column ZXXT_ZDWTFY.FYBM
  is '��Ժ����';
comment on column ZXXT_ZDWTFY.XH
  is '���';
comment on column ZXXT_ZDWTFY.BH
  is '���';
comment on column ZXXT_ZDWTFY.ZDFY
  is '�ݶ���Ժ';
comment on column ZXXT_ZDWTFY.WTFY
  is 'ί�з�Ժ';
comment on column ZXXT_ZDWTFY.WTSJ
  is 'ί��ʱ��';

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
  is '�ݻ�ί������������';
comment on column ZXXT_ZHWTPGSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_ZHWTPGSPB.XH
  is '���';
comment on column ZXXT_ZHWTPGSPB.BH
  is '���';
comment on column ZXXT_ZHWTPGSPB.AY
  is '����';
comment on column ZXXT_ZHWTPGSPB.AH
  is '����';
comment on column ZXXT_ZHWTPGSPB.BZXR
  is '��ִ����';
comment on column ZXXT_ZHWTPGSPB.LASJ
  is '����ʱ��';
comment on column ZXXT_ZHWTPGSPB.SQR
  is '������';
comment on column ZXXT_ZHWTPGSPB.ZHYSPGLY
  is '�ݻ�������������';
comment on column ZXXT_ZHWTPGSPB.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_ZHWTPGSPB.CBR
  is '�а���';
comment on column ZXXT_ZHWTPGSPB.BZ
  is '��ע';
comment on column ZXXT_ZHWTPGSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_ZHWTPGSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_ZHWTPGSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_ZHWTPGSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_ZHWTPGSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_ZHWTPGSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_ZHWTPGSPB.CCSPR
  is '����������';
comment on column ZXXT_ZHWTPGSPB.CCPZ
  is '������׼';
comment on column ZXXT_ZHWTPGSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_ZHWTPGSPB.CCSPRQ
  is '������������';
comment on column ZXXT_ZHWTPGSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_ZHWTPGSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_ZHWTPGSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_ZHWTPGSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_ZHWTPGSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_ZHWTPGSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_ZHWTPGSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_ZHWTPGSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_ZHWTPGSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_ZHWTPGSPB.YCSPRQ
  is 'Ժ����������';

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
  is '�ݻ�ִ��';
comment on column ZXXT_ZHZX.FYBM
  is '��Ժ����';
comment on column ZXXT_ZHZX.XH
  is '���';
comment on column ZXXT_ZHZX.BH
  is '���';
comment on column ZXXT_ZHZX.ZHYY
  is '�ݻ�ԭ��';
comment on column ZXXT_ZHZX.ZHNR
  is '�ݻ�����';
comment on column ZXXT_ZHZX.ZHKSRQ
  is '�ݻ���ʼ����';
comment on column ZXXT_ZHZX.ZHJSRQ
  is '�ݻ���������';
comment on column ZXXT_ZHZX.BZ
  is '��ע';

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
  is '��ͣ����������';
comment on column ZXXT_ZTPGSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_ZTPGSPB.XH
  is '���';
comment on column ZXXT_ZTPGSPB.BH
  is '���';
comment on column ZXXT_ZTPGSPB.AY
  is '����';
comment on column ZXXT_ZTPGSPB.AH
  is '����';
comment on column ZXXT_ZTPGSPB.SQR
  is '������';
comment on column ZXXT_ZTPGSPB.BZXR
  is '��ִ����';
comment on column ZXXT_ZTPGSPB.LASJ
  is '����ʱ��';
comment on column ZXXT_ZTPGSPB.ZTPGLY
  is '��ͣ��������';
comment on column ZXXT_ZTPGSPB.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_ZTPGSPB.CBR
  is '�а���';
comment on column ZXXT_ZTPGSPB.BZ
  is '��ע';
comment on column ZXXT_ZTPGSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_ZTPGSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_ZTPGSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_ZTPGSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_ZTPGSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_ZTPGSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_ZTPGSPB.CCSPR
  is '����������';
comment on column ZXXT_ZTPGSPB.CCPZ
  is '������׼';
comment on column ZXXT_ZTPGSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_ZTPGSPB.CCSPRQ
  is '������������';
comment on column ZXXT_ZTPGSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_ZTPGSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_ZTPGSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_ZTPGSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_ZTPGSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_ZTPGSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_ZTPGSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_ZTPGSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_ZTPGSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_ZTPGSPB.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_ZTPGSPB.CCMC
  is '�Ʋ�����';
comment on column ZXXT_ZTPGSPB.CCXS
  is '�Ʋ�����';

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
  is '��ͣ����';
comment on column ZXXT_ZTPM.FYBM
  is '��Ժ����';
comment on column ZXXT_ZTPM.XH
  is '���';
comment on column ZXXT_ZTPM.BH
  is '���';
comment on column ZXXT_ZTPM.SQR
  is '������';
comment on column ZXXT_ZTPM.SYQR
  is '����Ȩ��';
comment on column ZXXT_ZTPM.SQRQ
  is '��������';
comment on column ZXXT_ZTPM.ZTSJ
  is '��ͣʱ��';
comment on column ZXXT_ZTPM.PMJGPMJG
  is '�����������������';
comment on column ZXXT_ZTPM.ZTYY
  is '��ͣԭ��';
comment on column ZXXT_ZTPM.CCQK
  is '�Ʋ����';
comment on column ZXXT_ZTPM.BDWQD
  is '������嵥';
comment on column ZXXT_ZTPM.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_ZTPM.ZCSPR
  is '�鳤������';
comment on column ZXXT_ZTPM.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_ZTPM.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_ZTPM.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_ZTPM.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_ZTPM.CCSPR
  is '����������';
comment on column ZXXT_ZTPM.CCPZ
  is '������׼';
comment on column ZXXT_ZTPM.CCSPYJ
  is '�����������';
comment on column ZXXT_ZTPM.CCSPRQ
  is '������������';
comment on column ZXXT_ZTPM.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_ZTPM.JCSPR
  is '�ֳ�������';
comment on column ZXXT_ZTPM.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_ZTPM.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_ZTPM.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_ZTPM.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_ZTPM.YCSPR
  is 'Ժ��������';
comment on column ZXXT_ZTPM.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_ZTPM.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_ZTPM.YCSPRQ
  is 'Ժ����������';
comment on column ZXXT_ZTPM.PMJGMC
  is '�����������';
comment on column ZXXT_ZTPM.PMBD
  is '�������';
comment on column ZXXT_ZTPM.ZTPMLY
  is '��ͣ��������';
comment on column ZXXT_ZTPM.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_ZTPM.CBR
  is '�а���';
comment on column ZXXT_ZTPM.BZ
  is '��ע';
comment on column ZXXT_ZTPM.BZXR
  is '��ִ����';
comment on column ZXXT_ZTPM.ZTTS
  is '��ͣ����';
comment on column ZXXT_ZTPM.CCXS
  is '�Ʋ�����';

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
  is '��ͣ����1';
comment on column ZXXT_ZTPM1.FYBM
  is '��Ժ����';
comment on column ZXXT_ZTPM1.XH
  is '���';
comment on column ZXXT_ZTPM1.BH
  is '���';
comment on column ZXXT_ZTPM1.SQR
  is '������';
comment on column ZXXT_ZTPM1.BZXR
  is '��ִ����';
comment on column ZXXT_ZTPM1.AY
  is '����';
comment on column ZXXT_ZTPM1.SQRQ
  is '��������';
comment on column ZXXT_ZTPM1.ZTSJ
  is '��ͣʱ��';
comment on column ZXXT_ZTPM1.PMJG
  is '�������';
comment on column ZXXT_ZTPM1.ZTYY
  is '��ͣԭ��';
comment on column ZXXT_ZTPM1.CCQK
  is '�Ʋ����';
comment on column ZXXT_ZTPM1.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_ZTPM1.ZCSPR
  is '�鳤������';
comment on column ZXXT_ZTPM1.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_ZTPM1.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_ZTPM1.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_ZTPM1.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_ZTPM1.CCSPR
  is '����������';
comment on column ZXXT_ZTPM1.CCPZ
  is '������׼';
comment on column ZXXT_ZTPM1.CCSPYJ
  is '�����������';
comment on column ZXXT_ZTPM1.CCSPRQ
  is '������������';
comment on column ZXXT_ZTPM1.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_ZTPM1.JCSPR
  is '�ֳ�������';
comment on column ZXXT_ZTPM1.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_ZTPM1.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_ZTPM1.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_ZTPM1.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_ZTPM1.YCSPR
  is 'Ժ��������';
comment on column ZXXT_ZTPM1.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_ZTPM1.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_ZTPM1.YCSPRQ
  is 'Ժ����������';

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
  is 'ִ�а���������������о���¼';
comment on column ZXXT_ZXAJBMSXHYYJJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXAJBMSXHYYJJL.BH
  is '���';
comment on column ZXXT_ZXAJBMSXHYYJJL.WDBH
  is '�ĵ����';
comment on column ZXXT_ZXAJBMSXHYYJJL.AJBH
  is '�������';
comment on column ZXXT_ZXAJBMSXHYYJJL.ZXAJBMSXHYYJSQR
  is 'ִ�а���������������о�������';
comment on column ZXXT_ZXAJBMSXHYYJJL.BZXR
  is '��ִ����';
comment on column ZXXT_ZXAJBMSXHYYJJL.ZXAJBMSXHYYJSJ
  is 'ִ�а���������������о�ʱ��';
comment on column ZXXT_ZXAJBMSXHYYJJL.DD
  is '�ص�';
comment on column ZXXT_ZXAJBMSXHYYJJL.CJR
  is '�μ���';
comment on column ZXXT_ZXAJBMSXHYYJJL.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_ZXAJBMSXHYYJJL.CBR
  is '�а���';
comment on column ZXXT_ZXAJBMSXHYYJJL.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_ZXAJBMSXHYYJJL.JLR
  is '��¼��';
comment on column ZXXT_ZXAJBMSXHYYJJL.AQQK
  is '�������';
comment on column ZXXT_ZXAJBMSXHYYJJL.CBRYJ
  is '�а������';
comment on column ZXXT_ZXAJBMSXHYYJJL.HYQK
  is '�������';
comment on column ZXXT_ZXAJBMSXHYYJJL.YJYJ
  is '�о����';

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
  is 'ִ�а����ǼǱ�';
comment on column ZXXT_ZXAJDJB.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXAJDJB.AJBS
  is '������ʶ';
comment on column ZXXT_ZXAJDJB.AJLBID
  is '�������ID';
comment on column ZXXT_ZXAJDJB.LARQ
  is '��������';
comment on column ZXXT_ZXAJDJB.AH
  is '����';
comment on column ZXXT_ZXAJDJB.LAAY
  is '��������';
comment on column ZXXT_ZXAJDJB.FAJY
  is '�ְ�����';
comment on column ZXXT_ZXAJDJB.CLBM
  is '������';
comment on column ZXXT_ZXAJDJB.CLRBS
  is '�����˱�ʶ';
comment on column ZXXT_ZXAJDJB.CLR
  is '������';
comment on column ZXXT_ZXAJDJB.SCFARQ
  is '�״ηְ�����';
comment on column ZXXT_ZXAJDJB.SCFARBS
  is '�״ηְ��˱�ʶ';
comment on column ZXXT_ZXAJDJB.SCFAR
  is '�״ηְ���';
comment on column ZXXT_ZXAJDJB.DECFARQ
  is '�ڶ��ηְ�����';
comment on column ZXXT_ZXAJDJB.DECFARBS
  is '�ڶ��ηְ��˱�ʶ';
comment on column ZXXT_ZXAJDJB.DECFAR
  is '�ڶ��ηְ���';
comment on column ZXXT_ZXAJDJB.JCFARQ
  is '�ֳ��ְ�����';
comment on column ZXXT_ZXAJDJB.JCFARBS
  is '�ֳ��ְ��˱�ʶ';
comment on column ZXXT_ZXAJDJB.JCFAR
  is '�ֳ��ְ���';
comment on column ZXXT_ZXAJDJB.DCJSBZ
  is '���������־';
comment on column ZXXT_ZXAJDJB.JYCBRBS
  is '����а��˱�ʶ';
comment on column ZXXT_ZXAJDJB.JYCBR
  is '����а���';
comment on column ZXXT_ZXAJDJB.DCJG
  is '������';
comment on column ZXXT_ZXAJDJB.CABH
  is '�������';
comment on column ZXXT_ZXAJDJB.SFCAJC
  is '�Ƿ񴮰����';
comment on column ZXXT_ZXAJDJB.DCTS
  is '��������';
comment on column ZXXT_ZXAJDJB.DCQXJSSJ
  is '�������޽���ʱ��';
comment on column ZXXT_ZXAJDJB.DCJSSJ
  is '�������ʱ��';
comment on column ZXXT_ZXAJDJB.ZHCCBRBS
  is '�ۺϴ��а��˱�ʶ';
comment on column ZXXT_ZXAJDJB.ZHCCBR
  is '�ۺϴ��а���';
comment on column ZXXT_ZXAJDJB.CM
  is '����';
comment on column ZXXT_ZXAJDJB.ZM
  is '����';
comment on column ZXXT_ZXAJDJB.FALY
  is '�ְ�����';
comment on column ZXXT_ZXAJDJB.JWHBLRBS
  is '���������˱�ʶ';
comment on column ZXXT_ZXAJDJB.JWHBLR
  is '����������';
comment on column ZXXT_ZXAJDJB.CJZCBRBS
  is '�þ���а��˱�ʶ';
comment on column ZXXT_ZXAJDJB.CJZCBR
  is '�þ���а���';
comment on column ZXXT_ZXAJDJB.ZHCZT
  is '�ۺϴ�״̬';
comment on column ZXXT_ZXAJDJB.JCJYCBRBS
  is '�ֳ�����а��˱�ʶ';
comment on column ZXXT_ZXAJDJB.JCJYCBR
  is '�ֳ�����а���';
comment on column ZXXT_ZXAJDJB.ZHCLCC
  is '�����Ʋ�';
comment on column ZXXT_ZXAJDJB.ZHCLCCSJ
  is '�����Ʋ�ʱ��';
comment on column ZXXT_ZXAJDJB.SWLCBRBS
  is '��δ�˳а��˱�ʶ';
comment on column ZXXT_ZXAJDJB.SWLCBR
  is '��δ�˳а���';
comment on column ZXXT_ZXAJDJB.AKYQZFJZRQ
  is '��������֧����ֹ����';
comment on column ZXXT_ZXAJDJB.AKYQZFTS
  is '��������֧������';
comment on column ZXXT_ZXAJDJB.ZKJZRQ
  is '֧���������';
comment on column ZXXT_ZXAJDJB.CCLX
  is '�Ʋ�����';
comment on column ZXXT_ZXAJDJB.SD
  is '����';

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
  is 'ִ�а������봦�ý׶������֪��';
comment on column ZXXT_ZXAJJRCZJDQKGZS.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXAJJRCZJDQKGZS.BH
  is '���';
comment on column ZXXT_ZXAJJRCZJDQKGZS.WDBH
  is '�ĵ����';
comment on column ZXXT_ZXAJJRCZJDQKGZS.ZXSQR
  is 'ִ��������';
comment on column ZXXT_ZXAJJRCZJDQKGZS.ZXSQRZXSQR
  is 'ִ��������zxsqr';
comment on column ZXXT_ZXAJJRCZJDQKGZS.BZXSQR
  is '��ִ��������';
comment on column ZXXT_ZXAJJRCZJDQKGZS.ZXCBR
  is 'ִ�га���';
comment on column ZXXT_ZXAJJRCZJDQKGZS.LXDH
  is '��ϵ�绰';
comment on column ZXXT_ZXAJJRCZJDQKGZS.ZXCCDCKZQK
  is 'ר��Ʋ�����������';

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
  is 'ִ�а���������������о���¼';
comment on column ZXXT_ZXAJPMSXHYYJJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXAJPMSXHYYJJL.XH
  is '���';
comment on column ZXXT_ZXAJPMSXHYYJJL.BH
  is '���';
comment on column ZXXT_ZXAJPMSXHYYJJL.ZXAJPMSXHYYJSQR
  is 'ִ�а���������������о�������';
comment on column ZXXT_ZXAJPMSXHYYJJL.BZXR
  is '��ִ����';
comment on column ZXXT_ZXAJPMSXHYYJJL.SJ
  is 'ʱ��';
comment on column ZXXT_ZXAJPMSXHYYJJL.DD
  is '�ص�';
comment on column ZXXT_ZXAJPMSXHYYJJL.CJR
  is '�μ���';
comment on column ZXXT_ZXAJPMSXHYYJJL.CJRBS
  is '�μ��˱�ʶ';
comment on column ZXXT_ZXAJPMSXHYYJJL.CBR
  is '�а���';
comment on column ZXXT_ZXAJPMSXHYYJJL.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_ZXAJPMSXHYYJJL.JLR
  is '��¼��';
comment on column ZXXT_ZXAJPMSXHYYJJL.AQQK
  is '�������';
comment on column ZXXT_ZXAJPMSXHYYJJL.CBRYJ
  is '�а������';
comment on column ZXXT_ZXAJPMSXHYYJJL.HYQK
  is '�������';
comment on column ZXXT_ZXAJPMSXHYYJJL.YJYJ
  is '�о����';

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
  is 'ִ�а��������ծ��������о���¼';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.XH
  is '���';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.BH
  is '���';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.ZXAJYWDZSXSQR
  is 'ִ�а��������ծ����������';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.BZXR
  is '��ִ����';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.SJ
  is 'ʱ��';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.ZXAJYWDZSXHYYJJLDD
  is 'ִ�а��������ծ��������о���¼�ص�';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.CJRBS
  is '�μ��˱�ʶ';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.CJR
  is '�μ���';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.CBR
  is '�а���';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.JLR
  is '��¼��';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.AQQK
  is '�������';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.CBRYJ
  is '�а������';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.HYQK
  is '�������';
comment on column ZXXT_ZXAJYWDZSXHYYJJL.YJYJ
  is '�о����';

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
  is 'ִ�а����ս᱾��ִ����������¼';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.XH
  is '���';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.BH
  is '���';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.SQR
  is '������';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.BZXR
  is '��ִ����';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.ZXAJZJBCZXSXHYSJ
  is 'ִ�а����ս᱾��ִ���������ʱ��';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.DD
  is '�ص�';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.CJRBS
  is '�μ��˱�ʶ';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.CJR
  is '�μ���';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.CBR
  is '�а���';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.JLR
  is '��¼��';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.AQQK
  is '�������';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.CBRYJ
  is '�а������';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.HYQK
  is '�������';
comment on column ZXXT_ZXAJZJBCZXSXHYJL.YJYJ
  is '�о����';

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
  is 'ִ�б�ִ���˱��׷�Ӽ�¼';
comment on column ZXXT_ZXBZXRBGZJJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXBZXRBGZJJL.XH
  is '���';
comment on column ZXXT_ZXBZXRBGZJJL.BH
  is '���';
comment on column ZXXT_ZXBZXRBGZJJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXBZXRBGZJJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXBZXRBGZJJL.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXBZXRBGZJJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXBZXRBGZJJL.LX
  is '����';
comment on column ZXXT_ZXBZXRBGZJJL.CDRQ
  is '�ö�����';
comment on column ZXXT_ZXBZXRBGZJJL.ZJMD
  is '׷��Ŀ��';
comment on column ZXXT_ZXBZXRBGZJJL.YY
  is 'ԭ��';
comment on column ZXXT_ZXBZXRBGZJJL.BZ
  is '��ע';
comment on column ZXXT_ZXBZXRBGZJJL.ZJMDZJMD
  is '׷��Ŀ��zjmd';

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
  is 'ִ�д�����ϵ���� ';
comment on column ZXXT_ZXCAGXZB.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXCAGXZB.CABHZJ
  is '�����������';
comment on column ZXXT_ZXCAGXZB.CABS
  is '������ʶ';

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
  is 'ִ�вƲ�������¼';
comment on column ZXXT_ZXCCDCJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXCCDCJL.XH
  is '���';
comment on column ZXXT_ZXCCDCJL.BH
  is '���';
comment on column ZXXT_ZXCCDCJL.DCSJ
  is '����ʱ��';
comment on column ZXXT_ZXCCDCJL.DCDD
  is '����ص�';
comment on column ZXXT_ZXCCDCJL.DCR
  is '������';

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
  is 'ר��Ʋ�������������֪��';
comment on column ZXXT_ZXCCDCKZQKGZS.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXCCDCKZQKGZS.XH
  is '���';
comment on column ZXXT_ZXCCDCKZQKGZS.BH
  is '���';
comment on column ZXXT_ZXCCDCKZQKGZS.LASJ
  is '����ʱ��';
comment on column ZXXT_ZXCCDCKZQKGZS.SQZXR
  is '����ִ����';
comment on column ZXXT_ZXCCDCKZQKGZS.BZXR
  is '��ִ����';
comment on column ZXXT_ZXCCDCKZQKGZS.ZXCKRYBS
  is 'ר������Ա��ʶ';
comment on column ZXXT_ZXCCDCKZQKGZS.ZXCKRY
  is 'ר������Ա';
comment on column ZXXT_ZXCCDCKZQKGZS.SASJ
  is '�հ�ʱ��';
comment on column ZXXT_ZXCCDCKZQKGZS.WCSJ
  is '���ʱ��';
comment on column ZXXT_ZXCCDCKZQKGZS.BZ
  is '��ע';
comment on column ZXXT_ZXCCDCKZQKGZS.ZXCCDCKZQK
  is 'ר��Ʋ�����������';
comment on column ZXXT_ZXCCDCKZQKGZS.QZZXCSDCQQK
  is 'ǿ��ִ�д�ʩ�Ĳ�ȡ���';

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
  is 'ִ�в����Ʋ���¼';
comment on column ZXXT_ZXCMCCJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXCMCCJL.XH
  is '���';
comment on column ZXXT_ZXCMCCJL.BH
  is '���';
comment on column ZXXT_ZXCMCCJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXCMCCJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXCMCCJL.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXCMCCJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXCMCCJL.BZXR
  is '��ִ����';
comment on column ZXXT_ZXCMCCJL.XSLY
  is '������Դ';
comment on column ZXXT_ZXCMCCJL.XSTGR
  is '�����ṩ��';
comment on column ZXXT_ZXCMCCJL.TGRQ
  is '�ṩ����';
comment on column ZXXT_ZXCMCCJL.TGNR
  is '�ṩ����';
comment on column ZXXT_ZXCMCCJL.CMRQ
  is '��������';
comment on column ZXXT_ZXCMCCJL.CCQD
  is '�Ʋ��嵥';
comment on column ZXXT_ZXCMCCJL.BZ
  is '��ע';

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
  is 'ִ�д�ʩ�Ǽ�';
comment on column ZXXT_ZXCSDJ.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXCSDJ.XH
  is '���';
comment on column ZXXT_ZXCSDJ.BH
  is '���';
comment on column ZXXT_ZXCSDJ.SQR
  is '������';
comment on column ZXXT_ZXCSDJ.BZXR
  is '��ִ����';
comment on column ZXXT_ZXCSDJ.CSLX
  is '��ʩ����';
comment on column ZXXT_ZXCSDJ.CSJD
  is '��ʩ�׶�';
comment on column ZXXT_ZXCSDJ.CCXZ
  is '�Ʋ���״';
comment on column ZXXT_ZXCSDJ.SSRYBS
  is 'ʵʩ��Ա��ʶ';
comment on column ZXXT_ZXCSDJ.SSRY
  is 'ʵʩ��Ա';
comment on column ZXXT_ZXCSDJ.SSSJ
  is 'ʵʩʱ��';
comment on column ZXXT_ZXCSDJ.JMSJ
  is '����ʱ��';
comment on column ZXXT_ZXCSDJ.SFLH
  is '�Ƿ��ֺ�';
comment on column ZXXT_ZXCSDJ.XXCS
  is '���д���';
comment on column ZXXT_ZXCSDJ.JCCSLX
  is '�����ʩ����';
comment on column ZXXT_ZXCSDJ.JCCSSJ
  is '�����ʩʱ��';
comment on column ZXXT_ZXCSDJ.CSNR
  is '��ʩ����';
comment on column ZXXT_ZXCSDJ.CCMC
  is '�Ʋ�����';
comment on column ZXXT_ZXCSDJ.CCXS
  is '�Ʋ�����';
comment on column ZXXT_ZXCSDJ.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXCSDJ.DJR
  is '�Ǽ���';

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
  is 'ִ�в�ѯ����¼';
comment on column ZXXT_ZXCXCKJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXCXCKJL.XH
  is '���';
comment on column ZXXT_ZXCXCKJL.BH
  is '���';
comment on column ZXXT_ZXCXCKJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXCXCKJL.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXCXCKJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXCXCKJL.BZXR
  is '��ִ����';
comment on column ZXXT_ZXCXCKJL.CXSJ
  is '��ѯʱ��';
comment on column ZXXT_ZXCXCKJL.CXDW
  is '��ѯ��λ';
comment on column ZXXT_ZXCXCKJL.DD
  is '�ص�';
comment on column ZXXT_ZXCXCKJL.CXYX
  is '��ѯ����';
comment on column ZXXT_ZXCXCKJL.ZH
  is '�ʺ�';
comment on column ZXXT_ZXCXCKJL.ZHCE
  is '�ʺŴ��';
comment on column ZXXT_ZXCXCKJL.CXJE
  is '��ѯ���';
comment on column ZXXT_ZXCXCKJL.BZ
  is '��ע';
comment on column ZXXT_ZXCXCKJL.CXRQ
  is '��ѯ����';

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
  is 'ִ�в�������¼';
comment on column ZXXT_ZXCYFPJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXCYFPJL.XH
  is '���';
comment on column ZXXT_ZXCYFPJL.BH
  is '���';
comment on column ZXXT_ZXCYFPJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXCYFPJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXCYFPJL.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXCYFPJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXCYFPJL.FYLX
  is '��Ժ����';
comment on column ZXXT_ZXCYFPJL.YJRQ
  is '�ƽ�����';
comment on column ZXXT_ZXCYFPJL.DFPCC
  is '������Ʋ�';
comment on column ZXXT_ZXCYFPJL.DFPZJE
  is '�������ܽ��';
comment on column ZXXT_ZXCYFPJL.CYFPJG
  is '���������';
comment on column ZXXT_ZXCYFPJL.SQZXR
  is '����ִ����';
comment on column ZXXT_ZXCYFPJL.SQSNR
  is '����������';
comment on column ZXXT_ZXCYFPJL.FPYJ
  is '��������';
comment on column ZXXT_ZXCYFPJL.SQFPJEY
  is '��������Ԫ��';
comment on column ZXXT_ZXCYFPJL.SFYXQL
  is '�Ƿ�����Ȩ��';
comment on column ZXXT_ZXCYFPJL.YXQLNR
  is '����Ȩ������';
comment on column ZXXT_ZXCYFPJL.YXQSXRQ
  is '����Ȩ��Ч����';
comment on column ZXXT_ZXCYFPJL.FPRQ
  is '��������';
comment on column ZXXT_ZXCYFPJL.FPJE
  is '������';
comment on column ZXXT_ZXCYFPJL.SFTCYY
  is '�Ƿ��������';
comment on column ZXXT_ZXCYFPJL.YYCLJG
  is '���鴦����';

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
  is 'ִ�е���';
comment on column ZXXT_ZXDB.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXDB.XH
  is '���';
comment on column ZXXT_ZXDB.BH
  is '���';
comment on column ZXXT_ZXDB.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXDB.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXDB.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXDB.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXDB.DBSY
  is '��������';
comment on column ZXXT_ZXDB.DBR
  is '������';
comment on column ZXXT_ZXDB.BDBR
  is '��������';
comment on column ZXXT_ZXDB.DBCCQD
  is '�����Ʋ��嵥';
comment on column ZXXT_ZXDB.DBFW
  is '������Χ';
comment on column ZXXT_ZXDB.DBRQ
  is '��������';
comment on column ZXXT_ZXDB.CDRQ
  is '�ö�����';
comment on column ZXXT_ZXDB.CDNR
  is '�ö�����';
comment on column ZXXT_ZXDB.BZ
  is '��ע';

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
  is 'ִ�ж����¼';
comment on column ZXXT_ZXDJJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXDJJL.XH
  is '���';
comment on column ZXXT_ZXDJJL.BH
  is '���';
comment on column ZXXT_ZXDJJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXDJJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXDJJL.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXDJJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXDJJL.DJLX
  is '��������';
comment on column ZXXT_ZXDJJL.FS
  is '��ʽ';
comment on column ZXXT_ZXDJJL.CCSYQR
  is '�Ʋ�����Ȩ��';
comment on column ZXXT_ZXDJJL.DJCCQDZ
  is '�ǼǲƲ�Ȩ��ַ';
comment on column ZXXT_ZXDJJL.BDE
  is '��Ķ�';
comment on column ZXXT_ZXDJJL.DJSXRQ
  is '����ʵ������';
comment on column ZXXT_ZXDJJL.BZ
  is '��ע';
comment on column ZXXT_ZXDJJL.YY
  is 'ԭ��';

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
  is 'ִ�з�������¼';
comment on column ZXXT_ZXFKFYJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXFKFYJL.BH
  is '���';
comment on column ZXXT_ZXFKFYJL.XH
  is '���';
comment on column ZXXT_ZXFKFYJL.BFKR
  is '��������';
comment on column ZXXT_ZXFKFYJL.YY
  is 'ԭ��';
comment on column ZXXT_ZXFKFYJL.FKRQ
  is '��������';
comment on column ZXXT_ZXFKFYJL.FKJE
  is '������';
comment on column ZXXT_ZXFKFYJL.BZ
  is '��ע';
comment on column ZXXT_ZXFKFYJL.LXRQ
  is '��������';
comment on column ZXXT_ZXFKFYJL.LXJE
  is '���н��';
comment on column ZXXT_ZXFKFYJL.FYNR
  is '��������';
comment on column ZXXT_ZXFKFYJL.RQ
  is '����';
comment on column ZXXT_ZXFKFYJL.FYFY
  is '���鷨Ժ';
comment on column ZXXT_ZXFKFYJL.FYJG
  is '������';
comment on column ZXXT_ZXFKFYJL.CLJG
  is '������';
comment on column ZXXT_ZXFKFYJL.BZBZ
  is '��עbz';

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
  is 'ִ�л�����¼';
comment on column ZXXT_ZXHBJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXHBJL.XH
  is '���';
comment on column ZXXT_ZXHBJL.BH
  is '���';
comment on column ZXXT_ZXHBJL.HBCKSYR
  is '�������������';
comment on column ZXXT_ZXHBJL.HCZHJZH
  is '�����ʻ����ʺ�';
comment on column ZXXT_ZXHBJL.HBJE
  is '�������';
comment on column ZXXT_ZXHBJL.HRZHJZH
  is '�����ʻ����ʺ�';
comment on column ZXXT_ZXHBJL.HBRQ
  is '��������';
comment on column ZXXT_ZXHBJL.HRZHSYR
  is '�����ʺ�������';
comment on column ZXXT_ZXHBJL.BZ
  is '��ע';

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
  is 'ִ�кͽ�';
comment on column ZXXT_ZXHJ.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXHJ.XH
  is '���';
comment on column ZXXT_ZXHJ.BH
  is '���';
comment on column ZXXT_ZXHJ.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXHJ.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXHJ.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXHJ.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXHJ.LXHJ
  is '���кͽ�';
comment on column ZXXT_ZXHJ.LXQX
  is '��������';
comment on column ZXXT_ZXHJ.DCXYRQ
  is '���Э������';

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
  is 'ִ�од���¼';
comment on column ZXXT_ZXJCJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXJCJL.XH
  is '���';
comment on column ZXXT_ZXJCJL.BH
  is '���';
comment on column ZXXT_ZXJCJL.BJCR
  is '���д���';
comment on column ZXXT_ZXJCJL.JCYY
  is '�д�ԭ��';
comment on column ZXXT_ZXJCJL.JCDD
  is '�д��ص�';
comment on column ZXXT_ZXJCJL.KSSJ
  is '��ʼʱ��';
comment on column ZXXT_ZXJCJL.JSSJ
  is '����ʱ��';
comment on column ZXXT_ZXJCJL.BZ
  is '��ע';

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
  is 'ִ�о�ר��Ʋ����顢�����������������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.XH
  is '���';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.BH
  is '���';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.FZXYR
  is '����������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YSRQ
  is '��������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.SYDW
  is '���Ƶ�λ';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YSYY
  is '����ԭ��';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.CLJG
  is '������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DKKSSJTKKS
  is '���ؿ�ʼʱ��tkks';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DKJSSJ
  is '���ؽ���ʱ��';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZXYJ
  is 'ִ������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.KZCCQK
  is '���ƲƲ����(������ȫ)';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.KZCCCQK
  is '���ƲƲ�覴����';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.LASJ
  is '����ʱ��';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZXBD
  is 'ִ�б��';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DKKSSJKS
  is '���ؿ�ʼʱ��ks';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.DKJSSJJS
  is '���ؽ���ʱ��js';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZXYJZXYJ
  is 'ִ������zxyj';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.AJFL
  is '��������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.CCSPR
  is '����������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.CCPZ
  is '������׼';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.CCSPRQ
  is '������������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_ZXJZXCCDCKZWJYSSPB.YCSPRQ
  is 'Ժ����������';

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
  is 'ִ�п�������¼';
comment on column ZXXT_ZXKWGLJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXKWGLJL.XH
  is '���';
comment on column ZXXT_ZXKWGLJL.BH
  is '���';
comment on column ZXXT_ZXKWGLJL.LX
  is '����';
comment on column ZXXT_ZXKWGLJL.KWSYRJSR
  is '����������/������';
comment on column ZXXT_ZXKWGLJL.JE
  is '���(Ԫ)';
comment on column ZXXT_ZXKWGLJL.JFZHJZH
  is '�����ʻ����ʺ�';
comment on column ZXXT_ZXKWGLJL.WP
  is '��  Ʒ';
comment on column ZXXT_ZXKWGLJL.RQ
  is '����';
comment on column ZXXT_ZXKWGLJL.BZ
  is '��ע';

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
  is 'ִ�п�Ѻ��¼';
comment on column ZXXT_ZXKYJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXKYJL.XH
  is '���';
comment on column ZXXT_ZXKYJL.BH
  is '���';
comment on column ZXXT_ZXKYJL.KYLX
  is '��Ѻ����';
comment on column ZXXT_ZXKYJL.TQFS
  is '���뷽ʽ';
comment on column ZXXT_ZXKYJL.CCSYQR
  is '�Ʋ�����Ȩ��';
comment on column ZXXT_ZXKYJL.KYWQD
  is '��Ѻ���嵥';
comment on column ZXXT_ZXKYJL.NZXBDE
  is '��ִ�б�Ķ�';
comment on column ZXXT_ZXKYJL.KYDD
  is '��Ѻ�ص�';
comment on column ZXXT_ZXKYJL.KYSXRQ
  is '��Ѻ��Ч����';
comment on column ZXXT_ZXKYJL.KYJMRQ
  is '��Ѻ��������';
comment on column ZXXT_ZXKYJL.BGRBS
  is '�����˱�ʶ';
comment on column ZXXT_ZXKYJL.BGR
  is '������';
comment on column ZXXT_ZXKYJL.BGDD
  is '���ܵص�';
comment on column ZXXT_ZXKYJL.BZ
  is '��ע';
comment on column ZXXT_ZXKYJL.BFJKYY
  is '���ֽ��ԭ��';
comment on column ZXXT_ZXKYJL.BFJKRQ
  is '���ֽ������';
comment on column ZXXT_ZXKYJL.BFJKWP
  is '���ֽ����Ʒ';
comment on column ZXXT_ZXKYJL.SYKYW
  is 'ʣ���Ѻ��';
comment on column ZXXT_ZXKYJL.BFKYBZ
  is '���ֿ�Ѻ��ע';
comment on column ZXXT_ZXKYJL.XKYY
  is '����ԭ��';
comment on column ZXXT_ZXKYJL.CDXKRQ
  is '�ö���������';
comment on column ZXXT_ZXKYJL.XKJMRQ
  is '���۽�������';
comment on column ZXXT_ZXKYJL.XKBZ
  is '���۱�ע';

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
  is 'ִ�����������¼';
comment on column ZXXT_ZXPGJGJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXPGJGJL.XH
  is '���';
comment on column ZXXT_ZXPGJGJL.BH
  is '���';
comment on column ZXXT_ZXPGJGJL.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_ZXPGJGJL.CBR
  is '�а���';
comment on column ZXXT_ZXPGJGJL.KZCCSJ
  is '���ƲƲ�ʱ��';
comment on column ZXXT_ZXPGJGJL.LABD
  is '�������';
comment on column ZXXT_ZXPGJGJL.CBRLXFS
  is '�а�����ϵ��ʽ';
comment on column ZXXT_ZXPGJGJL.PGKSSJ
  is '������ʼʱ��';
comment on column ZXXT_ZXPGJGJL.PGJSSJ
  is '��������ʱ��';
comment on column ZXXT_ZXPGJGJL.DSRLXDH
  is '��������ϵ�绰';
comment on column ZXXT_ZXPGJGJL.CBRYJ
  is '�а������';
comment on column ZXXT_ZXPGJGJL.SQRQ
  is '��������';

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
  is 'ִ�������ɽ����Ѹ���������';
comment on column ZXXT_ZXPMCJKYFQSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXPMCJKYFQSPB.XH
  is '���';
comment on column ZXXT_ZXPMCJKYFQSPB.BH
  is '���';
comment on column ZXXT_ZXPMCJKYFQSPB.SQR
  is '������';
comment on column ZXXT_ZXPMCJKYFQSPB.BZXR
  is '��ִ����';
comment on column ZXXT_ZXPMCJKYFQSPB.CCMC
  is '�Ʋ�����';
comment on column ZXXT_ZXPMCJKYFQSPB.PMJG
  is '�������';
comment on column ZXXT_ZXPMCJKYFQSPB.CJJG
  is '�ɽ��۸�';
comment on column ZXXT_ZXPMCJKYFQSPB.YFPMK
  is 'Ӧ��������';
comment on column ZXXT_ZXPMCJKYFQSPB.PMJSRQ
  is '������������';
comment on column ZXXT_ZXPMCJKYFQSPB.CCXX
  is '�Ʋ���ϸ';
comment on column ZXXT_ZXPMCJKYFQSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_ZXPMCJKYFQSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_ZXPMCJKYFQSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_ZXPMCJKYFQSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_ZXPMCJKYFQSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_ZXPMCJKYFQSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_ZXPMCJKYFQSPB.CCSPR
  is '����������';
comment on column ZXXT_ZXPMCJKYFQSPB.CCPZ
  is '������׼';
comment on column ZXXT_ZXPMCJKYFQSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_ZXPMCJKYFQSPB.CCSPRQ
  is '������������';
comment on column ZXXT_ZXPMCJKYFQSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_ZXPMCJKYFQSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_ZXPMCJKYFQSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_ZXPMCJKYFQSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_ZXPMCJKYFQSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_ZXPMCJKYFQSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_ZXPMCJKYFQSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_ZXPMCJKYFQSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_ZXPMCJKYFQSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_ZXPMCJKYFQSPB.YCSPRQ
  is 'Ժ����������';

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
  is '��������ִ�г���������';
comment on column ZXXT_ZXQDZXCXSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXQDZXCXSPB.XH
  is '���';
comment on column ZXXT_ZXQDZXCXSPB.WDBH
  is '�ĵ����';
comment on column ZXXT_ZXQDZXCXSPB.AJBH
  is '�������';
comment on column ZXXT_ZXQDZXCXSPB.SQRQ
  is '��������';
comment on column ZXXT_ZXQDZXCXSPB.SCRBS
  is '����˱�ʶ';
comment on column ZXXT_ZXQDZXCXSPB.SCR
  is '�����';
comment on column ZXXT_ZXQDZXCXSPB.YBLQK
  is 'ԭ�������';
comment on column ZXXT_ZXQDZXCXSPB.XXBLDSWJLY
  is '����������������';
comment on column ZXXT_ZXQDZXCXSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_ZXQDZXCXSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_ZXQDZXCXSPB.ZCSFPZ
  is '�鳤�Ƿ���׼';
comment on column ZXXT_ZXQDZXCXSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_ZXQDZXCXSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_ZXQDZXCXSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_ZXQDZXCXSPB.CCSPR
  is '����������';
comment on column ZXXT_ZXQDZXCXSPB.CCSFPZ
  is '�����Ƿ���׼';
comment on column ZXXT_ZXQDZXCXSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_ZXQDZXCXSPB.CCSPRQ
  is '������������';

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
  is 'ִ������������¼';
comment on column ZXXT_ZXQTGZJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXQTGZJL.XH
  is '���';
comment on column ZXXT_ZXQTGZJL.BH
  is '���';
comment on column ZXXT_ZXQTGZJL.GZRQ
  is '��������';
comment on column ZXXT_ZXQTGZJL.GZJL
  is '������¼';

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
  is 'ִ��ǿ�ƹ����¼';
comment on column ZXXT_ZXQZGLJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXQZGLJL.XH
  is '���';
comment on column ZXXT_ZXQZGLJL.BH
  is '���';
comment on column ZXXT_ZXQZGLJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXQZGLJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXQZGLJL.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXQZGLJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXQZGLJL.BZXRBZXR
  is '��ִ����bzxr';
comment on column ZXXT_ZXQZGLJL.BGLCC
  is '������Ʋ�';
comment on column ZXXT_ZXQZGLJL.GLR
  is '������';
comment on column ZXXT_ZXQZGLJL.YY
  is 'ԭ��';
comment on column ZXXT_ZXQZGLJL.KSRQ
  is '��ʼ����';
comment on column ZXXT_ZXQZGLJL.BZXR
  is '��ִ����';
comment on column ZXXT_ZXQZGLJL.RQ
  is '����';

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
  is 'ִ��ǿ��Ǩ���˳���¼';
comment on column ZXXT_ZXQZQCTCJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXQZQCTCJL.XH
  is '���';
comment on column ZXXT_ZXQZQCTCJL.BH
  is '���';
comment on column ZXXT_ZXQZQCTCJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXQZQCTCJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXQZQCTCJL.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXQZQCTCJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXQZQCTCJL.BZXR
  is '��ִ����';
comment on column ZXXT_ZXQZQCTCJL.QCTCRQ
  is 'Ǩ���˳�����';
comment on column ZXXT_ZXQZQCTCJL.ZXJG
  is 'ִ�н��';
comment on column ZXXT_ZXQZQCTCJL.CCCLQK
  is '�Ʋ��������';
comment on column ZXXT_ZXQZQCTCJL.BZ
  is '��ע';

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
  is 'ִ���Ѳ��¼';
comment on column ZXXT_ZXSCJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXSCJL.XH
  is '���';
comment on column ZXXT_ZXSCJL.BH
  is '���';
comment on column ZXXT_ZXSCJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXSCJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXSCJL.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXSCJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXSCJL.BSCR
  is '���Ѳ���';
comment on column ZXXT_ZXSCJL.CJRBS
  is '�μ��˱�ʶ';
comment on column ZXXT_ZXSCJL.CJR
  is '�μ���';
comment on column ZXXT_ZXSCJL.SCJG
  is '�Ѳ���';
comment on column ZXXT_ZXSCJL.BZ
  is '��ע';
comment on column ZXXT_ZXSCJL.SCRQ
  is '�Ѳ�����';
comment on column ZXXT_ZXSCJL.DD
  is '�ص�';

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
  is 'ִ���ʹ��¼';
comment on column ZXXT_ZXSDJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXSDJL.XH
  is '���';
comment on column ZXXT_ZXSDJL.BH
  is '���';
comment on column ZXXT_ZXSDJL.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXSDJL.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXSDJL.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXSDJL.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXSDJL.FLWSMC
  is '������������';
comment on column ZXXT_ZXSDJL.NRZY
  is '����ժҪ';
comment on column ZXXT_ZXSDJL.SDSJ
  is '�ʹ�ʱ��';
comment on column ZXXT_ZXSDJL.SDFS
  is '�ʹ﷽ʽ';
comment on column ZXXT_ZXSDJL.SSDR
  is '���ʹ���';
comment on column ZXXT_ZXSDJL.SDQK
  is '�ʹ����';

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
  is 'ִ��ʵʩ�����ִ��������������о�';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.XH
  is '���';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.BH
  is '���';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.SQR
  is '������';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.BZXR
  is '��ִ����';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.ZXSSZSCZXYYSXHYYJSJ
  is 'ִ��ʵʩ�����ִ��������������о�ʱ��';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.DD
  is '�ص�';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.CJRBS
  is '�μ��˱�ʶ';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.CJR
  is '�μ���';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.CBRBS
  is '�а��˱�ʶ';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.CBR
  is '�а���';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.JLRBS
  is '��¼�˱�ʶ';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.JLR
  is '��¼��';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.AQQK
  is '�������';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.CBRYJ
  is '�а������';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.HYQK
  is '�������';
comment on column ZXXT_ZXSSZSCZXYYSXHYYJ.YJYJ
  is '�о����';

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
  is 'ִ�����������';
comment on column ZXXT_ZXYJSPB.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXYJSPB.XH
  is '���';
comment on column ZXXT_ZXYJSPB.BH
  is '���';
comment on column ZXXT_ZXYJSPB.SQZXR
  is '����ִ����';
comment on column ZXXT_ZXYJSPB.BZXR
  is '��ִ����';
comment on column ZXXT_ZXYJSPB.YYR
  is '������';
comment on column ZXXT_ZXYJSPB.SDYYSQSJ
  is '�յ���������ʱ��';
comment on column ZXXT_ZXYJSPB.CBRYJ
  is '�а������';
comment on column ZXXT_ZXYJSPB.BZ
  is '��ע';
comment on column ZXXT_ZXYJSPB.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_ZXYJSPB.ZCSPR
  is '�鳤������';
comment on column ZXXT_ZXYJSPB.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_ZXYJSPB.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_ZXYJSPB.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_ZXYJSPB.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_ZXYJSPB.CCSPR
  is '����������';
comment on column ZXXT_ZXYJSPB.CCPZ
  is '������׼';
comment on column ZXXT_ZXYJSPB.CCSPYJ
  is '�����������';
comment on column ZXXT_ZXYJSPB.CCSPRQ
  is '������������';
comment on column ZXXT_ZXYJSPB.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_ZXYJSPB.JCSPR
  is '�ֳ�������';
comment on column ZXXT_ZXYJSPB.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_ZXYJSPB.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_ZXYJSPB.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_ZXYJSPB.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_ZXYJSPB.YCSPR
  is 'Ժ��������';
comment on column ZXXT_ZXYJSPB.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_ZXYJSPB.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_ZXYJSPB.YCSPRQ
  is 'Ժ����������';

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
  is 'ִ��֤��';
comment on column ZXXT_ZXZJ.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXZJ.XH
  is '���';
comment on column ZXXT_ZXZJ.BH
  is '���';
comment on column ZXXT_ZXZJ.KPLB
  is '��Ƭ���';
comment on column ZXXT_ZXZJ.DJRBS
  is '�Ǽ��˱�ʶ';
comment on column ZXXT_ZXZJ.DJR
  is '�Ǽ���';
comment on column ZXXT_ZXZJ.DJRQ
  is '�Ǽ�����';
comment on column ZXXT_ZXZJ.ZJYY
  is '�ս�ԭ��';
comment on column ZXXT_ZXZJ.CDRQ
  is '�ö�����';

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
  is 'ִ��֧���¼';
comment on column ZXXT_ZXZKJL.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXZKJL.XH
  is '���';
comment on column ZXXT_ZXZKJL.BH
  is '���';
comment on column ZXXT_ZXZKJL.ZKZL
  is '֧������';
comment on column ZXXT_ZXZKJL.ZKRQ
  is '֧������';
comment on column ZXXT_ZXZKJL.ZKDX
  is '֧�����';
comment on column ZXXT_ZXZKJL.ZKJEZKJE
  is '֧����zkje';
comment on column ZXXT_ZXZKJL.SQR
  is '������';
comment on column ZXXT_ZXZKJL.SQRQ
  is '��������';
comment on column ZXXT_ZXZKJL.ZFFS
  is '֧����ʽ';
comment on column ZXXT_ZXZKJL.YZKAKJE
  is '��֧�����';
comment on column ZXXT_ZXZKJL.SKRZH
  is '�տ����ʺ�';
comment on column ZXXT_ZXZKJL.SQRSFWBYAJBZXR
  is '�������Ƿ�Ϊ��Ժ������ִ����';
comment on column ZXXT_ZXZKJL.SQRYQTFYXZKHHBQQK
  is '��������������ԺЭ���ۻ���ȫ���';
comment on column ZXXT_ZXZKJL.BZXRJQZXFPGF
  is '��ִ���˽���ִ�зѡ�������';
comment on column ZXXT_ZXZKJL.CBRYJ
  is '�а������';
comment on column ZXXT_ZXZKJL.SFCL
  is '�Ƿ���';
comment on column ZXXT_ZXZKJL.ZKJE
  is '֧����';
comment on column ZXXT_ZXZKJL.QRR
  is 'ȷ����';
comment on column ZXXT_ZXZKJL.QRRQ
  is 'ȷ������';
comment on column ZXXT_ZXZKJL.SFAWR
  is '�Ƿ�����';
comment on column ZXXT_ZXZKJL.ZKLY
  is '֧������';
comment on column ZXXT_ZXZKJL.ZCSPRBSZZSP
  is '�鳤�����˱�ʶzzsp';
comment on column ZXXT_ZXZKJL.SKZE
  is '�տ��ܶ�';
comment on column ZXXT_ZXZKJL.SKBS
  is '�տ��ʶ';
comment on column ZXXT_ZXZKJL.SKSBRQ
  is '�տ��ϰ�����';
comment on column ZXXT_ZXZKJL.AKYQTS
  is '������������';
comment on column ZXXT_ZXZKJL.ZCSPRBS
  is '�鳤�����˱�ʶ';
comment on column ZXXT_ZXZKJL.ZCSPR
  is '�鳤������';
comment on column ZXXT_ZXZKJL.ZCPZ
  is '�鳤��׼';
comment on column ZXXT_ZXZKJL.ZCSPYJ
  is '�鳤�������';
comment on column ZXXT_ZXZKJL.ZCSPRQ
  is '�鳤��������';
comment on column ZXXT_ZXZKJL.CCSPRBS
  is '���������˱�ʶ';
comment on column ZXXT_ZXZKJL.CCSPR
  is '����������';
comment on column ZXXT_ZXZKJL.CCPZ
  is '������׼';
comment on column ZXXT_ZXZKJL.CCSPYJ
  is '�����������';
comment on column ZXXT_ZXZKJL.CCSPRQ
  is '������������';
comment on column ZXXT_ZXZKJL.JCSPRBS
  is '�ֳ������˱�ʶ';
comment on column ZXXT_ZXZKJL.JCSPR
  is '�ֳ�������';
comment on column ZXXT_ZXZKJL.JCPZ
  is '�ֳ���׼';
comment on column ZXXT_ZXZKJL.JCSPYJ
  is '�ֳ��������';
comment on column ZXXT_ZXZKJL.JCSPRQ
  is '�ֳ���������';
comment on column ZXXT_ZXZKJL.YCSPRBS
  is 'Ժ�������˱�ʶ';
comment on column ZXXT_ZXZKJL.YCSPR
  is 'Ժ��������';
comment on column ZXXT_ZXZKJL.YCPZ
  is 'Ժ����׼';
comment on column ZXXT_ZXZKJL.YCSPYJ
  is 'Ժ���������';
comment on column ZXXT_ZXZKJL.YCSPRQ
  is 'Ժ����������';

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
  is 'ִ��ר��Ʋ���������������';
comment on column ZXXT_ZXZXCCDCKZQKBG.FYBM
  is '��Ժ����';
comment on column ZXXT_ZXZXCCDCKZQKBG.XH
  is '���';
comment on column ZXXT_ZXZXCCDCKZQKBG.BH
  is '���';
comment on column ZXXT_ZXZXCCDCKZQKBG.ZXYJ
  is 'ִ������';
comment on column ZXXT_ZXZXCCDCKZQKBG.LASJ
  is '����ʱ��';
comment on column ZXXT_ZXZXCCDCKZQKBG.SQZXR
  is '����ִ����';
comment on column ZXXT_ZXZXCCDCKZQKBG.BZXR
  is '��ִ����';
comment on column ZXXT_ZXZXCCDCKZQKBG.ZXCKRYBS
  is 'ר������Ա��ʶ';
comment on column ZXXT_ZXZXCCDCKZQKBG.ZXCKRY
  is 'ר������Ա';
comment on column ZXXT_ZXZXCCDCKZQKBG.SASJ
  is '�հ�ʱ��';
comment on column ZXXT_ZXZXCCDCKZQKBG.WCSJ
  is '���ʱ��';
comment on column ZXXT_ZXZXCCDCKZQKBG.BZ
  is '��ע';
comment on column ZXXT_ZXZXCCDCKZQKBG.ZXCCDCKZQK
  is 'ר��Ʋ�����������';
comment on column ZXXT_ZXZXCCDCKZQKBG.QZZXCSDCQQK
  is 'ǿ��ִ�д�ʩ�Ĳ�ȡ���';
comment on column ZXXT_ZXZXCCDCKZQKBG.CLJY
  is '������';


spool off
