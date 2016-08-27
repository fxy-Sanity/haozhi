

--�û���
create table VOTE_USER
(
  VU_USER_ID   VARCHAR2(10) not null,           --�û�id
  VU_USER_NAME VARCHAR2(20) not null,           --�û���
  VU_PASSWORD  VARCHAR2(20) not null,           --�û�����
  VU_STATUS    NUMBER(6) not null,              --�û�״̬
  VU_VERSION   NUMBER(10) not null              --��ɫ
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table VOTE_USER
  add primary key (VU_USER_ID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
  
  
--ͶƱ����
create table VOTE_SUBJECT
(
  VS_ID    NUMBER(10) not null,            --ͶƱ������
  VS_TITLE VARCHAR2(200) not null,         --ͶƱ����
  VS_TYPE  NUMBER(6) not null              --ͶƱ����:   ��ѡ  1    ��ѡ   2
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table VOTE_SUBJECT
  add primary key (VS_ID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );





--ͶƱ���ݶ�Ӧ��ѡ���
create table VOTE_OPTION
(
  VO_ID     NUMBER(10) not null,  --���
  VO_OPTION VARCHAR2(100) not null,--ͶƱѡ��
  VS_ID     NUMBER(10) not null,  --ͶƱ������
  VO_ORDER  NUMBER(10) not null  --��ʾ˳��
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
  
  
alter table VOTE_OPTION
  add primary key (VO_ID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );





--�û�ͶƱȡֵ��
create table VOTE_ITEM
(
  VI_ID      NUMBER(10) not null, --���
  VO_ID      NUMBER(10) not null, --ͶƱѡ��id
  VS_ID      NUMBER(10) not null, --ͶƱ������id
  VU_USER_ID VARCHAR2(10) not null --�û�id
)tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
  
alter table VOTE_ITEM
  add primary key (VI_ID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );


--����û�
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('ss', '��ͨ�û�', 'a', 1, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('admin', '����Ա', 'a', 2, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('zy', 's', 'a', 1, 0);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc', 'a', 'a', 2, 0);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc1', 'a', 'a', 2, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc2', 'a', 'a', 2, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc3', 'a', 'a', 2, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc4', 'a', 'a', 2, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc5', 'a', 'a', 2, 1);
insert into VOTE_USER (VU_USER_ID, VU_USER_NAME, VU_PASSWORD, VU_STATUS, VU_VERSION)
values ('yc6', 'a', 'a', 1, 0);

--���ͶƱ����
insert into VOTE_SUBJECT (VS_ID, VS_TITLE, VS_TYPE)
values (103, 'ѡ������Ŀ����õ����ع���', 2);
insert into VOTE_SUBJECT (VS_ID, VS_TITLE, VS_TYPE)
values (104, 'ѡ������Ŀ����õ����뷨', 1);
insert into VOTE_SUBJECT (VS_ID, VS_TITLE, VS_TYPE)
values (105, 'ѡ������Ŀ����õ��������칤��', 1);
insert into VOTE_SUBJECT (VS_ID, VS_TITLE, VS_TYPE)
values (440, '���������ĵط�', 1);
insert into VOTE_SUBJECT (VS_ID, VS_TITLE, VS_TYPE)
values (101, 'ѡ������Ŀ����õ������', 1);
insert into VOTE_SUBJECT (VS_ID, VS_TITLE, VS_TYPE)
values (102, 'ѡ������Ŀ����õ�ɱ�����', 1);

--��������е�ѡ��
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (397, '��ѶQQ', 105, 1);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (398, 'MSN', 105, 2);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (380, 'Ѹ��', 103, 1);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (399, '����UC', 105, 3);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (400, '����', 105, 4);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (401, 'Skype', 105, 5);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (402, '��������', 105, 6);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (403, '�ٶ�HI', 105, 7);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (404, '΢��IE�����', 101, 1);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (405, '�����Firefox�������', 101, 2);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (381, '���ʿ쳵', 103, 2);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (382, '��¿', 103, 3);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (383, '���ؾ���', 103, 4);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (384, '��������', 103, 5);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (385, '�ѹ�ƴ��', 104, 1);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (386, '�ѹ����', 104, 2);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (387, 'QQƴ��', 104, 3);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (388, 'QQ���', 104, 4);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (389, '�ȸ�ƴ��', 104, 5);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (390, '�Ϲ�ƴ��', 104, 6);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (391, '����ABC', 104, 7);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (392, '΢��ƴ��', 104, 8);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (393, '����ƴ��', 104, 9);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (394, '�������', 104, 10);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (395, '��Ʒƴ��', 104, 11);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (396, '��Ʒ���', 104, 12);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (406, '����֮�������', 101, 3);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (407, '360�����', 101, 4);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (408, '���������', 101, 5);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (409, '�ȸ裨Chrome�������', 101, 6);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (410, '����˹��', 102, 1);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (411, '360ɱ��', 102, 2);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (412, 'McAfee', 102, 3);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (413, 'AVG', 102, 4);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (414, 'ŵ��ɱ��', 102, 5);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (415, '����ɱ��', 102, 6);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (416, '��ɽ����', 102, 7);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (417, '����ɱ��', 102, 8);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (418, '΢�����', 102, 9);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (419, '����ɱ��', 102, 10);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (441, '����', 440, 1);
insert into VOTE_OPTION (VO_ID, VO_OPTION, VS_ID, VO_ORDER)
values (442, '����', 440, 2);

--���ѡ����
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (422, 405, 101, 'yc1');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (423, 405, 101, 'yc2');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (424, 404, 101, 'yc3');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (425, 407, 101, 'yc4');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (426, 408, 101, 'yc5');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (427, 409, 101, 'yc');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (445, 404, 101, 'zy');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (367, 136, 135, 'admin');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (420, 405, 101, 'admin');
insert into VOTE_ITEM (VI_ID, VO_ID, VS_ID, VU_USER_ID)
values (421, 406, 101, 'ss');



commit;















