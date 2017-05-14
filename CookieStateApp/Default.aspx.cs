using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie theCookie = new HttpCookie(TextBox1.Text, TextBox2.Text);
        theCookie.Expires = DateTime.Now.AddMonths(3);
        Response.Cookies.Add(theCookie);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string cookieData = "";

        foreach (string s in Request.Cookies)
        {
            cookieData += $"<li><b>Name</b>: {s}, <b>Value</b>: {Request.Cookies[s]?.Value}</li>";
        }

        Label4.Text = cookieData;
    }
}