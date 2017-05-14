using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    //private string userFavoriteSmth = "Smth";

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["FavSmth"] = TextBox1.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = (string)Session["FavSmth"];
    }
}