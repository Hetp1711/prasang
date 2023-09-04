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
                Session["eid"] = dt.Rows[0]["Email"];
                Session["fname"] = dt.Rows[0]["Name"];
                Session["password"] = dt.Rows[0]["Password"];
                Session["cno"] = dt.Rows[0]["MobileNo"];
                Session["state"] = dt.Rows[0]["About"];
                Session["city"] = dt.Rows[0]["City"];
                Session["address"] = dt.Rows[0]["Address"];
                txtName.Text = Session["fname"].ToString();
                txtEmail.Text = Session["eid"].ToString();
                txtPassword.Text = Session["password"].ToString();
                txtMobile.Text = Session["cno"].ToString();
                txtCountry.Text = Session["state"].ToString();
                txtCity.Text = Session["city"].ToString();
                txtAddress.Text = Session["address"].ToString();

            }

        

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEmail.Text = "";
        txtPassword.Text = "";
        txtMobile.Text = "";
        txtCountry.Text = "";
        txtCity.Text = "";
        txtAddress.Text = "";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtCnfrmPwd.Text == "")
        {
            lblMessage.Text = "please Enter New Pasword";
        }

        else
        {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
                con.Open();
                SqlCommand cmd;

                string a = "update  OwnerInfo set Fullname=@p1,Email=@p2,Password=@p3,MobileNo=@p7,State=@p8,City=@p9,Address=@p10 where OwnerId=@p11";
                cmd = new SqlCommand(a, con);
                cmd.Parameters.AddWithValue("@p11", Session["OID"]);
                cmd.Parameters.AddWithValue("@p1", txtName.Text);
                cmd.Parameters.AddWithValue("@p2", txtEmail.Text);
                cmd.Parameters.AddWithValue("@p3", txtCnfrmPwd.Text);
               
                cmd.Parameters.AddWithValue("@p7", txtMobile.Text);
                cmd.Parameters.AddWithValue("@p8", txtCountry.Text);
                cmd.Parameters.AddWithValue("@p9", txtCity.Text);
                cmd.Parameters.AddWithValue("@p10", txtAddress.Text);
              
                cmd.ExecuteNonQuery();

               
                con.Close();

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Detail Updated Successfull');window.location.replace('OwnerHome.aspx');</script>");
        }
      
    }
}