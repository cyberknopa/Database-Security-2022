import psycopg2

with psycopg2.connect(
        dbname='postgres',
        user='postgres',
        password='2002',
        host='127.0.0.1',
        port='5432'
) as connection:
    with connection.cursor() as cursor:
        cursor.execute(f"SELECT * FROM information_schema.columns WHERE table_name= 'nums3' ")
        for row in cursor:
            print(row)
