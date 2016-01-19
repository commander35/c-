using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

public partial class project_add : System.Web.UI.Page
{
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["a"].ConnectionString);
    string de = "";
       protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["asd"] != null)
        {
            de = Session["asd"].ToString();

            if (!IsPostBack)
            {
                conn.Open();
                string qa = "select * from designation";

                MySqlCommand coa = new MySqlCommand(qa, conn);
                MySqlDataReader da = coa.ExecuteReader();
                while (da.Read())
                {

                    RadioButtonList1.Items.Add(new ListItem(da.GetValue(1).ToString(), da.GetValue(0).ToString()));
                }

                conn.Close();

                conn.Open();
                string q = "select * from solution";

                MySqlCommand co = new MySqlCommand(q, conn);
                MySqlDataReader d = co.ExecuteReader();
                while (d.Read())
                {

                    CheckBoxList1.Items.Add(new ListItem(d.GetValue(1).ToString(), d.GetValue(0).ToString()));
                }

                conn.Close();

                conn.Open();
                string qaa = "select * from profitability";

                MySqlCommand coaa = new MySqlCommand(qaa, conn);
                MySqlDataReader daa = coaa.ExecuteReader();
                while (daa.Read())
                {

                    RadioButtonList2.Items.Add(new ListItem(daa.GetValue(1).ToString(), daa.GetValue(0).ToString()));
                }

                conn.Close();

                conn.Open();
                string qaab = "select * from stage";

                MySqlCommand coaab = new MySqlCommand(qaab, conn);
                MySqlDataReader daab = coaab.ExecuteReader();
                while (daab.Read())
                {

                    RadioButtonList3.Items.Add(new ListItem(daab.GetValue(1).ToString(), daab.GetValue(0).ToString()));
                }

                conn.Close();

                conn.Open();
                string qb = "select * from team";

                MySqlCommand cb = new MySqlCommand(qb, conn);
                MySqlDataReader dbr = cb.ExecuteReader();
                while (dbr.Read())
                {

                    RadioButtonList4.Items.Add(new ListItem(dbr.GetValue(1).ToString(), dbr.GetValue(0).ToString()));
                }

                conn.Close();

                conn.Open();
                string qba = "select * from current_funding";

                MySqlCommand cbe = new MySqlCommand(qba, conn);
                MySqlDataReader dbre = cbe.ExecuteReader();
                while (dbre.Read())
                {

                    CheckBoxList2.Items.Add(new ListItem(dbre.GetValue(1).ToString(), dbre.GetValue(0).ToString()));
                }

                conn.Close();

                conn.Open();
                string qbag = "select * from capital_raised";

                MySqlCommand cbeg = new MySqlCommand(qbag, conn);
                MySqlDataReader dbreg = cbeg.ExecuteReader();
                while (dbreg.Read())
                {

                    RadioButtonList5.Items.Add(new ListItem(dbreg.GetValue(1).ToString(), dbreg.GetValue(0).ToString()));
                }

                conn.Close();
                conn.Open();
                string query = "select * from capital_sought";

                MySqlCommand comm = new MySqlCommand(query, conn);
                MySqlDataReader dr = comm.ExecuteReader();
                DropDownList1.DataSource = dr;
                DropDownList1.DataValueField = "id";
                DropDownList1.DataTextField = "name";
                DropDownList1.DataBind();
                dr.Close();
                conn.Close();
                conn.Open();
                string qbagv = "select * from amount_need";

                MySqlCommand cbegv = new MySqlCommand(qbagv, conn);
                MySqlDataReader dbregv = cbegv.ExecuteReader();
                while (dbregv.Read())
                {

                    RadioButtonList6.Items.Add(new ListItem(dbregv.GetValue(1).ToString(), dbregv.GetValue(0).ToString()));
                }

                conn.Close();
                RadioButtonList1.SelectedIndex = 0;
                RadioButtonList3.SelectedIndex = 0;
                RadioButtonList4.SelectedIndex = 0;

            }

        }
        else
        {
            Response.Redirect("Default3.aspx");

        }
    }
       protected void Button1_Click(object sender, EventArgs e)
       {
           bool dondur = Filtrele.filtrelencek(TextBox1.Text + " " + TextBox3.Text + " " + TextBox2.Text + " " + TextBox4.Text + " " + TextBox5.Text + " " + TextBox6.Text + " " + TextBox7.Text);
        if (dondur)
        {
            conn.Open();
            string query = "insert into project_profile values(NULL, '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + RadioButtonList1.SelectedValue + "','" + TextBox7.Text + "','" + RadioButtonList2.SelectedValue + "','" + RadioButtonList3.SelectedValue + "','" + RadioButtonList4.SelectedValue + "','" + RadioButtonList5.SelectedValue + "','" + DropDownList1.SelectedValue + "','" + RadioButtonList6.SelectedValue + "','"+ de +"')";

            MySqlCommand comm = new MySqlCommand(query, conn);
            comm.ExecuteNonQuery();

            string ddd = "";
            string sorgusa = "select max(id) from project_profile";

            MySqlCommand cbese = new MySqlCommand(sorgusa, conn);
            MySqlDataReader debse = cbese.ExecuteReader();
            while (debse.Read())
            {
                ddd = debse[0].ToString(); ;
            }
            conn.Close();


            conn.Open();
            string sorguw = "select * from solution";

            MySqlCommand cobw = new MySqlCommand(sorguw, conn);
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {

                    string qw = "insert into solution_f values(NULL, '" + ddd + "', '" + CheckBoxList1.Items[i].Value + "')";

                    MySqlCommand csw = new MySqlCommand(qw, conn);
                    csw.ExecuteNonQuery();
                }
            }
            conn.Close();

            conn.Open();
            string sorgu = "select * from current_funding";

            MySqlCommand cob = new MySqlCommand(sorgu, conn);
            for (int i = 0; i < CheckBoxList2.Items.Count; i++)
            {
                if (CheckBoxList2.Items[i].Selected)
                {

                    string q = "insert into current_funding_f values(NULL, '" + ddd + "', '" + CheckBoxList2.Items[i].Value + "')";

                    MySqlCommand cs = new MySqlCommand(q, conn);
                    cs.ExecuteNonQuery();
                }
            }
            conn.Close();
            Response.Write("<script type='text/javascript'> alert('Kayıt başarıyla oluşturuldu'); document.location.href='Default2.aspx'; </script>");
        }
        else { Response.Write("<script type='text/javascript'> alert('sql kullanma'); </script>"); }
       }
}