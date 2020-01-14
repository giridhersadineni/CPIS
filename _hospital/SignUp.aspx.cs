using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Collections.Specialized;

public partial class Default2 : System.Web.UI.Page
{
    
    
  
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        try
        {
            string birthday = ddldate.Text + "-" + ddlmonth.Text + "-" + ddlyear.Text;
            string magicword = repeatpwd.Text;
            string UID = System.DateTime.Today.Year.ToString() + tbfirstname.Text.Substring(0, 1) + tbsurname.Text.Substring(0, 1) + ddldate.Text + ddlmonth.SelectedItem.Value.ToString() + ddlyear.Text.Substring(2, 2);
            tbuhid.Text = UID;

            string cstr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\cpisdb.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(cstr);
            string cmdtxt = "insert into humans(uhid,aadhar,firstname,lastname,fathername,gender,relstatus,birthday,username,magicword,role,question1,answer1,question2,answer2,bloodgroup,organdonor,occupation,mobile,phone,emailid,address,town,city,state,pincode,icename,iceaddress,icerelation,icephone,altemail) values(@uhid,@aadhar,@firstname,@lastname,@fathername,@gender,@relstatus,@birthday,@username,@magicword,@role,@question1,@answer1,@question2,@answer2,@bloodgroup,@organdonor,@occupation,@mobile,@phone,@emailid,@address,@town,@city,@state,@pincode,@icename,@iceaddress,@icerelation,@icephone,@altemail)";
            string idon = "SET IDENTITY_INSERT humans ON";
            string idoff = "SET IDENTITY_INSERT humans OFF";
            SqlCommand ion = new SqlCommand(idon, con);
            SqlCommand ioff = new SqlCommand(idoff, con);
            SqlCommand cmd = new SqlCommand(cmdtxt, con);
            con.Open();
            cmd.Parameters.AddWithValue("@uhid", tbuhid.Text);
            cmd.Parameters.AddWithValue("@aadhar", tbaadhar.Text);
            cmd.Parameters.AddWithValue("@firstname", tbfirstname.Text);
            cmd.Parameters.AddWithValue("@lastname", tbsurname.Text);
            cmd.Parameters.AddWithValue("@fathername", tbfathername.Text);
            cmd.Parameters.AddWithValue("@gender", ddlgender.Text);
            cmd.Parameters.AddWithValue("@relstatus", ddlrelationstatus.Text);
            cmd.Parameters.AddWithValue("@birthday", birthday);
            cmd.Parameters.AddWithValue("@username", tbusername.Text);
            cmd.Parameters.AddWithValue("@magicword", magicword);
            cmd.Parameters.AddWithValue("@role", ddlrole.Text);
            cmd.Parameters.AddWithValue("@question1", ddlsecurity1.Text);
            cmd.Parameters.AddWithValue("@answer1", tbanswer1.Text);
            cmd.Parameters.AddWithValue("@question2", ddlsecurity2.Text);
            cmd.Parameters.AddWithValue("@answer2", tbanswer2.Text);
            cmd.Parameters.AddWithValue("@bloodgroup", ddlbloodgroup.Text);
            cmd.Parameters.AddWithValue("@organdonor", ddlorgan.Text);
            cmd.Parameters.AddWithValue("@occupation", ddloccupation.Text);
            cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
            cmd.Parameters.AddWithValue("@phone", txtphone.Text);
            cmd.Parameters.AddWithValue("@emailid", tbemail.Text);
            cmd.Parameters.AddWithValue("@town", txttown.Text);
            cmd.Parameters.AddWithValue("@city", ddlcity.Text);
            cmd.Parameters.AddWithValue("@state", ddlstate.Text);
            cmd.Parameters.AddWithValue("@pincode", tbpincode.Text);
            cmd.Parameters.AddWithValue("@icename", txticename.Text);
            cmd.Parameters.AddWithValue("@address", tbaddress.Text);
            cmd.Parameters.AddWithValue("@iceaddress", txticeaddress.Text);
            cmd.Parameters.AddWithValue("@icerelation", txticerelation.Text);
            cmd.Parameters.AddWithValue("@icephone", txticephone.Text);
            string altemail=txtaltemail.Text;
            if (txtaltemail.Text == "") { altemail = "NA"; }
            cmd.Parameters.AddWithValue("@altemail",altemail);
            ion.ExecuteNonQuery();
            cmd.ExecuteNonQuery();
            ioff.ExecuteNonQuery();
            con.Close();
            Server.Transfer("~/LoginSuccess.aspx");
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }

    }
    protected void ddlbloodgroup_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void tbaadhar_TextChanged(object sender, EventArgs e)
    {

    }
}

    
