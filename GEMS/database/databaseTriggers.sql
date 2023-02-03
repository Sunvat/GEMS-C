/*Due to some unknown limitation with HeidiSQL, this code cannot be run within it.
Online syntax checking software verifies that it is correct for version 10.3 and onward of MariaDB*/

CREATE TRIGGER `checkIfFull` BEFORE UPDATE ON `accommodations` FOR EACH ROW BEGIN
/*When using HeidiSQL, copy the code from here to the next comment into the trigger creation screen,
using the information above to fill in the boxes*/
	IF ((NEW.maxCap - NEW.curOc) <= 0) THEN
    SET NEW.isFull = TRUE;
  	ELSEIF ((NEW.maxCap - NEW.curOc) > 0) THEN
    SET NEW.isFull = FALSE;
    END IF;
    /*End copy area here*/
END