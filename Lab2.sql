CREATE TABLE cats (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    age INTEGER
);
INSERT INTO
    cats (name, age)
VALUES
    ('Manya', 5),
    ('Maya', 12),
    ('Gerald', 6),
    ('Lucy', 11),
    ('Fibi', 9);
CREATE TABLE owners(
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    phone VARCHAR(20),
    discount INTEGER,
    segment_id INT NOT NULL,
    FOREIGN KEY(segment_id) REFERENCES cats(id)
);
INSERT INTO
    owners (name, phone, segment_id)
VALUES
    ('Mark', 899, 1),
    ('Lana', 222, 3),
    ('Nika', 123, 2),
	('Katya', 3345, 2),
    ('Anna', 1748, 3);
UPDATE owners SET discount = age FROM cats WHERE owners.segment_id = cats.id;
delete from owners where discount = (select age FROM cats WHERE owners.id = cats.id);
select "name" from "owners";
select * from owners where "discount"=12;
select "owners".*, "cats".* from "owners", "cats";
select "cats" from "cats" where "age" > (select id FROM owners WHERE owners.id = cats.id);
select sum("age") from cats;
select max("age") from cats;
select * from cats order by "age" desc ;
select * from owners order by discount limit 3;
select "name" from cats group by "name";
select "cats" from "cats" where "age" > (select "discount" from owners where owners.name = 'Lana');
