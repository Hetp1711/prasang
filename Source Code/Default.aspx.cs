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
using System.Collections;
using System.Configuration;
using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from CustomerInfo where Email =@username", con);
        cmd.Parameters.AddWithValue("@username", Session["Email"].ToString());

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);


        if (dt.Rows.Count > 0)
        {
            TextBox2.Text = dt.Rows[0]["Fullname"].ToString();
            TextBox3.Text = dt.Rows[0]["Email"].ToString();
            TextBox4.Text = dt.Rows[0]["ContactNo"].ToString();
            TextBox5.Text = dt.Rows[0]["State"].ToString();
            TextBox6.Text = dt.Rows[0]["City"].ToString();
            TextBox7.Text = dt.Rows[0]["Address"].ToString();
            TextBox8.Text = dt.Rows[0]["Password"].ToString();
            con.Close();

        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update CustomerInfo set Password=@password,ContactNo=@co where Email =@username ", con);
        cmd.Parameters.AddWithValue("@username", TextBox3.Text);
        cmd.Parameters.AddWithValue("@co", TextBox4.Text);
        cmd.Parameters.AddWithValue("@password", password.Text);
        cmd.ExecuteNonQuery();

        int a1 = cmd.ExecuteNonQuery();

        if (a1 > 0)
        {
            Label3.Text = "Update Done";


            con.Close();
        }

    }
}