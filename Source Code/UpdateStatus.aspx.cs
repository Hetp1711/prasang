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


public partial class UpdateStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        con.Open();
        SqlCommand cmd;

        string a = "update Orderinfo  set OrderStatus=@p1 where OrderNo=" + DropDownList1.SelectedItem.ToString();
        cmd = new SqlCommand(a, con);
        cmd.Parameters.AddWithValue("@p1", DropDownList2.SelectedItem.ToString());
        cmd.ExecuteNonQuery();
        con.Close();
      Label1.Text = "Status Changed  ";
    }
}