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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        password.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update CustomerInfo set Password=@password where Email =@username ", con);
        cmd.Parameters.AddWithValue("@username", Email1.Text);
        cmd.Parameters.AddWithValue("@password", password.Text);
        cmd.ExecuteNonQuery();
       

                Response.Redirect("Home.aspx");
            
    
    
    }
    
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from CustomerInfo where Email=@username", con);
        cmd.Parameters.AddWithValue("@username", Email1.Text);
       
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            password.Visible = true;
        }

        else
        {
            password.Visible=false ;
        }
    }
}
