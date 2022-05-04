<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="RegisterLogin.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <!--<img style="position: absolute; left: 0px; top: 0px; z-index: -1000; height:100%; width:100%" src="img/homepage.jpg"; />
        <p >
           style="margin-top: 200px; background-color:none"
        </p>-->

         <link href="CustomCSS/home.css" rel="stylesheet" />
        <div class="container" >
          <img src="img/homepage.jpg" alt="Snow" style="width:100%;height:100%;left: 0px;z-index: -1000;">
          
          
          <div class="top-right" style="margin-top:3em;font-size:45px;color:black;font-family:fantasy">Never Give Up Learning</div>
            
          <div class="bottom-right" style="margin-bottom:7em;margin-right:2em;font-size:45px;color:black;font-family:fantasy">Join Us Now</div>
          
        </div>
    
</asp:Content>
