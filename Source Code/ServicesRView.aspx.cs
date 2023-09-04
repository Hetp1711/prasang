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
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT  * FROM EventInfo where EventService='"+ Session["Service"] + "' order By RecordID desc ", conn);

        DataTable dt = new DataTable();
        da.Fill(dt);
        conn.Close();

        listView.DataSource = dt;
        listView.DataBind();

        if (!IsPostBack)
        {

        }
        else
        {

        }

    }

    protected void btnAdd13_Click(object sender, EventArgs e)
    {

        Control c = sender as Control;
        if (c == null) return;
        Label hdnId = c.Parent.FindControl("lblVl") as Label;
        Label lblVideo= c.Parent.FindControl("lblVideo") as Label;
        string url = lblVideo.Text;
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
        Session["MidView"] = hdnId.Text;
        Session["YouTubeId"] = id;
        Response.Redirect("MemberProfile.aspx");
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
        Label hdnId = c.Parent.FindControl("lblVl") as Label;
        Label EvID1 = c.Parent.FindControl("detail") as Label;
        Label lblVideo = c.Parent.FindControl("lblVideo") as Label;
        string url = lblVideo.Text;
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
        Session["MidView"] = hdnId.Text;
        Session["YouTubeId"] = id;
        Session["EventId"] = EvID1.Text;
        Response.Redirect("EventProfile.aspx");
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