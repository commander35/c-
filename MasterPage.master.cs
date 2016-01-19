using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["asd"] != null)
        {

            Label1.Text = "LOGOUT";
            Label2.Text = "mask.aspx";
        }
        else {
            Label1.Text = "LOGIN";
            Label2.Text = "login.aspx";
        }
    }
}
