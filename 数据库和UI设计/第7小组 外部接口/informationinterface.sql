/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2021/11/30 21:27:01                          */
/*==============================================================*/


drop table if exists News;

drop table if exists detectionpoint;

drop table if exists epidemic_data;

drop table if exists patienttrajectory;

drop table if exists travelpolicy;

drop table if exists vaccination;

/*==============================================================*/
/* Table: News                                                  */
/*==============================================================*/
create table News
(
   title                char(256) not null,
   newsTime             datetime not null,
   link                 char(512) not null,
   primary key (title, newsTime, link)
);

/*==============================================================*/
/* Table: detectionpoint                                        */
/*==============================================================*/
create table detectionpoint
(
   pointName            char(32),
   price                numeric(8,2),
   workTime             char(64),
   telephone            char(64),
   locationOfdet        char(256)
);

/*==============================================================*/
/* Table: epidemic_data                                         */
/*==============================================================*/
create table epidemic_data
(
   datadate             date not null,
   diagnosedToday       int,
   numHasTreat          int,
   deathTotal           int,
   numInTreat           int,
   primary key (datadate)
);

/*==============================================================*/
/* Table: patienttrajectory                                     */
/*==============================================================*/
create table patienttrajectory
(
   loc                  char(256),
   tradate              date,
   type                 char(64),
   context              text,
   traId                int not null,
   primary key (traId)
);

/*==============================================================*/
/* Table: travelpolicy                                          */
/*==============================================================*/
create table travelpolicy
(
   leavePolicy          text,
   arrivePolicy         text,
   fromWhere            char(256) not null,
   toWhere              char(256) not null,
   primary key (fromWhere, toWhere)
);

/*==============================================================*/
/* Table: vaccination                                           */
/*==============================================================*/
create table vaccination
(
   locName              char(32) not null,
   availableTime        char(64),
   telephoneOfVac       char(64),
   locationOfVac        char(256),
   primary key (locName)
);

