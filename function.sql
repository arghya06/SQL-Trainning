CREATE DEFINER=`root`@`localhost` FUNCTION `get_name`(d_id int) RETURNS varchar(20) CHARSET latin1
    DETERMINISTIC
BEGIN
declare de_name varchar(20) default"";
select name into de_name from items where item_id = d_id;
RETURN de_name;
END