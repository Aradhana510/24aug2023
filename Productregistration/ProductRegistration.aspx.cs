using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Productregistration
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Get values from form controls
                string productName = txtProductName.Text;
                string category = ddlCategory.SelectedValue;
                decimal price = decimal.Parse(txtPrice.Text);
                string description = txtDescription.Text;
                DateTime releaseDate = calReleaseDate.SelectedDate;

                // Perform product registration logic (e.g., save to a database)

                // Display confirmation message
                lblConfirmation.Text = "Product registered successfully!";
                lblConfirmation.Visible = true;

                // You can also redirect to a success page if needed
                // Response.Redirect("Success.aspx");
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}