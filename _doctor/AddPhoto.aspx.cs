using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class _Patient_AddPhoto : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    string[] validFileTypes={"bmp","gif","png","jpg","jpeg"};
    string ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);  
    bool isValidFile = false;
    for (int i = 0; i < validFileTypes.Length; i++)
    {
        if (ext == "." + validFileTypes[i] )
        {
            isValidFile = true;
            break;
        }
    }
    if (!isValidFile)
    {
        Label1.ForeColor = System.Drawing.Color.Red;
        Label1.Text = "Invalid File. Please upload a File with extension " + string.Join(",", validFileTypes);
    }
    else
    {
        string filename = System.IO.Path.GetFileName(FileUpload1.FileName.ToString());
        string extension = System.IO.Path.GetExtension(FileUpload1.FileName.ToString());
        string serverfilename=Session["uhid"].ToString() + extension;
        lblfilename.Text = serverfilename;
        FileUpload1.SaveAs(Server.MapPath("~/profilepics/") + serverfilename);
        profilepic.ImageUrl = "~/profilepics/" + serverfilename;
    //  Label2.Text = serverfilename;
    //  Label3.Text = Session["uhid"].ToString();
    }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {   
            SqlConnection hcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\cpisdb.mdf;Integrated Security=True;User Instance=True");
            string updateimage = "update humans set profilepic=@profilepicpath where uhid=@uhid";
            SqlCommand cmd = new SqlCommand(updateimage, hcon);
            cmd.Parameters.AddWithValue("@profilepicpath", lblfilename.Text);
            cmd.Parameters.AddWithValue("@uhid", Session["uhid"].ToString());
            hcon.Open();
            cmd.ExecuteReader();
            hcon.Close();
            Response.Redirect("~/_doctor/default.aspx");
        }
        catch (Exception ex) {
            Response.Write(ex.ToString()); 
        
        }
    
    }



}
