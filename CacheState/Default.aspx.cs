using System;
using ClassLibraryForEF;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridView.DataSource = (IList<MonthlyPrice>)Cache["MonthlyPriceList"];
            gridView.DataBind();
        }        
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        new MonthlyPricesRepo().Add(new MonthlyPrice()
        {
            Id = int.Parse(textBoxID.Text),
            Name = textBoxName.Text,
            Group = textBoxGroup.Text

        });

        RefreshGrid();        
    }

    private void RefreshGrid()
    {
        gridView.DataSource = new MonthlyPricesRepo().GetAll();
        gridView.DataBind();
    }
}