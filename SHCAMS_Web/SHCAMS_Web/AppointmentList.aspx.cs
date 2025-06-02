using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class AppointmentList : System.Web.UI.Page
    {
        SHCAMS _SHCAMS = new SHCAMS();
        string sql;
        DataSet ds;
        string sStatus = "";
        string sPatientName = ""; string sPatientEmailId = "";
        protected string toEmail, EmailSubj, EmailMsg;
        private void FillData(string AppointmentDate)
        {
            sql = "SELECT UAR.ID, UAR.AppointmentDate, PR.PatientName,PR.PatientContactNumber, PR.PatientAddress, PR.PatientEmailID, DR.DoctorName, [OR].OrganizationName, UAR.DoctorID FROM dbo.UserAppointmentRequest AS UAR INNER JOIN dbo.OrganizationRegistration AS [OR] ON UAR.OrganizationID = [OR].ID INNER JOIN dbo.DoctorRegistration AS DR ON UAR.DoctorID = DR.ID INNER JOIN dbo.PatientRegistration AS PR ON UAR.PatientID = PR.ID WHERE (UAR.DoctorID = '" + SHCAMS.DoctorID + "') AND (UAR.AppointmentDate = '" + AppointmentDate + "') AND (UAR.AppointmentAoD = 'NONE') AND (UAR.AppointmentStatus = 'NONE')";
            ds = new DataSet();
            ds = _SHCAMS.fillds(sql);
            dgvPatientAppointmentRequestList.DataSource = ds.Tables[0];
            dgvPatientAppointmentRequestList.DataBind();


            string sqlq = "Select * from DoctorRegistration where ID = '" + SHCAMS.DoctorID + "'";
            ds = new DataSet();
            ds = _SHCAMS.fillds(sqlq);
            DataTable DoctorDetails = ds.Tables[0];

            if (DoctorDetails.Rows.Count > 0)
            {
                SHCAMS.sDoctorName = DoctorDetails.Rows[0]["DoctorName"].ToString();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true)
            {
                txtDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
                string AppointmentDate = Convert.ToDateTime(txtDate.Text).ToString("dd/MM/yyyy");
                FillData(DateTime.Now.ToString("dd/MM/yyyy"));
            }
            else
            {

            }
        }


        private void ApprovedOrDecline(string sStatus)
        {
            string AppointmentDate = Convert.ToDateTime(txtDate.Text).ToString("dd/MM/yyyy");
            sql = "SELECT UAR.ID, UAR.AppointmentDate, PR.PatientName,PR.PatientContactNumber, PR.PatientAddress, DR.DoctorName, [OR].OrganizationName, UAR.DoctorID FROM dbo.UserAppointmentRequest AS UAR INNER JOIN dbo.OrganizationRegistration AS [OR] ON UAR.OrganizationID = [OR].ID INNER JOIN dbo.DoctorRegistration AS DR ON UAR.DoctorID = DR.ID INNER JOIN dbo.PatientRegistration AS PR ON UAR.PatientID = PR.ID WHERE (UAR.DoctorID = '" + SHCAMS.DoctorID + "') AND (UAR.AppointmentDate = '" + AppointmentDate + "') AND (UAR.AppointmentAoD = 'APPROVED') AND (UAR.AppointmentStatus = 'NONE')";
            ds = new DataSet();
            ds = _SHCAMS.fillds(sql);
            DataTable AppointmentRequestList = ds.Tables[0];
            int AppointmentNumber = AppointmentRequestList.Rows.Count + 1;

            foreach (GridViewRow oItemLeft in dgvPatientAppointmentRequestList.Rows)
            {
                if (((CheckBox)oItemLeft.FindControl("chk")).Checked)
                {

                    sPatientName = oItemLeft.Cells[2].Text;
                    sPatientEmailId = oItemLeft.Cells[5].Text;
                    sql = "Update UserAppointmentRequest set AppointmentAoD = '" + sStatus + "', AppointmentNumber = '" + AppointmentNumber + "'  where ID = '" + oItemLeft.Cells[1].Text + "'";
                    _SHCAMS.Execute(sql);

                    if (sPatientEmailId != "")
                    {
                        toEmail = sPatientEmailId;
                        EmailSubj = "";
                        EmailMsg = "Hello " + sPatientName + "\n\nYour appointment is confirmed for the " + AppointmentDate + " with " + SHCAMS.sDoctorName;
                        SHCAMS.Email_Without_AttachmentForAppointment(toEmail, EmailSubj, EmailMsg);
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Appointment Confirmed...!')", true);
                    }

                }
            }

            FillData(AppointmentDate);
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            sStatus = "APPROVED";
            ApprovedOrDecline(sStatus);
        }

        protected void btnDecline_Click(object sender, EventArgs e)
        {
            sStatus = "DECLINE";
            ApprovedOrDecline(sStatus);
        }

        protected void btnShowAppointmentRequest_Click(object sender, EventArgs e)
        {
            if (txtDate.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Date First...!')", true);
                return;
            }

            string AppointmentDate = Convert.ToDateTime(txtDate.Text).ToString("dd/MM/yyyy");
            FillData(AppointmentDate);
        }
    }
    //SELECT UAR.ID, UAR.AppointmentDate, PR.PatientName,PR.PatientContactNumber, PR.PatientAddress, DR.DoctorName, [OR].OrganizationName, UAR.DoctorID FROM dbo.UserAppointmentRequest AS UAR INNER JOIN dbo.OrganizationRegistration AS [OR] ON UAR.OrganizationID = [OR].ID INNER JOIN dbo.DoctorRegistration AS DR ON UAR.DoctorID = DR.ID INNER JOIN dbo.PatientRegistration AS PR ON UAR.PatientID = PR.ID WHERE (UAR.DoctorID = 1) AND (UAR.AppointmentDate = '11/02/2018') AND (UAR.AppointmentAoD = 'NONE') AND (UAR.AppointmentStatus = 'NONE')
}