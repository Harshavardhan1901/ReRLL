<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="LoginGrocery.UserDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


       <%-- <style>
        body {
            background-image: url('data:image/jpeg;base64,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');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">--%>
     <div class="container">
       <div class ="row">
           <div class ="col-md-8 mx-auto">
               <br>
               <div class ="card">
                   <div class ="card-body">
                       
                       <div class ="row">
                           <div class="col">
                               <center>
                                   <img src="Images/UserLogin.png" /width="130" height="130">
                                   

                               </center>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col">
                               <center>
                                   <h3>User Details</h3>

                               </center>
                           </div>
                       </div>                      

                        <div class ="row">
                           <div class="col">
                               <hr>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col-md-6">
                              <label>First Name</label>
                               <div class="form-group">
                               </div>
                           </div>

                           <div class="col-md-6">
                              <label>Last Name</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="LastName" runat="server" placeholder="Last Name"></asp:TextBox>

                               </div>
                           </div>
                       </div>
                       

                       <div class ="row">
                           <div class="col-md-6">
                              <label>Email ID</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Email" runat="server" placeholder="Email ID"></asp:TextBox>
                               </div>
                           </div>

                           <div class="col-md-6">
                              <label>Contact Number</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="ContactNumber" runat="server" placeholder="Contact Number"></asp:TextBox>
                               </div>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col">
                               

                               <label>Date of Birth</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Dob" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                               </div>
                               

                              


                               <label>User ID</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="UserId" runat="server" placeholder="User ID"></asp:TextBox>
                               </div>
                               

                             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

                               <label>Password</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Password" runat="server" placeholder="Password" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
                                          
                                  
                                    &nbsp;       </div>
                               

                           <%--    <label>Confirm Password</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="ConfirmPassword" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirm Password is Required" ControlToValidate="ConfirmPassword" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Password must contain atleast 6 characters including atleast 1 special character and 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*[a-zA-Z]{3,})(?=.*\d)(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).{6,}$"></asp:RegularExpressionValidator>
                                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password must match Password" ForeColor="#CC0000"></asp:CompareValidator>
                               </div>

                               

                               <div class="form-group">
                                  <asp:Button ID="Button1" class="btn btn-success w-100 btn-lg" runat="server" Text="Sign Up" OnClick="Button1_Click"/>

                               </div>--%>
                         </div>
       </div>
       </div>
       </div>
</div>
</div>
</div>
</asp:Content>
