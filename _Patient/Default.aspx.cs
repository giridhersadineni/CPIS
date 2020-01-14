using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class _Patient_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if ((string)Session["role"] =="Patient")
        {
            loadPage();
            
        }
        else {
            Response.Redirect("~/default.aspx");

        
        }
    }
       
    protected void loadPage(){
        try{ 
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\cpisdb.mdf;Integrated Security=True;User Instance=True");
        string query="select   uhid, firstname, lastname, gender, birthday, occupation, emailid, phone, address, town, city, state, pincode,profilepic from humans where uhid=@uhid";        
        SqlCommand cmd = new SqlCommand(query,con);
         cmd.Parameters.AddWithValue("@uhid",Session["uhid"].ToString());
         con.Open();
         var dr=cmd.ExecuteReader();
         if(dr.HasRows){
             while(dr.Read()){
                 lbluhid.Text = dr["uhid"].ToString();
             Lblname.Text=dr["firstname"]+" "+dr["lastname"];
             lbladdress.Text=dr["address"]+" "+dr["town"]+" "+dr["city"]+" "+dr["state"]+" "+dr["pincode"];
             lblDoB.Text=dr["birthday"].ToString();
             lblemail.Text = dr["emailid"].ToString();
             lblgender.Text = dr["gender"].ToString();
             lblphone.Text = dr["phone"].ToString();
             profilepic.ImageUrl = "~/profilepics/" + dr["profilepic"].ToString();
                 }
             }
        con.Close();
        }

        catch(SqlException ex){
        Response.Write(ex.ToString());
        }
    } 
    }


    
