create table student(student_id number primary key,
first_name varchar2(20),
middle_name varchar2(20),
last_name varchar2(20),
gender varchar2(10),
email varchar2(20),
phone varchar2(20),
password varchar2(20));


drop table student;

select * from student;

insert into student values(101,'pooja','singh','s','f','pooja@gmail.com','9742147120','pass123');
insert into student values(102,'snehal','magare','g','f','snehal@gmail.com','9775645331','pass123');
insert into student values(103,'Madhurjya','bezbaruah','j','m','madhur@gmail.com','9888543672','pass123');
insert into student values(104,'Aditya','bhatia','b','m','aditya@gmail.com','8765454321','pass123');


insert into ministry values(102,'Audi','audi123');

drop table institute;


create table institute(institute_id number primary key,
institute_name varchar2(20),
university_name varchar2(20),
district varchar2(20),
state varchar2(20) ,
password varchar2(20),
status number default 0);

insert into institute values(201,'PICT','Pune University','pune','maharashtra','pict123',1);
insert into institute values(202,'COEP','Pune University','pune','maharashtra','pict123',1);
insert into institute values(203,'VTU','Kolhapur University','kolhapur','maharashtra','pict123',1);


drop table institute;

select * from institute;


drop sequence seq_STUD;

create sequence seq_STUD start with 100 increment by 1;

create sequence seq_app start with 1000000 increment by 1;

create sequence seq_app2 start with 200 increment by 1;


create table application(application_id number,
student_id number,
aadhar_no varchar2(20),
first_name varchar2(20),
middle_name varchar2(20),
last_name varchar2(20),
religion varchar2(20),
institute_id number,
curcourse varchar2(20),
course_per number,
tenth_marks number,
twelth_marks number,
income number,
scholarship_scheme varchar2(20),
account varchar2(20),
ifsc varchar2(20),
status_ins number default 2,
status_no number default 2,
status_min number default 2,
PRIMARY KEY(application_id));




FOREIGN KEY(student_id) REFERENCES student(student_id),
FOREIGN KEY(institute_id) REFERENCES institute(institute_id)


drop table application;

select * from application;

create table Ministry(
User_Id number primary key,
Name varchar2(20) ,
Password varchar2(20)
);




drop table ministry;

select * from ministry;



create table nodal(
User_Id number primary key,
Name varchar2(20) ,
Password varchar2(20)
);

insert into nodal values(102,'Audi','audi123');
drop table nodal;

select * form nodal;





