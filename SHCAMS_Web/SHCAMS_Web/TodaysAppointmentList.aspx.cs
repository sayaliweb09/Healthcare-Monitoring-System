using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class TodaysAppointmentList : System.Web.UI.Page
    {

        SHCAMS _SHCAMS = new SHCAMS();
        string sql;
        DataSet ds;
        string sStatus = "";

        private void FillData()
        {
            sql = "SELECT UAR.ID, UAR.AppointmentDate, UAR.AppointmentNumber, PR.PatientName,PR.PatientContactNumber, PR.PatientAddress, DR.DoctorName, [OR].OrganizationName, UAR.DoctorID FROM dbo.UserAppointmentRequest AS UAR INNER JOIN dbo.OrganizationRegistration AS [OR] ON UAR.OrganizationID = [OR].ID INNER JOIN dbo.DoctorRegistration AS DR ON UAR.DoctorID = DR.ID INNER JOIN dbo.PatientRegistration AS PR ON UAR.PatientID = PR.ID WHERE (UAR.DoctorID = '" + SHCAMS.DoctorID + "') AND (UAR.AppointmentDate = '" + DateTime.Now.ToString("dd/MM/yyyy") + "') AND (UAR.AppointmentAoD = 'APPROVED') AND (UAR.AppointmentStatus = 'NONE')";
            ds = new DataSet();
            ds = _SHCAMS.fillds(sql);
            dgvPatientAppointmentRequestList.DataSource = ds.Tables[0];
            dgvPatientAppointmentRequestList.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true)
            {
                FillData();
            }
            else
            {

            }
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow oItemLeft in dgvPatientAppointmentRequestList.Rows)
            {
                if (((CheckBox)oItemLeft.FindControl("chk")).Checked)
                {
                    SHCAMS.UserAppointmentRequestID = "";
                    SHCAMS.DoctorID = "";
                    SHCAMS.PatientID = "";

                    sql = "SELECT ID,DoctorID,PatientID from UserAppointmentRequest where ID = '" + oItemLeft.Cells[1].Text + "'";
                    ds = new DataSet();
                    ds = _SHCAMS.fillds(sql);
                    DataTable dtUserAppointmentRequestDetails = ds.Tables[0];

                    if (dtUserAppointmentRequestDetails.Rows.Count > 0)
                    {
                        SHCAMS.UserAppointmentRequestID = dtUserAppointmentRequestDetails.Rows[0]["ID"].ToString();
                        SHCAMS.DoctorID = dtUserAppointmentRequestDetails.Rows[0]["DoctorID"].ToString();
                        SHCAMS.PatientID = dtUserAppointmentRequestDetails.Rows[0]["PatientID"].ToString();


                        sql = "SELECT * from DoctorRegistration where ID = '" + SHCAMS.DoctorID + "'";
                        ds = new DataSet();
                        ds = _SHCAMS.fillds(sql);
                        DataTable dtDoctorRegistrationDetails = ds.Tables[0];

                        if (dtDoctorRegistrationDetails.Rows.Count > 0)
                        {
                            if (dtDoctorRegistrationDetails.Rows[0]["DoctorDesignation"].ToString() == "13")
                            {
                                Response.Redirect("~/Appointment.aspx");
                            }
                            else
                            {
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Working...!')", true);
                                return;
                            }

                        }
                           
                        
                    }
                    else
                    {
                        SHCAMS.UserAppointmentRequestID = "";
                        SHCAMS.DoctorID = "";
                        SHCAMS.PatientID = "";
                    }
                }
            }
        }

        protected void btnShowPatientReports_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow oItemLeft in dgvPatientAppointmentRequestList.Rows)
            {
                if (((CheckBox)oItemLeft.FindControl("chk")).Checked)
                {
                    SHCAMS.UserAppointmentRequestID = "";
                    SHCAMS.DoctorID = "";
                    SHCAMS.PatientID = "";

                    sql = "SELECT ID,DoctorID,PatientID from UserAppointmentRequest where ID = '" + oItemLeft.Cells[1].Text + "'";
                    ds = new DataSet();
                    ds = _SHCAMS.fillds(sql);
                    DataTable dtUserAppointmentRequestDetails = ds.Tables[0];

                    if (dtUserAppointmentRequestDetails.Rows.Count > 0)
                    {
                        SHCAMS.UserAppointmentRequestID = dtUserAppointmentRequestDetails.Rows[0]["ID"].ToString();
                        SHCAMS.DoctorID = dtUserAppointmentRequestDetails.Rows[0]["DoctorID"].ToString();
                        SHCAMS.PatientID = dtUserAppointmentRequestDetails.Rows[0]["PatientID"].ToString();

                        Response.Redirect("~/ViewPatientreports.aspx");

                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Reports Not Available...!')", true);
                        SHCAMS.UserAppointmentRequestID = "";
                        SHCAMS.DoctorID = "";
                        SHCAMS.PatientID = "";
                    }
                }
            }
        }
    }
}