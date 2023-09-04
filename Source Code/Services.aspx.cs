using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Aboutus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Service"] = "CateringService";
        Response.Redirect("ServicesRView.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["Service"] = "Mehndi";
        Response.Redirect("ServicesRView.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["Service"] = "PartyPlot";
        Response.Redirect("ServicesRView.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["Service"] = "PhotoGraphy";
        Response.Redirect("ServicesRView.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["Service"] = "Pandit";
        Response.Redirect("ServicesRView.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Session["Service"] = "Parlour";
        Response.Redirect("ServicesRView.aspx");
    }
}