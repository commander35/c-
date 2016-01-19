using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.Security;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool dondur = Filtrele.filtrelencek(TextBox1.Text + " " + TextBox2.Text);
        if (dondur)
        {
            MySqlConnection baglanti = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["a"].ConnectionString);
            string str = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "sha1");
            baglanti.Open();
            MySqlCommand Sorgu = new MySqlCommand("Select * from user where email='" + TextBox1.Text + "' and password='" + str + "'", baglanti);

            MySqlDataReader oku = Sorgu.ExecuteReader();
            if (oku.Read())
            {
               
                Session["asd"] =oku["id"];
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Error! incorrect password  or user  ');</script>");
            }
            baglanti.Close();
        }
        else { Response.Write("<script language=javascript>alert('Çakall!! SQL sorguları kullanma');</script>"); }
    }
}