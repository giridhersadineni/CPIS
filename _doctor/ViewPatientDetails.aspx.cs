using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class _doctor_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnviewpntdetails_Click(object sender, EventArgs e)
    {
        try{
            string constr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\cpisdb.mdf;Integrated Security=True;User Instance=True";
       
            SqlConnection con = new SqlConnection(constr);
        string query="select uhid,firstname,lastname,fathername,gender,relstatus,birthday,bloodgroup,mobile,emailid,address,town,city,state,pincode,icename,iceaddress,icerelation,icephone from humans where uhid=@uhid";
        SqlCommand cmd = new SqlCommand(query,con);
        cmd.Parameters.AddWithValue("@uhid",tbuhid.Text);
        con.Open();
        var dr=cmd.ExecuteReader();
        if(dr.HasRows){
            while(dr.Read()){
               lblname.Text=dr[1]+" "+dr[2];
               lblfname.Text = dr[3].ToString();
               lblgender.Text = dr[4].ToString();
               lblemailid.Text = dr[9].ToString();
               lbladdress.Text = dr[10] + " " + dr[11] + " " + dr[12] + " " + dr[13] + " " + dr[14];
               lblrelationshipstatus.Text = dr[5].ToString();
               lbldob.Text = dr[6].ToString();
               lblbgroup.Text = dr[7].ToString();
               lblphone.Text = dr[8].ToString();
               lblicename.Text = dr[15].ToString();
               lblicephone.Text = dr[18].ToString();
               lblicerel.Text = dr[17].ToString();
               lbliceaddress.Text=dr[16].ToString();
             }
        
        }
        
        con.Close();
        }
        catch(Exception ex){
       lblex.Text=ex.ToString();
        
        
        }
        



       




    }
}