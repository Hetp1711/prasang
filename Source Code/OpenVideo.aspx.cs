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

        string url1 = "https://www.youtube.com/embed/" + Session["YouTubeId"];


      
        MyIframe.Attributes.Add("src", url1);

    }

    
}
