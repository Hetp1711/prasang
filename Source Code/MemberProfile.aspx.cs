using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Aboutus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from MemberInfo where MemberId =@username ", con);
        cmd.Parameters.AddWithValue("@username", Session["MidView"]);
     
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
           lblEmail.Text = dt.Rows[0]["Email"].ToString();
            lblName.Text = dt.Rows[0]["Name"].ToString();
            lblMobileNo.Text = dt.Rows[0]["MobileNo"].ToString();
           Image2.ImageUrl= dt.Rows[0]["Image"].ToString();

            lblCity.Text=   dt.Rows[0]["Email"].ToString();
            lblWork.Text = dt.Rows[0]["Exp"].ToString();
            lblAbout.Text = dt.Rows[0]["About"].ToString();
            findImage();


        }
    }

    private void findImage()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from ProfileInfo where MemberId =@username ", con);
        cmd.Parameters.AddWithValue("@username", Session["MidView"]);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {

           HyperLink1.NavigateUrl = dt.Rows[0]["VideoLink"].ToString();
            Image1.ImageUrl = dt.Rows[0]["CoverImage"].ToString();

        }

        findEv();

    }

    private void findEv()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from EventInfo where MemberId =@username ", con);
        cmd.Parameters.AddWithValue("@username", Session["MidView"]);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            lblEvent.Text= dt.Rows[0]["EventService"].ToString();

            lblEvent.Text = lblEvent.Text+ "-Date-"+ dt.Rows[0]["UploadDate"].ToString();
        }

    }

    protected void btnAdd13_Click(object sender, EventArgs e)
    {

        Control c = sender as Control;
        if (c == null) return;
        Label hdnId = c.Parent.FindControl("lblVl") as Label;

        string url = hdnId.Text;
        //string url = "https://www.youtube.com/watch?v=tYbPqiskTZU";
        string id = "";
        if (url.Split('/')[url.Split('/').Length - 1].Split('=').Length > 1)
        {
            id = url.Split('/')[url.Split('/').Length - 1].Split('=')[1];
        }
        else
        {
            id = url.Split('/')[url.Split('/').Length - 1];
        }
        Session["YouTubeId"] = id;
        Response.Redirect("OpenVideo.aspx");
        //  LinkButton l1 = c.Parent.FindControl("LinkButton1") as LinkButton;
        // l1.PostBackUrl = "https://www.youtube.com/watch?v=tjlqQOHEUgo" + id;
        // l1.PostBackUrl = "https://www.youtube.com/watch?v=tjlqQOHEUgo";
        ////SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        ////con.Open();
        ////SqlCommand cmd = new SqlCommand("select * from EmpInfo where EmpId =@username ", con);
        ////cmd.Parameters.AddWithValue("@username", id1);
        ////SqlDataAdapter da = new SqlDataAdapter(cmd);
        ////DataTable dt = new DataTable();
        ////da.Fill(dt);
        ////if (dt.Rows.Count > 0)
        ////{
        ////    String link= dt.Rows[0]["EmpDepartment"].ToString();
        ////    System.Diagnostics.Process.Start(link);
        ////}

    }

    protected void btnAdd14_Click(object sender, EventArgs e)
    {
        Control c = sender as Control;
        if (c == null) return;
        Label hdnId = c.Parent.FindControl("detail") as Label;

        string url = hdnId.Text;

        Session["ViewRecipe"] = url;
        Response.Redirect("ViewRecipe.aspx");
    }

    protected void listView_SelectedIndexChanged(object sender, EventArgs e)
    {

        //Control c = sender as Control;
        //if (c == null) return;
        //LinkButton hdnId = c.Parent.FindControl("LinkButton1") as LinkButton;

        //String id1 = hdnId.Text;
        //Int32 id = Convert.ToInt16(id1);


        //ShoppingCart.Instance.AddItem(id);
        ////Response.Redirect("NewHome.aspx");
    }

}