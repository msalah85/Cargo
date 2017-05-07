using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMarkupMin.AspNet4.WebForms;

public partial class sys_master : MinifiedAndCompressedHtmlMasterPage //MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SessionManager.Current.ID == "0")
            Server.Transfer("default.aspx");
    }
}
