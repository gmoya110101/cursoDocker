
CREATE SCHEMA test;


CREATE TABLE test.users (
	id serial primary key,
	name text not null,
	age int not null,
	insdatetime timestamp default now()
);