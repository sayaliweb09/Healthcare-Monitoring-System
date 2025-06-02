using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class OrganizationDetails : System.Web.UI.Page
    {

        SHCAMS _SHCAMS = new SHCAMS();
        string sql;
        DataSet ds;
        string sStatus = "";


        private void FillData()
        {
            sql = "SELECT OrganizationName, OrganizationType, OrganizationAddress, OrganizationHelpLineNumber, OrganizationRegistraionNumber FROM dbo.OrganizationRegistration WHERE (Status = 'APPROVED')";
            ds = new DataSet();
            ds = _SHCAMS.fillds(sql);
            dgvOrganizationDetails.DataSource = ds.Tables[0];
            dgvOrganizationDetails.DataBind();
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
    }
}