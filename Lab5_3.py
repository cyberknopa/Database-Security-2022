import psycopg2

name = input('Name of column:')
numbers = input('What number are you looking for: ')
with psycopg2.connect(
        dbname='postgres',
        user='postgres',
        password='2002',
        host='127.0.0.1',
        port='5432'
) as connection:
    with connection.cursor() as cursor:
        cursor.execute(f'SELECT * FROM nums WHERE {name} = {numbers}')
        for row in cursor:
            print(row)
