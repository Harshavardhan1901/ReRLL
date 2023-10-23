using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginGrocery.Buyer
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string quantity = TextBox1.Text;
            string productName=TextBox2.Text; // = ProductNameTextBox.Text.ToString();
            string totalAmount=TextBox3.Text;//= TotalAmountTextBox.Text;
            bool cashOnDelivery = CheckBox1.Checked;
            string addressDetails = TextBox4.Text;                         // = AddressDetailsTextBox.Text;

           // Validate the input data as needed

            // Assuming you have a database, you can store the order information
           if (StoreOrderInDatabase(quantity, productName, totalAmount, cashOnDelivery, addressDetails))
            {
                // Order stored successfully, you can show a success message or redirect to a confirmation page
                // For example:
                Response.Redirect("OrderConfirmation.aspx");
            }
            else
            {
                // Failed to store the order, you can show an error message or take appropriate action
                // For example:
                Response.Write("Failed to place the order. Please try again.");
            }
        }

        private bool StoreOrderInDatabase(string quantity, string productName, string totalAmount, bool cashOnDelivery, string addressDetails)
        {
            try
            {
                // Your database connection and query logic goes here
                // You would typically use ADO.NET or an ORM like Entity Framework

                // For simplicity, let's assume you have a SQL Server database
                using (SqlConnection connection = new SqlConnection("YourConnectionString"))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand("INSERT INTO Orders (Quantity, ProductName, TotalAmount, CashOnDelivery, AddressDetails) VALUES (@Quantity, @ProductName, @TotalAmount, @CashOnDelivery, @AddressDetails)", connection))
                    {
                        command.Parameters.AddWithValue("@Quantity", quantity);
                        command.Parameters.AddWithValue("@ProductName", productName);
                        command.Parameters.AddWithValue("@TotalAmount", totalAmount);
                        command.Parameters.AddWithValue("@CashOnDelivery", cashOnDelivery);
                        command.Parameters.AddWithValue("@AddressDetails", addressDetails);

                        int rowsAffected = command.ExecuteNonQuery();
                        return rowsAffected > 0;
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any database-related exceptions here (e.g., log the error)
                return false;
            }
        }
    }
}


