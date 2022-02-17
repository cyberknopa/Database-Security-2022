create function who_is_kitty () returns void as
    $$ DECLARE
        youngest integer;
      begin
        youngest := (select min("age") from cats);
        insert into "catage" (min_age) values (youngest);
      end;
    $$
lenguage plpgsql;
select who_is _kitty()
