using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["a"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx");
        if (Session["asd"] == null)
        {
            /*  Response.Redirect("login.aspx"); */
            Button1.Visible = false;
        }
        if (!IsPostBack)
        {
            string query = "select * from state where location_type='0'";
            conn.Open();
            MySqlCommand comm = new MySqlCommand(query, conn);
            MySqlDataReader dr = comm.ExecuteReader();
            DropDownList1.DataSource = dr;
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "name";
            DropDownList1.DataBind();
            dr.Close();
            conn.Close();

            DropDownList2.Items.Add("Select the state");


            string querye = "select * from industry";
            conn.Open();
            MySqlCommand comme = new MySqlCommand(querye, conn);
            MySqlDataReader dre = comme.ExecuteReader();
            DropDownList4.DataSource = dre;
            DropDownList4.DataValueField = "id";
            DropDownList4.DataTextField = "ad";
            DropDownList4.DataBind();
            dre.Close();
            conn.Close();

            string queryes = "select * from type";
            conn.Open();
            MySqlCommand commes = new MySqlCommand(queryes, conn);
            MySqlDataReader dres = commes.ExecuteReader();
            DropDownList3.DataSource = dres;
            DropDownList3.DataValueField = "id";
            DropDownList3.DataTextField = "ad";
            DropDownList3.DataBind();
            dres.Close();
            conn.Close();

            string q = "select * from roles";
            conn.Open();
            MySqlCommand co = new MySqlCommand(q, conn);
            MySqlDataReader d = co.ExecuteReader();
            while (d.Read())
            {

                CheckBoxList1.Items.Add(new ListItem(d.GetValue(1).ToString(), d.GetValue(0).ToString()));
            }
            conn.Close();


            string qe = "select * from designation";
            conn.Open();
            MySqlCommand coe = new MySqlCommand(qe, conn);
            MySqlDataReader de = coe.ExecuteReader();
            while (de.Read())
            {

                RadioButtonList1.Items.Add(new ListItem(de.GetValue(1).ToString(), de.GetValue(0).ToString()));
            }
            conn.Close();


            string bebe = "select * from solution";
            conn.Open();
            MySqlCommand cbe = new MySqlCommand(bebe, conn);
            MySqlDataReader deb = cbe.ExecuteReader();
            while (deb.Read())
            {

                CheckBoxList2.Items.Add(new ListItem(deb.GetValue(1).ToString(), deb.GetValue(0).ToString()));
            }
            conn.Close();

            string bebes = "select * from profitability";
            conn.Open();
            MySqlCommand cbes = new MySqlCommand(bebes, conn);
            MySqlDataReader debs = cbes.ExecuteReader();
            while (debs.Read())
            {

                RadioButtonList2.Items.Add(new ListItem(debs.GetValue(1).ToString(), debs.GetValue(0).ToString()));
            }
            conn.Close();

            string bebese = "select * from stage";
            conn.Open();
            MySqlCommand cbese = new MySqlCommand(bebese, conn);
            MySqlDataReader debse = cbese.ExecuteReader();
            while (debse.Read())
            {

                RadioButtonList3.Items.Add(new ListItem(debse.GetValue(1).ToString(), debse.GetValue(0).ToString()));
            }
            conn.Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
     /*   string turet = "";
        if (FileUpload1.HasFile)
        {
            string sorgula = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (sorgula.ToLower() != ".pdf" && sorgula.ToLower() != ".doc" && sorgula.ToLower() != ".docx")
            {

                TextBox3.Text = "sadece pdf veya word mal";
            }

            else
            {
                string query = "select * from school_attended";
                conn.Open();
                MySqlCommand comm = new MySqlCommand(query, conn);

                string uzanti = Path.GetExtension(FileUpload1.PostedFile.FileName);
                Random rastgele = new Random();
                string harfler = "ABCDEFGHIJKLMNOPRSTUVYZabcdefghijklmnoprstuvyz0123456789";
                string uret = "";
                for (int i = 0; i < 6; i++)
                {
                    uret += harfler[rastgele.Next(harfler.Length)];
                }
                turet = uret + uzanti;
                FileUpload1.SaveAs(Server.MapPath("uploads/" + turet));
                conn.Close();
            }


        }*/
 
       
        string c = "";
        string sorgus = "select * from solution";
      
        MySqlCommand cobs = new MySqlCommand(sorgus, conn);
        for (int i = 0; i < CheckBoxList2.Items.Count; i++)
        {
            if (CheckBoxList2.Items[i].Selected)
            {
                c = c + "," + CheckBoxList2.Items[i].Value;
            }
        }
        conn.Close();
        
        string querys = "insert into project values(NULL, '" + TextBox1.Text + "', '" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + DropDownList5.SelectedValue + "','" + TextBox5.Text + "',' turet gelicek','kolon silincek','team gelicek','sessiondan user id gelicek','" + TextBox6.Text + "','" + TextBox7.Text + "','" + RadioButtonList1.SelectedValue + "','" + c + "','" + RadioButtonList2.SelectedValue + "','" + RadioButtonList3.SelectedValue + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "')";
        conn.Open();
        MySqlCommand comms = new MySqlCommand(querys, conn);
        comms.ExecuteNonQuery();
        conn.Close();
        string ddd = "";
        string ddds = "";
        string sorgusa = "select max(id) from project";
         conn.Open();
         MySqlCommand cbese = new MySqlCommand(sorgusa, conn);
         MySqlDataReader debse = cbese.ExecuteReader();
         while (debse.Read())
         {
             ddd = debse[0].ToString(); ;
         }
            conn.Close();
            string b = "";
            string sorgu = "select * from roles";
            conn.Open();
            MySqlCommand cob = new MySqlCommand(sorgu, conn);
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {

                    string q = "insert into f_role values(NULL, '" + ddd + "', '" + CheckBoxList1.Items[i].Value + "')";
                    
                    MySqlCommand cs = new MySqlCommand(q, conn);
                    cs.ExecuteNonQuery();
                }
            }
            conn.Close();
            string so = "select f_roles_id from user where id='"+ Session["asd"] +"'";
            conn.Open();
            MySqlCommand cbk = new MySqlCommand(so, conn);
            MySqlDataReader f = cbk.ExecuteReader();
            while (f.Read())
            {
                ddds = f[0].ToString(); ;
            }
            conn.Close();
            string querysr = "insert into project_user values(NULL, '" + ddd + "','" + ddds + "','" + Session["asd"] + "')";
        conn.Open();
        MySqlCommand commsr = new MySqlCommand(querysr, conn);
        commsr.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("Default.aspx");


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        string sec = DropDownList1.SelectedValue;
        string querys = "select * from state where parent_id='" + sec + "' ";
        conn.Open();
        MySqlCommand comms = new MySqlCommand(querys, conn);
        MySqlDataReader drs = comms.ExecuteReader();
        DropDownList2.DataSource = drs;
        DropDownList2.DataValueField = "id";
        DropDownList2.DataTextField = "name";
        DropDownList2.DataBind();
        drs.Close();
        conn.Close();

    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList5.SelectedValue == "1")
        {
            Label1.Visible = true;
            TextBox5.Visible = true;
        }
    }
}