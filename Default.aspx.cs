using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.SessionState;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtUsername.Text=="") {
            txtUsername.Focus();
            Label1.Text = "Please check the Username";
        }
        else if (txtPassword.Text == "")
        {

            txtPassword.Focus();
            Label1.Text = "Please check your password";
        }
        else {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\cpisdb.mdf;Integrated Security=True;User Instance=True");
                string query = "select * from users where username=@username and magicword=@magicword and role=@role";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@magicword", txtPassword.Text);
                cmd.Parameters.AddWithValue("@role", DropDownList1.SelectedValue);
                con.Open();
                string role=null;
                string uhid = null;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        role = dr.GetString(2);
                        uhid = dr.GetString(3);
                    }

                    if (role == "Patient") {
                        Session.Add("user", txtUsername.Text);
                        Session.Add("role", "Patient");
                        Session.Add("uhid", uhid);
                        Session.Add("loggedin", role);
                        Server.Transfer("./_Patient/Default.aspx"); 
                    }
                    else if (role == "Doctor") {
                        Session.Add("user", txtUsername.Text);
                        Session.Add("role", "Doctor");
                        Session.Add("uhid", uhid);
                        Session.Add("loggedin", role);
                        Server.Transfer("./_doctor/Default.aspx"); 
                    
                    }
                    else if (role == "Admin") {
                        Session.Add("user", txtUsername.Text);
                        Session.Add("role", "Admin");
                        Session.Add("uhid", uhid);
                        Session.Add("loggedin", role);
                        Server.Transfer("./_hospital/Default.aspx"); }

                }
                else {

                    Label1.Text = "User not Found Please Retry";
                
                }

                
            }
            catch (Exception ex) {

                Label1.Text = ex.ToString();
            
            
            } 
        
        
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("./ForgotPassword.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("./SignUp.aspx");
    }
}
