CREATE DATABASE seminar6_2_fin;
use seminar6_2_fin;

DELIMITER //
CREATE PROCEDURE even_numbers(start INT, end INT)
BEGIN
    DECLARE x INT DEFAULT start;
    DECLARE num_list TEXT DEFAULT NULL;
    WHILE  x<=end DO
        IF x%2 = 0 THEN
            IF num_list IS NULL THEN
                SET num_list = concat(x);
            ELSE
                SET num_list = concat(num_list, ', ', x);
            END IF;
        END IF;
        SET x = x + 1;
    END WHILE;
    SELECT num_list;
END //

CALL even_numbers(1, 10);

-- Выведите только четные числа от 1 до 10 включительно.
-- Пример: 2,4,6,8,10 (можно сделать через шаг +  2: х = 2, х+=2)