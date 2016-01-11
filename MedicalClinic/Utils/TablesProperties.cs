namespace Utils
{
    /// <summary>
    /// Class only containing the properties strings for the appropriate table 
    /// </summary>
    public static class AdminTableProperties
    {
        public const string Id = "ID_ADMIN";
        public const string LastName = "LAST_NAME";
        public const string FirstName = "FIRST_NAME";
    }

    /// <summary>
    /// Class only containing the properties strings for the appropriate table 
    /// </summary>
    public static class AppointmentTableProperties
    {
        public const string Id = "ID_APPOINTMENT";
        public const string IdDoctor = "ID_DOCTOR";
        public const string IdPatient = "ID_PATIENT";
        public const string Time = "TIME";
        public const string ScheduleDate = "SCHEDULED_DATE";
        public const string Symptoms = "SYMPTOMS";
    }

    /// <summary>
    /// Class only containing the properties strings for the appropriate table 
    /// </summary>
    public static class CredentialTableProperties
    {
        public const string Id = "ID";
        public const string Email = "EMAIL";
        public const string Password = "PASSWORD";
        public const string Type = "TYPE";
    }

    /// <summary>
    /// Class only containing the properties strings for the appropriate table 
    /// </summary>
    public static class DepartmentTableProperties
    {
        public const string IdDepartment = "ID_DEPT";
        public const string Name = "NAME";
        public const string Description = "DESCRIPTION";
        public const string Floot = "FLOOR";
    }

    /// <summary>
    /// Class only containing the properties strings for the appropriate table 
    /// </summary>
    public static class DoctorTableProperties
    {
        public const string IdDoctor = "ID_DOCTOR";
        public const string FirstName = "FIRST_NAME";
        public const string LastName = "LAST_NAME";
        public const string IdDepartment = "ID_DEPT";
        public const string PhoneNumber = "PHONE_NUMBER";
        public const string Status = "STATUS";
    }

    /// <summary>
    /// Class only containing the properties strings for the appropriate table 
    /// </summary>
    public static class PatientTableProperties
    {
        public const string IdPatient = "ID_PATIENT";
        public const string FirstName = "FIRST_NAME";
        public const string LastName = "LAST_NAME";
        public const string Address = "ADDRESS";
        public const string Birthdate = "BIRTHDATE";
        public const string PhoneNumber = "PHONE_NUMBER";
        public const string GeneticDisorder = "GENETIC_DISORDER";
        public const string InsuranceNumber = "INSURANCE_NUMBER";
    }

    /// <summary>
    /// Class only containing the properties strings for the appropriate table 
    /// </summary>
    public static class ResultsTableProperties
    {
        public const string IdResult = "ID_RESULT";
        public const string IdAppointment = "ID_APPOINTMENT";
        public const string ResultDate = "RESULT_DATE";
        public const string Symptoms = "SYMPTOMS";
        public const string Diagnosis = "DIAGNOSIS";
        public const string Mediaction = "MEDICATION";
    }

    /// <summary>
    /// Class only containing the properties strings for the appropriate table 
    /// </summary>
    public static class ScheduleTableProperties
    {
        public const string IdSchedule = "ID_SCHEDULE";
        public const string Day = "DAY";
        public const string StartHour = "START_HOUR";
        public const string EndHour = "END_HOUR";
        public const string IdDoctor = "ID_DOCTOR";
    }
}
