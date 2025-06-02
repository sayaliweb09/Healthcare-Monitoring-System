using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class OrganizationDoctorRegistrationList : System.Web.UI.Page
    {
        SHCAMS _SHCAMS = new SHCAMS();
        string sql;
        DataSet ds;
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
            sql = "SELECT * from DoctorRegistration where OrganizationID = '"+ SHCAMS.OrganizationID + "'";
            ds = new DataSet();
            ds = _SHCAMS.fillds(sql);
            dgvOrganizationDoctorRegistrationList.DataSource = ds.Tables[0];
            dgvOrganizationDoctorRegistrationList.DataBind();
        }
    }
}