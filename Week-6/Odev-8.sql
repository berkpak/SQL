--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee(
	id INTEGER,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
);


--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.

insert into employee (id, name, birthday, email) values (1, 'Baldwin', '1997-10-29', 'bgodard0@adobe.com');
insert into employee (id, name, birthday, email) values (2, 'Leland', '1903-12-04', 'lcowpland1@engadget.com');
insert into employee (id, name, birthday, email) values (3, 'Remy', '1969-12-18', 'rlainge2@weather.com');

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

UPDATE employee
SET name = 'Berk'
WHERE id = 1
RETURNING *;

--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

DELETE FROM employee
WHERE name = 'Berk'
RETURNING *;