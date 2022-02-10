Create Database CNRST
GO
USE CNRST
GO
Create Schema Dev
GO
Create table Dev.Navbar (
	NumMenu int Primary key Identity(0, 1),
	[Title] varchar(28) Not Null Unique,
	[Data-Sub] varchar(28)
)
GO
create Trigger InsertNavbar
	On Dev.Navbar after Insert
	as begin
	if (Select Count(*) From Dev.Navbar) > 6
		raiserror ('You Have no right To insert More Than 7 Items In Menu', 1452, 25)
		rollback;
	end
alter table dev.navbar enable trigger InsertNavbar
GO
Insert Dev.Navbar Values ('CNRST', 'cnrst'), ('Unités et services','services'), ('Financement','financement'), ('Informations','informations'), ('Publications','publications')
GO
Create table Dev.SubLinks (
	Menu varchar(28) Foreign Key References Dev.Navbar(Title) On Delete Cascade,
	Links varchar(88) Not Null,
	Primary Key(Links, Menu)
)
Go
Alter table Dev.SubLinks Add LinkBelow varchar(max)
GO
Select * from Dev.sublinks
Select * from Dev.navbar
GO
Insert Dev.SubLinks Values ('CNRST', 'Présentation'),
	('CNRST', 'Mot de la Directrice'),
	('CNRST', 'Organigramme'),
	('CNRST', 'Stratégie 2018-2022'),
	('CNRST', 'CNRST en chiffres'),
	('CNRST', 'Textes réglementaires'),
	('CNRST', 'Membres du conseil'),
	('Unités et services', 'IMIST'),
	('Unités et services', 'UATRS'),
	('Unités et services', 'CCMM'),
	('Unités et services', 'MARWAN'),
	('Unités et services', 'ING'),
	('Financement', 'Financement des projets de recherche'),
	('Financement', 'Financement des structures d’excellence'),
	('Financement', 'Soutien à la publication d’ouvrages scientifiques'),
	('Financement', 'Coopération internationale'),
	('Informations', 'CNRST en média'),
	('Informations', 'Evénements'),
	('Informations', 'CNRST recrute'),
	('Informations', 'Droit d''accès à l''information'),
	('Informations', 'Certification des copies'),
	('Publications', 'Rapports d''activités'),
	('Publications', 'Bilans et Etudes'),
	('Publications', 'Newsletter')
GO
Create Schema CH
GO
Create Table CH.[Events] (
	Num_Event int identity(0, 1) Primary Key,
	[Type_Event] varchar(44) Not Null Check([Type_Event] In ('Appels à projects','Bourses', 'Evénements', 'Annonces')),
	[Event_Title] varchar(100) Unique Not Null,
	article varchar(max),
	Event_Logo varchar(max)
)
GO
Insert Into CH.[Events] values
	('Appels à projects', 'None', 'None', '/images/studio/02.jpg'),
	('Appels à projects', 'Nothing', 'Nothing', '/images/studio/13.jpg'),
	('Evénements', 'Résultats de Recherche', 'Lorem ipsum.', '/images/studio/00.jpg'),
	('Bourses', 'Démenti à propos de la publication d''un supposé classement', 'Lorem ipsum dolor sit.', '/images/studio/01.jpg'),
	('Annonces', 'universités marocaines', 'Lorem ipsum dolor sit amet.', '/images/studio/0.jfif'),
	('Bourses', 'la publication d''un supposé classement', 'Lorem ipsum dolor.', '/images/studio/00-min.jpg'),
	('Evénements', 'Résultats de Projet', 'Lorem ipsum.', '/images/studio/0.png'),
	('Bourses', 'Démenti', 'Lorem ipsum dolor sit.', '/images/studio/04-min.jpg'),
	('Annonces', 'universités', 'Lorem ipsum dolor sit amet.', '/images/studio/06.jpg'),
	('Bourses', 'classement', 'Lorem ipsum dolor.', '/images/studio/07.jpg'),
	('Evénements', 'Dolor', 'Lorem ipsum.', '/images/studio/07-min.jpg'),
	('Bourses', 'à propos de la publication', 'Lorem ipsum dolor sit.', '/images/studio/08.jpg'),
	('Annonces', 'Younes', 'Lorem ipsum dolor sit amet.', '/images/studio/09.jpg'),
	('Bourses', 'la publication d''un supposé', 'Lorem ipsum dolor.', '/images/studio/09-min.jpg'),
	('Evénements', 'Recherche', 'Lorem ipsum.', '/images/studio/10.jpg'),
	('Bourses', 'Démenti à propos', 'Lorem ipsum dolor sit.', '/images/studio/12.jpg'),
	('Annonces', 'marocaines', 'Lorem ipsum dolor sit amet.', ''),
	('Bourses', 'la publication', 'Lorem ipsum dolor.', ''),
	('Evénements', 'Résultats', 'Lorem ipsum.', ''),
	('Bourses', 'Lorem ipsum dolor sit.', 'Lorem ipsum dolor sit.', ''),
	('Annonces', 'Lorem ipsum dolor.', 'Lorem ipsum dolor sit amet.', ''),
	('Bourses', 'Lorem ipsum dolor', 'Lorem ipsum dolor.', '')
