DROP DATABASE IF EXISTS HelloBox;
create database HelloBox;
use HelloBox;

create table box(
box_num int PRIMARY KEY,
box_size varchar(10),
box_price int,
box_isuse varchar(5),
box_sdate datetime, 
box_pwd varchar(50))charset utf8;
  
create table log(
log_num int PRIMARY KEY auto_increment,
log_bno int,
log_sdate datetime,
log_edate datetime,
log_pay int,
foreign key(log_bno) references box(box_num))charset utf8;

insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (1,'소형',2000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (2,'소형',2000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (3,'소형',2000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (4,'소형',2000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (5,'소형',2000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (6,'소형',2000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (7,'소형',2000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (8,'소형',2000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (9,'소형',2000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (10,'소형',2000,0,null,null);

insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (11,'중형',3000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (12,'중형',3000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (13,'중형',3000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (14,'중형',3000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (15,'중형',3000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (16,'중형',3000,0,null,null);

insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (17,'대형',4000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (18,'대형',4000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (19,'대형',4000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (20,'대형',4000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (21,'대형',4000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (22,'대형',4000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (23,'대형',4000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (24,'대형',4000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (25,'대형',4000,0,null,null);
insert into box(box_num, box_size, box_price, box_isuse, box_sdate, box_pwd) values (26,'대형',4000,0,null,null);