using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal_information : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Page.User.Identity.Name; 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('uploading.aspx','_blank')</script>");
    }
}