/* Описание задания.
В базе данных MS SQL Server есть продукты и категории. 
Одному продукту может соответствовать много категорий, в одной категории может быть много продуктов. 
Напишите SQL запрос для выбора всех пар «Имя продукта – Имя категории». Если у продукта нет категорий, 
то его имя все равно должно выводиться. */

/* Мой комментарий к заданию.
Мне не ясно, как формулировать SQL запрос без понимания структуры базы данных, которой данный
запрос адресован.
Поэтому для выполнения задания я решил сначала создать простейшую таблицу, в которой 
продукты и категории представлены условными названиями. И уже к ней обращать SQL запрос.
*/

/* Создаем таблицу */
CREATE TABLE [dbo].[ProductCategories] 
(
    [ProductName]  NVARCHAR(50) NOT NULL,
    [CategoryName] NVARCHAR(50)
);

/* Заполняем таблицу тестовыми значениями */
INSERT INTO ProductCategories (ProductName, CategoryName) 
values 
('ProductName1', 'CategoryName1'),
('ProductName1', 'CategoryName2'),
('ProductName1', 'CategoryName3'),
('ProductName7', 'CategoryName2'),
('ProductName3', 'CategoryName3'),
('ProductName4', 'CategoryName1'),
('ProductName4', 'CategoryName3'),
('ProductName5', null)

/* Создаем запрос в соотвествие с заданием */
SELECT *
FROM ProductCategories
ORDER BY ProductName