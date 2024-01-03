create database SANCTUARY;
use SANCTUARY;

create table ANIMAL
(
	number varchar(10) primary key,
	animalName char(20),
	animalType char(15),
	IUCNClassification varchar(26),
	healthStatus varchar(20)
)

insert into ANIMAL values('TIG001','Sheru','Tiger','Endangered','Good')
insert into ANIMAL values('RNO001','Sonu','Rhino','Critically Endangered','Good')
insert into ANIMAL values('PCK024','Mor','Peacock','Least Concern','Heart issues')
insert into ANIMAL values('TIG020','Raju','Tiger','Endangered','Heart issues')
insert into ANIMAL values('ELE012','Jumbo','Elephant','Endangered','Skin disease')
select * from ANIMAL

create table ZONES
(
	zoneName varchar(26) primary key,
	incharge char(26)
)

insert into ZONES values('Kothambarikatte','Ravi Sharma')
insert into ZONES values('Perdagudde','Saanvi Nayak')
insert into ZONES values('Maavinakatte','Ashwin Suresh')
insert into ZONES values('Hosangadi East','Mahesh Pandey')
insert into ZONES values('Hosangadi West','Ritu Rao')
select * from ZONES

CREATE table OFFICER
(
	id varchar(6) primary key,
	officerName char(26),
	position char(20),
	zoneName varchar(26),
	foreign key(zoneName) references ZONES(zoneName) on delete cascade on update cascade
)

insert into OFFICER values('KTE011','Ravi Sharma','Zonal officer','Kothambarikatte')
insert into OFFICER values('PGE011','Saanvi Nayak','Zonal officer','Perdagudde')
insert into OFFICER values('MTE011','Ravi Sharma','Zonal officer','Maavinakatte')
insert into OFFICER values('HIE011','Mahesh Pandey','Zonal officer','Hosangadi East')
insert into OFFICER values('HIW011','Ritu Rao','Zonal officer','Hosangadi West')
SELECT * FROM OFFICER

create table FACILITY
(
	fid varchar(10),
	facilityName char(26),
	faciLocation varchar(30),
	facilitype char(20),
	primary key(fid)
)

insert into FACILITY values('RES023','Udupi Home','Kothambarikatte','Restaurant')
insert into FACILITY values('PRK013','Parking Lot','Kothambarikatte','Parking Lot')
insert into FACILITY values('CNC010','Shubhamkar Clinic','Perdagudde','Clinic')
insert into FACILITY values('CAF024','Makers Cafe','Hosangadi East','Cafe')
insert into FACILITY values('CNC021','Swasthya','Maavinakatte','Clinic')
SELECT * FROM FACILITY

create table ACCOUNTS
(
	username varchar(15),
	passwd varchar(20),
	accType char(15),
	primary key(username)
)

insert into ACCOUNTS values('Saanviii','055rfdddgg','Zonal Officer')
insert into ACCOUNTS values('SRavi','hjkhj','Zonal Officer')
insert into ACCOUNTS values('itssMahesh','t555rr66','Zonal Officer')
insert into ACCOUNTS values('Ritu Rao','pass455','Zonal Officer')
insert into ACCOUNTS values('Ravi Sharma','RRavi055','Zonal Officer')
insert into ACCOUNTS values('Rahul','Rahul5','Forest Officer')

create table VISITOR
(
	regNo int,
	username varchar(15),
	visitorName varchar(26),
	passwd varchar(20),
	phoneNo integer,
	primary key(regNo, username,phoneNo)
)

insert into VISITOR values(111,'rjrules','Ravindra Jadeja','hjh5555',9562166)
insert into VISITOR values(112,'verghese','Verghese Kurian','2588yhgff',9343875)
insert into VISITOR values(113,'komm','Mary Kom','passwordsample',846353)
insert into VISITOR values(114,'tataR','Ratan Tata','gfgrth',9980556)
insert into VISITOR values(115,'swetbn','swetha bacchan nanda','dftert',6534289)
select * from VISITOR