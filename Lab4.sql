create table lab4_1(numbers integer); /* таблица для задач*/
create user TinkyWinky1; /*создание 4х пользователей*/
create user Dipsy2;
create user LaaLaa3;
create user Po4;
grant all privileges on lab4_1 to tinkywinky1; /*все права над таблицей для Тинки-Винки*/
grant insert, select, update on lab4_1 to dipsy2; /*правка, селект и обнов. для Дипси*/
grant delete on lab4_1 to laalaa3 with grant option ; /*права на удаление столбцов и предачу прав для Ляли*/

/*передача прав от Ляли к По*/
set role laalaa3;
grant delete on lab4_1 to po4;

revoke all privileges on lab4_1 from tinkywinky1, dipsy2, laalaa3, po4 cascade ;

/*создание подсхем*/
set role postgres;
create schema tinky1_schema authorization TinkyWinky1;
create schema dipsy2_schema authorization Dipsy2;
create table tinky1_schema.table1(numbers integer, letters varchar);
create table dipsy2_schema.table2(numbers2 integer, letters2 varchar);
insert into tinky1_schema.table1 values (1,'t'),(2,'i'),(3,'k'),(4,'y'),(5,'w'),(6,'i'),(7,'n'),(8,'k'),(9,'y');
insert into dipsy2_schema.table2 values (1,'d'),(2,'i'),(3,'p'),(4,'s'),(5,'y');

/*представление*/
create view Teletubbies as select * from tinky1_schema.table1, dipsy2_schema.table2;
select * from Teletubbies;

/*настройка безопасности */
alter table tinky1_schema.table1 enable row level security ;
create policy Teletubbies_policy3 on tinky1_schema.table1 for select to po4 using (numbers<5);
set role po4;
select * from tinky1_schema.table1;

create table check_(who varchar, what varchar);
create table lab4(who varchar, what varchar);
create or replace function lab4_func() returns trigger as
    $$BEGIN
    if (tg_op = 'INSERT') then insert into check_ select user, 'INCERT';
    return new;
    elseif (tg_op = 'UPDATE') then insert into check_ select user, 'UPDATE';
    return new;
    elseif (tg_op = 'DELETE') then insert into check_ select user, 'DELETE';
    return old;
    end if;
    end;
    $$
language plpgsql;
create trigger checking after insert or update or delete on lab4
    for each row execute procedure lab4_func();
insert into lab4 values ('1','1')
