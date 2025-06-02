using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net;
using System.Net.Mail;
namespace SHCAMS_Web
{
    public class SHCAMS
    {
        //SqlConnection con = new SqlConnection("Data Source=Aaryan-PC;Initial Catalog=OnlineExamination;Integrated Security=True");
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-A9TQH0O;Initial Catalog=SHCAMS;User ID=sa;Password=sayali123");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        DataSet ds;
        public static string OrganizationID;
        public static string DoctorID;
        public static string sDoctorName;
        public static string PatientID;
        public static string UserAppointmentRequestID;
        public static string UserAppointmentID;
        public static long PathalogyID = 13;

        public void Execute(String sql)  //Insert, Update, Delete
        {
            cmd = new SqlCommand(sql, con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public string ExecuteScalar(string strsql)
        {
            cmd = new SqlCommand(strsql, con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            string strresult; 
            strresult = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
            return strresult;   
        }

        int cnt;

        string scl;
        public string ExecuteSclStr(String sql)
        {
            cmd = new SqlCommand(sql, con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            scl = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
            return scl;

        }

        public int ExecuteScl(String sql)
        {
            cmd = new SqlCommand(sql, con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cnt = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            return cnt;

        }
        public DataSet fillds(string sql)
        {
            adp = new SqlDataAdapter(sql, con);
            ds = new DataSet();
            adp.Fill(ds);
            return ds;

        }


        public DataTable getMethod(string sql)
        {
            adp = new SqlDataAdapter(sql, con);
            ds = new DataSet();
            adp.Fill(ds);
            DataTable dt = ds.Tables[0];
            return dt;  
        }



        public bool CheckUIDExistsOrNot(string UIDNumber)
        {
            bool ISExists = true;
            string sql = "select * from AllUserUIDNumber where UIDNumber = '" + UIDNumber + "'";
            adp = new SqlDataAdapter(sql, con);
            ds = new DataSet();
            adp.Fill(ds);
            DataTable dt = ds.Tables[0];

            if (dt.Rows.Count > 0)
            {
                ISExists = true;
            }
            else
            {
                ISExists = false;
            }
            return ISExists;

        }



        public bool CheckUserAppointmentrequestExistsOrNot(string UserID, string AppointmentDate)
        {
            bool ISExists = true;
            string sql = "select * from UserAppointmentRequest where PatientID = '" + UserID + "' AND AppointmentDate = '"+ AppointmentDate + "'";
            adp = new SqlDataAdapter(sql, con);
            ds = new DataSet();
            adp.Fill(ds);
            DataTable dt = ds.Tables[0];

            if (dt.Rows.Count > 0)
            {
                ISExists = true;
            }
            else
            {
                ISExists = false;
            }
            return ISExists;

        }

           

        public static string Pass, FromEmailid, HostAdd;
        public static void Email_Without_AttachmentForRegistration(String ToEmail, String Subj, string Message)
        {
            try
            {
                //Reading sender Email credential from web.config file
                HostAdd = ConfigurationManager.AppSettings["Host"].ToString();
                FromEmailid = ConfigurationManager.AppSettings["FromMail"].ToString();
                Pass = ConfigurationManager.AppSettings["Password"].ToString();

                //creating the object of MailMessage
                MailMessage mailMessage = new MailMessage();

                mailMessage.From = new MailAddress(FromEmailid); //From Email Id
                mailMessage.Subject = "USER ID AND PASSWORD FROM HEALTH CARE AND MONITORING SYSTEM"; //Subject of Email
                mailMessage.Body = Message; //body or message of Email
                mailMessage.IsBodyHtml = true;
                mailMessage.To.Add(new MailAddress(ToEmail)); //reciver's Email Id

                SmtpClient smtp = new SmtpClient(); // creating object of smptpclient
                smtp.Host = HostAdd; //host of emailaddress for example smtp.gmail.com etc

                //network and security related credentials

                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential();
                NetworkCred.UserName = mailMessage.From.Address;
                NetworkCred.Password = Pass;
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mailMessage); //sending Email
            }
            catch
            {

            }
        }


        public static void Email_Without_AttachmentForAppointment(String ToEmail, String Subj, string Message)
        {
            try
            {
                //Reading sender Email credential from web.config file
                HostAdd = ConfigurationManager.AppSettings["Host"].ToString();
                FromEmailid = ConfigurationManager.AppSettings["FromMail"].ToString();
                Pass = ConfigurationManager.AppSettings["Password"].ToString();

                //creating the object of MailMessage
                MailMessage mailMessage = new MailMessage();

                mailMessage.From = new MailAddress(FromEmailid); //From Email Id
                mailMessage.Subject = "APPOINTMENT REQUEST APPROVED"; //Subject of Email
                mailMessage.Body = Message; //body or message of Email
                mailMessage.IsBodyHtml = true;
                mailMessage.To.Add(new MailAddress(ToEmail)); //reciver's Email Id

                SmtpClient smtp = new SmtpClient(); // creating object of smptpclient
                smtp.Host = HostAdd; //host of emailaddress for example smtp.gmail.com etc

                //network and security related credentials

                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential();
                NetworkCred.UserName = mailMessage.From.Address;
                NetworkCred.Password = Pass;
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mailMessage); //sending Email
            }
            catch
            {

            }
        }
    }
}