GO
Select CH.[Events].* From CH.[Events]
GO
Create Table CH.Pictures (
	Num_Picture int Identity(0, 1) Primary Key,
	[Path] varchar(max)
)
GO
Insert Into CH.Pictures Values ('/images/studio/02.jpg'),
	('/images/studio/13.jpg'), ('/images/studio/00.jpg'),
	('/images/studio/01.jpg'), ('/images/studio/0.jfif'),
	('/images/studio/00-min.jpg'), ('/images/studio/0.png'),
	('/images/studio/04-min.jpg'), ('/images/studio/06.jpg'),
	('/images/studio/07.jpg'), ('/images/studio/07-min.jpg'),
	('/images/studio/08.jpg'), ('/images/studio/09.jpg'),
	('/images/studio/09-min.jpg'), ('/images/studio/10.jpg'),
	('/images/studio/12.jpg'), ('/images/ADI.png'),
	('/images/logo.png'), ('/images/Loop.PNG'),
	('/images/noone.jpg'), ('/images/Younes.png')
GO
Select * From CH.Pictures Order BY Num_Picture DESC
Go
Create Table Dev.Developper (
	NumDev uniqueidentifier Primary Key Default(newID()),
	[Name] varchar(max),
	[Email] varchar(44),
	Phone varchar(max),
	Login varchar(44) Unique Not Null,
	Password nvarchar(44) Not Null,
	CV VARCHAR(max),
	Profile_Picture VARCHAR(max)
)
GO
Insert Into Dev.Developper([Name], [Email], Phone, Login, Password, CV, Profile_Picture)
	Values ('Younes ERRAJI', 'younes.erraji08@gmail.com','0651656799', 'Younes', '123456', 'document/YOUNES ERRAJI cv.pdf', '\images/Younes.png'),
	('Youssef Ejjakar', 'youssef.ejjakar@gmail.com','0651656799', 'Youssef', '123456', '', '\images/noone.jpg'),
	('Mustapha Malki', 'mustapha.malki@gmail.com','0651656799', 'Mustapha', '123456', '', '\images/noone.jpg')
GO
Select * From Dev.Developper
GO
Create Login Safae With Password = '123456' must_change, Check_Expiration = On
GO
Create User Safae For Login Safae
GO
Create Role RDeveloppers
GO
exec sp_addrolemember 'RDeveloppers', 'Safae'
GO
Grant Select, Update, Alter, Delete, Insert On Schema :: Dev to RDeveloppers
GO
Grant Select, Update, Alter, Delete, Insert On Schema :: CH to RDeveloppers
GO
Create Login Ordinary_Employee With Password = '123456'
GO
Create User Ordinary_Employee For Login Ordinary_Employee
GO
Create Role REmployees
GO
exec sp_addrolemember 'REmployees', 'Ordinary_Employee'
GO
Grant select, Update, Delete, Insert On Schema :: CH to REmployees
GO
Revoke select, Update, Delete, Insert, Alter On Schema :: Dev to REmployees
GO
