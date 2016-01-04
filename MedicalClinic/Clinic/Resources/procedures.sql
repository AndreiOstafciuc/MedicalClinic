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
