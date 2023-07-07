CREATE DATABASE IF NOT EXISTS hw_1;
USE hw_1;

# Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными
# см. прикрепленный файл

# Выведите название, производителя и цену для товаров, количество которых превышает 2

SELECT Product, Manufacturer, Price FROM phone
WHERE ProductCount>2;

# Выведите весь ассортимент товаров марки “Samsung”

SELECT * FROM phone
WHERE Manufacturer = "Samsung";

/* 
Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000**
4.1. Товары, в которых есть упоминание "Iphone"
4.2. "Galaxy"
4.3. Товары, в которых есть ЦИФРЫ(REGEXP - регулярки, либо RLIKE)
4.4. Товары, в которых есть ЦИФРА "8"
*/

SELECT * FROM phone
WHERE (ProductCount*Price)>100000 AND (ProductCount*Price)<145000;

# **
SELECT * FROM phone
WHERE (ProductCount*Price)>100000 AND (ProductCount*Price)<145000
HAVING Product LIKE "%IPhone%";

SELECT * FROM phone
WHERE (ProductCount*Price)>100000 AND (ProductCount*Price)<145000
HAVING Product LIKE "%Galaxy%";

SELECT * FROM phone
WHERE (ProductCount*Price)>100000 AND (ProductCount*Price)<145000
HAVING Product REGEXP "[:digit:]";

SELECT * FROM phone
WHERE (ProductCount*Price)>100000 AND (ProductCount*Price)<145000
HAVING Product RLIKE "8";