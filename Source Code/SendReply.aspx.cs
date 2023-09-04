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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;
        string a = "SELECT DISTINCT [EnquiryId], [EventId],[Name],[MobileNo],[RequestUserID], [EnquiryDate], [EnquiryDescription],[OfferPrice], [Status] FROM [EnquiryInfo] WHERE ([EnquiryId] = @RequestUserID)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@RequestUserID", Session["id"]);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
        
           
            txtID.Text = dt.Rows[0]["RequestUserID"].ToString(); ;
            txtName.Text = dt.Rows[0]["Name"].ToString(); ;
            txtMno.Text = dt.Rows[0]["MobileNo"].ToString(); ;
            txtDate.Text = dt.Rows[0]["EnquiryDate"].ToString(); ;
            txtTime.Text = dt.Rows[0]["EnquiryDescription"].ToString(); ;
         


        }

        else
        {
            txtID.Text = Session["id"].ToString();
        }

    }
        protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;


        string a = "update EnquiryInfo set EnquiryDescription=@p1, Status=@p2 where EnquiryId=@p3";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", txtTime.Text + " Owner Answer is =" + TextBox2.Text);
        cmd.Parameters.AddWithValue("@p2", DropDownList1.SelectedValue.ToString()); ;
        cmd.Parameters.AddWithValue("@p3", Session["id"]);
       
      
        cmd.ExecuteNonQuery();
        con.Close();




        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Response Send To User');window.location.replace('MemberHome.aspx');</script>");
    }
}