# Database-Security-2022
###### Защита информации в системе управления базами данных, 2022 
###### Выполнил студент группы N33471 Гаврилова Вероника

## Лабараторная работа 1
#### <summary> Задание </summary> 
__1. Подключиться к базе данных с использованием клиента psql.__

__2. Создать базу данных в соответствии с шаблоном номер группы номер студента.__

__3. Выбрать базу данных в соответствии с шаблоном номер группы номер студента. Например, n3247_1.__

__4. Создать новую схему в своей БД с именем номер группы номер студента schema_lab1.__

__5. Создать таблицу номер группы номер студента tbl1 в схеме по умолчанию и номергруппы_номерстудента_tbl2 в созданной в пункте 3.__

__6. Создать таблицу и номергруппы_номерстудента_table_i5 в своей схеме (далее все объекты нужно создавать в своей схеме из пункта 3), в которой будут использовать атрибуты с типами integer, varchar, char, timestamp, date, bytea.__

__7. Создать таблицу номергруппы_номерстудента_table_i6, в которой будет атрибут с любым типом со значением по умолчанию и атрибут с типом интервал времени.__

__8. Создать свой составной тип с именем номергруппы_номерстудента_type для описания свойств какого-либо объекта со свойствами real, real, date, bytea.__

__9. Создать свой тип перечисления с именем номергруппы_номерстудента_enum для возможности указания градации размера большой, средний, маленький.__

__10. Создать свой домен с именем номергруппы_номерстудента_domain с проверкой, что в нем содержится только 3 цифры__

__11. Создать последовательность с именем номергруппы_номерстудента_seq с началом 1000 и шагам -1. (1000,999, 998, …)__

__12. Создать для таблицы с пункта 5 индекс с именем номергруппы_номерстудента_idx1 по атрибуту c типом integer.__

__13. Создать составной индекс для таблицы из пункта 5 с именем номергруппы_номерстудента idx2 по атрибутам integer, date.__

__14. Создать индекс по выражению для таблицы из пункта 5 с именем номергруппы_номерстудента idx3 по атрибуту integer, выражение взятие по модулю 10.__

__15. Создать частичный индекс для таблицы из пункта 5 с именем номергруппы_номерстудента_idx4 по атрибуту integer, исключая значения меньше 100 и больше 1000.__

__16. Создать таблицу как в пункте 5, но с ограничение NOT NULL на поле char с именем номергруппы_номерстудента_notnull__

__17. Создать таблицу как в пункте 5, но с ограничение UNIQUE на комбинацию полей char, integer с именем номергруппы_номерстудента_unique__

__18. Создать таблицу как в пункте 5, но с ограничение первичного ключа поля integer с именем номергруппы_номерстудента_pk__

__19. Создать таблицу как в пункте 5, но с ограничением проверкой поля varchar на наличие символа ‘a’ номергруппы_номерстудента_check__

__20. Создать представление, в котором из таблицы из пункта 5 будутпредставлены только атрибуты с типом varchar и date, имя представления. номергруппы_номерстудента_view__ 
