using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LiveNode();
        }
      
    }

    private void LiveNode()
    {
        string node1 = "Button1";
        string node2 = "Button2";
        if (File.Exists(@"\\dcsft01\d$\Inetpub\ping\ping.html"))
        {
            if (File.Exists(@"\\dcsfbt01\d$\Inetpub\ping\ping.html"))
            {
                //Response.Write("both are live");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "getblnk", "blinktext('" + node1 + "');", true);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "getblnk", "blinktext('" + node2 + "');", true);
            }
            else
            {
                //Response.Write("only A live");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "getblnk", "blinkeffect('#"+node1+"');", true);
            }
        }
        else
        {
            if (File.Exists(@"\\dcsfbt01\d$\Inetpub\ping\ping.html"))
            {
                //Response.Write("only B live");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "getblnk", "blinktext('" + node2 + "');", true);
            }
        }
 
    }
}