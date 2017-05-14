using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ListControlsInPanel();
    }

    private void ListControlsInPanel()
    {
        var theInfo = "";
        theInfo = $"<b>Does the panel have controls?{myPanel.HasControls()}</b><br/>";

        foreach (Control c in myPanel.Controls)
        {
            if (!object.ReferenceEquals(c.GetType(), typeof(System.Web.UI.LiteralControl)))
            {
                theInfo += "******************************<br />";
                theInfo += $"Control Name?{c} <br />";
                theInfo += $"ID?{c.ID} <br />";
                theInfo += $"Control Visible?{c.Visible} <br />";
                theInfo += $"ViewState? {c.EnableViewState} <br />";
            }
        }

        lblControlInfo.Text = theInfo;
    }

    protected void btnAddWidgets_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < 3; i++)
        {
            TextBox t = new TextBox { ID = $"newTextBox{i}" };
            myPanel.Controls.Add(t);
            ListControlsInPanel();
        }             
    }

    protected void btnClearPanel_Click(object sender, EventArgs e)
    {
        myPanel.Controls.Clear();
        ListControlsInPanel();
    }

    protected void btnGetTextData_Click(object sender, EventArgs e)
    {
        string textBoxValues = "";

        for (int i = 0; i < Request.Form.Count; i++)
        {
            textBoxValues += $"<li>{Request.Form[i]}</li><br />";
        }

        lblTextBoxData.Text = textBoxValues;
    }
}