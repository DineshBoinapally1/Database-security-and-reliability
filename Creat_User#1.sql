connect system;

Drop user DBSEC cascade;
create user DBSEC identified by "Tec5363%1"
	default tablespace USERS
	temporary tablespace TEMP
	quota 30m on users
	profile DEFAULT
        account unlock
	password expire;
SELECT USERNAME,PASSWORD,DEFAULT_TABLESPACE,TEMPORARY_TABLESPACE FROM DBA_USERS WHERE USERNAME='DBSEC';




	
drop user VPD_CLERK1 cascade;
create user VPD_CLERK1 identified by "Jessie#22"
	default tablespace USERS
	temporary tablespace TEMP
	quota 30m on USERS
	profile default
        account unlock
	password expire;
SELECT USERNAME,PASSWORD,DEFAULT_TABLESPACE,TEMPORARY_TABLESPACE FROM DBA_USERS WHERE USERNAME='VPD_CLERK1';
