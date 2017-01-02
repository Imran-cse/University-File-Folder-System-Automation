using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDP_Project
{
    public partial class Discipline1 : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;Initial Catalog=sdppractice;port=3306;User Id=root");
        MySqlCommand cmd;
        MySqlDataReader reader;
        MySqlDataAdapter da;
        String dscId,qstr,dscName;
        protected void Page_Load(object sender, EventArgs e)
        {
            dscId = (String)Session["disciplineId"];
            dscName = (String)Session["disciplineName"];
            if(!IsPostBack)
            {
                bind();
            }
        }

        protected void bind()
        {
            
            con.Open();
            DataTable dt = new DataTable();
            if(dscId != null)
            {
                qstr = "SELECT name,post,contact,mail FROM sdppractice.profile where discipline_id='" + dscId + "'";
            }
            else
            {
                qstr = "SELECT name,post,contact,mail FROM sdppractice.profile where assignedDiscipline='" + dscName + "'";
            }
            cmd = new MySqlCommand(qstr, con);
            da = new MySqlDataAdapter(cmd);
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
    }
}