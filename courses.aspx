<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="RegisterLogin.courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mx-auto" style="height: 100px; margin-top: 6em; display: block">
        <h1 class="text-center">Our Courses</h1>
    </div>
    
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="293px" Width="310px" RepeatDirection="Horizontal" CellPadding="2" CellSpacing="10" HorizontalAlign="Center" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" DataKeyField="c_id">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align:center; background-color:#5f98f3">
                        <asp:Image ID="Image1" runat="server" Height="279px" Width="350px" BorderWidth="1px" ImageUrl='<%# Eval("imageurl") %>'/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center; background-color:#5f98f3">
                       <h3> <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>' Font-Bold="True" Font-Names="Open Sans Extrabold" ForeColor="White"></asp:Label></h3>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center; background-color:#5f98f3">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>' Font-Bold="True" Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    
                    <td style="text-align:center; background-color:#5f98f3"> 
                       <h5>Get it for <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>' Font-bold="True" Font-Names="Arial" ForeColor="Black" style="text-align:center"></asp:Label> BDT </h5> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Add To Cart" class="btn btn-primary btn-block btn-lg" CommandArgument='<%# Eval("c_id") %>' CommandName="AddToCart"/>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elearningdbConnectionString %>" SelectCommand="SELECT [c_id], [imageurl], [title], [description], [price] FROM [courses]">
    </asp:SqlDataSource>
</asp:Content>
