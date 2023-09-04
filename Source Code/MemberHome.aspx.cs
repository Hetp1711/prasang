using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from MemberInfo where MemberId =@username ", con);
        cmd.Parameters.AddWithValue("@username", Session["Mid"]);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            lblEmail.Text = dt.Rows[0]["Email"].ToString();
            lblName.Text = dt.Rows[0]["Name"].ToString();
            lblMobileNo.Text = dt.Rows[0]["MobileNo"].ToString();
            Image2.ImageUrl = dt.Rows[0]["Image"].ToString();

            lblCity.Text = dt.Rows[0]["Email"].ToString();

            lblAbout.Text= dt.Rows[0]["About"].ToString();

            lblWork.Text = dt.Rows[0]["Exp"].ToString();
            findImage();


        }
    }
    private void findImage()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from ProfileInfo where MemberId =@username ", con);
        cmd.Parameters.AddWithValue("@username", Session["Mid"]);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {

           HyperLink1.NavigateUrl = dt.Rows[0]["VideoLink"].ToString();
            Image1.ImageUrl = dt.Rows[0]["CoverImage"].ToString();




        }
    }

}