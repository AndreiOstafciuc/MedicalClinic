CREATE TABLE "ADMIN" 
   (	"ID_ADMIN" NUMBER, 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE)
   )
   ;
   CREATE TABLE "HR"."APPOINTMENT" 
   (	"ID_APPOINTMENT" NUMBER, 
	"ID_DOCTOR" NUMBER, 
	"ID_PATIENT" NUMBER, 
	"TIME" NUMBER, 
	"SCHEDULED_DATE" DATE, 
	"SYMPTOMS" VARCHAR2(255 BYTE)
   )
   ;
    CREATE TABLE "HR"."CREDENTIALS" 
   (	"ID" NUMBER, 
	"EMAIL" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"TYPE" NUMBER(*,0)
   )
   ;
   CREATE TABLE "HR"."DEPARTMENT" 
   (	"ID_DEPT" NUMBER, 
	"NAME" VARCHAR2(100 BYTE), 
	"DESCRIPTION" VARCHAR2(255 BYTE), 
	"FLOOR" NUMBER
   )
   ;
   CREATE TABLE "HR"."DOCTOR" 
   (	"ID_DOCTOR" NUMBER, 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE), 
	"ID_DEPT" NUMBER, 
	"PHONE_NUMBER" VARCHAR2(20 BYTE), 
	"STATUS" NUMBER(*,0)
   )
   ;
   CREATE TABLE "HR"."PATIENT" 
   (	"ID_PATIENT" NUMBER, 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE), 
	"ADDRESS" VARCHAR2(200 BYTE), 
	"BIRTHDATE" DATE, 
	"PHONE_NUMBER" VARCHAR2(20 BYTE), 
	"GENETIC_DISORDER" VARCHAR2(200 BYTE), 
	"INSURANCE_NUMBER" NUMBER
   )
   ;
   CREATE TABLE "HR"."RESULT" 
   (	"ID_RESULT" NUMBER, 
	"ID_APPOINTMENT" NUMBER, 
	"RESULT_DATE" DATE, 
	"SYMPTOMS" VARCHAR2(255 BYTE), 
	"DIAGNOSIS" VARCHAR2(255 BYTE), 
	"MEDICATION" VARCHAR2(255 BYTE)
   )
   ;
   CREATE TABLE "HR"."SCHEDULE" 
   (	"ID_SCHEDULE" NUMBER, 
	"DAY" NUMBER, 
	"START_HOUR" NUMBER, 
	"END_HOUR" NUMBER, 
	"ID_DOCTOR" NUMBER
   )
   ;
    CREATE UNIQUE INDEX "HR"."ADMIN_PK" ON "HR"."ADMIN" ("ID_ADMIN") ;

    CREATE UNIQUE INDEX "HR"."APPOINTMENT_PK" ON "HR"."APPOINTMENT" ("ID_APPOINTMENT");

    CREATE UNIQUE INDEX "HR"."CREDENTIALS_PK" ON "HR"."CREDENTIALS" ("ID") ;

    CREATE UNIQUE INDEX "HR"."CREDENTIALS_UK1" ON "HR"."CREDENTIALS" ("EMAIL") ;

    CREATE UNIQUE INDEX "HR"."DEPARTMENT_PK" ON "HR"."DEPARTMENT" ("ID_DEPT");

    CREATE UNIQUE INDEX "HR"."DOCTOR_PK1" ON "HR"."DOCTOR" ("ID_DOCTOR") ;

    CREATE UNIQUE INDEX "HR"."DOCTOR_PK" ON "HR"."PATIENT" ("ID_PATIENT") ;

    CREATE UNIQUE INDEX "HR"."RESULT_PK" ON "HR"."RESULT" ("ID_RESULT") ;

    CREATE UNIQUE INDEX "HR"."SCHEDULE_PK" ON "HR"."SCHEDULE" ("ID_SCHEDULE");

    ALTER TABLE "HR"."ADMIN" ADD CONSTRAINT "ADMIN_PK" PRIMARY KEY ("ID_ADMIN");

    ALTER TABLE "HR"."ADMIN" MODIFY ("ID_ADMIN" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."ADMIN" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."ADMIN" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  
  ALTER TABLE "HR"."APPOINTMENT" ADD CONSTRAINT "APPOINTMENT_PK" PRIMARY KEY ("ID_APPOINTMENT");
  
  ALTER TABLE "HR"."APPOINTMENT" MODIFY ("ID_APPOINTMENT" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."APPOINTMENT" MODIFY ("ID_DOCTOR" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."APPOINTMENT" MODIFY ("ID_PATIENT" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."APPOINTMENT" MODIFY ("TIME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."APPOINTMENT" MODIFY ("SCHEDULED_DATE" NOT NULL ENABLE);
  
  ALTER TABLE "HR"."CREDENTIALS" ADD CONSTRAINT "CREDENTIALS_PK" PRIMARY KEY ("ID");
  
  ALTER TABLE "HR"."CREDENTIALS" ADD CONSTRAINT "CREDENTIALS_UK1" UNIQUE ("EMAIL");
  
  ALTER TABLE "HR"."CREDENTIALS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."CREDENTIALS" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."CREDENTIALS" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."CREDENTIALS" MODIFY ("TYPE" NOT NULL ENABLE);
  
  ALTER TABLE "HR"."DEPARTMENT" ADD CONSTRAINT "DEPARTMENT_PK" PRIMARY KEY ("ID_DEPT");
  
  ALTER TABLE "HR"."DEPARTMENT" MODIFY ("ID_DEPT" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."DEPARTMENT" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."DEPARTMENT" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."DEPARTMENT" MODIFY ("FLOOR" NOT NULL ENABLE);
  
  ALTER TABLE "HR"."DOCTOR" ADD CONSTRAINT "DOCTOR_PK" PRIMARY KEY ("ID_DOCTOR");
  
   ALTER TABLE "HR"."DOCTOR" MODIFY ("ID_DOCTOR" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."DOCTOR" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."DOCTOR" MODIFY ("LAST_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."DOCTOR" MODIFY ("ID_DEPT" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."DOCTOR" MODIFY ("PHONE_NUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."DOCTOR" MODIFY ("STATUS" NOT NULL ENABLE);
  
  ALTER TABLE "HR"."PATIENT" ADD CONSTRAINT "PATIENT_PK" PRIMARY KEY ("ID_PATIENT");
  
   ALTER TABLE "HR"."PATIENT" MODIFY ("ID_PATIENT" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PATIENT" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PATIENT" MODIFY ("LAST_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PATIENT" MODIFY ("ADDRESS" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PATIENT" MODIFY ("BIRTHDATE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PATIENT" MODIFY ("PHONE_NUMBER" NOT NULL ENABLE);
  
  ALTER TABLE "HR"."RESULT" ADD CONSTRAINT "RESULT_PK" PRIMARY KEY ("ID_RESULT");
  
  ALTER TABLE "HR"."RESULT" MODIFY ("ID_RESULT" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."RESULT" MODIFY ("ID_APPOINTMENT" NOT NULL ENABLE);
  
  ALTER TABLE "HR"."SCHEDULE" ADD CONSTRAINT "SCHEDULE_PK" PRIMARY KEY ("ID_SCHEDULE");
  
   ALTER TABLE "HR"."SCHEDULE" MODIFY ("ID_SCHEDULE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."SCHEDULE" MODIFY ("DAY" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."SCHEDULE" MODIFY ("START_HOUR" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."SCHEDULE" MODIFY ("END_HOUR" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."SCHEDULE" MODIFY ("ID_DOCTOR" NOT NULL ENABLE);
  
 ALTER TABLE "HR"."ADMIN" ADD CONSTRAINT "ADMIN_FK1" FOREIGN KEY ("ID_ADMIN")
	  REFERENCES "HR"."CREDENTIALS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table APPOINTMENT
--------------------------------------------------------

  ALTER TABLE "HR"."APPOINTMENT" ADD CONSTRAINT "APPOINTMENT_FK1" FOREIGN KEY ("ID_DOCTOR")
	  REFERENCES "HR"."DOCTOR" ("ID_DOCTOR") ENABLE;
 
  ALTER TABLE "HR"."APPOINTMENT" ADD CONSTRAINT "APPOINTMENT_FK2" FOREIGN KEY ("ID_PATIENT")
	  REFERENCES "HR"."PATIENT" ("ID_PATIENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DOCTOR
--------------------------------------------------------

  ALTER TABLE "HR"."DOCTOR" ADD CONSTRAINT "DOCTOR_FK1" FOREIGN KEY ("ID_DOCTOR")
	  REFERENCES "HR"."CREDENTIALS" ("ID") ENABLE;
 
  ALTER TABLE "HR"."DOCTOR" ADD CONSTRAINT "DOCTOR_FK4" FOREIGN KEY ("ID_DEPT")
	  REFERENCES "HR"."DEPARTMENT" ("ID_DEPT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PATIENT
--------------------------------------------------------

  ALTER TABLE "HR"."PATIENT" ADD CONSTRAINT "PATIENT_FK1" FOREIGN KEY ("ID_PATIENT")
	  REFERENCES "HR"."CREDENTIALS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESULT
--------------------------------------------------------

  ALTER TABLE "HR"."RESULT" ADD CONSTRAINT "RESULT_FK1" FOREIGN KEY ("ID_APPOINTMENT")
	  REFERENCES "HR"."APPOINTMENT" ("ID_APPOINTMENT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SCHEDULE
--------------------------------------------------------

  ALTER TABLE "HR"."SCHEDULE" ADD CONSTRAINT "SCHEDULE_FK1" FOREIGN KEY ("ID_DOCTOR")
	  REFERENCES "HR"."DOCTOR" ("ID_DOCTOR") ENABLE;