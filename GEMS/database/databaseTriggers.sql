/*Due to some unknown limitation with HeidiSQL, this code cannot be run within it.
Online syntax checking software verifies that it is correct for version 10.3 and onward of MariaDB*/

CREATE TRIGGER `checkIfFull` AFTER UPDATE ON `accommodations` FOR EACH ROW BEGIN
/*When using HeidiSQL, copy the code from here to the next comment into the trigger creation screen,
using the information above to fill in the boxes*/
	IF ((SELECT (maxCap - curOc) FROM inserted) <= 0) THEN
    UPDATE accommodations SET isFull = TRUE WHERE accommodations.accID = inserted.accID;
  	ELSEIF ((SELECT (maxCap - curOc) FROM inserted) > 0) THEN
    UPDATE accommodations SET isFull = FALSE WHERE accommodations.accID = inserted.accID;
    END IF;
    /*End copy area here*/
END