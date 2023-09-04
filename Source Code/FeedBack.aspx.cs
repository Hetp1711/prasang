using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtID.Text = Session["GId"].ToString();

        txtName.Text = Session["fname"].ToString();

      txtMno.Text = Session["MobileNo"].ToString();

        txtDate.Text = DateTime.Now.ToShortDateString();
        txtTime.Text = DateTime.Now.ToShortTimeString();
    }
        protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;


        string a = "INSERT INTO FeedBackInfo values(@p1,@p2,@p3,@p4,@p5,@p6)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", txtID.Text);
        cmd.Parameters.AddWithValue("@p2", txtName.Text);
        cmd.Parameters.AddWithValue("@p3", txtMno.Text);
        cmd.Parameters.AddWithValue("@p4", DateTime.Today);
        cmd.Parameters.AddWithValue("@p5", DateTime.Now.ToLongTimeString());
        cmd.Parameters.AddWithValue("@p6", TextBox2.Text);
        cmd.ExecuteNonQuery();
        con.Close();
   
        Label1.Text = "  FeedBack is Uploaded Thank You For Using Our Services  ";
       
        TextBox2.Text = "";
    }
}