CREATE SCHEMA HumanResources;

CREATE TABLE HumanResources.Resource (
	IdResource int IDENTITY(1,1) NOT NULL,
	IdCategory int NULL,
	Email nvarchar(100) COLLATE Modern_Spanish_CI_AS NOT NULL,
	FirstName nvarchar(50) COLLATE Modern_Spanish_CI_AS NULL,
	LastName nvarchar(50) COLLATE Modern_Spanish_CI_AS NULL,
	Active bit DEFAULT 1 NOT NULL,
	CreationDateTime datetimeoffset DEFAULT sysdatetimeoffset() NOT NULL,
	UpdateDateTime datetimeoffset NULL,
	CONSTRAINT PK_Resource PRIMARY KEY (IdResource),
	CONSTRAINT FK_Resource_Category FOREIGN KEY (IdCategory) REFERENCES kafkaAdmin.Common.Category(IdCategory)
);