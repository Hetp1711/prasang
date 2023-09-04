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

public partial class confirmenquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        date.Text = DateTime.Now.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "update EnquiryInfo set Status=@p1 where EnquiryId=@eid" ;
        cmd = new SqlCommand(a, con);

        cmd.Parameters.AddWithValue("@eid",DropDownList1.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p1", DropDownList2.SelectedValue.ToString());
        cmd.ExecuteNonQuery();

        string message = "Update Done";
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + message + "');", true);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from EnquiryInfo where EnquiryId =@username", con);
        cmd.Parameters.AddWithValue("@username",DropDownList1.SelectedValue.ToString());

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);


        if (dt.Rows.Count > 0)
        {
           Eid.Text = dt.Rows[0]["EnquiryId"].ToString();
           edate.Text = dt.Rows[0]["EnquiryDate"].ToString();
           cname.Text = dt.Rows[0]["CompanyName"].ToString();
           email.Text = dt.Rows[0]["Email"].ToString();
           fullname.Text = dt.Rows[0]["Name"].ToString();
           etype.Text = dt.Rows[0]["EnquiryType"].ToString();
           mno.Text = dt.Rows[0]["MobileNo"].ToString();
           address.Text = dt.Rows[0]["Address"].ToString();
           city.Text = dt.Rows[0]["City"].ToString();
           pincode.Text = dt.Rows[0]["Pincode"].ToString();
           state.Text = dt.Rows[0]["State"].ToString();
           country.Text = dt.Rows[0]["Country"].ToString();

           enquiryDes.Text = dt.Rows[0]["EnquiryDescription"].ToString();

        }

    }
}