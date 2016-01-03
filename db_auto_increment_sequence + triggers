CREATE SEQUENCE AUTO_INCREMENT_SEQ
INCREMENT BY 1
MAXVALUE 99999
MINVALUE 1
CACHE 20;
/
create or replace trigger auto_increment_tr_credentials  
   before insert on CREDENTIALS
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select AUTO_INCREMENT_SEQ.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;
/
create or replace trigger auto_increment_tr_department  
   before insert on DEPARTMENT
   for each row 
begin  
   if inserting then 
      if :NEW."ID_DEPT" is null then 
         select AUTO_INCREMENT_SEQ.nextval into :NEW."ID_DEPT" from dual; 
      end if; 
   end if; 
end;
/
create or replace trigger auto_increment_tr_result  
   before insert on RESULT
   for each row 
begin  
   if inserting then 
      if :NEW."ID_RESULT" is null then 
         select AUTO_INCREMENT_SEQ.nextval into :NEW."ID_RESULT" from dual; 
      end if; 
   end if; 
end;
/
create or replace trigger auto_increment_tr_schedule 
   before insert on SCHEDULE
   for each row 
begin  
   if inserting then 
      if :NEW."ID_SCHEDULE" is null then 
         select AUTO_INCREMENT_SEQ.nextval into :NEW."ID_SCHEDULE" from dual; 
      end if; 
   end if; 
end;
/
create or replace trigger auto_increment_tr_appointment  
   before insert on APPOINTMENT
   for each row 
begin  
   if inserting then 
      if :NEW."ID_APPOINTMENT" is null then 
         select AUTO_INCREMENT_SEQ.nextval into :NEW."ID_APPOINTMENT" from dual; 
      end if; 
   end if; 
end;
