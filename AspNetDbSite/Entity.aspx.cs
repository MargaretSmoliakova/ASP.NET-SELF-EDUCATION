using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using ClassLibraryForEF;
using System.Collections;
using System.Web.ModelBinding;

public partial class Entity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // The return type can be changed to IEnumerable, however to support
    // paging and sorting, the following parameters must be added:
    //     int maximumRows
    //     int startRowIndex
    //     out int totalRowCount
    //     string sortByExpression
    public IQueryable<ClassLibraryForEF.MonthlyPrice> GridView2_GetData([Control("cboGroup")]string group = "")
    {
        return string.IsNullOrEmpty(group) ? new MonthlyPricesRepo().GetAll().AsQueryable() : new MonthlyPricesRepo().GetAll().Where(x => x.Group == group).AsQueryable();
    }

    // The id parameter name should match the DataKeyNames value set on the control
    public void GridView2_DeleteItem(int id)
    {
        new MonthlyPricesRepo().Delete(id);
    }

    // The id parameter name should match the DataKeyNames value set on the control
    public async void GridView2_UpdateItem(MonthlyPrice entity)
    {
        if (ModelState.IsValid)
        {
            await new MonthlyPricesRepo().SaveAsync(entity);
        }
        
    }

    public IEnumerable GetGroup() => new MonthlyPricesRepo().GetAll().Select(x => new { x.Group }).Distinct();
}