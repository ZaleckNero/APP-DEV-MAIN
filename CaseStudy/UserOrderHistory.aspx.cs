using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;

namespace CaseStudy
{
    public partial class UserOrderHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindOrderChart();
            }
        }

        private void BindOrderChart()
        {
            // Sample data – replace with DB call if needed
            var orders = new List<OrderData>
            {
                new OrderData { Product = "Mouse", Quantity = 2 },
                new OrderData { Product = "Printer Ink", Quantity = 1 },
                new OrderData { Product = "Dot Matrix", Quantity = 3 },
                new OrderData { Product = "LCD Monitor", Quantity = 1 },
                new OrderData { Product = "LED Monitor", Quantity = 2 }
            };

            OrderChart.Series["Orders"].Points.DataBind(orders, "Product", "Quantity", "");
        }

        public class OrderData
        {
            public string Product { get; set; }
            public int Quantity { get; set; }
        }
    }
}