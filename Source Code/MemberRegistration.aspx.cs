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
    SqlConnection cn;
    SqlCommand cmd;
    string id, year, name, newid;
    string panno = "", str = "", vatno = "", str1 = "", str2 = "", logo = "", str3 = "", logo1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        fetchId();

        newid = "Xl" + id;
        CId.Text = newid;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {



        if (FileUpload3.HasFile)
        {
            str2 = FileUpload3.FileName;
            FileUpload3.PostedFile.SaveAs(Server.MapPath("~/CoverImage/" + str2));
            logo = "~/CoverImage/" + str2.ToString();
        }

        if (FileUpload1.HasFile)
        {
            str3 = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/CoverImage/" + str3));
            logo1 = "~/CoverImage/" + str3.ToString();
        }


        String city = Request.Form["city"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO MemberInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", newid);
        cmd.Parameters.AddWithValue("@p2", fullname.Text);
        cmd.Parameters.AddWithValue("@p3", Password.Text);
        cmd.Parameters.AddWithValue("@p4", email.Text);


        cmd.Parameters.AddWithValue("@p5", Address2.Text);

        cmd.Parameters.AddWithValue("@p6", city);

        cmd.Parameters.AddWithValue("@p7", Mobile.Text);

        cmd.Parameters.AddWithValue("@p8", logo);



        cmd.Parameters.AddWithValue("@p9", logo1);



        cmd.Parameters.AddWithValue("@p10", ddlexp.SelectedValue.ToString());

        cmd.Parameters.AddWithValue("@p11", txtExp.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        increment();

        addProfile();

       
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Registration Done Success To Prashang');window.location.replace('Login1.aspx');</script>");


    }

    private void addProfile()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "INSERT INTO ProfileInfo values(@p1,@p2,@p3,@p4)";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", newid);
        cmd.Parameters.AddWithValue("@p2", fullname.Text);
        cmd.Parameters.AddWithValue("@p3", "");
        cmd.Parameters.AddWithValue("@p4", "");
        cmd.ExecuteNonQuery();
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
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}