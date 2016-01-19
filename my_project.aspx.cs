using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;


public partial class my_project : System.Web.UI.Page
{
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["a"].ConnectionString);
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["asd"] != null)
        {
            string a = Session["asd"].ToString();

            conn.Open();
            string qa = "select * from project_profile where f_user_profile_id='"+a+"'";

            MySqlCommand coa = new MySqlCommand(qa, conn);
            MySqlDataReader da = coa.ExecuteReader();
            Repeater1.DataSource = da;
            Repeater1.DataBind();
            conn.Close();

            


        }
        else {
            
            Session["dsa"] = "b";
            Response.Redirect("Default3.aspx");
        }
    }
}