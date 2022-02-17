import psycopg2

with psycopg2.connect(
        dbname='postgres',
        user='postgres',
        password='2002',
        host='127.0.0.1',
        port='5432'
) as connection:
    with connection.cursor() as cursor:
        cursor.execute(f'SELECT num1 FROM nums where num2 = num2 union select 1 union select * from nums3')
        for row in cursor:
            print(row)


SELECT row FROM nums WHERE num2 = num2 UNION SELECT 
column_name,data_type FROM information_schema.columns 
WHERE nums3 = ‘nums3’
