using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;


public partial class project_search : System.Web.UI.Page
{  
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["b"].ConnectionString);
    string sorgu = "";
    string sorguson ="";
    string asdd = "";
    string r = "";
    string ca = "";
    private string[] de=new string[]{"Project Name","Description","Website","Link to Demo or Prototype","İndustry","Designation","Tecnology"};
    private string[] da = new string[] { "Project Name", "City", "Type",  "Designation", "Stage", "Revnue Model", "Price&Pricing Strategy", "Cost to Produce/Deliver", "Cost to Acquire Customer", "Startup Costs", "Pain Point", "Target", "Need:Latent or Existing", "Functionality", "İntial Product/Service Offered", "Product/Service Alignment with Value Proposition", "Product Pipeline", "Profitability", "Description", "Website", "Link to Demo or Prototype", "İndustry", "Designation", "Tecnology" };
    Int32 tr = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
        if (Session["asd"] == null)
        {
             //sorguson = "select project.projectname,project.city, type.ad,  roles.ad, designation.ad, stage.ad, project.revnue_model, project.price_strategy, project.cost_produce, project.cos_acquire, project.startup_cost, project.pain_point, project.target, project.need_latent, project.functionality, project.intial_product, project.product_service, project.product_pipline, profitability.ad, project.description, project.website, project.linktodemo, industry.ad , designation.ad, project.tecnology from project inner join (industry, designation, type, roles, stage, profitability, state) on (project.f_industry_id=industry.id and project.f_designation_id=designation.id and project.f_state_id=state.id and project.f_type_id=type.id and project.f_profitability_id=profitability.id and project.f_stage_id=stage.id and project.f_role_id=roles.id) where ";
       
           sorguson = "select project.projectname, project.description, project.website, project.linktodemo, industry.ad , designation.ad, project.tecnology from project,industry,designation where project.f_industry_id=industry.id and project.f_designation_id=designation.id ";
           ca = "ad";
          
        }
        else
        {//roles.ad, şimdilik koymicam
            sorguson = "select project.projectname,project.city, type.ad,   designation.ad, stage.ad, project.revnue_model, project.price_strategy, project.cost_produce, project.cos_acquire, project.startup_cost, project.pain_point, project.target, project.need_latent, project.functionality, project.intial_product, project.product_service, project.product_pipline, profitability.ad, project.description, project.website, project.linktodemo, industry.ad , designation.ad, project.tecnology from project inner join (industry, designation, type,  stage, profitability, state) on (project.f_industry_id=industry.id and project.f_designation_id=designation.id and project.f_state_id=state.id and project.f_type_id=type.id and project.f_profitability_id=profitability.id and project.f_stage_id=stage.id ) where ";
           
        }

        if (!IsPostBack)
        {
           

            string queryes = "select * from type";
            conn.Open();
            MySqlCommand commes = new MySqlCommand(queryes, conn);
            MySqlDataReader dres = commes.ExecuteReader();
            DropDownList1.DataSource = dres;
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "ad";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("– Select the Type –", "0"));
            dres.Close();
            conn.Close();

            string querye = "select * from industry";
            conn.Open();
            MySqlCommand comme = new MySqlCommand(querye, conn);
            MySqlDataReader dre = comme.ExecuteReader();
            DropDownList2.DataSource = dre;
            DropDownList2.DataValueField = "id";
            DropDownList2.DataTextField = "ad";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("– Select the Industry –", "0"));
            dre.Close();
            conn.Close();

            string query = "select * from state where location_type='0'";
            conn.Open();
            MySqlCommand comm = new MySqlCommand(query, conn);
            MySqlDataReader dr = comm.ExecuteReader();
            DropDownList3.DataSource = dr;
            DropDownList3.DataValueField = "id";
            DropDownList3.DataTextField = "name";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem("– Select the State –", "0"));
            dr.Close();
            conn.Close();

            DropDownList4.Items.Add("- Select the Country -");
