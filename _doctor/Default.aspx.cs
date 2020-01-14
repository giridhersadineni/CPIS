using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class _doctor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["loggedin"] == "Doctor")
        {
            loadPage();
            loadReports();
     
        }
        else
        {
            Response.Redirect("~/default.aspx");
        }
    }

    protected void loadPage()
    {
        try
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\cpisdb.mdf;Integrated Security=True;User Instance=True");
            string query = "select uhid, firstname, lastname, gender, birthday, occupation, emailid, phone, address, town, city, state, pincode,profilepic from humans where uhid=@uhid";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@uhid", Session["uhid"].ToString());
            con.Open();
            var dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lbluhid.Text = dr["uhid"].ToString();
                    lblname.Text = dr["firstname"] + " " + dr["lastname"];
                    lblgender.Text = dr["gender"].ToString();
                    lbladdress.Text = dr["address"] + " " + dr["town"] + " " + dr["city"] + " " + dr["state"] + " " + dr["state"] + " " + dr["pincode"];
                    lbldob.Text = dr["birthday"].ToString();
                    lblemail.Text = dr["emailid"].ToString();
                    lblphone.Text = dr["phone"].ToString();
                    lblsepecialization.Text = dr["occupation"].ToString();
                    profilepic.ImageUrl = "~/profilepics/"+dr["profilepic"].ToString();
                    
                    this.notificationspanel.InnerHtml = DateTime.Today.Date.ToString();
                    
               }

            }
            con.Close();
        }

        catch (SqlException ex)
        {
            Response.Write(ex.ToString());
        }


    }//end of load page
    protected void loadReports() { 
    
    SqlConnection repcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\cpisdb.mdf;Integrated Security=True;User Instance=True");
    string get = "select * from medicalreports";
    SqlCommand getreports = new SqlCommand(get, repcon);
    repcon.Open();
    var reports=getreports.ExecuteReader();
    if (reports.HasRows) {
        while (reports.Read()) { 
        
        
        
        }
    
    }
    
    }
    




//end of class
}