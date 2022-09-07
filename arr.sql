CREATE DEFINER=`root`@`localhost` FUNCTION `array`(d_id INT) RETURNS varchar(20) CHARSET latin1
    DETERMINISTIC
BEGIN  
DECLARE de_name VARCHAR( 20 ) DEFAULT "";
SELECT name INTO de_name FROM items WHERE item_id = d_id;
RETURN de_name;
end