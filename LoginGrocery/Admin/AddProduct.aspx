<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="LoginGrocery.Admin.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h3>Add a New Product</h3>
        <hr />

        <asp:DropDownList ID="CategoryDropDown" runat="server" CssClass="form-control" DataTextField="CategoryName" DataValueField="CategoryId" AppendDataBoundItems="true">
        </asp:DropDownList>

        <div class="form-group">
            <label for="ProductImage">Product Image URL:</label>
            <asp:TextBox ID="ProductImageTextBox" runat="server" CssClass="form-control" placeholder="Product Image URL" />
        </div>

        <div class="form-group">
            <label for="ProductName">Product Name:</label>
            <asp:TextBox ID="ProductNameTextBox" runat="server" CssClass="form-control" placeholder="Product Name" />
        </div>

        <div class="form-group">
            <label for="ProductPrice">Product Price:</label>
            <asp:TextBox ID="ProductPriceTextBox" runat="server" CssClass="form-control" placeholder="Product Price" />
        </div>

        <div class="form-group">
            <asp:Button ID="AddButton" runat="server" Text="Add Product" OnClick="AddButton_Click" CssClass="btn btn-primary" />
        </div>
    </div>
</asp:Content>
