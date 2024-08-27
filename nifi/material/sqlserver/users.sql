USE NifiExample;

CREATE SCHEMA test;


CREATE TABLE test.users (
	id int identity(1,1),
	name varchar(1024) not null,
	age int not null,
	insdatetime datetimeoffset  default getdate()
);