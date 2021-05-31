<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .img3
     {
         text-align :center;
         background-image:url('hoodies/background/rainbow_colors_blurred-1280x720%20(1).jpg');
            height: 495px;
        }
     .img5
     {
         border: 5px groove black;
     }
         
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="img3" >
    <br /><br />
 <asp:Image ID="img1" CssClass="img5" ImageAlign="Middle" runat="server" 
         Height="361px" Width="649px" 
         ImageUrl="~/hoodies/background/gallery.jpeg" /></div>
     </asp:Content>

