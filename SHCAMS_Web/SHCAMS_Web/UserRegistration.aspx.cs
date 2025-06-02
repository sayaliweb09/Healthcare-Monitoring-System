using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        SHCAMS _SHCAMS = new SHCAMS();
        DataSet ds = new DataSet();
        string sql;
        protected string toEmail, EmailSubj, EmailMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true)
            {
                Clear();
            }
            else
            {

            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtPatientName.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Name...!')", true);
                return;
            }

            if (txtPatientContactNumber.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Contact Number...!')", true);
                return;
            }
            if (txtPatientAddress.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Address...!')", true);
                return;
            }
            if (txtPatientDOB.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter DOB...!')", true);
                return;
            }
            if (txtPatientEmailID.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Email ID...!')", true);
                return;
            }
            if (txtPatientUIDNumber.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter UID Number...!')", true);
                return;
            }
            if (txtPatientPassword.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter  Password...!')", true);
                return;
            }

            string sPatientGender = "";
            if (rbtMale.Checked == true)
            {
                sPatientGender = "Male";
            }
            else
            {
                sPatientGender = "Female";
            }

            bool ISExists = _SHCAMS.CheckUIDExistsOrNot(txtPatientUIDNumber.Text.Trim());
            if (ISExists)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Already Exists!')", true);
                return;
            }
            else
            {
                sql = "INSERT INTO PatientRegistration (PatientName,PatientContactNumber,PatientAddress,PatientDOB,PatientGender,PatientEmailID,PatientUIDNumber,PatientPassword)values('" + txtPatientName.Text + "','" + txtPatientContactNumber.Text + "','" + txtPatientAddress.Text + "','" + txtPatientDOB.Text + "','" + sPatientGender + "','" + txtPatientEmailID.Text + "','" + txtPatientUIDNumber.Text + "','" + txtPatientPassword.Text + "')";
                _SHCAMS.Execute(sql);
                sql = "INSERT INTO AllUserUIDNumber (UIDNumber)values('" + txtPatientUIDNumber.Text + "')";
                _SHCAMS.Execute(sql);

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registered Successfully!')", true);

                if (txtPatientUIDNumber.Text != "")
                {
                    toEmail = txtPatientEmailID.Text;
                    EmailSubj = "";
                    EmailMsg = "USER ID : " + txtPatientUIDNumber.Text + "\nPASSWORD : " + txtPatientPassword.Text;
                    SHCAMS.Email_Without_AttachmentForRegistration(toEmail, EmailSubj, EmailMsg);
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('USERID AND PASSWORD SEND TO YOUR EMAIL ADDRESS...!')", true);
                }


                Clear();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Clear();
        }



        private void Clear()
        {
            txtPatientName.Text = "";
            txtPatientContactNumber.Text = "";
            txtPatientAddress.Text = "";
            txtPatientDOB.Text = "";
            txtPatientUIDNumber.Text = "";
            txtPatientPassword.Text = "";
            txtPatientEmailID.Text = "";
        }

    }
}