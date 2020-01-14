using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class hospital_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btregister_Click(object sender, EventArgs e)
    {
        try
        {
            string cstr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\cpisdb.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(cstr);
            //string cmdtxt = "insert into hospitals(HOSID,NAME,HOS_TYPE,ADDRESS,CITY,STATE,PHONE,HOS_EMAILID,HOS_WEBSITE,MANAGER,MGR_PHONE,MGR_EMAILID,USERID,PASSWORD,CONFIRM_PSWD,DOE)values(@hospital ID,@hospital Name,Hospital Type,@Address,@City,@State,@Phone Number,@Email ID,@Hospital Website,@Manager Name,@phone Number,@Email ID,@UserName,@Password,@Confirm Password,@Date of Enrollnment)";
            string cmdtxt = "insert into hospitals values(@HOSID,@NAME,@HOS_TYPE,@ADDRESS,@CITY,@STATE,@PHONE,@HOS_EMAILID,@HOS_WEBSITE,@MANAGER,@MGR_PHONE,@MGR_EMAILID,@USERID,@PASSWORD,@CONFIRM_PSWD,@DOE)";
            SqlCommand cmd = new SqlCommand(cmdtxt, con);
            con.Open();
            SqlCommand getmax = new SqlCommand("select count(HOSID) from hospitals", con);
            int max = (int)getmax.ExecuteScalar();
            cmd.Parameters.AddWithValue("@HOSID", max.ToString());
            cmd.Parameters.AddWithValue("@NAME", tbhosname.Text);
            cmd.Parameters.AddWithValue("@HOS_TYPE", tbhostype.Text);
            cmd.Parameters.AddWithValue("@ADDRESS", tbaddress.Text);
            cmd.Parameters.AddWithValue("@CITY", tbhoscity.Text);
            cmd.Parameters.AddWithValue("@STATE", tbhosstate.Text);
            cmd.Parameters.AddWithValue("@PHONE", tbhosphone.Text);
            cmd.Parameters.AddWithValue("@HOS_EMAILID", tbhosemail.Text);
            cmd.Parameters.AddWithValue("@HOS_WEBSITE", tbhoswebsite.Text);
            cmd.Parameters.AddWithValue("@MANAGER", tbmgrname.Text);
            cmd.Parameters.AddWithValue("@MGR_PHONE", tbmgrphone.Text);
            cmd.Parameters.AddWithValue("@MGR_EMAILID", tbmgremai.Text);
            cmd.Parameters.AddWithValue("@USERID", tbusername.Text);
            cmd.Parameters.AddWithValue("@PASSWORD", tbpswd.Text);
            cmd.Parameters.AddWithValue("@CONFIRM_PSWD", tbconfirmpwd.Text);
            cmd.Parameters.AddWithValue("@DOE", DateTime.Today.ToShortDateString().ToString());
            cmd.ExecuteNonQuery();
            con.Close();
            Server.Transfer("~/registration_success.aspx");

        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = ex.ToString();
        }
    }
}