<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="RegisterLogin.usersignup" %>
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
                                    <img width="100" src="img/signupicon.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>User Sign Up</h4>
                                </center>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <label><b>Full Name</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Enter Full Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label><b>Date of Birth</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Enter Password" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <label><b>Email</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                        runat="server" placeholder="Enter Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label><b>Contact Number</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" 
                                        runat="server" placeholder="Enter Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <label><b>Password</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" 
                                        runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label><b>Confirm Password</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" 
                                        runat="server" placeholder="Enter Password Again" TextMode="Password"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                        ErrorMessage="Password is not matched!" ControlToCompare="TextBox5" ControlToValidate="TextBox6"></asp:CompareValidator> 
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
                                        runat="server" Text="Sign Up" OnClick="Button1_Click" /></center>
                                </div>
                                <hr />
                                <div class="form-group">
                                    <h6>Already have an account?</h6>
                                     <a href="userlogin.aspx"</a><input type="button" class="btn btn-info btn-block btn-lg" 
                                        id="Button2"  value="Login Here" />  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
