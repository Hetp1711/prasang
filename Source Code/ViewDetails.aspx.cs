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


public partial class Conformcpc : System.Web.UI.Page
{
    Random pid1 = new Random();
    Random billno1 = new Random();
    string amount;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from PropertyForSellInfo where PrpertyID=@username ", con);
        cmd.Parameters.AddWithValue("@username", Session["PId"].ToString());
       
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);

     lblId.Text = Session["PId"].ToString();
    lblPtype.Text = dt.Rows[0]["PrpertyType"].ToString();
    //cement.Text = dt.Rows[0]["Cement"].ToString();
    // lblMno.Text = dt.Rows[0]["Sand"].ToString();
    lblLandMark.Text = dt.Rows[0]["SellAmount"].ToString();
    lblArea.Text = dt.Rows[0]["CarpetArea"].ToString();
        //lblRent.Text = dt.Rows[0]["Steel16MM"].ToString();
        //  Tile.Text = dt.Rows[0]["Tile"].ToString();
        //door.Text   = dt.Rows[0]["Door"].ToString();
        //interior.Text = dt.Rows[0]["Interior"].ToString();
        // paint.Text = dt.Rows[0]["Paint"].ToString();
       lblCarea.Text= dt.Rows[0]["Area"].ToString();
        lblCity.Text = dt.Rows[0]["City"].ToString();
    lblName.Text = dt.Rows[0]["OwnerName"].ToString();
      floor.ImageUrl = dt.Rows[0]["CoverImage"].ToString();
      floor3d.ImageUrl = dt.Rows[0]["OutsideImage"].ToString();
    elevation3d.ImageUrl = dt.Rows[0]["InsideImage"].ToString();
        lblRoom.Text = dt.Rows[0]["Room"].ToString();


    }
   



   
}