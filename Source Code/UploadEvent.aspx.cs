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

public partial class PatientRegistration : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    string id, year, name;
 
    string Timeline = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        cn.Open();

        SqlCommand cmd = new SqlCommand("select * from Id", cn);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);


       id = dt.Rows[0]["Id"].ToString();
       Pid.Text = "EV2022" + id;

        pname.Text = Session["fname"].ToString();


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
     
        

  

   if (FileUpload2.HasFile)
        {
            string str2 = FileUpload2.FileName;
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/CoverImage/" + str2));
            Timeline = "~/CoverImage/" + str2.ToString();
            
   }

    cn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        cn.Open();
        string str1 = "insert into EventInfo values (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10) ";
        cmd = new SqlCommand(str1, cn);
        cmd.Parameters.AddWithValue("@p1", Pid.Text);
        cmd.Parameters.AddWithValue("@p2", category.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@p3", Session["Mid"]);
        cmd.Parameters.AddWithValue("@p4", pname.Text);
        cmd.Parameters.AddWithValue("@p5", price.Text);
        cmd.Parameters.AddWithValue("@p6", txtD.Text);

        cmd.Parameters.AddWithValue("@p7", Timeline);
        cmd.Parameters.AddWithValue("@p8", txtVideo.Text);
        cmd.Parameters.AddWithValue("@p9", txtD.Text);
        cmd.Parameters.AddWithValue("@p10", DateTime.Now);

        int result = 0;

        result = cmd.ExecuteNonQuery();
        updateid();
        if (result > 0)
        {

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('EventUpload');window.location.replace('MemberHome.aspx');</script>");
           
          

        }

        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Upload Error');</script>");
        }
    
    }

    private void updateid()
    {
        int id1 = Convert.ToInt16(id);
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