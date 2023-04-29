create database youheal;
use youheal;


create table user(id int primary key auto_increment, name varchar(30) not null,email varchar(20) not null, password varchar(30) not null);
select * from user;

create table admin(id int primary key auto_increment, name varchar(30) not null,email varchar(20) not null, password varchar(30) not null);
select * from admin;
create table doctor(id int primary key auto_increment, name varchar(30) not null, dob varchar(30) not null, qualification varchar(40) not null, specialization varchar(50) not null, contact varchar(10) not null,email varchar(20) not null, password varchar(30) not null);

select * from doctor;
create table specialist(id int primary key auto_increment, name varchar(30) not null,spec_name varchar(20) not null);
drop table doctor;
create table specialist(id int primary key auto_increment,spec_name varchar(20) not null);
select * from specialist;
select * from appointment;
