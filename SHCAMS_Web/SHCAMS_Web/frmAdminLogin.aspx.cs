using System;
using System.Data;
using System.Web.UI;


namespace SHCAMS_Web
{
    public partial class frmadminlogin : System.Web.UI.Page
    {

        SHCAMS _SHCAMS = new SHCAMS();
        string sql;
        DataSet ds = new DataSet();
        protected string toEmail, EmailSubj, EmailMsg;

        private void Clear()
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
            txtUserName.Focus();
        }

          
        private DataTable getLogInData(string sql)
        {
            ds = new DataSet();
            ds = _SHCAMS.fillds(sql);
            DataTable dt = ds.Tables[0];
            return dt;
        }

        public void LogInFailed()
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrect UserName Or Password')", true);
            Clear();
        }

        protected void Page_Load(object sender, System.EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {    
            if (txtUserName.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter UserName')", true);
                return;
            }
            if (txtPassword.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Password')", true);
                return;
            }

            if (ddlSelectUser.Text == "Admin")
            {
                if (txtUserName.Text == "admin" && txtPassword.Text == "admin")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully Login...!')", true);
                    Response.Redirect("~/OrganizationRequestList.aspx");
                }
                else
                {
                    LogInFailed();
                }
            }

            else if (ddlSelectUser.Text == "Organization")
            {
                sql = "select * from OrganizationRegistration where OrganizationManagerUIDNumber = '" + txtUserName.Text + "' AND Status = 'APPROVED'";
                DataTable dt = getLogInData(sql);

                if (dt.Rows.Count > 0)
                {
                    if (txtUserName.Text == dt.Rows[0]["OrganizationManagerUIDNumber"].ToString() && txtPassword.Text == dt.Rows[0]["OrganizationManagerPassword"].ToString())
                    {
                        SHCAMS.OrganizationID = dt.Rows[0]["ID"].ToString();
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully Login...!')", true);
                        Clear();
                        Response.Redirect("~/OrganizationDoctorRegistration.aspx");
                    }
                    else
                    {
                        LogInFailed();
                    }
                }

                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Not Available...!')", true);
                }

            }

            else if (ddlSelectUser.Text == "Department")
            {
                sql = "select * from DoctorRegistration where DoctorUIDNumber = '" + txtUserName.Text + "'";
                DataTable dt = getLogInData(sql);

                if (dt.Rows.Count > 0)
                {
                    if (txtUserName.Text == dt.Rows[0]["DoctorUIDNumber"].ToString() && txtPassword.Text == dt.Rows[0]["DoctorPassword"].ToString())
                    {
                        SHCAMS.OrganizationID = dt.Rows[0]["OrganizationID"].ToString();
                        SHCAMS.DoctorID = dt.Rows[0]["ID"].ToString();
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully Login...!')", true);
                        Clear();
                        Response.Redirect("~/AppointmentList.aspx");
                    }
                    else
                    {
                        LogInFailed();
                    }
                }

                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Not Available...!')", true);
                }

            }


            else if (ddlSelectUser.Text == "User")
            {
                sql = "select * from PatientRegistration where PatientUIDNumber = '" + txtUserName.Text + "'";
                DataTable dt = getLogInData(sql);

                if (dt.Rows.Count > 0)
                {
                    if (txtUserName.Text == dt.Rows[0]["PatientUIDNumber"].ToString() && txtPassword.Text == dt.Rows[0]["PatientPassword"].ToString())
                    {
                        SHCAMS.PatientID = dt.Rows[0]["ID"].ToString();
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully Login...!')", true);
                        Clear();
                        Response.Redirect("~/UserAppointmentRequest.aspx");
                    }
                    else
                    {
                        LogInFailed();
                    }
                }

                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Not Available...!')", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Selection...!')", true);
                Clear();
            }
        }
    }
}