/*
            string q = "select * from roles";
            conn.Open();
            MySqlCommand co = new MySqlCommand(q, conn);
            MySqlDataReader d = co.ExecuteReader();
            while (d.Read())
            {

                CheckBoxList1.Items.Add(new ListItem(d.GetValue(1).ToString(), d.GetValue(0).ToString()));
            }
            conn.Close();*/

        }
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sec = DropDownList3.SelectedValue;
        string querys = "select * from state where parent_id='" + sec + "' ";
        conn.Open();
        MySqlCommand comms = new MySqlCommand(querys, conn);
        MySqlDataReader drs = comms.ExecuteReader();
        DropDownList4.DataSource = drs;
        DropDownList4.DataValueField = "id";
        DropDownList4.DataTextField = "name";
        DropDownList4.DataBind();
        drs.Close();
        conn.Close();
        if (DropDownList3.SelectedValue == "0") {
            DropDownList4.Items.Insert(0, new ListItem("– Select country –", "0"));
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue != "0")
        {

            if (ca == "") { sorgu = " project.f_type_id='" + DropDownList1.SelectedValue + "'";
                ca = "ad";
            }
            else {sorgu = sorgu + " and " +" project.f_type_id='" + DropDownList1.SelectedValue + "'"; }
            
            r = "a";
        }


        if (DropDownList2.SelectedValue != "0")
        {
            if (ca == "")
            {
                sorgu = " project.f_industry_id='" + DropDownList2.SelectedValue + "'"; 
                ca = "ad";
            }
            else
            { sorgu = sorgu + " and " + " project.f_industry_id='" + DropDownList2.SelectedValue + "'"; }
            r = "a";
        }


        if (DropDownList3.SelectedValue != "0")
        {

            if (ca == "")
            {
                sorgu = " project.f_state_id='" + DropDownList3.SelectedValue + "' " + " and " + " project.f_country_id='" + DropDownList4.SelectedValue + "'";
                ca = "ad";
            }
            else
            { sorgu = sorgu + " and " + " project.f_state_id='" + DropDownList3.SelectedValue + "' " + " and " + " project.f_country_id='" + DropDownList4.SelectedValue + "'"; }
            r = "a";
        }

        if (TextBox1.Text.Trim() != "")
        {
            if (ca == "")
            {
                sorgu = " project.city='" + TextBox1.Text + "'";
                ca = "ad";
            }
            else
            { sorgu = sorgu + " and " + " project.city='" + TextBox1.Text + "'"; }
            r = "a";

        }
        if (TextBox2.Text.Trim() != "")
        {
            if (ca == "")
            {
                sorgu = " project.amount_need='" + TextBox2.Text + "'";
                ca = "ad";
            }
            else
            { sorgu = sorgu + " and " + " project.amount_need='" + TextBox2.Text + "'"; }
            r = "a";

        }
        if (TextBox3.Text.Trim() != "")
        {
            if (ca == "")
            {
                sorgu = " project.amount_need='" + TextBox2.Text + "'";
                ca = "ad";
            }
            else
            { sorgu = sorgu + " and " + " project.tecnology='" + TextBox3.Text + "'"; }
            r = "a";

        }

    
            if (r == "a")
            {
                asdd = sorguson + sorgu;
                DataTable dt = new DataTable();
                MySqlDataAdapter adp = new MySqlDataAdapter(asdd, conn);

                   
                adp.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (Session["asd"] == null)
                    {
                        tr = de.Count();
                        for (int i = 0; i < tr - 1; i++)
                        {
                            GridView1.HeaderRow.Cells[i].Text = de[i];
                        }
                    }
                    else {  tr = da.Count();
                    for (int i = 0; i < tr - 1; i++)
                    {
                        GridView1.HeaderRow.Cells[i].Text = da[i];
                    }
                    }
                                      
                    GridView1.Visible = true;
                    Label1.Visible = false;
                }
                else
                {
                    GridView1.Visible = false;
                    Label1.Visible = true;
                    Label1.Text = "Do not matching record";
                }
            }
            else
            {
                GridView1.Visible = false;
                Label1.Visible = true;
                Label1.Text = "seçim yapılmadı";
            }

        /*
        if (DropDownList1.SelectedValue != "0")
        {
            if (sorgu == "a")
            {
                sorgu = " f_type_id='" + DropDownList1.SelectedValue + "'";
            }
            else { 
            sorgu=sorgu + " and " +" f_type_id='" + DropDownList1.SelectedValue + "'";
            }
        }
        if (DropDownList2.SelectedValue != "0")
        {
            if (sorgu == "a")
            {
                sorgu = " f_industry_id='" + DropDownList2.SelectedValue + "'";
            }
            else
            {
                sorgu = sorgu + " and " + " f_industry_id='" + DropDownList2.SelectedValue + "'";
            }
        }
        if (DropDownList3.SelectedValue != "0")
        {
            if (sorgu == "a")
            {
                sorgu = " f_state_id='" + DropDownList3.SelectedValue + "' " + " and " + " f_country_id='" + DropDownList4.SelectedValue + "'";
            }
            else
            {
                sorgu = sorgu + " and " + " f_state_id='" + DropDownList3.SelectedValue + "' " + " and " + " f_country_id='" + DropDownList4.SelectedValue + "'";
            }
        }

        if (TextBox1.Text != "")
        {
            if (sorgu == "a")
            {
                sorgu = " city='" + TextBox1.Text + "'";
            }
            else
            {
                sorgu = sorgu + " and " + " city='" + TextBox1.Text + "'";
            }

        }
        if (TextBox2.Text != "")
        {
            if (sorgu == "a")
            {
                sorgu = " amount_need='" + TextBox2.Text + "'";
            }
            else
            {
                sorgu = sorgu + " and " + " amount_need='" + TextBox2.Text + "'";
            }

        }

        string b = "";
        string sorgup = "select * from roles";
        conn.Open();
        MySqlCommand cob = new MySqlCommand(sorgup, conn);
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                b = b + "," + CheckBoxList1.Items[i].Value;
            }
        }

        if (b != "")
        {
            if (sorgu == "a")
            {
                sorgu = " f_role_id='" + b + "'";
            }
            else
            {
                sorgu = sorgu + " and " + " f_role_id='" + b + "'";
            }

        }

        if (TextBox3.Text != "")
        {
            if (sorgu == "a")
            {
                sorgu = " tecnology='" + TextBox3.Text + "'";
            }
            else
            {
                sorgu = sorgu + " and " + " tecnology='" + TextBox3.Text + "'";
            }

        }
        
        asdd = sorguson + sorgu;
        DataTable dt = new DataTable();
        MySqlDataAdapter adp = new MySqlDataAdapter(asdd, conn);

        adp.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            GridView1.Visible = false;
            Label1.Visible = true;
            Label1.Text = "Do not matching record";
        }*/

    }
}