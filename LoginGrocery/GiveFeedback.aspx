<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GiveFeedback.aspx.cs" Inherits="LoginGrocery.GiveFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 
  
    <div class="container mt-4">
        <div class="card w-50 mx-auto">
            <div class="card-body">
                <h5 class="card-title">User Feedback</h5>
                <asp:Label ID="LblMsg" runat="server" CssClass="mt-2"></asp:Label>
                <table class="table">
                    
                    <tr>
                        <td>Rating</td>
                        <td>
                            <asp:TextBox ID="RatingTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Comments</td>
                        <td>
                            <asp:TextBox ID="CommentsTextBox" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="SubmitButton" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="SubmitButton_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>



</asp:Content>
