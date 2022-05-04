<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="updateprofile.aspx.cs" Inherits="RegisterLogin.updateprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:5em">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="img/updateprofile.jpeg" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Update Info</h4>
                                </center>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                               <p><b>Current Name:</b>  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Enter Full Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                               <p><b>Current Date: </b> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></p>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Enter Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <p><b>Current Email: </b><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                        runat="server" placeholder="Enter Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <p><b>Current Contact: </b><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></p>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" 
                                        runat="server" placeholder="Enter Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <p><b>Current Password: </b> 
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></p>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" 
                                        runat="server" placeholder="Enter Current Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label style="margin-bottom:1em"><b>New Password</b>(Optional)</label>
                               
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" 
                                        runat="server" placeholder="Enter New Password" TextMode="Password"></asp:TextBox>
                                    
                                </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                
                                
                                <br />
                                <div class="form-group">
                                    <center><asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" 
                                        runat="server" Text="Update" OnClick="Button1_Click"  /></center>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
