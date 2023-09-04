using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class home1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT TOP 6 * FROM ProductInfo where flag='" + "1" + "' And ProductCategory='" + "Homeopathy" + "' ", conn);

        DataTable dt = new DataTable();
        da.Fill(dt);
        conn.Close();

        listView.DataSource = dt;
        listView.DataBind();

        if (!IsPostBack)
        {
           
        }
        else
        {
           
        }
       
    }


    protected void btnAdd13_Click(object sender, EventArgs e)
    {

        Control c = sender as Control;
        if (c == null) return;
        Label hdnId = c.Parent.FindControl("id") as Label;
           
        String id1 = hdnId.Text;
      //  Int32 id = Convert.ToInt16(id1);


        ShoppingCart.Instance.AddItem(hdnId.Text);
       Response.Redirect("Home.aspx");
      
       
    }


    protected void listView_SelectedIndexChanged(object sender, EventArgs e)
    {

        //Control c = sender as Control;
        //if (c == null) return;
        //LinkButton hdnId = c.Parent.FindControl("LinkButton1") as LinkButton;

        //String id1 = hdnId.Text;
        //Int32 id = Convert.ToInt16(id1);

         
        //ShoppingCart.Instance.AddItem(id);
        ////Response.Redirect("NewHome.aspx");
    }

}
