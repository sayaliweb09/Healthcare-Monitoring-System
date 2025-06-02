using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class UserAppointmentRequest : System.Web.UI.Page
    {
        SHCAMS _SHCAMS = new SHCAMS();
        string sql;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true)
            {
                txtAppointmentDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
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

           

        protected void ddlSelectTestName_TextChanged(object sender, EventArgs e)
        {
            //sql = "";
            //DataTable dt = new DataTable();
            //sql = "SELECT * from DoctorRegistration where OrganizationID = '" + ddlSelectOrganization.SelectedValue.Trim() + "' AND DoctorDesignation = '" + ddlSelectTestName.Text.Trim() + "' ";
            //dt = getData(sql);

            //ddlSelectDoctorName.Items.Clear();
            //ddlSelectDoctorName.DataSource = dt;
            //ddlSelectDoctorName.DataTextField = "DoctorName";
            //ddlSelectDoctorName.DataValueField = "ID";
            //ddlSelectDoctorName.DataBind();
        }

        protected void btnSendRequest_Click(object sender, EventArgs e)
        {
            if (lblTodaysDoctorStatus.Visible == true)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Check Doctor Status...!')", true);
                return;
            }

            if (ddlSelectOrganization.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select Organization Name...!')", true);
                return;
            }
            
            if (ddlSelectDoctorName.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select Doctor Name...!')", true);
                return;
            }
            if (txtAppointmentDate.Text == "")
            { 
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Appointment Date...!')", true);
                return;
            }
           

            bool ISExists = _SHCAMS.CheckUserAppointmentrequestExistsOrNot(SHCAMS.PatientID, Convert.ToDateTime(txtAppointmentDate.Text).ToString("dd/MM/yyyy"));
            if (ISExists)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Appointment Request Already Exists!')", true);
                return;
            }
            else
            {
                sql = "INSERT INTO UserAppointmentRequest (OrganizationID,DoctorID,PatientID,AppointmentAoD,AppointmentStatus,AppointmentDate)values('" + ddlSelectOrganization.SelectedValue + "','" + ddlSelectDoctorName.SelectedValue + "','"+ SHCAMS.PatientID + "','NONE','NONE', '" + Convert.ToDateTime(txtAppointmentDate.Text).ToString("dd/MM/yyyy") + "')";
                _SHCAMS.Execute(sql); 
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registered Successfully!')", true);
                Clear();   
            }
        }

        private void Clear()
        {
            txtAppointmentDate.Text = DateTime.Now.ToString("dd/MM/yyyy");
            lblDCoNo.Text = "";
            lblDED.Text = "";
            lblDD.Text = "";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }


        public DataTable filldata(string str)
        {
            ds = new DataSet();
            ds = _SHCAMS.fillds(str);
            DataTable dt = ds.Tables[0];
            return dt;
        }


        protected void ddlSelectDoctorName_SelectedIndexChanged(object sender, EventArgs e)
        {
           
         
        }

        protected void ddlSelectOrganizationTpe_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }

        protected void ddlSelectOrganization_SelectedIndexChanged(object sender, EventArgs e)
        {
            
           
        }

        protected void ddlSelectOrganizationTpe_TextChanged(object sender, EventArgs e)
        {
            sql = "";
            DataTable dt = new DataTable();
            sql = "SELECT * from OrganizationRegistration where Status = 'APPROVED' AND OrganizationType = '" + ddlSelectOrganizationTpe.Text + "'";
            dt = getData(sql);
            ddlSelectOrganization.Items.Clear();
            ddlSelectOrganization.DataSource = dt;
            ddlSelectOrganization.DataTextField = "OrganizationName";
            ddlSelectOrganization.DataValueField = "ID";
            ddlSelectOrganization.DataBind();
            ddlSelectOrganization.Items.Insert(0, new ListItem("--Select Organization Name--", "0"));
        }

        protected void ddlSelectOrganization_TextChanged(object sender, EventArgs e)
        {
            sql = "";
            DataTable dt = new DataTable();
            sql = "SELECT DR.DoctorName, DR.ID FROM dbo.OrganizationRegistration AS[OR] INNER JOIN dbo.DoctorRegistration AS DR ON[OR].ID = DR.OrganizationID WHERE([OR].ID = '" + ddlSelectOrganization.SelectedValue + "')";
            dt = getData(sql);
            ddlSelectDoctorName.Items.Clear();
            ddlSelectDoctorName.DataSource = dt;
            ddlSelectDoctorName.DataTextField = "DoctorName";
            ddlSelectDoctorName.DataValueField = "ID";
            ddlSelectDoctorName.DataBind();
            ddlSelectDoctorName.Items.Insert(0, new ListItem("--Select Doctor Name--", "0"));
        }

        protected void ddlSelectDoctorName_TextChanged(object sender, EventArgs e)
        {
            if (txtAppointmentDate.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Appointment Date...!')", true);
                return;
            }

            string sqlDoctorRegistration = "SELECT DR.DoctorName, DR.DoctorContactNumber, DR.DoctorEducationDetails, DR.DoctorAddress, DR.DoctorUIDNumber, DR.DoctorEmailID, DM.DesignationType FROM dbo.DoctorRegistration AS DR INNER JOIN dbo.DesignationMaster AS DM ON DR.DoctorDesignation = DM.ID WHERE (DR.ID = '" + ddlSelectDoctorName.SelectedValue + "')";
            DataTable dtDoctorRegistration = filldata(sqlDoctorRegistration);

            lblDCoNo.Text = "";
            lblDED.Text = "";
            lblDD.Text = "";

            if (dtDoctorRegistration.Rows.Count > 0)
            {
                lblDCoNo.Text = dtDoctorRegistration.Rows[0]["DoctorContactNumber"].ToString();
                lblDED.Text = dtDoctorRegistration.Rows[0]["DoctorEducationDetails"].ToString();
                lblDD.Text = dtDoctorRegistration.Rows[0]["DesignationType"].ToString();
            }
            else
            {
                lblDCoNo.Text = "";
                lblDED.Text = "";
                lblDD.Text = "";
            }


            string sqlDepartmentTodaysStatus = "select * from DepartmentTodaysStatus where DoctorID = '" + ddlSelectDoctorName.SelectedValue + "' AND StatusManageDate = '" + Convert.ToDateTime(txtAppointmentDate.Text).ToString("dd/MM/yyyy") + "'";
            DataTable dtDepartmentTodaysStatus = filldata(sqlDepartmentTodaysStatus);

            if (dtDepartmentTodaysStatus.Rows.Count > 0)
            {
                lblTodaysDoctorStatus.Visible = true;
                lblTodaysDoctorStatus.Text = dtDepartmentTodaysStatus.Rows[0]["Status"].ToString();     
            }
            else
            {
                //lblTodaysDoctorStatus.Text = "Status Not Maneged For " + Convert.ToDateTime(txtAppointmentDate.Text).ToString("dd/MM/yyyy") + " Date";
                //lblTodaysDoctorStatus.Visible = true;    
              
            }




           
        }
    }
}