--create database xiaonei
--drop database xiaonei
use xiaonei

------------------------------------------- �û��� users -------------------------------------------		
create table users(
	id		int(11)		not null primary key auto_increment, --�û�ID
	email		varchar	(128)	unique not null,	    --����
	name		varchar	(128)	not null,		    --��ʵ����
	pwd		varchar	(128)	not null,		    --����(md5����) 
	photo		varchar	(128) 	default 'default.gif',	   --ͷ��
	sex		varchar	(16)	,			   --�Ա�(�У�Ů,��������)
	homePro		int(11)		,			--����ʡID(���)
	homeCity	int(11)		,			--������ID(���)
	birth		date	,				--����
	tel		varchar	(32)	,			--�̶��绰�绰
	mobile		varchar(32)	,			--�ֻ�����
	oicq		varchar (32)	,			--QQ��
	msn		varchar	(128)	,			--MSN
	website		varchar	(128)	,			--������վ
	techSch		int(11)		,			--��УID
	techSchYear	int(11)		,			--��У��ѧ���
	juniorSch	int(11)		,			--����ID
	juniorYear	int(11)		,			--������ѧ���
	primarySch	int(11)	        ,			--Сѧ
	primaryYear	int(11)		,			--Сѧ��ѧ���
	interest	varchar	(256)	,			--��Ȥ����
	music		varchar	(256)	,			--ϲ��������
	movie		varchar	(256)	,			--ϲ���ĵ�Ӱ
	game		varchar	(256)	,			--ϲ������Ϸ
	cartoon		varchar(256)	,			--ϲ���Ķ���
	sport		varchar	(256)	,			--ϲ�����˶�
	book		varchar	(256)	,			--ϲ�����鼮
	assn		varchar	(256)	,			--���������
	visited		int default 0	,			--������
	doing		varchar	(128)	,			--Ŀǰ����������
	online		tinyint		default 0,		--����״̬(1��ʾ���ߣ�0��ʾ ����.2..�ȴ���չ)
	registerDate	datetime 	,			--ע��ʱ��
	loginDate	datetime 	,			--����¼ʱ��		
	level		tinyint 	default 1,		--�ȼ�(1-��ͨ,2-�Ǽ�)
	locked		tinyint		default 0,		--�Ƿ��������û�(0��ʾ������,1��ʾ����,2..�ȴ�����)
	foreign key (homePro) references province(id),
	foreign key (homeCity) references city(id),
	foreign key (techSch) references techschool(id),
	foreign key (juniorSch) references junior(id),
	foreign key (primarySch) references primarySchool(id)		
)							
				
--select  u_id,u_name,u_indate,u_loginDate,u_online from users where u_id=2
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('admin@sina.com','У��������Ա','123123','admin.jpg','��','1981-7-3',1,'2005-1-1')

insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_homePro,u_homeCity,u_birth,u_QQ,u_juniorSch,u_juniorYear,u_primarySch,u_primaryYear,
u_interest,u_music,u_movie,u_game,u_cartoon,u_sport,u_book,u_doing,u_online,u_indate,u_visited) 
values('sg11@sina.com','����ү','123123','u1.gif','��',1,6,'1984-5-13',123456,89,1996,'������Сѧ',1990,
'��٩, Ϲ��, ����, ����, ��ʷ, ����,�� ��, ����, ����, ˼��',
'go west, on your mark, Ӣ�۵�����, �����ԭ�羰, Beat JP, My Time To Be A Star',
'�¸ҵ���, ��������, ����, ���ϵ�Ӱ',
'WE10, �Ǽ�����, �޶�֮ҹ2,�� �ž���4,�����ƻ���2,ħ������',
'ʥ��ʿ, ����, ̫�ձ���I, ���ν��, ����С��, ��������, ����è, �����ܷ���ʽ����, ���ս��, ��������ռ�',
'����, ƹ����, ����, ����',
'Ц������,С��ɵ�,��������,���ӱ�������ʮ����',
'nothing to lose',1,'2006-2-12',9)

