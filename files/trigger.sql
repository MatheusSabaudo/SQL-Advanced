-- A table for storing the logs should be created before creating and executing the trigger.
-- DDL

CREATE TRIGGER trg_EmployeeLogs ON Employees
AFTER INSERT AS
BEGIN
    INSERT INTO EmployeeLogs(EmployeeID, LogMessage, LogDate)
    SELECT
        EmployeeID,
        'New Employee Added to the table Employee - ID: ' + EmployeeID,
        GETDATE()
    FROM INSERTED
END