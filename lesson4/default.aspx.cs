using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lesson4
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //Calculate Tip
            Decimal tip = Convert.ToDecimal(txtAmount.Text) * Convert.ToDecimal(ddlPercent.SelectedValue);

            //display tip
            lblTip.Text = tip.ToString("c");

            //calculate total
            Decimal total = Convert.ToDecimal(txtAmount.Text) + tip;
            
            //display total
            lblTotal.Text = total.ToString("c");

            pnlResults.Visible = true;

        }
    }
}