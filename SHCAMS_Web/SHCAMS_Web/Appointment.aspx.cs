using System;
using System.Data;
using System.Runtime.InteropServices;
using System.Web.UI;

namespace SHCAMS_Web
{
    public partial class Appointment : System.Web.UI.Page
    {
        SHCAMS _SHCAMS = new SHCAMS();
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true)
            {
                rbtBoth.Checked = true;
                tabBloodTest.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;

            }
            else
            {

            }
        }

        protected void tabBloodTest_Click(object sender, EventArgs e)
        {
            if (rbtBoth.Checked == true)
            {
                tabBloodTest.CssClass = "Clicked";
                tabUrineTest.CssClass = "Initial";
                MainView.ActiveViewIndex = 0;
            }
        }

        protected void tabUrineTest_Click(object sender, EventArgs e)
        {
            if (rbtBoth.Checked == true)
            {
                tabBloodTest.CssClass = "Initial";
                tabUrineTest.CssClass = "Clicked";
                MainView.ActiveViewIndex = 1;
            }
        }

        public void ClearBloodTest()
        {
            txtHemoglobin.Text = "";
            txtRedBloodCellCount.Text = "";
            txtWBCCount.Text = "";
            txtPlatelteCount.Text = "";
            txtLymphocytes.Text = "";
            txtNeutrophils.Text = "";
            txtMonocyles.Text = "";
            txtEosinophils.Text = "";
            txtPackedCellVolume.Text = "";
        }

        public void ClearUrineTest()
        {
            txtVolume.Text = "";
            txtColor.Text = "";
            txtAppearance.Text = "";
            txtBilirubin.Text = "";
            txtKetones.Text = "";
            txtBlood.Text = "";
            txtPH.Text = "";
            txtProtein.Text = "";
            txtWBC.Text = "";
            txtRBC.Text = "";
            txtBacteria.Text = "";
            txtEPICell.Text = "";
            txtMucus.Text = "";
        }
        
        protected void btnClearUrineTest_Click(object sender, EventArgs e)
        {
            ClearUrineTest();
        }


        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearBloodTest();
        }
        
        public void CheckEmptyBloodTest()
        {
            //if (txtHemoglobin.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Name...!')", true);
            //    return;
            //}

            //if (txtRedBloodCellCount.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Contact Number...!')", true);
            //    return;
            //}
            //if (txtWBCCount.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Address...!')", true);
            //    return;
            //}
            //if (txtPlatelteCount.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter DOB...!')", true);
            //    return;
            //}
            //if (txtLymphocytes.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Email ID...!')", true);
            //    return;
            //}
            //if (txtNeutrophils.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter UID Number...!')", true);
            //    return;
            //}
            //if (txtMonocyles.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter  Password...!')", true);
            //    return;
            //}

            //if (txtEosinophils.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter UID Number...!')", true);
            //    return;
            //}
            //if (txtPackedCellVolume.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter  Password...!')", true);
            //    return;
            //}

        }

        public void CheckEmptyUrineTest()
        {
            //if (txtVolume.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Name...!')", true);
            //    return;
            //}

            //if (txtColor.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Contact Number...!')", true);
            //    return;
            //}
            //if (txtAppearance.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Address...!')", true);
            //    return;
            //}
            //if (txtBilirubin.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter DOB...!')", true);
            //    return;
            //}
            //if (txtKetones.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Email ID...!')", true);
            //    return;
            //}
            //if (txtBlood.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter UID Number...!')", true);
            //    return;
            //}
            //if (txtPH.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter  Password...!')", true);
            //    return;
            //}

            //if (txtProtein.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter UID Number...!')", true);
            //    return;
            //}
            //if (txtWBC.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter  Password...!')", true);
            //    return;
            //}

            //if (txtRBC.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter UID Number...!')", true);
            //    return;
            //}
            //if (txtBacteria.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter  Password...!')", true);
            //    return;
            //}
            //if (txtEPICell.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter UID Number...!')", true);
            //    return;
            //}
            //if (txtMucus.Text == "")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter  Password...!')", true);
            //    return;
            //}
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (rbtBloodTest.Checked == true)
            {
                CheckEmptyBloodTest();
                string sAppointmentID = "";
                string sql1 = "INSERT INTO PatientAppointment (DoctorID,PatientID,TestTypeID,AppointmentDateTime) Output Inserted.ID values('" + SHCAMS.DoctorID + "','" + SHCAMS.PatientID + "','" + SHCAMS.PathalogyID + "','" + DateTime.Now.ToString("dd/MM/yyyy") + "')";
                sAppointmentID = _SHCAMS.ExecuteScalar(sql1);

                if (sAppointmentID != "0")
                {
                    string sql2 = "INSERT INTO BloodTest (AppointmentID,Hemoglobin,RedBloodCellCount,WBCCount,PlatelteCount,Lymphocytes,Neutrophils,Monocyles,Eosinophils,PackedCellVolume)  Output Inserted.ID values('" + sAppointmentID + "','" + txtHemoglobin.Text + "','" + txtRedBloodCellCount.Text + "','" + txtWBCCount.Text + "','" + txtPlatelteCount.Text + "','" + txtLymphocytes.Text + "','" + txtNeutrophils.Text + "','" + txtMonocyles.Text + "','" + txtEosinophils.Text + "','" + txtPackedCellVolume.Text + "')";
                    sAppointmentID = _SHCAMS.ExecuteScalar(sql2);

                    if (sAppointmentID != "0")
                    {
                        string sql4 = "Update UserAppointmentRequest set AppointmentStatus = 'DONE'  where ID = '" + SHCAMS.UserAppointmentRequestID + "'";
                        _SHCAMS.Execute(sql4);
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Saved Successfully!')", true);
                        ClearBloodTest();
                        ClearUrineTest();
                        Response.Redirect("~/TodaysAppointmentList.aspx");
                    }

                }
            }

            else if (rbtUrineTest.Checked == true)
            {
                CheckEmptyUrineTest();
                string sAppointmentID = "";
                string sql1 = "INSERT INTO PatientAppointment (DoctorID,PatientID,TestTypeID,AppointmentDateTime) Output Inserted.ID values('" + SHCAMS.DoctorID + "','" + SHCAMS.PatientID + "','" + SHCAMS.PathalogyID + "','" + DateTime.Now.ToString("dd/MM/yyyy") + "')";
                sAppointmentID = _SHCAMS.ExecuteScalar(sql1);

                if (sAppointmentID != "0")
                {
                    string sql3 = "INSERT INTO UrineTest (AppointmentID,Volume,Color,Appearance,Bilirubin,Ketones,Blood,PH,Protein,WBC,RBC,Bacteria,EPICell,Mucus)  Output Inserted.ID values('" + sAppointmentID + "','" + txtVolume.Text + "','" + txtColor.Text + "','" + txtAppearance.Text + "','" + txtBilirubin.Text + "','" + txtKetones.Text + "','" + txtBlood.Text + "','" + txtPH.Text + "','" + txtProtein.Text + "','" + txtWBC.Text + "','" + txtRBC.Text + "','" + txtBacteria.Text + "','" + txtEPICell.Text + "', '" + txtMucus.Text + "')";
                    sAppointmentID = _SHCAMS.ExecuteScalar(sql3);

                    if (sAppointmentID != "0")
                    {
                        string sql4 = "Update UserAppointmentRequest set AppointmentStatus = 'DONE'  where ID = '" + SHCAMS.UserAppointmentRequestID + "'";
                        _SHCAMS.Execute(sql4);
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Saved Successfully!')", true);
                        ClearBloodTest();
                        ClearUrineTest();
                        Response.Redirect("~/TodaysAppointmentList.aspx");
                    }

                }
            }
            else
            {
                CheckEmptyBloodTest();
                CheckEmptyUrineTest();
                string sAppointmentID = "";
                string sql1 = "INSERT INTO PatientAppointment (DoctorID,PatientID,TestTypeID,AppointmentDateTime) Output Inserted.ID values('" + SHCAMS.DoctorID + "','" + SHCAMS.PatientID + "','" + SHCAMS.PathalogyID + "','" + DateTime.Now.ToString("dd/MM/yyyy") + "')";
                sAppointmentID = _SHCAMS.ExecuteScalar(sql1);

                if (sAppointmentID != "0")
                {

                    string sql2 = "INSERT INTO BloodTest (AppointmentID,Hemoglobin,RedBloodCellCount,WBCCount,PlatelteCount,Lymphocytes,Neutrophils,Monocyles,Eosinophils,PackedCellVolume)  Output Inserted.ID values('" + sAppointmentID + "','" + txtHemoglobin.Text + "','" + txtRedBloodCellCount.Text + "','" + txtWBCCount.Text + "','" + txtPlatelteCount.Text + "','" + txtLymphocytes.Text + "','" + txtNeutrophils.Text + "','" + txtMonocyles.Text + "','" + txtEosinophils.Text + "','" + txtPackedCellVolume.Text + "')";
                    sAppointmentID = _SHCAMS.ExecuteScalar(sql2);

                    string sql3 = "INSERT INTO UrineTest (AppointmentID,Volume,Color,Appearance,Bilirubin,Ketones,Blood,PH,Protein,WBC,RBC,Bacteria,EPICell,Mucus)  Output Inserted.ID values('" + sAppointmentID + "','" + txtVolume.Text + "','" + txtColor.Text + "','" + txtAppearance.Text + "','" + txtBilirubin.Text + "','" + txtKetones.Text + "','" + txtBlood.Text + "','" + txtPH.Text + "','" + txtProtein.Text + "','" + txtWBC.Text + "','" + txtRBC.Text + "','" + txtBacteria.Text + "','" + txtEPICell.Text + "', '" + txtMucus.Text + "')";
                    sAppointmentID = _SHCAMS.ExecuteScalar(sql3);


                    if (sAppointmentID != "0")
                    {
                        string sql4 = "Update UserAppointmentRequest set AppointmentStatus = 'DONE'  where ID = '" + SHCAMS.UserAppointmentRequestID + "'";
                        _SHCAMS.Execute(sql4);
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Saved Successfully!')", true);
                        ClearBloodTest();
                        ClearUrineTest();
                        Response.Redirect("~/TodaysAppointmentList.aspx");
                    }

                }
            }

        }

   
        protected void btnClearAll_Click(object sender, EventArgs e)
        {
            ClearBloodTest();
            ClearUrineTest();
        }

        protected void rbtBloodTest_CheckedChanged(object sender, EventArgs e)
        {
            tabBloodTest.CssClass = "Clicked";
            tabUrineTest.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }

        protected void rbtUrineTest_CheckedChanged(object sender, EventArgs e)
        {
            tabBloodTest.CssClass = "Initial";
            tabUrineTest.CssClass = "Clicked";
            MainView.ActiveViewIndex = 1;
        }
    }
}