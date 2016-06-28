---connecting to system by using my password
Define password='dinesh'
Connect system/&password;

--droping the trigger and creating it again for executing mulitple times
DROP TRIGGER trigger_before_change;
CREATE OR REPLACE TRIGGER trigger_before_change
BEFORE CREATE ON DATABASE

BEGIN
IF USER = 'VPD_CLERK1' THEN
RAISE_APPLICATION_ERROR(-20000, 'You do not have the privilege to insert, update, or delete on CUSTOMERS table. Please contact database administrator for more details.');
ELSIF USER = 'DBSEC_CLERK' THEN
RAISE_APPLICATION_ERROR(-20000, 'You do not have the privilege to insert, update, or delete on CUSTOMERS table. Please contact database administrator for more details.');
END IF;
END;
/
--- granting revoking and create privaleges to table
GRANT CREATE TABLE TO VPD_CLERK1;
REVOKE CREATE TABLE FROM VPD_CLERK1;
GRANT CREATE TABLE TO DBSEC_CLERK;
REVOKE CREATE TABLE FROM DBSEC_CLERK;

---performing auditing option
ALTER SYSTEM SET audit_trail = DB scope = spfile;
AUDIT ALL BY VPD_CLERK1 BY ACCESS; 
AUDIT ALL BY DBSEC_CLERK BY ACCESS;

---connecting to DBSEC user
CONNECT DBSEC/secc$1new;

---Granting permision to both user
GRANT INSERT, UPDATE, DELETE ON CUSTOMERS TO VPD_CLERK1, DBSEC_CLERK;

---connecting to user
CONNECT VPD_CLERK1/Jessie#22;

----using the update command
UPDATE dbsec.customers set CREDIT_LIMIT=786786689 where SALES_REP_ID=9644;

---creating the table
create table DineshRAO(
ID  NUMBER(15), 
Address  VARCHAR2(25)
);

---connecting to the user
CONNECT DBSEC_CLERK/tec5363clerk;

---performing the deleting action
delete dbsec.customers where SALES_REP_ID=9644;

----creating the table
create table BoinapallyRAO(
ID number(15), 
address varchar2(25)
);

----connecting to system
CONNECT SYSTEM;

---writing the select statement
SELECT OS_USERNAME, ACTION_NAME, USERNAME, TIMESTAMP FROM DBA_AUDIT_TRAIL;