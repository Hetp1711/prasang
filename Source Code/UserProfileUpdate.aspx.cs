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


public partial class UserProfileUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from CustomerInfo where Email =@username", con);
            cmd.Parameters.AddWithValue("@username", Session["Email"].ToString());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                TextBox1.Text = dt.Rows[0]["Fullname"].ToString() ;
                TextBox3.Text = dt.Rows[0]["Email"].ToString();
                TextBox2.Text = dt.Rows[0]["Password"].ToString();
                TextBox4.Text = dt.Rows[0]["ContactNo"].ToString();


            }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "UPDATE CustomerInfo set Fullname=@p1,Email=@p2,Password=@p3,ContactNo=@p7 where Email=@username";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@username", TextBox3.Text);
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox3.Text);
        cmd.Parameters.AddWithValue("@p3", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p7", TextBox4.Text);
        cmd.ExecuteNonQuery();
    }
}