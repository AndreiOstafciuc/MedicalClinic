using DAO;
using DBConnNamespace;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GenericControls
{
    /// <summary>
    /// Interaction logic for MainContent.xaml
    /// </summary>
    public partial class TestContent : CustomUserControl
    {
        AdministratorService administratorService;
        AppointmentService appointmentService;
        DepartmentService departmentService;
        ResultsService resultsService;
        ScheduleService scheduleService;
        PatientService patientService;
        CredentialsService credentialsService;
        DoctorService doctorService;
        CleanupService cleanupService;
        public TestContent()
        {
            InitializeComponent();
            try
            {
                DBConnection.CreateConnection("localhost", "xe", "hr", "hr");
            }
            catch (System.Exception e)
            {
                MessageBox.Show(e.Message);
            }
            administratorService = new AdministratorService();
            appointmentService = new AppointmentService();
            departmentService = new DepartmentService();
            resultsService = new ResultsService();
            scheduleService = new ScheduleService();
            patientService = new PatientService();
            credentialsService = new CredentialsService();
            doctorService = new DoctorService();
            cleanupService = new CleanupService();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="len">length of the string to return</param>
        /// <returns></returns>
        private string genString(int len = 9)
        {
            List<char> chars = new List<char>();
            chars.Add((char)r.Next(65, 90));
            for (int i = 0; i < len; i++)
            {
                chars.Add((char)r.Next(97, 122));
            }
            return new string(chars.ToArray());
        }
        Random r = new Random(new Random().Next(1024, 2048000));
        private void button_Click(object sender, RoutedEventArgs e)
        {
            // ----------- testing phase
            try
            {
                /*
                for (int acnt = 2; acnt < 10; acnt++)
                {
                    string firstName = genString(r.Next(3, 9));
                    string lastName = genString(r.Next(3, 9));
                    administratorService.Save(new Administrator(credentialsService.Save(
                        new Credentials(lastName + "." + firstName  + "@Medical-Clinic.com", Utils.Encrypter.getMD5("pass"), Utils.UserTypes.ADMIN)
                        ), firstName, lastName));
                }
                //*/

                /* DEPARTMENTS
                departmentService.Save(new Department("Accident and emergency", "This department (sometimes called Casualty) is where you're likely to be taken if you've called an ambulance in an emergency.\nIt's also where you should come if you've had an accident, but can make your own way to hospital.\nThese departments operate 24 hours a day, every day and are staffed and equipped to deal with all emergencies.\nPatients are assessed and seen in order of need, usually with a separate minor injuries area supported by nurses.", r.Next(0,9)));
                departmentService.Save(new Department("Anaesthetics", "Doctors in this department give anaesthetic for operations.", r.Next(0,9)));
                departmentService.Save(new Department("Cardiology", "This department provides medical care to patients who have problems with their heart or circulation. It treats people on an inpatient and outpatient basis.", r.Next(0,9)));
                departmentService.Save(new Department("Chaplaincy", "Chaplains promote the spiritual and pastoral wellbeing of patients, relatives and staff.\nThey are available to all members of staff for confidential counsel and support irrespective of religion or race.A hospital chapel is also usually available.", r.Next(0,9)));
                departmentService.Save(new Department("Critical care", "Sometimes called intensive care, this unit is for the most seriously ill patients.\nIt has a relatively small number of beds and is manned by specialist doctors and nurses, as well as by consultant anaesthetists, physiotherapists and dietitians.\nPatients requiring intensive care are often transferred from other hospitals or from other departments in the same hospital.", r.Next(0,9)));
                departmentService.Save(new Department("Diagnostic imaging", "Formerly known as X-ray, this department provides a full range of diagnostic imaging services.", r.Next(0,9)));
                departmentService.Save(new Department("Discharge lounge", "Many hospitals now have discharge lounges to help your final day in hospital go smoothly.\nPatients who don't need to stay on the ward are transferred to the lounge on the day of discharge. Staff will inform the pharmacy, transport and relatives of your transfer.\nTo help pass the time, there are usually facilities such as a TV, radio, magazines, puzzles, books and newspapers.\nIf someone feels unwell while waiting, nurses contact a doctor to come and see you before discharge.", r.Next(0,9)));
                departmentService.Save(new Department("Ear nose and throat (ENT)", "The ENT department provides care for patients with a variety of problems", r.Next(0,9)));
                departmentService.Save(new Department("Elderly services department", "Led by consultant physicians specialising in geriatric medicine, this department looks after a wide range of problems associated with the elderly.\nIt provides a range of services such as home visits, day hospitals and outpatient clinics. The department often has close links with other community services for the elderly.", r.Next(0,9)));
                departmentService.Save(new Department("Endoscopy", "Endoscopy involves a small thin tube with a camera on the end.\nThis is guided down the throat to investigate problems in your oesophagus and digestive system.\nSmall surgical instruments can be guided down in the same way, meaning it can be used for diagnosis and treatment.\nRun by consultants specialising in bowel - related medicine, this department investigates and treats upper and lower gastrointestinal disease, as well as diseases of the pancreas and bile duct system.\nThis includes endoscopy and nutritional services.\nSub - specialities include colerectal surgery, inflammatory bowel disease and swallowing problems.\nThere are often endoscopy nurse specialists linked to a gastroenterology unit who are able to perform a wide range of bowel investigations.", r.Next(0,9)));
                departmentService.Save(new Department("Gynaecology", "These departments investigate and treat problems of the female urinary tract and reproductive organs, such as endometritis, infertility and incontinence.\nThey also provide a range of care for cervical smear screening and post - menopausal bleeding checks.", r.Next(0,9)));
                departmentService.Save(new Department("Haematology", "Haematology services work closely with the hospital laboratory.These doctors treat blood diseases and malignancies linked to the blood, with both new referrals and emergency admissions being seen.", r.Next(0,9)));
                departmentService.Save(new Department("Maternity departments", "Women now have a choice of who leads their maternity care and where they give birth.Care can be led by a consultant, a GP or a midwife.\nMaternity wards provide antenatal care, care during childbirth and postnatal support.\nAntenatal clinics provide monitoring for both routine and complicated pregnancies.\nHigh - dependency units can offer one - to - one care for women who need close monitoring when there are complications in pregnancy or childbirth.", r.Next(0,9)));
                departmentService.Save(new Department("Microbiology", "The microbiology department looks at all aspects of microbiology, such as bacterial and viral infections.\nThey have become increasingly high profile following the rise of hospital - acquired infections, such as MRSA and C.difficile.\nA head microbiology consultant and team of microbiologists test patient samples sent to them by medical staff from the hospital and from doctors' surgeries.", r.Next(0,9)));
                departmentService.Save(new Department("Neonatal unit", "Neonatal units have a number of cots that are used for intensive, high-dependency and special care for newborn babies.\nIt always maintains close links with the hospital maternity department, in the interest of babies and their families.\nNeonatal units have the philosophy that, whenever possible, mother and baby should be together.", r.Next(0,9)));
                departmentService.Save(new Department("Nephrology", "This department monitors and assesses patients with kidney (renal) problems.\nNephrologists(kidney specialists) will liaise with the transplant team in cases of kidney transplants.\nThey also supervise the dialysis day unit for people who are waiting for a kidney transplant or who are unable to have a transplant for any reason.", r.Next(0,9)));
                departmentService.Save(new Department("Neurology", "This unit deals with disorders of the nervous system, including the brain and spinal cord. It's run by doctors who specialise in this area (neurologists) and their staff.\nThere are also paediatric neurologists who treat children.Neurologists may also be involved in clinical research and clinical trials.\nSpecialist nurses(epilepsy, multiple sclerosis) liaise with patients, consultants and GPs to help with any problems that may occur between outpatient appointments.", r.Next(0,9)));
                departmentService.Save(new Department("Nutrition and dietetics", "Trained dieticians and nutritionists provide specialist advice on diet for hospital wards and outpatient clinics, forming part of a multidisciplinary team.\nThey also provide group education to patients with diabetes, heart disease and osteoarthritis, and work closely with weight management groups.", r.Next(0,9)));
                departmentService.Save(new Department("Obstetrics and gynaecology units", "Overseen by consultant obstetricians and gynaecologists, there is a wide range of attached staff linked to them, including specialist nurses, midwives and imaging technicians.", r.Next(0,9)));
                departmentService.Save(new Department("Occupational therapy", "This profession helps people who are physically or mentally impaired, including temporary disability after medical treatment. It practices in the fields of both healthcare and social care.\nThe aim of occupational therapy is to restore physical and mental functioning to help people participate in life to the fullest.\nOccupational therapy assessments often guide hospital discharge planning, with the majority of patients given a home assessment to understand their support needs.\nStaff also arrange provision of essential equipment and adaptations that are essential for discharge from hospital.", r.Next(0,9)));
                departmentService.Save(new Department("Oncology", "This department provides radiotherapy and a full range of chemotherapy treatments for cancerous tumours and blood disorders.", r.Next(0,9)));
                departmentService.Save(new Department("Ophthalmology", "Eye departments provide a range of ophthalmic services for adults and children", r.Next(0,9)));
                departmentService.Save(new Department("Orthopaedics", "Orthopaedic departments treat problems that affect your musculoskeletal system. That's your muscles, joints, bones, ligaments, tendons and nerves", r.Next(0,9)));
                departmentService.Save(new Department("Pain management clinics", "Usually run by consultant anaesthetists, these clinics aim to help treat patients with severe long-term pain that appears resistant to normal treatments", r.Next(0,9)));
                departmentService.Save(new Department("Pharmacy", "The hospital pharmacy is run by pharmacists, pharmacy technicians and attached staff.\nA pharmacy will provide a drug formulary for hospital doctors to use as a guide. It will also help supervise any clinical trial management and ward drug-use review.", r.Next(0,9)));
                departmentService.Save(new Department("Physiotherapy", "Physiotherapists promote body healing, for example after surgery, through therapies such as exercise and manipulation", r.Next(0,9)));
                departmentService.Save(new Department("Radiotherapy", "Run by a combination of consultant doctors and specially trained radiotherapists, this department provides radiotherapy (X-ray) treatment for conditions such as malignant tumours and cancer", r.Next(0,9)));
                departmentService.Save(new Department("Renal unit", "Closely linked with nephrology teams at hospitals, these units provide haemodialysis treatment for patients with kidney failure. Many of these patients are on waiting lists for a kidney transplant", r.Next(0,9)));
                departmentService.Save(new Department("Rheumatology", "Specialist doctors called rheumatologists run the unit and are experts in the field of musculoskeletal disorders (bones, joints, ligaments, tendons, muscles and nerves).", r.Next(0,9)));
                departmentService.Save(new Department("Urology", "The urology department is run by consultant urology surgeons and their surgical teams. It investigates all areas linked to kidney and bladder-based problems", r.Next(0,9)));
                //*/
                /*
                for (int dcnt = 0; dcnt < 200; dcnt++)
                {
                    string firstName = genString(r.Next(3, 9));
                    string lastName = genString(r.Next(3, 9));
                    doctorService.Save(new Doctor(credentialsService.Save(
                        new Credentials(lastName+firstName+"@Medical-Clinic.com", Utils.Encrypter.getMD5("pass"), Utils.UserTypes.DOCTOR)
                        ), lastName, firstName, r.Next(10, 39), r.Next(100000, 999999).ToString(), Utils.DoctorStatus.ACTIVE));
                }
                //*/
                /*
                for (int pcnt = 0; pcnt < 250; pcnt++)
                {
                    string firstName = genString(r.Next(3, 9));
                    string lastName = genString(r.Next(3, 9));
                    patientService.Save(new Patient(credentialsService.Save(
                            new Credentials(firstName+"."+lastName+"@mail.com", Utils.Encrypter.getMD5("pass"), Utils.UserTypes.PATIENT)
                        ), lastName, firstName, "RO"+r.Next(100000000, 999999999).ToString(), 
                        "str. " + genString(r.Next(6,9)) + genString(r.Next(6, 9)) + r.Next(1,200), new DateTime(r.Next(1945, 2010), r.Next(1, 12), r.Next(1, 28)), 
                        genString(r.Next(6,13))+" Dissorder", r.Next(100000,999999).ToString()));
                }
                //*/


                /*
                for (int appcnt = 0; appcnt < 200; appcnt++)
                {
                    appointmentService.Save(new Appointment(r.Next(240,989), r.Next(40,239), r.Next(9,18), new DateTime(r.Next(2016, 2017), r.Next(1,12), r.Next(1,28)), genString(r.Next(6,13))+ " Symptom"));
                }
                //*/
                /*
                for (int resultcnt = 0; resultcnt < 100; resultcnt++)
                {
                    int id = resultcnt + 990;
                    resultsService.Save(new Results(id, new DateTime(2017, r.Next(1, 12), r.Next(1, 28)), 
                        genString(r.Next(5,9))+" symptopm present", genString(r.Next(5, 9))+ " disease found", "Following drugs should be taken : " + genString(r.Next(5, 9)) + " and " + genString(r.Next(5, 9))));
                }
                //*/

                /*
                for (int shcnt = 40; shcnt < 240; shcnt++)
                {
                    scheduleService.Save(new Schedule(shcnt, r.Next(1,28), r.Next(9,11), r.Next(14, 18)));
                }
                //*/
                /*
                int g = administratorService.Save(new Administrator(credentialsService.Save(new Credentials("admin@s.com", "password", 2)), "Admin test", "last name admin"));

                int f = patientService.Save(new Patient(credentialsService.Save(new Credentials("patient@s.com", "password", 1)), "Patient test", "first name test", "2301230232", "address test", new System.DateTime(), "genetic diseases", "0785858585"));


                int a = departmentService.Save(new Department("Cardiologie", "Departamentul de cardiologie", 1));
                int b = doctorService.Save(new Doctor(credentialsService.Save(new Credentials("doctor@s.com", "password", 2)), "Doctor test", "test d", departmentService.FindAll()[0].Id, "0785858585", 1));
                int c = appointmentService.Save(new Appointment(patientService.FindAll()[0].Id, doctorService.FindAll()[0].Id, 12, new System.DateTime(), "symptoms"));
                int d = resultsService.Save(new Results(appointmentService.FindAll()[0].Id, new System.DateTime(), "simptome test", "diagnostic test", "medicatie test"));
                int ee = scheduleService.Save(new Schedule(doctorService.FindAll()[0].Id, 2, 10, 18));


                // FindAllByProperty

                List<Administrator> al = administratorService.FindAllByProperty("id_admin", "5");
                List<Appointment> aal = appointmentService.FindAllByProperty("id_appointment", "5");
                List<Department> dl = departmentService.FindAllByProperty("id_dept", "5");
                List<Results> rl = resultsService.FindAllByProperty("id_result", "5");
                List<Schedule> sl = scheduleService.FindAllByProperty("id_schedule", "5");
                List<Patient> pl = patientService.FindAllByProperty("id_patient", "5");
                List<Credentials> cl = credentialsService.FindAllByProperty("id", "5");
                List<Doctor> ddl = doctorService.FindAllByProperty("id_doctor", "5");




                Administrator admin = administratorService.FindById(administratorService.FindAll()[0].Id);
                admin.LastName = "Changed Name";
                administratorService.Update(admin);


                Appointment appointment = appointmentService.FindById(appointmentService.FindAll()[0].Id);
                appointment.Symptoms = "Changed Symptoms";
                appointment.AppointmentDate = new System.DateTime(2016, 10, 10);
                appointmentService.Update(appointment);


                Department department = departmentService.FindById(departmentService.FindAll()[0].Id);
                department.Floor = 6;
                departmentService.Update(department);


                Results result = resultsService.FindById(resultsService.FindAll()[0].Id);
                result.Diagnosis = "Changed diagnosis";
                resultsService.Update(result);


                Schedule schedule = scheduleService.FindById(scheduleService.FindAll()[0].Id);
                schedule.Day = 4;
                scheduleService.Update(schedule);


                Patient patient = patientService.FindById(patientService.FindAll()[0].Id);
                patient.BirthDate = new System.DateTime(2016, 10, 10);
                patientService.Update(patient);


                Credentials credential = credentialsService.FindById(credentialsService.FindAll()[0].Id);
                credential.Password = "Changed pass";
                credentialsService.Update(credential);

                Doctor doctor = doctorService.FindById(doctorService.FindAll()[0].Id);
                doctor.PhoneNumber = "5555555555";
                doctorService.Update(doctor);
                */
            }

            catch (System.Exception ee)
            {
                MessageBox.Show(ee.Message);
                return;
            }

            textBox.Text += "\n\nSuccess !";
        }

        private void buttonBack_Click(object sender, RoutedEventArgs e)
        {
            RaiseChangeWindowLayoutEvent(Utils.UserTypes.GUEST);
        }
    }
}
