<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="LoginGrocery.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HyperLink ID="AddCategoryLink" runat="server" NavigateUrl="~/Admin/AddCategory.aspx" Text="Add Category"></asp:HyperLink>
    <asp:GridView ID="CategoryGridView" runat="server" AutoGenerateColumns="false" DataKeyNames="CategoryId" OnRowEditing="CategoryGridView_RowEditing" OnRowDeleting="CategoryGridView_RowDeleting" CssClass="table table-bordered">
    <Columns>
        <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
        <asp:ButtonField Text="Edit" ButtonType="Link" CommandName="Edit" HeaderText="Edit" />
        <asp:ButtonField Text="Delete" ButtonType="Link" CommandName="Delete" HeaderText="Delete" />
    </Columns>
</asp:GridView>

</asp:Content>
