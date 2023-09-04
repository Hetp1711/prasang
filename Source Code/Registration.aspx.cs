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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
    //    try
    //    {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
            con.Open();
            SqlCommand cmd;

            string a = "INSERT INTO CustomerInfo values(@p1,@p2,@p3,@p4,@p6,@p7,@p8,@p9,@p10,@p11)";
            cmd = new SqlCommand(a, con);
            cmd.Parameters.AddWithValue("@p1", txtName.Text);
            cmd.Parameters.AddWithValue("@p2", txtEmail.Text);
            cmd.Parameters.AddWithValue("@p3", txtPassword.Text);
            cmd.Parameters.AddWithValue("@p4", rbtnListGender.SelectedValue.ToString());

            

            cmd.Parameters.AddWithValue("@p6", txtMobile.Text);
            cmd.Parameters.AddWithValue("@p7", txtEno.Text);
            cmd.Parameters.AddWithValue("@p8", sem.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@p9", department.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@p10",collage.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@p11", "0");
            cmd.ExecuteNonQuery();

       lblMessage.Text = "Registration Done";
          //  ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + message + "');", true);
            txtName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtMobile.Text = "";
           
            txtEno.Text = "";
            con.Close();
        //}
        //catch (Exception e1)
        //{
        //    string message = "Registration Error";
        //    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + message + "');", true);
        //}
      

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {

        txtName.Text = "";
        txtEmail.Text = "";
        txtPassword.Text = "";
        txtMobile.Text = "";
       
        txtEno.Text = "";
        string message = "Registration Error";
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + message + "');", true);
    }
    protected void btnClear_Click1(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEmail.Text = "";
        txtPassword.Text = "";
        txtMobile.Text = "";
       
        txtEno.Text = "";
        string message = "Registration Error";
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + message + "');", true);
    }
}