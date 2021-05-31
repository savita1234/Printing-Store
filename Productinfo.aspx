<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Productinfo.aspx.cs" Inherits="Productinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 100%;
            height: 421px;
        }
        .style14
        {
            height: 81px;
        }
        .style15
        {
            height: 81px;
            width: 436px;
        }
        .style16
        {
            width: 436px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <table class="style13">
        <tr>
            <td class="style15">
            
                <asp:Image ID="Image1" runat="server" Height="259px" Width="290px" />
            </td>
            <td class="style14">
            <table style="height: 210px; width: 393px"><tr><td>
                <asp:Label ID="Label1" runat="server" Text="TSHIRT NAME-"></asp:Label></td><td>
                    <asp:TextBox ID="name" runat="server" Width="178px"></asp:TextBox>
                </td></tr>
                <tr><td>
                <asp:Label ID="Label2" runat="server" Text="COLOR-"></asp:Label></td><td>
                <asp:TextBox ID="color" runat="server" Height="31px" Width="130px"></asp:TextBox></td></tr>
                <tr><td>
                <asp:Label ID="Label3" runat="server" Text="STYLE-"></asp:Label></td><td>
                <asp:TextBox ID="style" runat="server" Height="28px" Width="131px"></asp:TextBox></td></tr>
                <tr><td>
                <asp:Label ID="Label4" runat="server" Text="PRICE-"></asp:Label></td><td>
                <asp:TextBox ID="price" runat="server" Height="33px" Width="86px"></asp:TextBox></td></tr></table>
                <br />
        
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td>
           
                        <br />
                        <br />
                        <table>
                        <tr> <td>
                        <asp:Label ID="lbl1" runat="server" Text="YOUR TOTAL AMOUNT IS-"></asp:Label></td>
                        <td><asp:TextBox ID="txt1" runat="server"></asp:TextBox></td></tr></table>
                        
           
                  
                    <br />
                    <table>
                    <tr><td><asp:Label ID="lbl2" runat="server" Text="SIZE"></asp:Label></td>
                    <td><asp:Label ID="lbl3" runat="server" Text="QUANTITIY"></asp:Label></td>
                    </tr>
                    <tr><td>SMALL</td><td><asp:TextBox ID="text1" runat="server"></asp:TextBox></td></tr>
                    <tr><td>MEDIUM</td><td><asp:TextBox ID="text2" runat="server"></asp:TextBox></td></tr>
                    <tr><td>LARGE</td><td><asp:TextBox ID="text3" runat="server"></asp:TextBox></td></tr>
                    <tr><td>XLARGE</td><td><asp:TextBox ID="text4" runat="server"></asp:TextBox></td></tr>
                    <tr><td>TOTAL</td><td><asp:TextBox ID="text5" runat="server"></asp:TextBox></td></tr>
                    
                    </table>
                    <br />
                <asp:Button ID="Button1" runat="server" Text="SAVE" 
                    onclick="Button1_Click" style="height: 26px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="MAKE PAYMENT" onclick="Button2_Click" />

                &nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>

