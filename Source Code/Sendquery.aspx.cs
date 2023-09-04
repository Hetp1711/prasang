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

public partial class Sendquery : System.Web.UI.Page
{
    string id;
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

      if (Session["GId"] == null)
        {
            Session["flag"] = 1;
            Response.Redirect("Login1.aspx");

        }
        else if(Session["EventId"]==null)
        {

            Response.Redirect("UserHome.aspx");
        }
      else
        { 

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from Id", con);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();



            da.Fill(dt);


            Session["id"] = dt.Rows[0]["Id"];
            id = Session["id"].ToString();


            string hname = "T";



            string year = "2022";

            Eid.Text = hname + year + id;

         findUserData();
            pid.Text = Session["EventId"].ToString();
            txtEnquiryType.Text = Session["EventService"].ToString();

        }

    }

    private void findUserData()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from ClientInfo where MobileNo =@username ", con);
        cmd.Parameters.AddWithValue("@username", Session["MobileNo"]);
       
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);

         if (dt.Rows.Count > 0)
        {
           uid.Text = dt.Rows[0]["ClientId"].ToString();
           fullname.Text = dt.Rows[0]["Name"].ToString();
          mno.Text= dt.Rows[0]["MobileNo"].ToString();
          address.Text = dt.Rows[0]["Address"].ToString();

           city.Text= dt.Rows[0]["City"].ToString();
      //  txtState.Text = dt.Rows[0]["State"].ToString();



           

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;

            string a = "INSERT INTO EnquiryInfo values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p13,@p14,@p15)";
            cmd = new SqlCommand(a, con);
            cmd.Parameters.AddWithValue("@p1", Eid.Text);
            cmd.Parameters.AddWithValue("@p2", pid.Text );
            cmd.Parameters.AddWithValue("@p3", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@p4", uid.Text);
            cmd.Parameters.AddWithValue("@p5", fullname.Text);

            cmd.Parameters.AddWithValue("@p6", txtEnquiryType.Text);

            cmd.Parameters.AddWithValue("@p7", mno.Text);
            cmd.Parameters.AddWithValue("@p8", address.Text);
            cmd.Parameters.AddWithValue("@p9", city.Text);
            cmd.Parameters.AddWithValue("@p10", pincode.Text);
            cmd.Parameters.AddWithValue("@p11", txtPrice.Text);
          
            cmd.Parameters.AddWithValue("@p13",enquiryDes.Text );
            cmd.Parameters.AddWithValue("@p14", "Pending");
        cmd.Parameters.AddWithValue("@p15", Session["MidView"]);
        cmd.ExecuteNonQuery();
            uid.Text = "";
            pid.Text = "";
            fullname.Text = "";
            mno.Text = "";
            address.Text = "";
            city.Text = "";
            enquiryDes.Text = "";
            increment();
        con.Close();
        Session["flag"] = null;
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your Query Hasbeen Sent To Prashang Event Services');window.location.replace('UserHome.aspx');</script>");

     

         
        

       

      
    }

     public void increment()
     {
         int id1 = Convert.ToInt16(id);
         id1 = id1 + 1;
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
         con.Open();
         SqlCommand cmd;

         string a = "update id set Id=@p1";
         cmd = new SqlCommand(a, con);
         cmd.Parameters.AddWithValue("@p1", id1.ToString());

         cmd.ExecuteNonQuery();


         con.Close();


     }
}