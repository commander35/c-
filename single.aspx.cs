using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.Security;

public partial class single : System.Web.UI.Page
{
    string asd = "";
    MySqlConnection conn = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["a"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string d = "select  project_profile.project_name,project_profile.tecnologies, project_profile.link_demo, project_profile.industry, project_profile.description,  project_profile.website";
        
        
            string a = Request.QueryString["id"];
            string f = "";
            string z = "";
            string k = "";
            conn.Open();
            string sorgu = "select * from project_profile where id='"+ a +"'";
            MySqlCommand coam = new MySqlCommand(sorgu, conn);
            MySqlDataReader dae = coam.ExecuteReader();
            while (dae.Read())
            {
                
                if (dae.GetValue(7).ToString() != "") { d = d + ",designation.name";
                if (z != "") { f = f + "and project_profile.f_designation_id = designation.id "; k = k + ",designation"; } else { f = f + "project_profile.f_designation_id = designation.id "; z = "a"; k = k + "designation"; }
                }
                else { d = d + ",f_designation_id "; }
                if (dae.GetValue(9).ToString() != "") { d = d + ",profitability.name as p";
                if (z != "") { f = f + "and project_profile.f_profitability_id=profitability.id "; k = k + ",profitability"; } else { f = f + "project_profile.f_profitability_id=profitability.id "; z = "a"; k = k + "profitability"; }
                }
                else { d = d + ",f_profitability_id as p"; }
                if (dae.GetValue(10).ToString() != "") { d = d + ",stage.name as s";
                if (z != "") { f = f + "and project_profile.f_stage_id=stage.id "; k = k + ",stage"; } else { f = f + "project_profile.f_stage_id=stage.id "; z = "a"; k = k + "stage"; }
                }
                else { d = d + ",f_stage_id as s"; }
                if (dae.GetValue(11).ToString() != "") { d = d + ",team.name as t";
                if (z != "") { f = f + "and project_profile.f_team_id=team.id "; k = k + ",team"; } else { f = f + "project_profile.f_team_id=team.id "; z = "a"; k = k + "team"; }
                }
                else { d = d + ",f_team_id as t"; }
                if (dae.GetValue(12).ToString() != "") { d = d + ",capital_raised.name as c";
                if (z != "") { f = f + "and project_profile.f_capital_raised_id=capital_raised.id "; k = k + ",capital_raised"; } else { f = f + "project_profile.f_capital_raised_id=capital_raised.id "; z = "a"; k = k + "capital_raised"; }
                }
                else { d = d + ",f_capital_raised_id as c"; }
                if (dae.GetValue(13).ToString() != "") { d = d + ",capital_sought.name as cc";
                if (z != "") { f = f + "and project_profile.f_capital_sought_id=capital_sought.id "; k = k + ",capital_sought"; } else { f = f + "project_profile.f_capital_sought_id=capital_sought.id "; z = "a"; k = k + "capital_sought"; }
                }
                else { d = d + ",f_capital_sought_id as cc"; }
                if (dae.GetValue(14).ToString() != "")
                {
                    d = d + ",amount_need.name as a";
                    if (z != "") { f = f + "and project_profile.f_amount_need_id=amount_need.id "; k = k + ",amount_need"; } else { f = f + "project_profile.f_amount_need_id=amount_need.id "; z = "a"; k = k + "amount_need"; }
                }
                else { d = d + ",f_amount_need_id as a"; }
            
            }
             
            conn.Close();
            conn.Open();
            string qa = d + " from project_profile   inner join("+ k +" )  on( "+ f +  ") where project_profile.id='" + a + "'";
              
            MySqlCommand coa = new MySqlCommand(qa, conn);
            MySqlDataReader da = coa.ExecuteReader();
            Repeater1.DataSource = da;
            Repeater1.DataBind();
            conn.Close();

            

        
        }
}