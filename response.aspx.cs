﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class response : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        string rid = Request.QueryString[0];
        Label1.Text = rid;
    }
}