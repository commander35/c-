using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

public partial class deneme : System.Web.UI.Page
{
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["a"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       string asdd ="select project.projectname,project.city, type.ad,  roles.ad, designation.ad, stage.ad, project.revnue_model, project.price_strategy, project.cost_produce, project.cos_acquire, project.startup_cost, project.pain_point, project.target, project.need_latent, project.functionality, project.intial_product, project.product_service, project.product_pipline, profitability.ad, project.description, project.website, project.linktodemo, industry.ad , designation.ad, project.tecnology from project inner join (industry, designation, type, f_role, roles, stage, profitability, state) on (project.f_industry_id=industry.id and project.f_designation_id=designation.id and project.f_state_id=state.id and project.f_type_id=type.id and project.f_profitability_id=profitability.id and project.f_stage_id=stage.id and f_role.f_role_id=roles.id)";
       
          DataTable dt = new DataTable();
                MySqlDataAdapter adp = new MySqlDataAdapter(asdd, conn);

                conn.Open();
                adp.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                conn.Close();
    }
}