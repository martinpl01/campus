--�������ݿ�.
create database xiaonei;
--���ұ�
create table country(	
	id int	not null primary key auto_increment,		
	name varchar(32) not null		
)
--ʡ�ݱ�
CREATE TABLE province(
id int not null primary key auto_increment,
name varchar(32) not null,		
countryId int,	
FOREIGN KEY (countryId) REFERENCES country(id)
) TYPE=INNODB

--�й�ʡ�ݱ�
create table localProvince(
lp_id int(11) primary key,
lp_name varchar(32) not null)

--���б�
create table city(	
	id	int	not null primary key auto_increment,		
	name	varchar(32) not null,		
	proId	int,
	FOREIGN KEY (proId) REFERENCES province(id)		
)

--�й����б�
create table localCity(
 lc_id int primary key auto_increment,
 lc_name varchar(32),
 lc_lpId int
)
--����
create table town(	
	id int	not null primary key auto_increment,	
	name	varchar(32) not null,		
	cityId	int,
	foreign key (cityId) references city(id)
)
--����ѧУ
create table techSchool(	
	id int	not null primary key auto_increment,		
	name	varchar(64) not null,		
	cityId	int,		
	townId	int,
	foreign key (cityId) references city(id),
	foreign key (townId) references town(id)
)
--���б�
create table junior(	
	id int not null primary key auto_increment,	
	name varchar(64) not null,		
	cityId int,		
	townId int,
	foreign key (cityId) references city(id),
	foreign key (townId) references town(id)
)
--Сѧ��
create table primarySchool(	
	id int not null primary key auto_increment,		
	name varchar(64) not null,		
	cityId int,		
	townId int,
	foreign key (cityId) references city(id),
	foreign key (townId) references town(id)
)
--���б�(������Ϣ����)
create table senior(	
	id int not null primary key auto_increment,	
	name   varchar(64) not null,		
	cityId	int,		
	townId	int,
	foreign key (cityId) references city(id),
	foreign key (townId) references town(id)	
)

--�û���
create table users(
	id int(11) not null primary key auto_increment, 
	email varchar(128) unique not null,	    
	name varchar(128) not null,		   
	pwd varchar(128) not null,		    
	photo	varchar(128) default 'default.gif',	   
	sex	varchar(16),			   
	homePro	int(11),			
	homeCity int(11),			
	birth	date,				
	tel	varchar(32),			
	mobile	varchar(32),			
	oicq	varchar(32),			
	msn	varchar(128),			
	website	varchar(128),			
	techSch	int(11),			
	techSchYear int(11),			
	juniorSch int(11),			
	juniorYear int(11),			
	primarySch int(11),			
	primaryYear int(11),			
	interest varchar(256),			
	music	varchar(256),			
	movie	varchar(256),			
	game	varchar(256),			
	cartoon	varchar(256),			
	sport	varchar(256),			
	book	varchar(256),			
	assn	varchar(256),			
	visited	int default 0,			
	doing	varchar(128),			
	online_	tinyint	default 0,		
	registerDate datetime ,		
	loginDate datetime,
	level	tinyint default 1,		
	locked	tinyint	default 0,		
	foreign key (homePro) references province(id),
	foreign key (homeCity) references city(id),
	foreign key (techSch) references techschool(id),
	foreign key (juniorSch) references junior(id),
	foreign key (primarySch) references primarySchool(id)		
)

--�û����б� userSenior ----							
		
create table userSenior(		
	id int	not null primary key auto_increment,		
	userId	int,		
	seniorSchId int,		
	seniorYear int,		
	grade1	varchar(64),	
	grade2	varchar(64),	
	grade3	varchar(64),
	foreign key (userid) references users(id),
	foreign key (seniorSchId) references senior(id)
)

--��ѧ��(��ѧ�Ĺ�����Ϣ����)										
create table university(	
	id int not null primary key auto_increment,		
	name varchar(64) not null,		
	countryId int,		
	proId int,
	foreign key (countryId) references country(id),
	foreign key (proId) references province(id)		
)

--�û���ѧ�� userUniversity 											
create table userUniversity(
  id int not null primary key auto_increment,
  userId int,
  universityId int,
  uniYear int,
  userType varchar(32),
  college varchar(128),
  drom varchar(128),
  foreign key(userId) references users(id),
  foreign key(universityId) references university(id)
)	


--�û���������[����ͬѧ���ĸ�Ȧ����.]
create table userNet(	
	id		int	not null primary key auto_increment,		
	userId	int	,		
	name		varchar	(64)	not null,	
	isPrimary	tinyint	default 1,
	foreign key (userId) references users(id)			
)


***********************��Ṧ���漰���ı�****************************
--����
create table album(
id int primary key auto_increment,
userId int,
name varchar(128),
descript varchar(256),
photo varchar(64) default 'main.jpg',
creTime datetime,
updTime datetime,
foreign key (userId) references users(id)
)
--��Ƭ��
create table photo(
id int primary key auto_increment,
photo varchar(64),
albumId int,
descript varchar(256) ,
rtime int default 0,
addTime datetime,
foreign key (albumId) references album(id)
)
--��Ƭ���۱�
create table photoComment(
id int primary key auto_increment,
photoId int ,
userId int,
content varchar(256),
comTime datetime ,
foreign key (photoId) references photo(id),
foreign key (userId) references users(id)
)
 

------------------------------------------- �û���˾�� userCom -------------------------------------------								
						
create table userCom(		
	uc_id int(11) primary key auto_increment, /*�û���˾id*/		
	uc_userId int(11), /*�û�id*/		
	uc_name varchar(64), /*--��˾��*/		
	uc_describe varchar(256), /*��˾����*/		
	uc_trade int(11), /*��ҵID*/		
	uc_tradeInfo int(11), /*��ҵ����ID*/		
	uc_job int(11), /*ְλID*/		
	uc_jobInfo int(11), /*ְλ����ID*/		
	uc_date varchar(16) /*����ʱ��*/		
)	