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
    public partial class Discipline : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;Initial Catalog=sdppractice;port=3306;User Id=root");
        MySqlCommand cmd;
        String qstr,disciplineId,disciplineName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                con.Open();
                qstr = "SELECT id, disciplineName FROM sdppractice.discipline";
                DataTable dt = new DataTable();
                cmd = new MySqlCommand(qstr, con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);

                setGridView.DataSource = dt;
                setGridView.DataBind();
                con.Close();
            }
        }

        /*protected void setGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lbl = e.Row.FindControl("Label2") as Label;
                //DataRowView drv = e.Row.DataItem as DataRowView;
                e.Row.Attributes.Add("onclick","SDP_Project.location.href='Discipline.aspx?id="+lbl.Text+"';");
                //e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(setGridView, "Select$" + e.Row.RowIndex);
                //e.Row.Attributes["style"] = "cursor:pointer";
            }
        }*/

        protected void setGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmdBind")
            {
                Session["disciplineName"] = null;
                LinkButton lb = (LinkButton)e.CommandSource;
                Session["disciplineId"] = lb.Text;
                Response.Redirect("Discipline.aspx?"+lb.Text+"");
            }
            else if(e.CommandName == "cmdName")
            {
                Session["disciplineId"] = null;
                LinkButton lb2 = (LinkButton)e.CommandSource;
                Session["disciplineName"] = lb2.Text;
                Response.Redirect("Discipline.aspx?" + lb2.Text + "");
            }
        }

        /*protected void setGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = setGridView.SelectedRow.RowIndex;
            string name = setGridView.SelectedRow.Cells[0].Text;
            string country = setGridView.SelectedRow.Cells[1].Text;
            string message = "Row Index: " + index + "\\nName: " + name + "\\nCountry: " + country;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
            Response.Write("Successful");
        }*/
    }
}