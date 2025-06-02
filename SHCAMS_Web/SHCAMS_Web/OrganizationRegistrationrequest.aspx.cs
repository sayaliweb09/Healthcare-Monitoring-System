using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class OrganizationRegistrationrequest : System.Web.UI.Page
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

        private void txtOrganizationName_OnKeyPress(string ctrlName, string args)
        {
          
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            if (txtOrganizationName.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Organization Name...!')", true);
                return;
            }

            if (ddlOrganizationType.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select Organization Type...!')", true);
                return;
            }
            if (txtOrganizationAddress.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Organization Address...!')", true);
                return;
            }
            if (txtOrganizationHelpLineNumber.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter OrganizationHelpLineNumber...!')", true);
                return;
            }
            if (txtOrganizationRegistraionNumber.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Organization Registraion Number...!')", true);
                return;
            }
            if (txtOrganizationManagerEmailID.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Organization Email ID Number...!')", true);
                return;
            }
            if (txtOrganizationManagerUIDNumber.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Organization Manager UID Number...!')", true);
                return;
            }
            if (txtOrganizationManagerPassword.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Organization Manager Password...!')", true);
                return;
            }

            bool ISExists = _SHCAMS.CheckUIDExistsOrNot(txtOrganizationManagerUIDNumber.Text.Trim());
            if (ISExists)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Already Exists!')", true);
                return;
            }
            else
            {
                sql = "INSERT INTO OrganizationRegistration (OrganizationName,OrganizationType,OrganizationAddress,OrganizationHelpLineNumber,OrganizationRegistraionNumber,OrganizationManagerEmailID,OrganizationManagerUIDNumber,OrganizationManagerPassword,Status)values('" + txtOrganizationName.Text + "','" + ddlOrganizationType.Text + "','" + txtOrganizationAddress.Text + "','" + txtOrganizationHelpLineNumber.Text + "','" + txtOrganizationRegistraionNumber.Text + "','" + txtOrganizationManagerEmailID.Text + "','" + txtOrganizationManagerUIDNumber.Text + "','" + txtOrganizationManagerPassword.Text + "','NONE')";
                _SHCAMS.Execute(sql);
                sql = "INSERT INTO AllUserUIDNumber (UIDNumber)values('" + txtOrganizationManagerUIDNumber.Text + "')";
                _SHCAMS.Execute(sql);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registered Successfully!')", true);



                if (txtOrganizationManagerEmailID.Text != "")
                {
                    toEmail = txtOrganizationManagerEmailID.Text;
                    EmailSubj = "";
                    EmailMsg = "USER ID : " + txtOrganizationManagerUIDNumber.Text + "\nPASSWORD : " + txtOrganizationManagerPassword.Text;
                    SHCAMS.Email_Without_AttachmentForRegistration(toEmail, EmailSubj, EmailMsg);
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('USERID AND PASSWORD SEND TO YOUR EMAIL ADDRESS...!')", true);
                }

                Clear();
                Response.Redirect("~/Default.aspx");
            }
        }

        private void Clear()
        {
            txtOrganizationName.Text = "";
            ddlOrganizationType.Text = "";
            txtOrganizationAddress.Text = "";
            txtOrganizationHelpLineNumber.Text = "";
            txtOrganizationRegistraionNumber.Text = "";
            txtOrganizationManagerUIDNumber.Text = "";
            txtOrganizationManagerPassword.Text = "";
            txtOrganizationManagerEmailID.Text = "";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

    
    }
}