select *from users where u_id=2
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg22@sohu.com','С����','123123','u2.jpg','Ů','1983-6-1',2,'2006-3-21')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg33@126.com','���','123123','u3.gif','��','1984-4-3',2,'2006-4-15')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg44@163.com','ħ���ս���','123123','u4.jpg','��','1986-2-14',2,'2006-5-2')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg55@hotmail.com','����','123123','u5.jpg','Ů','1985-7-14',2,'2006-7-23')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg66@gmail.com','����','123123','u6.gif','Ů','1986-4-13',2,'2006-10-11')

insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg77@sina.com','��������','123123','u7.jpg','��','1984-11-3',2,'2007-2-12')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg88@sohu.com','С����','123123','u8.jpg','Ů','1986-11-2',2,'2007-3-21')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg99@126.com','֣��','123123','u9.jpg','��','1985-4-21',2,'2007-3-25')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('sg00@163.com','���','123123','u10.jpg','��','1985-6-3',2,'2007-4-2')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac11@hotmail.com','ɴ֯','123123','u11.jpg','Ů','1988-8-27',2,'2007-4-5')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac22@gmail.com','��С��','123123','u12.jpg','��','1987-9-25',2,'2007-6-11')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac33@sina.com','С����','123123','u13.jpg','��','1985-11-23',2,'2007-8-12')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac44@sohu.com','�ҹ���','123123','u14.gif','Ů','1984-12-31',2,'2007-8-21')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac55@126.com','�Ϲ�����','123123','u15.jpg','��','1980-4-9',2,'2007-10-15')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac66@163.com','����','123123','u16.jpg','��','1991-10-5',2,'2008-3-2')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac77@hotmail.com','СŮ��','123123','u17.jpg','Ů','1989-7-7',2,'2008-4-23')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac88@qq.com','ӯӯ','123123','u18.jpg','Ů','1988-2-3',2,'2008-5-11')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('ac99@sina.com','ʮ����','123123','u19.gif','��','1987-3-8',2,'2008-5-12')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('dd11@sohu.com','������','123123','u20.gif','Ů','1984-11-1',2,'2008-10-21')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('dd22@126.com','����','123123','u21.jpg','��','1987-9-3',2,'2008-10-25')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('dd33@163.com','������','123123','u22.jpg','��','1986-2-9',2,'2008-10-26')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('dd44@hotmail.com','С��Ů','123123','u23.jpg','Ů','1984-11-4',2,'2008-10-27')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('dd55@qq.com','�����','123123','u24.gif','��','1985-4-23',2,'2008-10-28')
insert into users(u_email,u_name,u_pwd,u_photo,u_sex,u_birth,u_online,u_indate) values('dd66@139.com','�ù�','123123','u25.jpg','Ů','1987-4-12',2,'2008-10-28')



select * from users 


------------------------------------------- �û������ userNet -------------------------------------------								
--drop table userNet						
create table userNet(	
	id		int	not null primary key auto_increment,	--�û�����ID		
	userId	int	,			--�û�ID		
	name		varchar	(64)	not null,			--������		
	isPrimary	tinyint	default 1,				--�����磨1-�ǣ�0-���ǣ�
	foreign key (userId) references users(id)			
)
insert into userNet values(1,'ǧ����',1)

