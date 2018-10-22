#创建数据库
create database DBWL

#消费者表1
create table client(
  c_id	nvarchar(10)	not null primary key ,
  c_name	nvarchar(10),
  c_sex int,
  c_usergroupid	nvarchar(10),
  c_pwd nvarchar(10),
  c_phone 	nvarchar(20),
  c_briday	datetime,
  c_address nvarchar(50),
  c_msge	nvarchar(50)
)

#订单表2
create table orderlist(
  o_id	nvarchar(10)	not null primary key,
  o_type	int,
  o_dr_id	nvarchar(10),
  o_cargo_name nvarchar(20),
  o_cargo_weight int,
  o_sender_name	nvarchar(20),
  o_sender_address nvarchar(50),
  o_receiving_address	nvarchar(50),
  o_status	int,
  o_sender_phone nvarchar(20),
  o_receiving_name nvarchar(20),
  o_receiving_phone	nvarchar(20),
  o_startcity	nvarchar(10),
  o_transfercity nvarchar(10),
  o_endcity nvarchar(10),
  o_transportprice decimal(18,0)	,
  o_dispatchingprice decimal(18,0),
  o_carriageprice	decimal(18,0),
  o_totalprice	nvarchar(10),
  o_lorry nvarchar(10),
  o_msge	nvarchar(50)
)

#车辆表3
create table lorry(
  l_id nvarchar(10)	not null primary key,
  l_mofc	nvarchar(10),
  l_origin	Nvarchar(20),
  l_pathnumber	nvarchar(10),
  l_mgf	datetime,
  l_purchasedate datetime,
  l_msge	nvarchar(50)
)

#城市表4
create table city(
  c_id	nvarchar(10)	not null	primary key,
  c_name	nvarchar(10),
  c_provinceid nvarchar(10)
)

#城市区域表5
create table region(
  r_id	nvarchar(10)	not null primary key ,
  r_name	nvarchar(50),
  r_cityid	nvarchar(50)
)

#管理员表6
create table admin(
  a_id	nvarchar(10)	not null primary key,
  a_name	nvarchar(10),
  a_sex int,
  a_usergroupid	int,
  a_status	int,
  a_city	nvarchar(10),
  a_address nvarchar(10),
  a_pwd nvarchar(10),
  a_phone nvarchar(20),
  a_msge	nvarchar(50)
)

#交接单表7
create table deliveryreceipt(
  dr_startcity nvarchar(10)	not null primary key ,
  dr_endcity nvarchar(10),
  dr_incity nvarchar(10),
  dr_status int,
  dr_createtime datetime,
  dr_msge nvarchar(50)
)

#路线表8
create table path(
  p_id nvarchar(10)	not null primary key,
  p_name	nvarchar(10),
  p_start_provinceid nvarchar(10),
  p_start_cityid nvarchar(10),
  p_transfer_provincecid nvarchar(10),
  p_transfer_cityid nvarchar(10),
  p_end_provincecid nvarchar(10),
  p_end_cityid nvarchar(10),
  p_carriageprice	decimal(18,0),
  p_msge	nvarchar(10)
)

#配送点表9
create table station(
  s_id int	not null primary key ,
  s_name	nvarchar(10),
  s_provincecid	nvarchar(10),
  s_cityid	nvarchar(10),
  s_adminid nvarchar(10),
  s_phone nvarchar(20),
  s_address nvarchar(50),
  s_msge nvarchar(50)
)

#配送范围10
create table area(
  ar_id	int	not null primary key,
  ar_name	nvarchar(10),
  ar_price	decimal(18,0),
  ar_incityid	nvarchar(10),
  ar_msge nvarchar(50)
)

#省份表11
create table province(
  p_id	nvarchar(10)	not null primary key,
  p_name	nvarchar(10)
)

#用户组表12
create table usergroup(
  ug_id nvarchar(10)	not null primary key,
  ug_name nvarchar(10)	not null,
  ug_msge nvarchar(50)
)