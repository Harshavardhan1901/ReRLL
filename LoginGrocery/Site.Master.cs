using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginGrocery
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    string userName = Session["UserName"].ToString();
                    WelcomeLabel.Text = "Hello " + userName;
                }
                else if (Session["UserId"] != null)
                {
                    string userId = Session["UserId"].ToString();
                    WelcomeLabel.Text = "Hello " + userId;
                }
            }

        }
    }
}