<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="RegisterLogin.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin-top:6em">
    <div class="main-body">
    
          <!-- Breadcrumb 
          <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item"><a href="javascript:void(0)">User</a></li>
              <li class="breadcrumb-item active" aria-current="page">User Profile</li>
            </ol>
          </nav>
          <!-- /Breadcrumb -->
    
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">
                    <h4><asp:Label ID="LblName" runat="server" Text="LabelName"></asp:Label></h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card mt-3">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6>Email : </h6>
                      <asp:Label ID="Lblemail" runat="server" Text="Email Here"></asp:Label>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                      <h6>Date of Birth : </h6>
                      <asp:Label ID="Lbldob" runat="server" Text="Date of birth here"></asp:Label>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                      <h6>Contact : </h6>
                      <asp:Label ID="Lblcontact" runat="server" Text="Contact Number here"></asp:Label>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6>Password : </h6>
                      <asp:Label ID="Lblpassword" runat="server" Text="Password here"></asp:Label>
                  
                </ul>
                  <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block btn-info" Text="Update Profile Info" OnClick="Button1_Click" />
              </div>
            </div>
              <div class="col-md-8">
                  <div class="card mb-3">
                      <div class="card-body">
                          <div class="mx-auto" style="height: 100px; margin-top: 1em; display: block">
                              <h1 class="text-center"><i>Your Enrolled Courses</i></h1>
                          </div>
                          <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="293px" Width="310px" RepeatDirection="Horizontal" CellPadding="2" CellSpacing="10" HorizontalAlign="Center" RepeatColumns="2"  DataKeyField="name">
                              <ItemTemplate>
                                  <table>
                                      <tr>
                                          <td style="text-align: center; background-color: #5f98f3">
                                              <asp:Image ID="Image1" runat="server" Height="279px" Width="300px" BorderWidth="1px" ImageUrl='<%# Eval("imageurl") %>' />
                                          </td>
                                      </tr>
                                      <tr>
                                          <td style="text-align: center; background-color: #5f98f3">
                                              <h3>
                                                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>' Font-Bold="True" Font-Names="Open Sans Extrabold" ForeColor="White"></asp:Label></h3>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td style="text-align: center; background-color: #5f98f3">
                                              <asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>' Font-Bold="True" Font-Names="Arial" ForeColor="Black" Style="text-align: center"></asp:Label>
                                          </td>
                                      </tr>

                                      
                                      <tr>
                                          <td>
                                              <asp:Button ID="Button2" runat="server" Text="View Course Materials" class="btn btn-primary btn-block btn-lg" CommandArgument='<%# Eval("name") %>' CommandName="ViewMaterials" />
                                          </td>
                                      </tr>
                                  </table>
                                  <br />
                                  <br />
                              </ItemTemplate>
                          </asp:DataList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elearningdbConnectionString %>" SelectCommand="SELECT [name], [id], [imageurl], [title], [description], [price] FROM [coursestaken] WHERE ([name] = @name)">
                              <SelectParameters>
                                  <asp:SessionParameter Name="name" SessionField="fullname" Type="String" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                      </div>
                  </div>

              <!--<div class="row gutters-sm">
                <div class="col-sm-6 mb-3">
                  <div class="card h-100">
                    <div class="card-body">
                      <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">assignment</i>Project Status</h6>
                      <small>Web Design</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Website Markup</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 72%" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>One Page</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 89%" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Mobile Template</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Backend API</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 mb-3">
                  <div class="card h-100">
                    <div class="card-body">
                      <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">assignment</i>Project Status</h6>
                      <small>Web Design</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Website Markup</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 72%" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>One Page</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 89%" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Mobile Template</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Backend API</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>-->



            </div>
          </div>

        </div>
    </div>
</asp:Content>
