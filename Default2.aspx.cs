using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;


public partial class Default2 : System.Web.UI.Page
{
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["a"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["asd"] != null)
        {
            Session["dsa"] = "a";
        conn.Open();
        string qa = "select * from project_profile order by id desc limit 10";

        MySqlCommand coa = new MySqlCommand(qa, conn);
        MySqlDataReader da = coa.ExecuteReader();
        Repeater1.DataSource = da;
        Repeater1.DataBind();
        conn.Close();

        conn.Open();
        string qas = "select * from user_profile order by id desc limit 10";

        MySqlCommand coas = new MySqlCommand(qas, conn);
        MySqlDataReader das = coas.ExecuteReader();
        Repeater2.DataSource = das;
        Repeater2.DataBind();
        conn.Close();
        
        
            

        }
        else {
            
            Session["dsa"] = "b";
            Response.Redirect("Default3.aspx");
        }
       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {


        conn.Open();
        string qas = "select * from user_profile where name like '" + TextBox1.Text + "%' or name like '%" + TextBox1.Text + "%' or name like '%" + TextBox1.Text + "' ";

        MySqlCommand coas = new MySqlCommand(qas, conn);
        MySqlDataReader das = coas.ExecuteReader();
        Repeater2.DataSource = das;
        Repeater2.DataBind();
        conn.Close();

        conn.Open();
        string qa = "select * from project_profile where project_name like '" + TextBox1.Text + "%' or project_name like '%" + TextBox1.Text + "%' or project_name like '%" + TextBox1.Text + "' ";

        MySqlCommand coa = new MySqlCommand(qa, conn);
        MySqlDataReader da = coa.ExecuteReader();
        Repeater1.DataSource = da;
        Repeater1.DataBind();
        conn.Close();

    }
}