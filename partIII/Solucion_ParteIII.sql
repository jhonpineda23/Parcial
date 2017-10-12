-- Create a tablespace called "RENTING_COLOMBIA" with one datafile of 150Mb, 
---the name of the datafile should be: renting.dbf (0.1)

CREATE TABLESPACE RENTING_COLOMBIA datafile 
'renting.dbf' SIZE 150M
AUTOEXTEND ON NEXT 100K MAXSIZE 500M
EXTENT MANAGEMENT LOCAL 
SEGMENT SPACE MANAGEMENT AUTO
ONLINE;

--Create a profile named "comercial_medellin" with the following specifications: 
--(0.1) a) Idle time of 25 minutes b) Failed login attempts 4 c) Onle one session per user

CREATE PROFILE comercial_medellin LIMIT
SESSIONS_PER_USER 1
CPU_PER_SESSION UNLIMITED
CPU_PER_CALL UNLIMITED
CONNECT_TIME 240
IDLE_TIME 25
PRIVATE_SGA 20 M
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LIFE_TIME 15
PASSWORD_REUSE_MAX 2
PASSWORD_LOCK_TIME 1
PASSWORD_GRACE_TIME 2;

-- Create an user named "amartinez" with only 50Mb of space on tablespace, 
--the profile should be "comercial_medellin" (0.1)

CREATE USER amartinez
IDENTIFIED BY amartinez123
DEFAULT TABLESPACE RENTING_COLOMBIA
QUOTA 50 M ON RENTING_COLOMBIA
PROFILE comercial_medellin;

--Add the roles "CONNECT" and "DBA" to user "amartinez" (0.1)

CREATE USER amartinez IDENTIFIED BY amartinez123
DEFAULT TABLESPACE RENTING_COLOMBIA
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON RENTING_COLOMBIA;

GRANT DBA TO amartinez;
GRANT CONNECT, RESOURCE TO amartinez;
