using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
       
        Session["id"] = (row.Cells[1].Text.ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;
        string a = "Delete From EventInfo where RecordID=@p1";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", Session["id"]);
        cmd.ExecuteNonQuery();
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Member Removed Successfull');window.location.replace('AdminHome.aspx');</script>");
    }
}