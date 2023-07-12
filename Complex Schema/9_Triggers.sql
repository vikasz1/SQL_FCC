--trigger is a block of sql code that will define certain action
--that should happen when certain operation get performed on database;

-- e.g: show a message when an entry is done into db
CREATE table test_trigger(
    message varchar(100)
)
-- we write our trigger in Commnad Line mostly because we need to specify our 
-- our delimeter
DELIMITER $$
CREATE 
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO test_trigger VALUES('ADDED NEW EMPLOYEE');
    END$$
DELIMITER ;
-- now add a new employee to the table employee
INSERT INTO employee
VALUES(109, 'Vikas', 'Maury','2001-05-28','M',110000,106,3);

-- a new entry is created in your trigger table
select * from test_trigger;