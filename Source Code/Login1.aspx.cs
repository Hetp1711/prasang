﻿using System;
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

public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from ClientInfo where MobileNo =@username and Password=@password", con);
        cmd.Parameters.AddWithValue("@username", txtmobile.Text);
        cmd.Parameters.AddWithValue("@password", txtPass.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();



        da.Fill(dt);

        if (txtmobile.Text == "admin" && txtPass.Text == "admin")
        {
            Session["fname"] = "ADMIN";
            Response.Redirect("AdminHome.aspx");

        }



        else if (dt.Rows.Count > 0)
        {
            Session["GId"] = dt.Rows[0]["ClientId"];
            Session["Email"] = dt.Rows[0]["Email"];
            Session["fname"] = dt.Rows[0]["Name"];
            Session["MobileNo"] = dt.Rows[0]["MobileNo"];
            Session["Image"] = dt.Rows[0]["Image"];
         
            if(Session["flag"]!=null)
            {
                Response.Redirect("Sendquery.aspx");
            }

            else

            {
                Response.Redirect("UserHome.aspx");
            }
                
           



        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }



    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("MemberLogin.aspx");
    }
}