using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy
{
    public partial class UserHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMarket();
                BindOrderHistory();
            }
        }

        private void BindMarket()
        {
            var products = new List<dynamic>
            {
                new { ProductId = "MSE", ProductName = "Mouse", Price = 350.00 * 1.15, Stocks = 100, SRP = 350.00 },
                new { ProductId = "PRN", ProductName = "Printer Ink", Price = 7500.00 * 1.15, Stocks = 100, SRP = 7500.00 },
                new { ProductId = "PRNDT", ProductName = "Printer Dot Matrix", Price = 5000.00 * 1.15, Stocks = 100, SRP = 5000.00 },
                new { ProductId = "MNTRLc", ProductName = "LCD Monitor", Price = 6500.00 * 1.15, Stocks = 100, SRP = 6500.00 },
                new { ProductId = "MNTRLe", ProductName = "LED Monitor", Price = 7500.00 * 1.15, Stocks = 100, SRP = 7500.00 }
            };

            GridViewMarket.DataSource = products;
            GridViewMarket.DataBind();
        }

        private void BindOrderHistory()
        {
            var order = new List<dynamic>();

            // Example entry
            double price = 350.00;
            int quantity = 2;
            double amount = price * quantity;
            double vat = amount * 0.10;
            double discount = amount * 0.10; // e.g., Gold Member = 10%
            double total = (amount + vat) - discount;

            order.Add(new
            {
                ProductName = "Mouse",
                Price = price,
                Quantity = quantity,
                Amount = amount,
                VAT = vat,
                Discount = discount,
                TotalPurchase = total
            });

            GridViewHistory.DataSource = order;
            GridViewHistory.DataBind();
        }

        protected void GridViewHistory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridViewMarket_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
