using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Excel = Microsoft.Office.Interop.Excel;

namespace SHCAMS_Web
{
    public partial class ViewPatientreports : System.Web.UI.Page
    {

        SHCAMS _SHCAMS = new SHCAMS();
        string sql;
        DataSet ds;

        DataTable dtAppointmentDetails = new DataTable();
        DataTable dtBloodTestDetails = new DataTable();
        DataTable dtUrineTestDetails = new DataTable();

        private void FillData()
        {
            sql = "SELECT PA.AppointmentDateTime, PA.TestTypeID, DR.DoctorName, [OR].OrganizationName, PA.ID FROM dbo.PatientAppointment AS PA INNER JOIN dbo.DoctorRegistration AS DR ON PA.DoctorID = DR.ID INNER JOIN dbo.OrganizationRegistration AS [OR] ON DR.OrganizationID = [OR].ID WHERE (PA.PatientID = '" + SHCAMS.PatientID + "')";
            ds = new DataSet();
            ds = _SHCAMS.fillds(sql);
            dgvPatientAppointmentReportList.DataSource = ds.Tables[0];
            dgvPatientAppointmentReportList.DataBind();
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

        public void CreateReportForBloodTest()
        {
            Excel.Application excelApplication = null;
            Excel.Workbook workbookTemplate = null;
            Excel.Workbook workbookReport = null;
            //string templatePath = Directory.GetCurrentDirectory() + "\\GSTR Template\\GSTR_1_Format_Excel.xlsx";
            string templatePath = Server.MapPath("\\TestTemplate\\BloodTest.xlsx");

            try
            {
                excelApplication = new Excel.Application();
                excelApplication.SheetsInNewWorkbook = 1;
                excelApplication.DisplayAlerts = false;

                // Open the template
                workbookTemplate = excelApplication.Workbooks.Open(templatePath);

                // Create working report
                workbookReport = excelApplication.Workbooks.Add(Type.Missing);

                // Create a sheet for Netherlands country
                this.CreateSheetForBloodTest(workbookTemplate, workbookReport);



                // Close the template
                workbookTemplate.Close();

                // Set the active sheet
                ((Excel.Worksheet)excelApplication.ActiveWorkbook.Sheets[1]).Select(Type.Missing);

                // Show the report
                excelApplication.Visible = true;
            }
            catch (Exception ex)
            {
                string errormesg = ex.Message.ToString();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", errormesg, true);
            }
            finally
            {
                excelApplication = null;
                workbookTemplate = null;
                workbookReport = null;

                ReleaseComObject(workbookReport);
                ReleaseComObject(workbookTemplate);
                ReleaseComObject(excelApplication);
            }
        }


        private void CreateSheetForBloodTest(Excel.Workbook workbookTemplate, Excel.Workbook workbookReport)
        {

            workbookTemplate.Sheets[1].Copy(workbookReport.Worksheets[1]);

            this.SetCellValueForBloodTest(workbookReport.Worksheets[1], "Hemoglobin", dtBloodTestDetails.Rows[0]["Hemoglobin"].ToString());
            this.SetCellValueForBloodTest(workbookReport.Worksheets[1], "RedBloodCellCount", dtBloodTestDetails.Rows[0]["RedBloodCellCount"].ToString());
            this.SetCellValueForBloodTest(workbookReport.Worksheets[1], "WBCCount", dtBloodTestDetails.Rows[0]["WBCCount"].ToString());
            this.SetCellValueForBloodTest(workbookReport.Worksheets[1], "PlatelteCount", dtBloodTestDetails.Rows[0]["PlatelteCount"].ToString());
            this.SetCellValueForBloodTest(workbookReport.Worksheets[1], "Lymphocytes", dtBloodTestDetails.Rows[0]["Lymphocytes"].ToString());
            this.SetCellValueForBloodTest(workbookReport.Worksheets[1], "Neutrophils", dtBloodTestDetails.Rows[0]["Neutrophils"].ToString());
            this.SetCellValueForBloodTest(workbookReport.Worksheets[1], "Monocyles", dtBloodTestDetails.Rows[0]["Monocyles"].ToString());
            this.SetCellValueForBloodTest(workbookReport.Worksheets[1], "Eosinophils", dtBloodTestDetails.Rows[0]["Eosinophils"].ToString());
            this.SetCellValueForBloodTest(workbookReport.Worksheets[1], "PackedCellVolume", dtBloodTestDetails.Rows[0]["PackedCellVolume"].ToString());
        }

        private void SetCellValueForBloodTest(Excel.Worksheet workSheet, string cellName, DataColumn dataColumn, DataRow dataRow)
        {
            this.SetCellValueForBloodTest(workSheet, cellName, Convert.ToString(dataRow[dataColumn.ColumnName]));
        }

        private void SetCellValueForBloodTest<T>(Excel.Worksheet workSheet, string cellName, T value)
        {
            Excel.Range cell = workSheet.Evaluate(cellName) as Excel.Range;
            if (cell != null) cell.Value = value;
        }



        public void CreateReportForUrineTest()
        {
            Excel.Application excelApplication = null;
            Excel.Workbook workbookTemplate = null;
            Excel.Workbook workbookReport = null;
            string templatePath = Server.MapPath("~/TestTemplate\\UrineTest.xlsx");

            try
            {
                excelApplication = new Excel.Application();
                excelApplication.SheetsInNewWorkbook = 1;
                excelApplication.DisplayAlerts = false;

                // Open the template
                workbookTemplate = excelApplication.Workbooks.Open(templatePath);

                // Create working report
                workbookReport = excelApplication.Workbooks.Add(Type.Missing);

                // Create a sheet for Netherlands country
                this.CreateSheetForUrineTest(workbookTemplate, workbookReport);



                // Close the template
                workbookTemplate.Close();

                // Set the active sheet
                ((Excel.Worksheet)excelApplication.ActiveWorkbook.Sheets[1]).Select(Type.Missing);

                // Show the report
                excelApplication.Visible = true;
            }
            catch (Exception ex)
            {
                string errormesg = ex.Message.ToString();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", errormesg, true);
            }
            finally
            {
                excelApplication = null;
                workbookTemplate = null;
                workbookReport = null;

                ReleaseComObject(workbookReport);
                ReleaseComObject(workbookTemplate);
                ReleaseComObject(excelApplication);
            }
        }


        private void CreateSheetForUrineTest(Excel.Workbook workbookTemplate, Excel.Workbook workbookReport)
        {

            workbookTemplate.Sheets[1].Copy(workbookReport.Worksheets[1]);

            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "Volum", dtUrineTestDetails.Rows[0]["Volume"].ToString());
            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "Color", dtUrineTestDetails.Rows[0]["Color"].ToString());
            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "Appearance", dtUrineTestDetails.Rows[0]["Appearance"].ToString());
            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "Bilirubin", dtUrineTestDetails.Rows[0]["Bilirubin"].ToString());
            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "Ketones", dtUrineTestDetails.Rows[0]["Ketones"].ToString());
            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "Blood", dtUrineTestDetails.Rows[0]["Blood"].ToString());
            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "PH", dtUrineTestDetails.Rows[0]["PH"].ToString());
            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "Protein", dtUrineTestDetails.Rows[0]["Protein"].ToString());
            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "WBC", dtUrineTestDetails.Rows[0]["WBC"].ToString());
            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "RBC", dtUrineTestDetails.Rows[0]["RBC"].ToString());
            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "Bacteria", dtUrineTestDetails.Rows[0]["Bacteria"].ToString());
            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "EPICell", dtUrineTestDetails.Rows[0]["EPICell"].ToString());
            this.SetCellValueForUrineTest(workbookReport.Worksheets[1], "Mucus", dtUrineTestDetails.Rows[0]["Mucus"].ToString());

        }

        private void SetCellValueForUrineTest(Excel.Worksheet workSheet, string cellName, DataColumn dataColumn, DataRow dataRow)
        {
            this.SetCellValueForUrineTest(workSheet, cellName, Convert.ToString(dataRow[dataColumn.ColumnName]));
        }

        private void SetCellValueForUrineTest<T>(Excel.Worksheet workSheet, string cellName, T value)
        {
            Excel.Range cell = workSheet.Evaluate(cellName) as Excel.Range;
            if (cell != null) cell.Value = value;
        }

        public void ReleaseComObject(object reference)
        {
            try
            {
                while (Marshal.ReleaseComObject(reference) <= 0)
                {
                }
            }
            catch
            {
            }
        }

        protected void btnViewReport_Click(object sender, EventArgs e)
        {
            SHCAMS.UserAppointmentID = "";
            foreach (GridViewRow oItemLeft in dgvPatientAppointmentReportList.Rows)
            {
                if (((CheckBox)oItemLeft.FindControl("chk")).Checked)
                {
                    SHCAMS.UserAppointmentID = oItemLeft.Cells[1].Text;


                    string sql = "";
                    sql = "SELECT PA.ID, DR.DoctorName, DR.DoctorAddress, DR.DoctorContactNumber, DR.DoctorEducationDetails, DR.DoctorUIDNumber, DR.DoctorEmailID, DR.DoctorDesignation, [OR].OrganizationName, [OR].OrganizationType, [OR].OrganizationAddress, [OR].OrganizationHelpLineNumber, [OR].OrganizationRegistraionNumber, PR.PatientName, PR.PatientContactNumber, PR.PatientAddress, PR.PatientDOB, PR.PatientGender, PR.PatientEmailID, dbo.DesignationMaster.DesignationType FROM dbo.PatientAppointment AS PA INNER JOIN dbo.DoctorRegistration AS DR ON PA.DoctorID = DR.ID INNER JOIN dbo.OrganizationRegistration AS [OR] ON DR.OrganizationID = [OR].ID INNER JOIN dbo.PatientRegistration AS PR ON PA.PatientID = PR.ID INNER JOIN dbo.DesignationMaster ON DR.DoctorDesignation = dbo.DesignationMaster.ID WHERE (PA.ID = '" + SHCAMS.UserAppointmentID + "')";
                    dtAppointmentDetails = _SHCAMS.getMethod(sql);
                    if (dtAppointmentDetails.Rows.Count > 0)
                    {
                        if (dtAppointmentDetails.Rows[0]["DoctorDesignation"].ToString() == "13")
                        {
                            string sql1 = "SELECT * from  BloodTest WHERE (AppointmentID = '" + SHCAMS.UserAppointmentID + "')";
                            dtBloodTestDetails = _SHCAMS.getMethod(sql1);
                            if (dtBloodTestDetails.Rows.Count > 0)
                            {
                                CreateReportForBloodTest();
                            }

                            string sql2 = "SELECT * from  UrineTest WHERE (AppointmentID = '" + SHCAMS.UserAppointmentID + "')";
                            dtUrineTestDetails = _SHCAMS.getMethod(sql2);
                            if (dtUrineTestDetails.Rows.Count > 0)
                            {
                                CreateReportForUrineTest();
                            }
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Not Found')", true);
                    }

                }

            }
        }
    }
}