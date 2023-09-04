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
/**
 * The Product class
 * 
 * This is just to simulate some way of accessing data about  our products
 */
public class Product
{

	public string Id { get; set; }
    public decimal Price { get; set; }
	public string Description { get; set; }

	public Product(string id)
	{

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from ProductInfo where ProductId =@pid", con);
        cmd.Parameters.AddWithValue("@pid", id);
       
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);

      if (dt.Rows.Count > 0)
        {
     decimal price= Convert.ToInt16(dt.Rows[0]["ProductPrice"].ToString());
     this.Price = price;
          this.Description= dt.Rows[0]["ProductName"].ToString();
           
      }

       
         

        
        
        }
	}


