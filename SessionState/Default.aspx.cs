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
        var cart = (UserShoppingCart)Session["UserShoppingCarInfo"];
        cart.DateOfPickUp = Calendar1.SelectedDate;
        cart.DesiredCar = TextBox2.Text;
        cart.DesiredCarColor = TextBox1.Text;
        cart.DownPayment = float.Parse(TextBox3.Text);
        cart.IsLeasing = CheckBox1.Checked;
        LabelUserInfo.Text = cart.ToString();
        Session["UserShoppingCarInfo"] = cart;

    }
}