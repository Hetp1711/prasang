using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;


        string a = "INSERT INTO FeedBackInfo values(@p1,@p2,@p3,@p4,@p5,@p6)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1","Contact"+DateTime.Now   );
        cmd.Parameters.AddWithValue("@p2", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p3", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p4", DateTime.Today);
        cmd.Parameters.AddWithValue("@p5", DateTime.Now.ToLongTimeString());
        cmd.Parameters.AddWithValue("@p6", TextBox3.Text);
        cmd.ExecuteNonQuery();
        con.Close();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Request Send To Successfull Thank for Contact Prashang');window.location.replace('Home.aspx');</script>");
    }
}