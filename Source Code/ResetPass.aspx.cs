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

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update GuestInfo set Password=@p2 where MobileNo =@username ", con);
        cmd.Parameters.AddWithValue("@username", Session["MN"]);
        cmd.Parameters.AddWithValue("@p2", Email1.Text);
        cmd.ExecuteNonQuery();

      
                Response.Redirect("GuestLogin.aspx");
      


    }
}
