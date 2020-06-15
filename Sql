/*Создание и заполнение таблицы с категориями*/
Create table Category(
Id int identity(1,1),
Name NVARCHAR (50) not null
)
insert Category 
	values
	('Bakery'),('Milky');

/*Создание и заполнение таблицы с продуктами*/
Create table Products(
Id int identity(1,1),
Name NVARCHAR (50) not null
)
insert Products 
	values
	('Cake'),('Milk'),('Butter'),('Cruasan'),('Cream'),('Nuts');



/*Создание таблицы со связью продуктов к категории*/
Create table ProdCateg(
ProdId int not null,
CatId int not null,
)


/* Выбока Продуктов-Категория*/
select prod.Name as "Продукт", cat.Name as "Категория"
from Products prod
left join ProdCateg prodcat on prod.id = prodcat.ProdId
left join Category cat on cat.id = prodcat.CatId

