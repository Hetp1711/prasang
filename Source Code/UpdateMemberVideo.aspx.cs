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

public partial class Registration : System.Web.UI.Page
{
  string a ;
    string panno = "", str = "", vatno = "", str1 = "", str2 = "", logo = "", str3 = "", logo1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
      


        
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from MemberInfo where MemberId =@username", con);
            cmd.Parameters.AddWithValue("@username", Session["Mid"]);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();



            da.Fill(dt);


            if (dt.Rows.Count > 0)
            {
               
              txtName.Text = dt.Rows[0]["Name"].ToString();
            txtEmail.Text = Session["Mid"].ToString();

            }

        

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEmail.Text = "";
       
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
                con.Open();
                SqlCommand cmd;

                string a = "update  ProfileInfo set VideoLink=@p1 where MemberId=@p11";
                cmd = new SqlCommand(a, con);
                cmd.Parameters.AddWithValue("@p11", Session["Mid"]);
     
        cmd.Parameters.AddWithValue("@p1", txtV.Text);
                
                cmd.ExecuteNonQuery();

               
                con.Close();

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Detail Updated Successfull');window.location.replace('MemberHome.aspx');</script>");
        }


    protected void btnImage_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            str2 = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/CoverImage/" + str2));
            logo = "~/CoverImage/" + str2.ToString();
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "update  ProfileInfo set CoverImage=@p1 where MemberId=@p11";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p11", Session["Mid"]);
        cmd.Parameters.AddWithValue("@p1", logo);

        cmd.ExecuteNonQuery();


        con.Close();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Detail Updated Successfull');window.location.replace('MemberHome.aspx');</script>");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            str2 = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/CoverImage/" + str2));
            logo = "~/CoverImage/" + str2.ToString();
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "update  MemberInfo set Image=@p1 where MemberId=@p11";
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p11", Session["Mid"]);
        cmd.Parameters.AddWithValue("@p1", logo);

        cmd.ExecuteNonQuery();


        con.Close();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Detail Updated Successfull');window.location.replace('MemberHome.aspx');</script>");

    }
}
