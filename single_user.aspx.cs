using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.Security;

public partial class single_user : System.Web.UI.Page
{
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["a"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        string a = Request.QueryString["id"];
        string f = "";
        string z = "";
        string k = "";

        conn.Open();

        string sorgus = "select * from user_profile where id='" + a + "'";
        MySqlCommand coams = new MySqlCommand(sorgus, conn);
        MySqlDataReader daes = coams.ExecuteReader();

        Repeater1.DataSource = daes;
        Repeater1.DataBind();
      
        conn.Close();


        string qas = "select school_attended.name as a from school_attended inner join(school_attended_f ) on (school_attended.id=school_attended_f.f_school_attended_id) where school_attended_f.f_user_profile_id ='" + a + "'";
        conn.Open();
        MySqlCommand coa = new MySqlCommand(qas, conn);
        MySqlDataReader da = coa.ExecuteReader();
        Repeater2.DataSource = da;
        Repeater2.DataBind();
        conn.Close();

        string q = "select educational_affilation.name as b from educational_affilation inner join(educational_affilation_f ) on (educational_affilation.id=educational_affilation_f.f_educational_affilation_id) where educational_affilation_f.f_user_profile_id ='" + a + "'";
        conn.Open();
        MySqlCommand c = new MySqlCommand(q, conn);
        MySqlDataReader d = c.ExecuteReader();
        Repeater3.DataSource = d;
        Repeater3.DataBind();
        conn.Close();

        string qt = "select roles.name as c from roles inner join(roles_f ) on (roles.id=roles_f.f_roles_id) where roles_f.f_user_profile_id ='" + a + "'";
        conn.Open();
        MySqlCommand ct = new MySqlCommand(qt, conn);
        MySqlDataReader dt = ct.ExecuteReader();
        Repeater4.DataSource = dt;
        Repeater4.DataBind();
        conn.Close();

        string qts = "select sought_project.name as d from sought_project inner join(sought_project_f ) on (sought_project.id=sought_project_f.f_sought_project_id) where sought_project_f.f_user_profile_id ='" + a + "'";
        conn.Open();
        MySqlCommand cts = new MySqlCommand(qts, conn);
        MySqlDataReader dts = cts.ExecuteReader();
        Repeater5.DataSource = dts;
        Repeater5.DataBind();
        conn.Close();
       
    }
}