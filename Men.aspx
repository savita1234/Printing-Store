<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Men.aspx.cs" Inherits="Men" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .product
        {
            height: 300px;
            width:300px;
            text-align:center;
            Display: inline;
            border:5px groove black;
            
        } 
          
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="product">

     <asp:Panel runat="server" ID="ProductPanel">
     
     </asp:Panel>
</div>
</asp:Content>

