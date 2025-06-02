using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class OrganizationRequest : System.Web.UI.Page
    {
        SHCAMS _SHCAMS = new SHCAMS();
        string sql;   
        DataSet ds;
        string sStatus = "";

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
            sql = "SELECT * from OrganizationRegistration";
            ds = new DataSet();
            ds = _SHCAMS.fillds(sql);
            dgvOrganizationRequestList.DataSource = ds.Tables[0];
            dgvOrganizationRequestList.DataBind();
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            sStatus = "APPROVED";
            ApprovedOrDecline(sStatus);
        }

        private void ApprovedOrDecline(string sStatus)
        {
            foreach (GridViewRow oItemLeft in dgvOrganizationRequestList.Rows)
            {
                if (((CheckBox)oItemLeft.FindControl("chk")).Checked)
                {
                    sql = "Update OrganizationRegistration set Status = '"+ sStatus + "'  where ID = '" + oItemLeft.Cells[1].Text + "'";
                    _SHCAMS.Execute(sql);
                }
            }

            FillData();
        }

        protected void btnDecline_Click(object sender, EventArgs e)
        {
            sStatus = "DECLINE";
            ApprovedOrDecline(sStatus);
        }
    }
}