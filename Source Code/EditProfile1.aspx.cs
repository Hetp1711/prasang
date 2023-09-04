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

public partial class updateprofile : System.Web.UI.Page
{
  string a ;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from ClientInfo where MobileNo =@username", con);
            cmd.Parameters.AddWithValue("@username", Session["MobileNo"].ToString());

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                Session["eid"] = dt.Rows[0]["Email"];
                Session["fname"] = dt.Rows[0]["Name"];
                Session["password"] = dt.Rows[0]["Password"];
                Session["cno"] = dt.Rows[0]["MobileNo"];

                Session["city"] = dt.Rows[0]["City"];
                Session["address"] = dt.Rows[0]["Address"];
                name.Text = Session["fname"].ToString();
                email.Text = Session["eid"].ToString();
                password.Text = Session["password"].ToString();
                cno.Text = Session["cno"].ToString();

                city.Text = Session["city"].ToString();
                add.Text = Session["address"].ToString();
                pincode.Text = dt.Rows[0]["Password"].ToString();
                con.Close();

            }

        }

    }
   
   
      

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (password.Text == null)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('please Enter New Pasword')</script>");
           
        }

        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;
                                  
            string a = "  update ClientInfo set Name=@p1,Email=@p2,Password=@p3,MobileNo=@p7,City=@p9,Address=@p10 where MobileNo=@username ";
            cmd = new SqlCommand(a, con);
            cmd.Parameters.AddWithValue("@username", Session["MobileNo"]);
            cmd.Parameters.AddWithValue("@p1", name.Text);
            cmd.Parameters.AddWithValue("@p2", email.Text);
            cmd.Parameters.AddWithValue("@p3", password.Text);
            cmd.Parameters.AddWithValue("@p7", cno.Text);
            cmd.Parameters.AddWithValue("@p10", add.Text);
            cmd.Parameters.AddWithValue("@p9", city.Text);
           
          
        int a1=    cmd.ExecuteNonQuery();

      if (a1 > 0)
      {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Update Success ');window.location.replace('UserHome.aspx');</script>");

                name.Text = "";
          email.Text = "";
          password.Text = "";
          cno.Text = "";
          add.Text = "";
          city.Text = "";
        
        
          con.Close();
      }
        }

    }
}