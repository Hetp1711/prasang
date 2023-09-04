using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Customer : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    string id, year, name,newid;
    string panno = "", str = "", vatno = "",str1="",str2="",logo="";
    protected void Page_Load(object sender, EventArgs e)
    {
       // fetchId();

        newid = "CST" + id;
        CId.Text = newid;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

        if (FileUpload3.HasFile)
        {
            str2 = FileUpload3.FileName;
            FileUpload3.PostedFile.SaveAs(Server.MapPath("~/CompanyLogo/" + str));
            logo = "~/CompanyLogo/" + str2.ToString();
        }

        String city = Request.Form["city"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO CustomerInfo values(@p1,@p2,@p3,@p34,@p4,@p5,@p6,@p7,@p8,@p10,@p11,@p12,@p13,@p14,@p15,@p16)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", newid);
        cmd.Parameters.AddWithValue("@p2", fullname.Text);
        cmd.Parameters.AddWithValue("@p3", "");
        cmd.Parameters.AddWithValue("@p34", "");
        cmd.Parameters.AddWithValue("@p4", Password.Text);

        cmd.Parameters.AddWithValue("@p5", panno);

        cmd.Parameters.AddWithValue("@p6", logo);

        cmd.Parameters.AddWithValue("@p7", vatno);

        cmd.Parameters.AddWithValue("@p8", email.Text);



        cmd.Parameters.AddWithValue("@p10", Address2.Text);

        cmd.Parameters.AddWithValue("@p11", city);

        cmd.Parameters.AddWithValue("@p12", "k");

        cmd.Parameters.AddWithValue("@p13", Mobile.Text);
        cmd.Parameters.AddWithValue("@p14", country.Text);
        cmd.Parameters.AddWithValue("@p15", "0");
        cmd.Parameters.AddWithValue("@p16", logo);

        cmd.ExecuteNonQuery();
        con.Close();
        increment();

        Session["CId"] = newid;
        Response.Redirect("~/Client/ClientHome.aspx");


    }
    void fetchId()
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        cn.Open();
        SqlCommand cmd = new SqlCommand("select * from Id", cn);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();


        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            id = dt.Rows[0]["Id"].ToString();

        }

        cn.Close();

    }

    public void increment()
    {
        int id1 = Convert.ToInt32(id);
        id1 = id1 + 1;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "update Id set Id=@p1";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", id1.ToString());

        cmd.ExecuteNonQuery();


        con.Close();


    }

}