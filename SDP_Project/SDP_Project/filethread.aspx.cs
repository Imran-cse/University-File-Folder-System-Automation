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
    public partial class filethread : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;Initial Catalog=sdppractice;port=3306;User Id=root");
        MySqlCommand cmd;
        MySqlDataAdapter da;
        String qstr,subject1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack || this.IsPostBack)
            {
                bind();
            }
            
        }
        protected void bind()
        {
            con.Open();

            subject1 = (String)Session["subject"];
            qstr = "SELECT * FROM sdppractice.filetransfer WHERE subject='"+subject1+"'";
            cmd = new MySqlCommand(qstr, con);

            da = new MySqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);
            FileThreadGridView.DataSource = dt;
            FileThreadGridView.DataBind();

            con.Close();
        }

        protected void FileThreadGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = ((FileThreadGridView.Rows[FileThreadGridView.SelectedIndex] as GridViewRow).FindControl("hf1") as HiddenField).Value;
            Session["uid"] = id;
            Response.Redirect("~/newMail.aspx?id=" + id, true);
        }
    }
}