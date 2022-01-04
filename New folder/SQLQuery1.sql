create database BooksShop2
use BooksShop2


Create table Settings(
Id int primary key identity,
logo nvarchar(50),
language nvarchar(50),
socialMedia nvarchar(100),
Link nvarchar(100),
PhoneNumber int,
Info nvarchar(300)


)
Create table books(
 Id int Primary key identity,
 [Name] nvarchar(30),
 [PageCount] int,
 ProductCode int,
 Img nvarchar(80),
 Description nvarchar(200),
 PublisherId int foreign key references Publisher(Id),
 CategryId int foreign key references Category(Id),
 CommentId int foreign key references Comment(Id)
 )

  Create table Comment(
 Id int primary key identity,
  UserName nvarchar(30),
  Text nvarchar(200),
  Date datetime2,
  UserId int foreign key references Userr(Id)

 )
  Create table Userr(
 Id int primary key identity,
 Fullname nvarchar(50),
 Img nvarchar(80),
 Email nvarchar(80)
 )

 Create table Category(
 Id int primary key identity,
 Name nvarchar(50)
 )

 Create table Publisher(
 Id int primary key identity,
 Name nvarchar(50)
 )

 create table Authors(
 Id int primary key identity,
 Fullname nvarchar(50)
 )

 Create Table AuthorsBooks(
 Id int primary key identity,
 AuthorsId int foreign key references Authors(Id),
 BooksId int foreign key references Books(Id)
 )

 create table Orderr(
 Id int primary key identity,
 TotalPrice int ,
 UserId int foreign key references Userr(Id),
 date datetime2

 )

 create table OrderBooks(
 Id int primary key identity,
 OrderId int  foreign key references Orderr(Id),
 BooksId int foreign key references Books(Id)

 )



