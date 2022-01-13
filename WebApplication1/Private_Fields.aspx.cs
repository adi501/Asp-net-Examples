using System;

namespace WebApplication1
{
    public partial class Private_Fields : System.Web.UI.Page
    {
        private static bool abc = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            bind();
            }
        }
        public void bind()
        {
            abc = true;
        }
        protected void btn1_Click(object sender, EventArgs e)
        {
            bool aaaa = abc;
        }
    }
}