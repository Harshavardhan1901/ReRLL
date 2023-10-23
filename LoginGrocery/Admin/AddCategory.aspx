<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="LoginGrocery.Admin.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Add Category</h2>
    <div>
        <asp:Label ID="CategoryLabel" runat="server" Text="Category Name:"></asp:Label>
        <asp:TextBox ID="CategoryNameTextBox" runat="server"></asp:TextBox>
        <asp:Button ID="AddButton" runat="server" Text="Add" OnClick="AddButton_Click" />
    </div>
    <asp:Label ID="ErrorMessageLabel" runat="server" Text="" ForeColor="Red"></asp:Label>

</asp:Content>