insert into userNet values(2,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(3,'������',1)
insert into userNet values(4,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(5,'�廪��ѧ',1)
insert into userNet values(6,'����������ѧ',1)
insert into userNet values(7,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(8,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(9,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(10,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(11,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(12,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(13,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(14,'����������ѧ',1)
insert into userNet values(15,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(16,'�廪��ѧ',1)
insert into userNet values(17,'������',1)
insert into userNet values(18,'����������ѧ',1)

insert into userNet values(19,'����������ѧ',1)
insert into userNet values(20,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(21,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(22,'������',1)
insert into userNet values(23,'����������ѧ',1)


insert into userNet values(24,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(25,'�׶�ҽ�ƴ�ѧ',1)
insert into userNet values(26,'�׶�ҽ�ƴ�ѧ',1)


select *from userNet





--select count(*) from userNet where un_Name=(select un_Name from userNet where un_userId=4) and un_primary=1
							
------------------------------------------- �û���ѧ�� userUniversity -------------------------------------------							
--drop table userUniversity						
create table userUniversity
(
  id int not null primary key auto_increment,--ID	
  userId int,--�û�ID
  universityId int,--��ѧID
  uniYear int,--��ѧ��ѧ���
  userType varchar(32),--���
  college varchar(128),--Ժϵ
  drom varchar(128),--����
  foreign key(userId) references users(id),
  foreign key(universityId) references university(id)
)

insert into userUniversity values(2,39,2003,'��ѧ��','����ҽѧ����ѧԺ','14��¥')
insert into userUniversity values(4,39,2005,'��ѧ��','����ҽѧ����ѧԺ','14��¥')
insert into userUniversity values(5,1,2001,'��ѧ��','�����ѧԺ','�Ͼ���Ԣ')

insert into userUniversity values(7,39,2006,'��ѧ��','����ҽѧԺ','13��¥')
insert into userUniversity values(8,39,2005,'��ѧ��','����ѧԺ','13��¥')
insert into userUniversity values(9,39,2003,'��ѧ��','ҩѧԺ','14��¥')
insert into userUniversity values(10,39,2004,'��ѧ��','��ǻѧԺ','13��¥')
insert into userUniversity values(11,39,2007,'��ѧ��','����ѧԺ','14��¥')
insert into userUniversity values(12,39,2008,'��ѧ��','����ѧԺ','14��¥')
insert into userUniversity values(13,39,2005,'��ѧ��','ҩѧԺ','14��¥')

insert into userUniversity values(15,39,2007,'��ѧ��','����ѧԺ','14��¥')

insert into userUniversity values(16,1,2003,'��ѧ��','��еѧԺ','�Ͼ���Ԣ')

insert into userUniversity values(20,39,2007,'��ѧ��','����ѧԺ','14��¥')
insert into userUniversity values(21,39,2008,'��ѧ��','����ѧԺ','14��¥')

insert into userUniversity values(24,39,2007,'��ѧ��','����ҽѧ����ѧԺ','14��¥')
insert into userUniversity values(25,39,2007,'��ѧ��','����ѧԺ','14��¥')
insert into userUniversity values(26,39,2008,'��ѧ��','����ҽѧԺ','14��¥')
select*from userUniversity								
------------------------------------------- �û����б� userSenior -------------------------------------------								
--drop table userSenior				
create table userSenior(		
	id		int		not null primary key auto_increment,	--ID		
	userId		int		,			--�û�ID		
	seniorSchId	int		,			--����ID		
	seniorYear	int		,			--������ѧ���		
	grade1	varchar	(64)	,			--��һ		
	grade2	varchar	(64)	,			--�߶�		
	grade3	varchar	(64)	,			--����
	foreign key (userid) references users(id),
	foreign key (seniorSchId) references senior(id)
)
insert into userSenior values(2,124,1999,'10��','8��','8��')
insert into userSenior values(6,124,2004,'3��','3��','3��')	
insert into userSenior values(14,124,2005,'4��','1��','1��')
insert into userSenior values(18,124,2005,'6��','6��','6��')	
insert into userSenior values(19,124,2005,'2��','2��','2��')
insert into userSenior values(23,124,2007,'3��','9��','9��')	
select *from userSenior							
------------------------------------------- �û���˾�� userCom -------------------------------------------								
						
create table userCom(		
	uc_id		bigint		primary key identity,	--�û���˾ID		
	uc_userId	bigint		,			--�û�ID		
	uc_name		varchar	(64)	,			--��˾��		
	uc_describe	varchar	(256)	,			--��˾����		
	uc_trade	int		,			--��ҵID		
	uc_tradeInfo	int		,			--��ҵ����ID		
	uc_job		int		,			--ְλID		
	uc_jobInfo	int		,			--ְλ����ID		
	uc_date		varchar	(16)				--����ʱ��		
)			



				
------------------------------------------- ���ѱ� friend -------------------------------------------								
--drop table friend						
create table friend(	
	f_id		bigint		primary key identity,	--ID		
	f_hostId	bigint		,			--����ID		
	f_friendId	bigint		,			--����ID		
	f_type		int		default 1,		--�������ͣ�1-��ͨ��2-�ر�
	f_desc          varchar(256)				--�ر��������
)
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,3,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(3,2,2,'С��ү')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,4,2,'���ֵܽ�����')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(4,2,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,5,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(5,2,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,6,2,'�ٺ�')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(6,2,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(3,4,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(4,3,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(3,5,2,'�Ǻ�')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(5,3,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(3,6,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(6,3,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(4,5,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(5,4,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(4,6,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(6,4,2,'ƽ����')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(5,6,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(6,5,1,'')	
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(6,7,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(7,6,1,'')

insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,9,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(9,2,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,10,2,'����')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(10,2,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,11,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(11,2,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,12,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(12,2,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,13,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(13,2,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,14,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(14,2,1,'')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(2,15,2,'~~')
insert into friend(f_hostId,f_friendId,f_type,f_desc) values(15,2,1,'')

select *from friend	
--select *from Friend where  F_HostId =2 and  F_FriendId=3
--select distinct un.un_Name from Users u,Friend f,UserNet un 
--where u.U_Id=f.F_FriendId and un.un_Primary=1 and un.un_UserId=f.F_FriendId and f.F_HostId=2
						

/**
drop table demo
create table demo(
did int primary key identity ,
dname varchar(512),
dcont varchar(512),
dtime datetime default getdate()
)
insert into demo(dcont) values('aaaaaa') 
insert into demo(dcont) values('bbbbbb')
insert into demo(dcont) values('cccccc')
insert into demo(dcont) values('ddddddd')
select *from demo --where month(dateadd(day,7,getdate()))= month(dtime) and  day(dateadd(day,7,getdate()))- day(dtime) between 0 and 7
**/
										
------------------------------------------- ��������� friendApply -------------------------------------------								
						
create table friendApply(	
	fa_id		bigint		primary key identity,	--��������ID		
	fa_sendId	bigint		,			--������ID		
	fa_getId	bigint		,			--������ID		
	fa_info		varchar	(256)				--������Ϣ��ѡ�		
)		


	


select *from FriendApply  	





------------------------------------------- �����±� news -------------------------------------------										
								
create table news(			
	n_id		bigint		primary key identity,	--������ID		
	n_title		varchar	(512)	,			--����			
	n_hostId	bigint		,			--����ID			
	n_content	varchar	(512)	,			--����		
	n_type		int		,			--��������ͼƬ			
	n_date		datetime 	default getdate()	--ʱ��				
)
------------------------------------------- �����¹�ϵ��	newsRelation -------------------------------------------										
--drop table newsRelation								
create table newsRelation(			
	nr_id		bigint		primary key identity,	--�����¹�ϵID				
	nr_newsId	bigint		,			--������ID				
	nr_friendId	bigint		,			--�����º���ID				
	nr_status	int		default 1		--������״̬(1-δ����2-�Ѷ�)				
)	



					
							
------------------------------------------- ���Ա� gossip -------------------------------------------								
drop table gossip						
create table gossip(	
	g_id		bigint		primary key identity,	--����ID		
	g_sendId	bigint		,			--������ID		
	g_getId		bigint		,			--������ID		
	g_content	varchar	(640)	,			--����		
	g_indate	datetime 	default getdate()	--ʱ��				
)


insert into gossip values(3,2,'hi','2008-3-4');
insert into gossip values(4,2,'���','2008-4-12');
insert into gossip values(5,2,'�㰡','2008-4-23');
insert into gossip values(6,2,'�Ǻ�','2008-5-4');
insert into gossip values(3,2,'�е���˼','2008-6-5');
insert into gossip values(4,2,'С��','2008-8-11');

insert into gossip values(3,2,'���㣡��','2008-8-14');
insert into gossip values(2,2,'��Υ�ˣ�','2008-9-2');
insert into gossip values(11,2,'�㻹���ڰ����Ǻ�','2008-10-3');
insert into gossip values(9,2,'�һᰡ��','2008-10-4');
insert into gossip values(12,2,'����','2008-10-25');
insert into gossip values(1,2,'С��ү����','2008-10-26');

select *from gossip order by G_Indate desc




------------------------------------------- ������ʾ��	gossipTip -------------------------------------------										
--drop table gossipTip								
create table gossipTip(		
	gt_id		bigint		primary key identity,	--������ʾID				
	gt_sendId	bigint		,			--������ID			
	gt_getId	bigint		,			--������ID				
	gt_url		varchar	(512)	,			--��ʾ����				
	gt_date		datetime 	default getdate(),	--ʱ��	
	gt_status 	int 		default 1		--1-δ����2-�Ѷ�			
)


select *from gossipTip


--select gt_url from gossipTip where gt_getId=2 order by gt_Date desc
------------------------------------------- ���ʱ� visitor -------------------------------------------								
--drop table visitor						
create table visitor(	
	v_id		bigint		primary key identity,	--����ID		
	v_hostId	bigint		,			--����ID		
	v_visitorId	bigint		,			--�ÿ�ID		
	v_date		datetime 	default getdate()	--����ʱ��		
)							
insert into visitor values(2,1,'2008-3-1')	
insert into visitor values(2,3,'2008-3-11')
insert into visitor values(2,4,'2008-4-3')
insert into visitor values(2,5,'2008-5-1')
insert into visitor values(2,7,'2008-6-2')
insert into visitor values(2,8,'2008-7-5')
insert into visitor values(2,9,'2008-8-10')
insert into visitor values(2,10,'2008-10-19')
insert into visitor values(2,12,'2008-10-28')
insert into visitor values(2,11,getdate())	

select *from visitor	


------------------------------------------- վ���ű� letter -------------------------------------------										
--drop table letter								
create table letter(			
	le_id		bigint		primary key identity,	--��ϢID				
	le_sendID	bigint		,			--������ID				
	le_getID	bigint		,			--������ID		
	le_title	varchar	(64)	,			--��Ŀ		
	le_content	varchar	(2048)	,			--����		
	le_indate	datetime 	default getdate(),	--ʱ��		
	le_readed	int 		default 1		--�Ѷ�δ��(1-δ����2-�Ѷ�)		
)							
		
					
select *from letter
------------------------------------------- ���� album -------------------------------------------								
--drop table album						
create table album(		
	al_id		bigint		primary key identity,	--���ID		
	al_hostId	bigint		,			--�û�ID		
	al_name		varchar	(64)	,			--�����		
	al_photo        varchar (64)    default 'main.jpg',	--ȱʡͼƬ
	al_description	varchar	(256)   ,			--�������			
	al_indate	datetime 	default getdate(),	--����ʱ��		
	al_update	datetime 	default getdate()	--����ʱ��		
)	


insert into album values (2,'�羰','f2.jpg','�羰���԰ٶȿռ�','2008-4-2','2008-5-3')
insert into album values (2,'��ͨ','c3.jpg','��ͨ��','2008-5-5','2008-7-2')
insert into album values (2,'����','t4.jpg','��ע��������������','2008-8-22','2008-9-4')
--select *from album	

update Album set al_Photo='111' where al_Id=5
 					
------------------------------------------- ��Ƭ�� photo -------------------------------------------								
--drop table photo						
create table photo(		
	p_id		bigint		primary key identity,	--��ƬID		
	p_photo		varchar	(64)	,			--��Ƭ��		
	p_albumId	bigint		,			--�������ID	
	p_description	varchar	(256)	,			--��Ƭ����			
	p_read		int		default 0,		--�����		
	p_indate	datetime 	default getdate()	--����ʱ��		
)		

insert into photo(p_photo,p_albumId,p_description,p_indate) values('f1.jpg',1,'��ɫ','2008-2-3')
insert into photo(p_photo,p_albumId,p_description,p_indate) values('f2.jpg',1,'��ŵ','2008-3-2')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('c1.jpg',2,'','2008-2-22')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('c2.jpg',2,'��������','2008-4-5')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('c3.jpg',2,'','2008-5-16')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('t1.jpg',3,'��������','2008-3-15')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('t2.jpg',3,'����','2008-6-22')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('t3.jpg',3,'��������','2008-9-13')	
insert into photo(p_photo,p_albumId,p_description,p_indate) values('t4.jpg',3,'����',getdate())	


select *from photo	where p_albumId=6			
------------------------------------------- ��Ƭ���۱� photoComment -------------------------------------------								
						
create table photoComment(	
	pc_id		bigint		primary key identity,	--ID		
	pc_photoId	bigint		,			--��ƬID		
	pc_authorId	bigint		,			--����ID		
	pc_content	varchar	(256)	,			--��������		
	pc_indate	datetime 	default getdate()	--����ʱ��		
)	



insert into photoComment values(1,2,'����','2008-8-2')					
insert into photoComment values(1,3,'����','2008-8-11')
insert into photoComment values(1,4,'����','2008-8-15')
insert into photoComment values(1,5,'����','2008-8-19')
insert into photoComment values(1,5,'aaaaaaa','2008-8-24')
insert into photoComment values(1,11,'��','2008-9-2')					
insert into photoComment values(1,1,'��ѽ','2008-9-11')
insert into photoComment values(1,6,'����','2008-9-15')
insert into photoComment values(1,7,'�е���˼','2008-9-19')
insert into photoComment values(1,4,'ccc','2008-9-22')
insert into photoComment values(1,3,'������','2008-10-2')					
insert into photoComment values(1,2,'up','2008-10-3')
insert into photoComment values(1,4,'����','2008-10-5')
insert into photoComment values(1,7,'���а�','2008-10-9')
insert into photoComment values(1,5,'rrrrr','2008-10-11')
insert into photoComment values(2,3,'Ŷ','2008-10-14')
insert into photoComment values(2,6,'�Ǻ�','2008-10-16')
insert into photoComment values(3,11,'Ŷ','2008-10-22')
select *from photoComment
------------------------------------------- ��־�� article -------------------------------------------								
--drop table article						
create table article(	
	a_id		bigint		primary key identity,	--��־ID		
	a_authorId	bigint		,			--����ID		
	a_title		varchar	(64)	,			--��Ŀ		
	a_content	varchar	(2048)	,			--����		
	a_indate	datetime 	default getdate(),	--��������		
	a_read		int		default 0		--�Ķ���		
)			

insert into article values(2,'������־','��һƪ��','2008-5-3',0);
insert into article values(2,'bbbbb','bbbbbbbbbbbbbb','2008-5-27',0);
insert into article values(2,'cccc','cccccccccccccc','2008-6-25',0);
insert into article values(2,'dddd','dddddddddd','2008-7-13',0);
insert into article values(2,'eeeee','eeeeeeeeeeeeee','2008-7-21',0);
insert into article values(2,'fffff','ffffffffff','2008-8-11',0);
insert into article values(2,'ggggggg','gggggggggggg','2008-9-13',0);
insert into article values(2,'hhhhh','hhhhhhhhhhhhhhhhh','2008-10-13',0);
insert into article values(2,'iiii','iiiiiiiiiiiiiii','2008-10-19',0);

insert into article values(3,'qqq','qqqqqqqqqqqqqqqqqq','2008-5-1',0);
insert into article values(3,'www','wwwwwwwwwwwwwwwww','2008-9-9',0);

select * from article			


------------------------------------------- ��־���۱� articleComment -------------------------------------------								
--drop table articleComment						
create table articleComment(	
	ac_id		bigint		primary key identity,	--����ID		
	ac_articleId	bigint		,			--��־ID		
	ac_authorId	bigint		,			--����ID		
	ac_content	varchar	(256)	,			--��������		
	ac_indate	datetime 	default getdate()	--����ʱ��		
)							
		




insert into articleComment values(1,2,'����','2008-8-2')					
insert into articleComment values(1,3,'����','2008-8-11')
insert into articleComment values(1,4,'����','2008-8-15')
insert into articleComment values(1,5,'����','2008-8-19')
insert into articleComment values(1,5,'aaaaaaa','2008-8-24')
insert into articleComment values(1,11,'��','2008-9-2')					
insert into articleComment values(1,1,'��ѽ','2008-9-11')
insert into articleComment values(1,6,'����','2008-9-15')
insert into articleComment values(1,7,'�е���˼','2008-9-19')
insert into articleComment values(1,4,'ccc','2008-9-22')
insert into articleComment values(1,3,'������','2008-10-2')					
insert into articleComment values(1,2,'up','2008-10-3')
insert into articleComment values(1,4,'����','2008-10-5')
insert into articleComment values(1,7,'���а�','2008-10-9')
insert into articleComment values(1,5,'rrrrr','2008-10-11')
insert into articleComment values(2,3,'Ŷ','2008-10-14')
insert into articleComment values(2,6,'�Ǻ�','2008-10-16')
insert into articleComment values(3,11,'Ŷ','2008-10-22')

select *from articleComment



------------------------------------------- ���ұ� coutry -------------------------------------------								
--drop table coutry						
create table coutry(	
	co_id		int		primary key identity,	--����ID		
	co_name		varchar	(32)				--������		
)	     


--select *from coutry

insert into coutry select co_name from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',coutry$)	                   						
------------------------------------------- ʡ�ݱ� province -------------------------------------------		              						
--drop table province							
create table province(	
	pro_id		int		primary key identity,	--ʡ��ID		
	pro_name	varchar	(32)	,			--ʡ����		
	pro_coutryId	int					--����ID		
)	
insert into province select pro_name,pro_coutryId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',province$)	
--select *from province	

					
------------------------------------------- ���б� city -------------------------------------------								
--drop table city						
create table city(	
	ci_id		int		primary key identity,	--����ID		
	ci_name		varchar	(32)	,			--������		
	ci_proId	int					--����ʡ��ID		
)	
insert into city select ci_name,ci_proId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',city$)
--select *from city							
------------------------------------------- ���� tomn -------------------------------------------								
--drop table town						
create table town(	
	to_id		int		primary key identity,	--���ID		
	to_name		varchar	(32)	,			--�����		
	to_cityId	int					--��������ID		
)	
insert into town select to_name,to_cityId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',town$)	
--select *from town						
------------------------------------------- ��ѧ�� university -------------------------------------------							
--drop table university						
create table university(	
	id int not null primary key auto_increment,	--��ѧID		
	name varchar(64) not null,			--��ѧ��		
	countryId int,		--����ID		
	proId int,		--ʡID
	foreign key (countryId) references country(id),
	foreign key (proId) references province(id)		
)
--select *from university

------------------------------------------- ���б� senior -------------------------------------------							
--drop table senior						
create table senior(	
	id int not null primary key auto_increment,	--����ID		
	name   varchar(64) not null,			--������		
	cityId	int,			--��������ID		
	townId	int,					--�������ID
	foreign key (cityId) references city(id),
	foreign key (townId) references town(id)	
)	
	

/**
--drop table senior2
select * into senior2 from senior
select *from senior2
insert into   senior2(se_name,se_cityId,se_townId) select se_name,se_cityId,se_townId  from senior2
select count(se_id) from senior2
select count(*) from senior2
select max(se_id)from senior2
select se_id from senior2 where se_id ='2323' 
**/
------------------------------------------- ��У�� artistry -------------------------------------------							
--drop table artistry						
create table artistry(	
	ar_id		int		primary key identity,	--��УID		
	ar_name		varchar	(64)	,			--��У��		
	ar_cityId	int		,			--��������ID		
	ar_townId	int					--�������ID
)	

--select *from artistry

insert into artistry select ar_name,ar_cityId,ar_townId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',artistry$)		
------------------------------------------- ���б� junior -------------------------------------------							
--drop table junior						
create table junior(	
	ju_id		int		primary key identity,	--����ID		
	ju_name		varchar	(64)	,			--������		
	ju_cityId	int		,			--��������ID		
	ju_townId	int					--�������ID		
)	

--select *from junior

insert into junior select ju_name,ju_cityId,ju_townId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',junior$)							
------------------------------------------- ����� email -------------------------------------------							
--drop table email						
create table email(	
	e_id		int		primary key identity,	--����ID		
	e_name		varchar	(16)				--��������		
)	

--select *from email

insert into email select e_name from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',email$)	
						
------------------------------------------- ����ʡ�� localProvince -------------------------------------------							
--drop table localProvince					
create table localProvince(	
	lp_id		int		primary key identity,	--����ʡID		
	lp_name		varchar	(32)				--����ʡ��		
)	
--select *from localProvince

insert into localProvince select lp_name from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',localProvince$)				
------------------------------------------- ���ڳ��б� localCity -------------------------------------------								
--drop table localCity						
create table localCity(	
	lc_id		int		primary key identity,	--���ڳ���ID		
	lc_name		varchar	(32)	,			--���ڳ�����		
	lc_lpId		int					--����ʡID		
)	
insert into localCity select lc_name,lc_lpId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',localCity$)	
--select *from localCity
						
------------------------------------------- ��ҵ�� trade	 -------------------------------------------								
--drop table trade					
create table trade(	
	tr_id		int		primary key identity,	--��ҵID		
	tr_name		varchar	(32)				--��ҵ	
)	
insert into trade select tr_name from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',trade$)	
--select *from trade
------------------------------------------- ��ҵϸ�ڱ� tradeInfo -------------------------------------------							
--drop table tradeInfo							
create table tradeInfo(	
	ti_id		int		primary key identity,	--��ҵϸ��ID		
	ti_name		varchar	(32)	,			--��ҵϸ��		
	ti_traId	int					--��ҵID		
)	
insert into tradeInfo select ti_name,ti_traId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',tradeInfo$)	
--select *from tradeInfo						
------------------------------------------- ְλ�� job -------------------------------------------							
--drop table job						
create table job(	
	j_id		int		primary key identity,	--ְλID		
	j_name		varchar	(32)				--ְλ	
)	
insert into job select j_name from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',job$)	
--select *from job
------------------------------------------- ְλϸ�ڱ� jobInfo -------------------------------------------							
--drop table jobInfo						
create table jobInfo(	
	ji_id		int		primary key identity,	--ID		
	ji_name		varchar	(34)	,			--ְλϸ��		
	ji_jobId	int					--ְλID		
)							
							
insert into jobInfo select ji_name,ji_jobId from 
OPENROWSET('MICROSOFT.JET.OLEDB.4.0'
,'Excel 5.0;HDR=YES;DATABASE=e:\xiaonei(new).xls',jobInfo$)	
--select *from jobInfo							
							



/*
------------------------------------------- �������ӱ� link -------------------------------------------	
				
cteate table link(
	l_id		int		primary key identity,	--����ID
	l_name		varchar	(64),		
	l_imgName	varchar	(64),		
	l_url		varchar	(128)		
)
------------------------------------------- ���� adv -------------------------------------------	
			
cteate table adv(
	ad_id		int		primary key identity,	--���ID
	ad_name		varchar	(64)	,		
	ad_imgName	varchar	(64)	,		
	ad_url		varchar	(128)
)		
*/