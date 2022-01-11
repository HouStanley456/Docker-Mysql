create database healthrobot;
create table healthinfo(
watch_messageid char (255) NOT NULL PRIMARY KEY,
lineid char (255) NULL,
recordtime TIMESTAMP NULL,
age smallint NULL,
height DECIMAL(4,1) NULL,
weight DECIMAL(4,1) NULL,
bmi DECIMAL(3,1) NULL,
bp_high DECIMAL(4,1) NULL,
bp_low DECIMAL(4,1) NULL,
bs DECIMAL(3,1) NULL,
os DECIMAL(3,1) NULL
);

create table user(
lineid char (255) NOT NULL PRIMARY KEY,
usernamer char(255) null,
twname char(255) null,
sex char(5),
address char(255) null,
mail char(255) null,
birthdate date null
);

create table chat_log(
lineid varchar (255) NULL,
messageid varchar(255) NOT NULL PRIMARY KEY,
recordtime TIMESTAMP NULL,
type smallint,
content varchar(255) null,
reply varchar(255) null
);
