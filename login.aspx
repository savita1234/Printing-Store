<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server" >

    <style type="text/css">
        .style21
        {
            width: 64%;
            height: 347px;
        }
        .style23
        {
            width: 310px;
            text-align: right;
            font-size: large;
        height: 62px;
    }
        .style25
        {
            color: #FFFFFF;
            font-size: x-large;
        }
        .style26
        {
            width: 310px;
            text-align: right;
            height: 60px;
        }
        .style27
        {
            height: 60px;
        }
        .style28
        {
            height: 60px;
        width: 426px;
    }
    .style29
    {
        width: 310px;
        text-align: right;
        height: 70px;
    }
    .style30
    {
        height: 70px;
        text-align: center;
        font-weight: 700;
        font-size: xx-large;
        color: #FFFFFF;
    }
    .style31
    {
        height: 70px;
        width: 426px;
    }
    .style32
    {
        width: 310px;
        text-align: right;
        height: 90px;
    }
    .style33
    {
        height: 90px;
    }
    .style34
    {
        height: 90px;
        width: 426px;
    }
    .style35
    {
        height: 62px;
    }
        .style37
        {
            font-size: x-large;
        }
        .style38
        {
            width: 426px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" class="style21" style="background-color: #000000">
        <tr>
            <td class="style29">
                </td>
            <td class="style30">
                LOGIN</td>
            <td class="style31">
                </td>
        </tr>
        <tr>
            <td class="style32" 
                
                style="text-align: right; font-weight: 700; font-size: large; color: White;">
                <span class="style37">EMAIL</span><span class="style25" style="color: White"> ID:</span>
            </td>
            <td class="style33">
                <asp:TextBox ID="uid" runat="server" BackColor="White" Font-Bold="True" 
                    ForeColor="Black" Height="30px" Width="227px" 
                    ontextchanged="uid_TextChanged" BorderColor="White"></asp:TextBox>
            </td>
            <td class="style34">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="uid" ErrorMessage="Fill in the details!!" Font-Bold="True" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style23">
                <strong><span class="style25" style="color: White">PASSWORD :</span></strong></td>
            <td class="style35">
                <asp:TextBox ID="pass" runat="server" BackColor="White" Font-Bold="True" 
                    ForeColor="Black" Height="29px" TextMode="Password" Width="225px" 
                    BorderColor="White" ></asp:TextBox>
            </td>
            <td class="style38">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="pass" ErrorMessage="Fill in the details!!" Font-Bold="True" 
                    Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style26">
                </td>
            <td class="style27">
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#CCFFFF" Height="40px" 
                    style="text-align: center; margin-left: 0px" Text="LOGIN" Width="228px" 
                    onclick="Button1_Click1" BorderColor="White" BorderStyle="Groove"  />
                   
                    
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td class="style28">
                <br />
                <br />
                <br />
&nbsp;<strong><span class="style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; OR</span></strong><br />
                <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                    Font-Size="Large" Font-Underline="True" ForeColor="#FF5050" 
                    style="text-align: right" NavigateUrl="~/register.aspx">REGISTER</asp:HyperLink>
                    
                &nbsp;</td>
        </tr>
    </table>
 
    <p style="height: 13px; width: 631px;">
    </p>
      
 
    </asp:Content>

