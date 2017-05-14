using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BuildEntityInDb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void FinishButton_Click1(object sender, EventArgs e)
    {
        string order = $"Your cost under name '{TextBox1.Text}' is in the amount of {TextBox2.Text}" +
            $" and has the gategory '{ListBox1.SelectedValue}'. And you choose the following date:" +
            $" {Calendar1.SelectedDate.ToShortDateString()}.";

        Label1.Text = order;

        //Label1.Text = "boom";
    }
}