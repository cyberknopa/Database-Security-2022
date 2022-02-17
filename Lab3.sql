create function who_is_kitty () returns void as
    $$ DECLARE
        youngest integer;
      begin
        youngest := (select min("age") from cats);
        insert into "catage" (min_age) values (youngest);
      end;
    $$
lenguage plpgsql;
select who_is _kitty();
/**/
create function trigger_update_catage () returns trigger as
      $$
      begin
        if new."age" < (select * from "catage")
        then update catage set min_age = new.age;
        end if;
        return new;
      end;
      $$
language plpgsql;
create trigger trigger_update_catage
after insert or update on cats for each row
¡execute procedure trigger_update_catage();
INSERT INTO
    cats (name, age)
VALUES
    ('nano', 0);
/**/
INSERT INTO
    cats_lr3 (number, dates)
VALUES
    (1,'2021/02/02'),
    (2,'2021/02/03'),
    (3,'2021/02/04'),
    (4,'2021/02/05'),
    (5,'2021/02/06');
create function trigger_date() returns trigger as
    $$
    begin
        update catage set last_date = current_date;
        return new;
    end;
    $$
language plpgsql;
create trigger trigger_date
after insert or update on cats_lr3 for each row
execute procedure trigger_date();
INSERT INTO
    cats_lr3 (number, dates)
VALUES
    (1, '2022/02/10');

/**/

CREATE TABLE genders(
    number integer,
    gender char (20));
INSERT INTO
    genders (number)
VALUES
    (5), (12), (6), (11), (9);
create function trigger_kot_koshka3() returns trigger as
    $$
    BEGIN
        if new. gender = '1'
            then 
                new.gender :='Koshka';
                return new;
        elsif new.gender = '2'
            then
                new.gender := 'Kot';
                return new;
        else
            new.gender = 'Sobaka';
                return new;
        end if;
        end;
    $$
language plpgsql;
create trigger trigger_kot_koshka3
before insert or update on genders for each row
execute procedure trigger_kot_koshka3();

/**/
create function fibo(number integer)
RETURNS SETOF integer
LANGUAGE SQL
AS $$
WITH RECURSIVE c(a, b) AS (
        VALUES (0,1)
    UNION ALL
        SELECT greatest(a,b), a + b as a from c
        WHERE b < $1
    )
SELECT a FROM c;
$$；
create table fibonacci (numbers integer);
insert into fibonacci select * from fibo( number: 520);

/**/

create table fibonacci_sum (numbers integer);
create function sum_fibo() returns integer as
    $$
    DECLARE
        summary integer;
        middle integer;
        fib integer;
    begin
        middle := (select count(*) from "genders");
        insert into "fibonacci_sum" select * from fibo(number: middle);
        fib:= (select sum(numbers)from fibonacci_sum);
        summary := fib + (select number from genders order by number Limit 1)+(select number from genders order by number desc Limit 1);
        return summary;
    end;
    $$
language plpgsql;
select * from sum fibo();

