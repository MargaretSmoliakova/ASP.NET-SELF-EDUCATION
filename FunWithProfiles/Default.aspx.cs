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
        GetUserAddress();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Profile.Address.StreetAddress = TextBox1.Text;
        Profile.Address.City = TextBox2.Text;
        Profile.Address.State = TextBox3.Text;

        GetUserAddress();
    }

    private void GetUserAddress()
    {
        lblUserData.Text = $"You live here: {Profile.Address.StreetAddress}, {Profile.Address.City}, {Profile.Address.State}";
    }
}