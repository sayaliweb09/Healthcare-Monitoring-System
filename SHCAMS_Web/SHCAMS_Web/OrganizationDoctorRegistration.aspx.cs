using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class OrganizationDoctorRegistration : System.Web.UI.Page
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

        public DataTable getData(string sql)
        {
            ds = new DataSet();
            DataTable dt = new DataTable();
            ds = _SHCAMS.fillds(sql);
            dt = ds.Tables[0];
            return dt;
        }


        public void fillDoctorDesignation()
        {
            sql = "";
            DataTable dt = new DataTable();
            sql = "SELECT * From DesignationMaster";
            dt = getData(sql);
            ddlDoctorDesignation.Items.Clear();
            ddlDoctorDesignation.DataSource = dt;
            ddlDoctorDesignation.DataTextField = "DesignationType";
            ddlDoctorDesignation.DataValueField = "ID";
            ddlDoctorDesignation.DataBind();
            ddlDoctorDesignation.Items.Insert(0, new ListItem("--Select Doctor Designation--", "0"));
        }


        private void Clear()
        {
            txtDoctorName.Text = "";
            txtDoctorAddress.Text = "";
            txtDoctorContactNumber.Text = "";
            txtDoctorEducationDetails.Text = "";     
            txtDoctorUIDNumber.Text = "";
            txtDoctorPassword.Text = "";
            txtDoctorEmailID.Text = "";
            fillDoctorDesignation();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            if (txtDoctorName.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Organization Name...!')", true);
                return;
            }

            if (txtDoctorAddress.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Doctor Address...!')", true);
                return;
            }
            if (txtDoctorContactNumber.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Doctor Contact Number...!')", true);
                return;
            }
            if (txtDoctorEducationDetails.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Doctor Education Details...!')", true);
                return;
            }
            if (ddlDoctorDesignation.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select Designation...!')", true);
                return;
            }
            if (txtDoctorEmailID.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Email ID...!')", true);
                return;
            }
            if (txtDoctorUIDNumber.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter UID Number...!')", true);
                return;
            }
            if (txtDoctorPassword.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter  Password...!')", true);
                return;
            }

            bool ISExists = _SHCAMS.CheckUIDExistsOrNot(txtDoctorUIDNumber.Text.Trim());
            if (ISExists)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Already Exists!')", true);
                return;
            }
            else
            {
                sql = "INSERT INTO DoctorRegistration (OrganizationID,DoctorName,DoctorAddress,DoctorContactNumber,DoctorEducationDetails,DoctorDesignation,DoctorEmailID,DoctorUIDNumber,DoctorPassword)values('" + SHCAMS.OrganizationID + "','" + txtDoctorName.Text + "','" + txtDoctorAddress.Text + "','" + txtDoctorContactNumber.Text + "','" + txtDoctorEducationDetails.Text + "','" + ddlDoctorDesignation.SelectedValue + "','" + txtDoctorEmailID.Text + "','" + txtDoctorUIDNumber.Text + "','" + txtDoctorPassword.Text + "')";
                _SHCAMS.Execute(sql);
                sql = "INSERT INTO AllUserUIDNumber (UIDNumber)values('" + txtDoctorUIDNumber.Text + "')";
                _SHCAMS.Execute(sql);

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registered Successfully!')", true);

               
                if (txtDoctorEmailID.Text != "")
                {
                    toEmail = txtDoctorEmailID.Text;
                    EmailSubj = "";
                    EmailMsg = "USER ID : " + txtDoctorUIDNumber.Text + "\nPASSWORD : " + txtDoctorPassword.Text;
                    SHCAMS.Email_Without_AttachmentForRegistration(toEmail, EmailSubj, EmailMsg);
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('USERID AND PASSWORD SEND TO YOUR EMAIL ADDRESS...!')", true);
                }
                             
                Clear();
                Response.Redirect("~/OrganizationDoctorRegistrationList.aspx");
            }
        }
    }
}