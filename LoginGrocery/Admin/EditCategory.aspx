<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="LoginGrocery.Admin.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Edit Category</h2>
    <asp:Label ID="ErrorMessageLabel" runat="server" Text="" ForeColor="Red"></asp:Label>
    <asp:Label ID="SuccessMessageLabel" runat="server" Text="" ForeColor="Green"></asp:Label>
    
    <asp:TextBox ID="CategoryNameTextBox" runat="server" CssClass="form-control" placeholder="Category Name"></asp:TextBox>
    <asp:Button ID="UpdateCategoryButton" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="UpdateCategoryButton_Click" />
</asp:Content>