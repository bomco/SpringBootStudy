create table tbl_a(
num int,
name nvarchar(50)
)

drop table tbl_a

create table board (
num int  AUTO_INCREMENT,
name nvarchar(50),
primary key (num)
);board

insert into board (name) values ('kang');
insert into tbl_a (name) values ('sung');

select * from tbl_a
select * from board
select * from files

select * from mysql.db

show databases

create database board_db;

-- 파일업로드 테이블
create table files(
fno int not null auto_increment primary key,
bno int not null,
filename varchar(200) not null,
fileOriName varchar(300) not null,
fileurl varchar(500) not null);

-- 댓글용 테이블
CREATE table comment(
cno int not null AUTO_INCREMENT PRIMARY key,
bno int not null,
content text not null,
writer varchar(20)not null,
reg_date datetime not null);