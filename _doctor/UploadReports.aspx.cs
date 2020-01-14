using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class _doctor_UploadReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Upload_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\cpisdb.mdf;Integrated Security=True;User Instance=True");
            string query = "insert into textreports values(@uhid,@date,@patientname,@doctorname,@symptoms,@diagnosis,@prescription,@recommendation,@nextvisit,@attachment,@reportid)";
            SqlCommand getmax = new SqlCommand("select count(uhid) from textreports", con);
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int max = (int)getmax.ExecuteScalar();
            max++;
            cmd.Parameters.AddWithValue("@uhid", lbluhid.Text);
            cmd.Parameters.AddWithValue("@date", System.DateTime.Today.ToShortDateString());
            cmd.Parameters.AddWithValue("@patientname", lblptname.Text);
            cmd.Parameters.AddWithValue("@doctorname", tbdoctorname.Text);
            cmd.Parameters.AddWithValue("@symptoms", txtsymptoms.Text);
            cmd.Parameters.AddWithValue("@diagnosis", txtdiagnosis.Text);
            cmd.Parameters.AddWithValue("@prescription", TxtPrescription.Text);
            cmd.Parameters.AddWithValue("@recommendation",txtfurthervisit.Text);
            cmd.Parameters.AddWithValue("@nextvisit", Calendar1.SelectedDate.Date);
            cmd.Parameters.AddWithValue("@attachment", "NIL");
            cmd.Parameters.AddWithValue("@reportid", max);
            
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex) {
            Response.Write(ex.ToString());
        
        }



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\cpisdb.mdf;Integrated Security=True;User Instance=True");
            string query = "select  uhid, firstname, lastname from humans where uhid=@uhid";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@uhid", tbuhid.Text);
            con.Open();
            var dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lblptname.Text = dr["firstname"] + " " + dr["lastname"];
                    lbluhid.Text = dr["uhid"].ToString();
                }
                Upload.Enabled = true;

            }
            con.Close();
        }

        catch (SqlException ex)
        {
            Response.Write(ex.ToString());
        }

    }
}