using System;
using System.Web.Services;

namespace WebApplication1
{
    public partial class How_to_call_web_method_in_asp_net_using_jquery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string GetDropDownSelectedData(string selectedData)
        {
            //you can write you code here
            return selectedData;
        }
    }
}