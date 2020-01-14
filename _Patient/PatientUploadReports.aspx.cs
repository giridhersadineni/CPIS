using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net.Mail;



public partial class _patient_PatientUploadReports : System.Web.UI.Page
{
  
    protected void Submitbutton_Click(object sender, EventArgs e)
    {
        
        try
            {

                string rdate = txtreportdate.Text;
                string filename = System.IO.Path.GetFileName(FileUploadReport.FileName);
                string cstr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\cpisdb.mdf;Integrated Security=True;User Instance=True";
                SqlConnection con = new SqlConnection(cstr);
                string query = "insert into medicalreports values (@rid,@uhid,@rdate,@doctorname,@specialization,@reportfilename)";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlCommand max = new SqlCommand("select count(rid) from medicalreports", con);
                con.Open();
                int rid = int.Parse(max.ExecuteScalar().ToString());
                rid++;
                cmd.Parameters.AddWithValue("@rid", rid);
                cmd.Parameters.AddWithValue("@uhid", Session["uhid"].ToString());
                cmd.Parameters.AddWithValue("@rdate", rdate);
                cmd.Parameters.AddWithValue("@doctorname", txtdoctorname.Text);
                cmd.Parameters.AddWithValue("@specialization", ddldoctorspecialization.Text);
                cmd.Parameters.AddWithValue("@reportfilename", filename);
                cmd.ExecuteNonQuery();
                FileUploadReport.SaveAs(Server.MapPath("~/App_Data/reports/") + filename);
                con.Close();
                Label1.Text = "Report Uploaded Successfully";

            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }



        }


   
    protected void Page_Load(object sender, EventArgs e)
    {
              txtreportdate.Text = System.DateTime.Today.ToShortDateString();
        
    }
    
}