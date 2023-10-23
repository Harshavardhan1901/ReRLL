<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="LoginGrocery.Buyer.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Shopping Cart</h2>
        <asp:GridView ID="CartGridView" runat="server" AutoGenerateColumns="False" OnRowCommand="CartGridView_RowCommand" DataKeyNames="CartId">
            <Columns>
                <asp:TemplateField HeaderText="Product">
                    <ItemTemplate>
                        <div class="row no-gutters">
                            <div class="col-md-4">
                                <asp:Image ID="ProductImage" runat="server" ImageUrl='<%# Eval("ProductImage") %>' CssClass="card-img-top" Width="100" Height="100" />
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("ProductName") %></h5>
                                    <%--<p class="card-text"><%# Eval("ProductDescription") %></p>--%>
                                    <p class="card-text"><b>Rs.<%# Eval("Price") %>/-</b></p>
                                    <div class="form-group">
                                        <label for="quantity">Quantity:</label>
                                        <asp:TextBox ID="QuantityTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Quantity") %>' Width="40" ReadOnly="true"></asp:TextBox>
                                       <asp:LinkButton ID="IncreaseButton" runat="server" Text="+" CommandName="AdjustQuantity" CommandArgument='<%# Container.DataItemIndex + ",Increase" %>' CssClass="btn btn-outline-secondary"></asp:LinkButton>
                                       <asp:LinkButton ID="DecreaseButton" runat="server" Text="-" CommandName="AdjustQuantity" CommandArgument='<%# Container.DataItemIndex + ",Decrease" %>' CssClass="btn btn-outline-secondary"></asp:LinkButton>


                                    </div>
                                    <br />
                                    <div class="text-center">
                                        <p class="card-text"><b>Price : Rs.<%# Eval("Price", "{0:C}") %>* <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Quantity") %>' ReadOnly="true" /> = Rs.<%# Eval("TotalCost", "{0:C}") %></b></p>
                                    </div>
                                    <asp:LinkButton ID="RemoveButton" runat="server" Text="Remove From Cart" CommandName="RemoveFromCart" CommandArgument='<%# Eval("CartId") %>' CssClass="btn btn-outline-danger"></asp:LinkButton>
                                    
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
 <%--       <asp:Button ID="PlaceOrderButton" runat="server" Text="Place Order" OnClick="PlaceOrderButton_Click" CssClass="btn btn-primary" />--%>

        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Order Now</asp:LinkButton>

    </div>
</asp:Content>
