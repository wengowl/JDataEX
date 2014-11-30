alter table SFXZZBGLXT_ABJQ  rename column TCYJHQTBMYJ to TCYJHQTBMYJHSXCYJ;
alter table ZXPGXT_RYXX add(DLID NUMBER,YHM varchar2(100));
comment on column ZXPGXT_RYXX.DLID is '��¼ID';
comment on column ZXPGXT_RYXX.YHM is '�û���';

alter table SFTJJKXT_ZHQKTJB add(FYBM NUMBER,BM NUMBER,XH NUMBER,PSYCJ NUMBER ,HB NUMBER,SSCCBQ NUMBER,XYZX NUMBER ,SWHTL NUMBER,FLYZ NUMBER, ZGYJA NUMBER,
ZGYSSBDZJE NUMBER,GYJA NUMBER,GYSSBDZJE NUMBER ,ZYJA NUMBER,ZYSSBDZJE NUMBER,JCYJA NUMBER ,JCYSSBDZJE NUMBER,RMFTJA NUMBER,RMFTSSBDZJE NUMBER ,HJJA NUMBER,HJSSBDZJE NUMBER);

comment on column SFTJJKXT_ZHQKTJB.FYBM is '��Ժ����';
comment on column SFTJJKXT_ZHQKTJB.BM is '����';
comment on column SFTJJKXT_ZHQKTJB.XH is '���';
comment on column SFTJJKXT_ZHQKTJB.PSYCJ is '����Ա�μ�';
comment on column SFTJJKXT_ZHQKTJB.HB is '�ر�';
comment on column SFTJJKXT_ZHQKTJB.SSCCBQ is '���ϲƲ�ȫ';
comment on column SFTJJKXT_ZHQKTJB.XYZX is '����ִ��';
comment on column SFTJJKXT_ZHQKTJB.SWHTL is '��ί������';
comment on column SFTJJKXT_ZHQKTJB.FLYZ is '����Ԯ��';
comment on column SFTJJKXT_ZHQKTJB.ZGYJA is '���Ժ�᰸';
comment on column SFTJJKXT_ZHQKTJB.ZGYSSBDZJE is '���Ժ���ϱ���ܽ��';
comment on column SFTJJKXT_ZHQKTJB.GYJA is '��Ժ�᰸';
comment on column SFTJJKXT_ZHQKTJB.GYSSBDZJE is '��Ժ���ϱ���ܽ��';
comment on column SFTJJKXT_ZHQKTJB.ZYJA is '��Ժ�᰸';
comment on column SFTJJKXT_ZHQKTJB.ZYSSBDZJE is '��Ժ���ϱ���ܽ��';
comment on column SFTJJKXT_ZHQKTJB.JCYJA is '���Ժ�᰸';
comment on column SFTJJKXT_ZHQKTJB.JCYSSBDZJE is '���Ժ���ϱ���ܽ��';
comment on column SFTJJKXT_ZHQKTJB.RMFTJA is '����ͥ�᰸';
comment on column SFTJJKXT_ZHQKTJB.RMFTSSBDZJE is '����ͥ���ϱ���ܽ��';
comment on column SFTJJKXT_ZHQKTJB.HJJA is '�ϼƽ᰸';
comment on column SFTJJKXT_ZHQKTJB.HJSSBDZJE is '�ϼ����ϱ���ܽ��';

alter table SSXT_XSZSDJ  rename column JDLAJXSS to JDLAJXSSSCRI;

alter table ZXXT_GSDJDC rename column S҅ZCCCCFKYDMSCD to SFZCCCCFKYDMSCD;





create table SFTJJKXT_XZZSCQYSAJTJB
(
  ID              VARCHAR2(36) not null,
  AJBS            NUMBER not null,
  REG_TIME        DATE not null,
  UPDATE_TIME     DATE not null,
  DEPT_CODE       VARCHAR2(20) not null,
  APP_CODE        VARCHAR2(20) not null,
  FYBM            NUMBER,
  BH              NUMBER,
  XH              NUMBER,
  JCJS            NUMBER,
  SAJS            NUMBER,
  SADDTQXZPC      NUMBER,
  SAFDTQXZPC      NUMBER,
  JAJS            NUMBER,
  JADDTQXZPC      NUMBER,
  JAFDTQXZPC      NUMBER,
  WC              NUMBER,
  CXQB            NUMBER,
  CXBF            NUMBER,
  ZXZCJTXZXW      NUMBER,
  BG              NUMBER,
  LXFDZZ          NUMBER,
  QRHFHYX         NUMBER,
  QRWFHWX         NUMBER,
  BHSSQQ          NUMBER,
  SSBD            NUMBER,
  BYPC            NUMBER,
  BHQS            NUMBER,
  YGZDCS          NUMBER,
  BGGBYJTXZXWYGCS NUMBER,
  ZJ              NUMBER,
  QTCD            NUMBER,
  XZPCDJ          NUMBER,
  FHYWHFYZ        NUMBER,
  ZFPCJ           NUMBER,
  XZPCJE          NUMBER,
  DTXP            NUMBER,
  MG              NUMBER,
  FG              NUMBER,
  YG              NUMBER,
  DGDZYOMGJ       NUMBER,
  RB              NUMBER,
  SWQT            NUMBER,
  XJ              NUMBER,
  SG              NUMBER,
  SA              NUMBER,
  ST              NUMBER,
  WJJS            NUMBER,
  WJZZ            NUMBER,
  SSBD1           NUMBER
)
;
comment on table SFTJJKXT_XZZSCQYSAJTJB
  is '行政知识产权一审案件统计表';
