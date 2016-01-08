create or replace procedure check_user
(
v_email IN CREDENTIALS.EMAIL%type,
v_password IN CREDENTIALS.PASSWORD%type,
v_id OUT CREDENTIALS.ID%type,
v_type OUT CREDENTIALS.TYPE%type
)
is
begin
    select id,type into v_id,v_type from credentials where email like v_email and password like v_password;
    exception  when no_data_found then
        v_id:=0;
        v_type:=0;
end;


create or replace procedure cleandatabase_proc
is
begin
    delete from RESULT;
    delete from SCHEDULE;
    delete from APPOINTMENT;
    delete from PATIENT;
    delete from DOCTOR;
    delete from ADMIN;
    delete from DEPARTMENT;
    delete from CREDENTIALS;
    commit;
end;

create or replace procedure check_doctor_availability(
  v_id_doctor IN number,
  v_day IN number,
  v_time IN number,
  v_date IN date,
  v_availability OUT number)
is
  cursor orar(v_idDoc number)
  is
  select id_schedule, start_hour, end_hour, day
  from schedule
  where id_doctor=v_idDoc;
  
  v_nr_programari number:=0;
 
begin
     v_availability:=0;
    select count(id_appointment)
    into v_nr_programari
    from appointment
    where id_doctor=v_id_doctor and to_char(v_date,'DD-MM-YYYY')=to_char(scheduled_date,'DD-MM-YYYY') and time=v_time;
   
      for orar_rec in orar(v_id_doctor) loop
        if v_day=orar_rec.day and v_time>=orar_rec.start_hour and v_time<=orar_rec.end_hour then
            if v_nr_programari=0 then
              v_availability:=1;
              EXIT;
            end if;
        end if;
      end loop;
    
end;

create or replace procedure most_searched_doctors
is
  v_max_patients number:=0;
  v_index number:=1;
  cursor c1(v_max number)
  is
  select d.id_doctor,last_name, first_name,count(d.id_doctor) nr_pacienti
  from appointment a join doctor d
  on a.id_doctor=d.id_doctor
  group by d.id_doctor,last_name,first_name
  having count(d.id_doctor)<=v_max
  order by 2 desc;
  
begin

  select max(count(id_doctor)) into v_max_patients from appointment group by id_doctor;

  for c1_rec in c1(v_max_patients) loop
    if v_index<=10 then
      dbms_output.put_line('Doctor ' || c1_rec.first_name || ' ' ||c1_rec.last_name || ' cu ' || c1_rec.nr_pacienti || ' programari ');
    end if;
    v_index:=v_index+1;
  end loop;

end;

CREATE FUNCTION IntToWeekDay (DayOfWeek number)
RETURN varchar2
AS
    BEGIN
        IF DayOfWeek = 0 then return 'Sunday'; end if;
        IF DayOfWeek = 1 then return 'Monday'; end if;
        IF DayOfWeek = 2 then return 'Tuesday'; end if;
        IF DayOfWeek = 3 then return 'Wednesday'; end if;
        IF DayOfWeek = 4 then return 'Thursday'; end if;
        IF DayOfWeek = 5 then return 'Friday'; end if;
        IF DayOfWeek = 6 then return'Saturday';end if;
        RETURN '';
END;


create or replace procedure show_doctors_schedule
is 
cursor orar
is
select s.id_doctor, d.last_name, d.first_name, s.start_hour, s.end_hour, s.day
from schedule s join doctor d
on s.id_doctor=d.id_doctor;
begin
  for orar_rec in orar loop
    dbms_output.put_line('Doctor ' || orar_rec.last_name || ' ' || orar_rec.first_name || ' is available ' || IntToWeekDay(orar_rec.day) || ' from ' || orar_rec.start_hour || ' to ' || orar_rec.end_hour);
  end loop;
end;