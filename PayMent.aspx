<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PayMent.aspx.cs" Inherits="PayMent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 41%;
            height: 287px;
            margin-left: 47px;
        }
        .style14
    {
        width: 112px;
    }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 386px">
<table style="width: 248px; margin-left: 50px"><tr><td>
    <asp:Label ID="Label1" runat="server" Text="Your Total Amount"></asp:Label></td>
    <td class="style14">
&nbsp;<asp:TextBox ID="Total" runat="server" 
        Height="25px" Width="59px"></asp:TextBox>
    Rs</td></tr></table>
    <br /> 
      <asp:Label ID="adress" runat="server" Text="ADDRESS" Font-Bold="True" 
        Font-Size="Medium"></asp:Label>
    <table class="style13">
     
            <td>
                <asp:Label ID="name" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="mno" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="pin" runat="server" Text="Pincode"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="state" runat="server" Text="State"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="address" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="locality" runat="server" Text="Locality/Town"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="city" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbox7" runat="server"></asp:TextBox>
                <br />
                <br />
                 <asp:Button ID="Button1" runat="server" Text="Proceed" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
  
</div>
</asp:Content>

