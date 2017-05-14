using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Annotations : System.Web.UI.Page
{
    private MonthlyPriceClass _model = null;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void fvDataBinding_InsertItem(MonthlyPriceClass entity)
    {       
        if (ModelState.IsValid)
        {
            _model = entity;
            // Add new record here
        }
    }

    // The id parameter name should match the DataKeyNames value set on the control
    public void fvDataBinding_UpdateItem(int id)
    {
        MonthlyPriceClass item = new MonthlyPriceClass();
        
        if (TryUpdateModel(item))
        {
            _model = item;
            // Update record here
        }
        
    }

    // The id parameter should match the DataKeyNames value set on the control
    // or be decorated with a value provider attribute, e.g. [QueryString]int id
    public MonthlyPriceClass fvDataBinding_GetItem() => _model;
   
}