using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class PatientCheckAppointmentStatus : System.Web.UI.Page
    {
        SHCAMS _SHCAMS = new SHCAMS();
        DataSet ds = new DataSet();
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack != true)
            {
                DataTable dt = new DataTable();
                string sql = "SELECT * FROM dbo.UserAppointmentRequest WHERE (PatientID = '" + SHCAMS.PatientID + "') AND(AppointmentAoD = 'APPROVED') AND(AppointmentStatus = 'NONE') ORDER BY CreateDate DESC";   
                ds = _SHCAMS.fillds(sql);
                dt = ds.Tables[0];
                if (dt.Rows.Count > 0)
                {
                    lblAppointmentNumber.Text = "";
                    lblAppointmentStatus.Text = "";
                    lblAppointmentStatus.Text = dt.Rows[0]["AppointmentAoD"].ToString();
                    lblAppointmentNumber.Text = "APPOINTMENT NUMBER IS " + dt.Rows[0]["AppointmentNumber"].ToString();
                }
                else
                {
                    lblAppointmentNumber.Text = "";
                    lblAppointmentStatus.Text = "";
                    lblAppointmentStatus.Text = "Today Request Not Available";
                }
            }
            else
            {

            }
        }
    }
}