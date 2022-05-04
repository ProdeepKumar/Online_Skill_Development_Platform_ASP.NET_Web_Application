<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="insertcourse.aspx.cs" Inherits="RegisterLogin.insertcourse" %>
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
                                    <img width="100" src="img/insert.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Insert Here</h4>
                                </center>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <label><b>Course ID</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Enter Course Id"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label><b>Course Title</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Enter Title Of the course"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <label><b>Description</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" TextMode="MultiLine" Rows="5" 
                                        runat="server" placeholder="Enter Description of the course"></asp:TextBox>
                                </div>
                            </div>
                            </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <label><b>Image Location</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" 
                                        runat="server" placeholder="Enter Image URL"></asp:TextBox>
                                </div>
                            </div>
                        
                       
                        
                            <div class="col-md-6">
                                <label><b>Price</b></label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" 
                                        runat="server" placeholder="Enter Price" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            
                        </div>
                        <br />

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                
                                
                                
                                <div class="form-group">
                                    <center><asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" 
                                        runat="server" Text="Insert" OnClick="Button1_Click" /></center>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
