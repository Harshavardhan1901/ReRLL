<%@ Page Title="User Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="LoginGrocery.Buyer.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>User Profile</h2>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FirstName" Text="First Name" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="FirstName" runat="server" placeholder="First Name" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="LastName" Text="Last Name" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="LastName" runat="server" placeholder="Last Name" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ContactNumber" Text="Contact Number" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="ContactNumber" runat="server" placeholder="Contact Number" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" Text="Email" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="Email" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="DOB" Text="Date of Birth" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="DOB" runat="server" placeholder="Date of Birth" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserId" Text="User ID" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="UserId" runat="server" placeholder="User ID" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" Text="Password" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="Password" runat="server" placeholder="Password" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="NewPassword" Text="New Password" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="NewPassword" runat="server" placeholder="New Password" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" CssClass="btn btn-primary" />
        </div>
    </div>
</asp:Content>
