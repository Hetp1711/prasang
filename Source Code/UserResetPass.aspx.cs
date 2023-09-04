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

public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtmobile.Text == "")
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Enter Password')</script>");
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update ClientInfo set Password=@p2 where MobileNo =@username ", con);
        cmd.Parameters.AddWithValue("@username", Session["MN"]);
        cmd.Parameters.AddWithValue("@p2", txtmobile.Text);
        cmd.ExecuteNonQuery();
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Password Has Been Reset Successfull');window.location.replace('Login1.aspx');</script>");

       



    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("MemberLogin.aspx");
    }
}