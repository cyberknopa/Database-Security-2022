CREATE DATABASE n33471_8; /*Создание базы данных*/
CREATE SCHEMA n33471_8_schema_lab1; /*Создание схемы*/
CREATE TABLE n33471_8_tbl1();  /*Таблица в схеме по умолч.*/
CREATE TABLE n33471_8_schema_lab1.n33471_8_tbl2(); /*Таблица в пункте 3*/
SET search_path TO n33471_8_schema_lab1, public; /*Чтобы все создавалось в первой схеме*/
/* Создание таблийы i5 с заданными парамаетрами*/
CREATE TABLE n33471_8_table_i5(NUMBER integer, SYMBOL char, STRING varchar, LOCKAL_TIME timestamp, CURRENT date, BIN_DATA bytea);
/* Создание таблийы i6 с заданными парамаетрами*/
CREATE TABLE n33471_8_table_i6(NUMBER integer default 8, LOCKAL_TIME interval);
CREATE TYPE n33471_8 AS (UNO real, DUE real, TRE date, QUATRO bytea); /*Создание сосотавного типа*/
CREATE TYPE n33471_8_second AS enum ('BIG', 'AVERAGE', 'SMALL');/*Создание типа перечисления*/
CREATE DOMAIN n33471_8_dom AS text check ( value ~ '^\d{3}$');  /*Создание домена с ограничением*/
CREATE SEQUENCE n33471_8_sequence increment by -1 maxvalue 1000 minvalue 0 start 1000; /*Создание последовательности*/
CREATE INDEX n33471_8_idx1 on n33471_8_table_i5 (NUMBER); /*Создание индекса int*/
CREATE INDEX n33471_8_idx2 on n33471_8_table_i5 (NUMBER, CURRENT); /*Создание индекса int, date*/
CREATE INDEX n33471_8_idx3 on n33471_8_table_i5 (mod(NUMBER, 10)); /*Создание индекса int mod 10*/
CREATE INDEX n33471_8_idx4 on n33471_8_table_i5 (NUMBER) where (NUMBER > 100 and NUMBER < 1000); /*Создание индекса с исключением*/
/*Создание таблицы notnull*/
CREATE TABLE n33471_8_table_notnull(NUMBER integer, SYMBOL char not null , STRING varchar, LOCKAL_TIME timestamp, CURRENT date, BIN_DATA bytea);
/*Создание таблицы unique*/
CREATE TABLE n33471_8_table_unique (NUMBER integer, SYMBOL char, STRING varchar, LOCKAL_TIME timestamp, CURRENT date, BIN_DATA bytea, constraint uniq unique (SYMBOL, NUMBER));
/*Создание таблицы pk*/
CREATE TABLE n33471_8_table_pk (NUMBER integer, SYMBOL char, STRING varchar, LOCKAL_TIME timestamp, CURRENT date, BIN_DATA bytea, constraint pk primary key (NUMBER));
/*Создание таблицы check*/
CREATE TABLE n33471_8_table_check (NUMBER integer, SYMBOL char, STRING varchar check ( STRING  like '*a*'), LOCKAL_TIME timestamp, CURRENT date, BIN_DATA bytea);
CREATE VIEW n33471_8_view as select STRING , CURRENT from n33471_8_table_i5; /*Создание представления*/
