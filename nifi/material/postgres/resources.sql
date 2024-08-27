CREATE SCHEMA HumanResources;

CREATE TABLE HumanResources.Resource (
	IdResource serial primary key,
	IdCategory int NULL,
	Email text  NOT NULL,
	FirstName Text not NULL,
	LastName text not null,
	Active boolean DEFAULT true NOT NULL,
	CreationDateTime timestamp DEFAULT now(),
	UpdateDateTime timestamp NULL
);