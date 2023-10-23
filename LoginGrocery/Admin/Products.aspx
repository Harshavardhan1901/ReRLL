﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="LoginGrocery.Admin.Products" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="col-md-4">
            <asp:DropDownList ID="CategoryDropDown" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CategoryDropDown_SelectedIndexChanged">
            </asp:DropDownList><br />
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-4 text-right mt-1">
            <asp:Button ID="AddProductButton" runat="server" Text="Add Product" OnClick="AddProductButton_Click" CssClass="btn btn-primary" Width="160px" />
            </div>
        </div>
    </div>
    
    <div class="row">
        <asp:Repeater ID="ProductRepeater" runat="server" OnItemCommand="ProductRepeater_ItemCommand">
            <ItemTemplate>
                <div class='col-md-3 mb-4'>
                    <div class='card h-100'>
                        <div class='card-body d-flex flex-column'>
                            <asp:Image ID="ProductImage" runat="server" ImageUrl='<%# Eval("ProductImage") %>' CssClass="card-img-top" />
                            <h5 class='card-title text-center'><%# Eval("ProductName") %></h5>
                            <p class='card-text text-center'><%# Eval("Price", "{0:C}") %></p>
                            <asp:Button ID="EditButton" runat="server" Text="Edit" CssClass="btn btn-outline-success" CommandName="EditProduct" CommandArgument='<%# Eval("ProductId") %>' />
                            <asp:Button ID="DeleteButton" runat="server" Text="Delete" CssClass="btn btn-outline-danger" CommandName="DeleteProduct" CommandArgument='<%# Eval("ProductId") %>' OnClientClick="return confirm('Are you sure you want to delete this product?');" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