comment on column SFTJJKXT_XZZSCQYSAJTJB.FYBM
  is '法院编码';
comment on column SFTJJKXT_XZZSCQYSAJTJB.BH
  is '编号';
comment on column SFTJJKXT_XZZSCQYSAJTJB.XH
  is '序号';
comment on column SFTJJKXT_XZZSCQYSAJTJB.JCJS
  is '旧存件数';
comment on column SFTJJKXT_XZZSCQYSAJTJB.SAJS
  is '收案件数';
comment on column SFTJJKXT_XZZSCQYSAJTJB.SADDTQXZPC
  is '收案单独提起行政赔偿';
comment on column SFTJJKXT_XZZSCQYSAJTJB.SAFDTQXZPC
  is '收案附带提起行政赔偿';
comment on column SFTJJKXT_XZZSCQYSAJTJB.JAJS
  is '结案件数';
comment on column SFTJJKXT_XZZSCQYSAJTJB.JADDTQXZPC
  is '结案单独提起行政赔偿';
comment on column SFTJJKXT_XZZSCQYSAJTJB.JAFDTQXZPC
  is '结案附带提起行政赔偿';
comment on column SFTJJKXT_XZZSCQYSAJTJB.WC
  is '维持';
comment on column SFTJJKXT_XZZSCQYSAJTJB.CXQB
  is '撤销全部';
comment on column SFTJJKXT_XZZSCQYSAJTJB.CXBF
  is '撤销部分';
comment on column SFTJJKXT_XZZSCQYSAJTJB.ZXZCJTXZXW
  is '重新作出具体行政行为';
comment on column SFTJJKXT_XZZSCQYSAJTJB.BG
  is '变更';
comment on column SFTJJKXT_XZZSCQYSAJTJB.LXFDZZ
  is '履行法定职责';
comment on column SFTJJKXT_XZZSCQYSAJTJB.QRHFHYX
  is '确认合法或有效';
comment on column SFTJJKXT_XZZSCQYSAJTJB.QRWFHWX
  is '确认违法或无效';
comment on column SFTJJKXT_XZZSCQYSAJTJB.BHSSQQ
  is '驳回诉讼请求';
comment on column SFTJJKXT_XZZSCQYSAJTJB.SSBD
  is '诉讼标的';
comment on column SFTJJKXT_XZZSCQYSAJTJB.BYPC
  is '不予赔偿';
comment on column SFTJJKXT_XZZSCQYSAJTJB.BHQS
  is '驳回起诉';
comment on column SFTJJKXT_XZZSCQYSAJTJB.YGZDCS
  is '原告主动撤诉';
comment on column SFTJJKXT_XZZSCQYSAJTJB.BGGBYJTXZXWYGCS
  is '被告改变原具体行政行为原告撤诉';
comment on column SFTJJKXT_XZZSCQYSAJTJB.ZJ
  is '终结';
comment on column SFTJJKXT_XZZSCQYSAJTJB.QTCD
  is '其他裁定';
comment on column SFTJJKXT_XZZSCQYSAJTJB.XZPCDJ
  is '行政赔偿调解';
comment on column SFTJJKXT_XZZSCQYSAJTJB.FHYWHFYZ
  is '返还原物恢复原状';
comment on column SFTJJKXT_XZZSCQYSAJTJB.ZFPCJ
  is '支付赔偿金';
comment on column SFTJJKXT_XZZSCQYSAJTJB.XZPCJE
  is '行政赔偿金额';
comment on column SFTJJKXT_XZZSCQYSAJTJB.DTXP
  is '当庭宣判';
comment on column SFTJJKXT_XZZSCQYSAJTJB.MG
  is '美国';
comment on column SFTJJKXT_XZZSCQYSAJTJB.FG
  is '法国';
comment on column SFTJJKXT_XZZSCQYSAJTJB.YG
  is '英国';
comment on column SFTJJKXT_XZZSCQYSAJTJB.DGDZYOMGJ
  is '德国等主要欧盟国家';
comment on column SFTJJKXT_XZZSCQYSAJTJB.RB
  is '日本';
comment on column SFTJJKXT_XZZSCQYSAJTJB.SWQT
  is '涉外其它';
comment on column SFTJJKXT_XZZSCQYSAJTJB.XJ
  is '小计';
comment on column SFTJJKXT_XZZSCQYSAJTJB.SG
  is '涉港';
comment on column SFTJJKXT_XZZSCQYSAJTJB.SA
  is '涉澳';
comment on column SFTJJKXT_XZZSCQYSAJTJB.ST
  is '涉台';
comment on column SFTJJKXT_XZZSCQYSAJTJB.WJJS
  is '未结件数';
comment on column SFTJJKXT_XZZSCQYSAJTJB.WJZZ
  is '未结终止';
comment on column SFTJJKXT_XZZSCQYSAJTJB.SSBD1
  is '诉讼标的1';



