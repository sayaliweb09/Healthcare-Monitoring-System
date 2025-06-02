using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class OrganizationList : System.Web.UI.Page
    {
        SHCAMS _SHCAMS = new SHCAMS();
        string sql;
        DataSet ds;
        string sSelect = "";
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

        private void FillData()
        { 
            if (ddlSelect.Text == "ALL")
            {
                sql = "SELECT * from OrganizationRegistration";
            }
            else if (ddlSelect.Text == "APPROVED")
            {
                sql = "SELECT * from OrganizationRegistration where Status = 'APPROVED'";
            }
            else if (ddlSelect.Text == "DECLINE")
            {
                sql = "SELECT * from OrganizationRegistration where Status = 'DECLINE'";
            }
            ds = new DataSet();
            ds = _SHCAMS.fillds(sql);
            dgvOrganizationList.DataSource = ds.Tables[0];
            dgvOrganizationList.DataBind();
        }

        protected void ddlSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillData();
        }
       
    }
}