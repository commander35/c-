using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

public partial class sign_up : System.Web.UI.Page
{
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["a"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        conn.Open();
        string query = "select * from highest_level";

        MySqlCommand comm = new MySqlCommand(query, conn);
        MySqlDataReader dr = comm.ExecuteReader();
        DropDownList1.DataSource = dr;
        DropDownList1.DataValueField = "id";
        DropDownList1.DataTextField = "name";
        DropDownList1.DataBind();
        dr.Close(); 
        
        string qa = "select * from educational_affilation";

        MySqlCommand coa = new MySqlCommand(qa, conn);
        MySqlDataReader da = coa.ExecuteReader();
        while (da.Read())
        {

            CheckBoxList2.Items.Add(new ListItem(da.GetValue(1).ToString(), da.GetValue(0).ToString()));
        }

        conn.Close();
        conn.Open();
        string q = "select * from school_attended";
        
        MySqlCommand co = new MySqlCommand(q, conn);
        MySqlDataReader d = co.ExecuteReader();
        while (d.Read())
        {

            CheckBoxList1.Items.Add(new ListItem(d.GetValue(1).ToString(), d.GetValue(0).ToString()));
        }

        conn.Close();
        conn.Open();

        string ql = "select * from roles";

        MySqlCommand col = new MySqlCommand(ql, conn);
        MySqlDataReader dl = col.ExecuteReader();
        while (dl.Read())
        {

            CheckBoxList3.Items.Add(new ListItem(dl.GetValue(1).ToString(), dl.GetValue(0).ToString()));
        }


        conn.Close();
        conn.Open();

        string qls = "select * from sought_project";

        MySqlCommand cols = new MySqlCommand(qls, conn);
        MySqlDataReader dls = cols.ExecuteReader();
        while (dls.Read())
        {

            CheckBoxList4.Items.Add(new ListItem(dls.GetValue(1).ToString(), dls.GetValue(0).ToString()));
        }


        conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {bool dondur = Filtrele.filtrelencek(TextBox1.Text+" "+ TextBox3.Text + " " + TextBox2.Text + " " + TextBox4.Text);
        if (dondur)
        {
        conn.Open();
        string query = "insert into user_profile values(NULL, '" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox4.Text + "','" + TextBox3.Text + "')";

        MySqlCommand comm = new MySqlCommand(query, conn);
        comm.ExecuteNonQuery();
        
        string ddd = "";
        string sorgusa = "select max(id) from user_profile";
        
        MySqlCommand cbese = new MySqlCommand(sorgusa, conn);
        MySqlDataReader debse = cbese.ExecuteReader();
        while (debse.Read())
        {
            ddd = debse[0].ToString();
            Session["asd"] = debse[0].ToString();
        }
        conn.Close();
        conn.Open();
        string sorgu = "select * from school_attended";
        
        MySqlCommand cob = new MySqlCommand(sorgu, conn);
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {

                string q = "insert into school_attended_f values(NULL, '" + ddd + "', '" + CheckBoxList1.Items[i].Value + "')";

                MySqlCommand cs = new MySqlCommand(q, conn);
                cs.ExecuteNonQuery();
            }
        }
        conn.Close();
        
        conn.Open();
        string sorgus = "select * from educational_affilation";

        MySqlCommand cobs = new MySqlCommand(sorgus, conn);
        for (int i = 0; i < CheckBoxList2.Items.Count; i++)
        {
            if (CheckBoxList2.Items[i].Selected)
            {

                string q = "insert into educational_affilation_f values(NULL, '" + ddd + "', '" + CheckBoxList2.Items[i].Value + "')";

                MySqlCommand cs = new MySqlCommand(q, conn);
                cs.ExecuteNonQuery();
            }
        }
        conn.Close();

        conn.Open();
        string sorg = "select * from roles";

        MySqlCommand co = new MySqlCommand(sorg, conn);
        for (int i = 0; i < CheckBoxList3.Items.Count; i++)
        {
            if (CheckBoxList3.Items[i].Selected)
            {

                string q = "insert into roles_f values(NULL, '" + ddd + "', '" + CheckBoxList3.Items[i].Value + "')";

                MySqlCommand cs = new MySqlCommand(q, conn);
                cs.ExecuteNonQuery();
            }
        }
        conn.Close();

        conn.Open();
        string so = "select * from sought_project";

        MySqlCommand c = new MySqlCommand(so, conn);
        for (int i = 0; i < CheckBoxList4.Items.Count; i++)
        {
            if (CheckBoxList4.Items[i].Selected)
            {

                string q = "insert into sought_project_f values(NULL, '" + ddd + "', '" + CheckBoxList4.Items[i].Value + "')";

                MySqlCommand cs = new MySqlCommand(q, conn);
                cs.ExecuteNonQuery();
            }
        }
        conn.Close();
        Response.Write("<script type='text/javascript'> alert('Kayıt başarıyla oluşturuldu'); document.location.href='project_add.aspx'; </script>");
        }
        else { Response.Write("<script type='text/javascript'> alert('sql kullanma'); </script>"); }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
         
        conn.Open();
        MySqlCommand Sorgu = new MySqlCommand("Select email from user_profile ", conn);
        MySqlDataReader asd;
        string das = "";
            asd = Sorgu.ExecuteReader();
            while (asd.Read())
            {
                if (TextBox2.Text == asd["email"].ToString())
                {
                    Label1.Text = "Aynı emailden daha önce hesap açılmış";
                    TextBox3.Visible = false;
                    das = "asd";
                }
                else if (TextBox2.Text != asd["email"].ToString())
                {
                    TextBox3.Visible = true;
                    Label1.Text = "";
                    das = "das";
                }
            }
            conn.Close();
            if (das == "") {

                TextBox3.Visible = true;
                Label1.Text = "";
            }
        }
    
}