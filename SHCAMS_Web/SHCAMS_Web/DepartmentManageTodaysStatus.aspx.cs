using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class DepartmentManageTodaysStatus : System.Web.UI.Page
    {
        SHCAMS _SHCAMS = new SHCAMS();
        string sql;
        DataSet ds;
        string sStatus = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true)
            {
                txtDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
            else
            {

            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            string sql = "select * from DepartmentTodaysStatus where DoctorID = '" + SHCAMS.DoctorID + "' AND StatusManageDate = '" + Convert.ToDateTime(txtDate.Text).ToString("dd/MM/yyyy") + "'";
            ds = new DataSet();
            ds = _SHCAMS.fillds(sql);                                        
            DataTable dt = ds.Tables[0];

            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Status Already Exists...!')", true);
                return;
            }
            else
            {
                sql = "Insert Into DepartmentTodaysStatus (DoctorID,Status,StatusManageDate)values('" + SHCAMS.DoctorID + "', '" + ddlSelectDepartmentStatus.Text + "', '" + Convert.ToDateTime(txtDate.Text).ToString("dd/MM/yyyy") + "')";
                _SHCAMS.Execute(sql);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Data Saved...!')", true);


            }    
           
        }
    }
}