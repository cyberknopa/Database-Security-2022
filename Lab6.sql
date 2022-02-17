create table lab5(before varchar, after_sha1 varchar, after_md5 varchar);
CREATE EXTENSION IF NOT EXISTS pgcrypto;
insert into lab5 values (
                         'Veronichka',
                         digest('Veronichka','sha1'),
                         crypt('Veronichka', gen_salt('md5'))
                        );

select (after_sha1::varchar = digest(before, 'sha1')::varchar) as match from lab5;
select (after_md5 = crypt(before, after_md5)) as match from  lab5;
select (after_sha1::varchar = digest('pass', 'sha1')::varchar) as match from lab5;

/**/

create table lab5_2(num integer, bytee bytea);
insert into lab5_2(bytee) values (
                           (pgp_sym_encrypt('world1','world2'))
                          );
select pgp_sym_decrypt (bytee,'world2') from lab5_2;
