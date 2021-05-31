<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style15
    {
            width: 719px;
        }
        
        .style16
        {
            width: 719px;
            height: 75px;
        }
        .style17
        {
            width: 719px;
            height: 66px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style9" 
        
    
        style="background-color: #000000; width: 774px; height: 382px; margin-left: 199px;" >
        <tr>
            <td class="style23" style="text-align: center">
                &nbsp;</td>
            <td class="style15">
            <asp:Label ID="reg" Text="REGISTER" runat="server" Font-Bold="True" 
                    Font-Size="XX-Large" ForeColor="White"></asp:Label></td>
            <td class="style15">
            </td>
        </tr
        <tr>
            <td class="style15" style="text-align: right; font-weight: 700; font-size: large; color: White;">
                NAME:</td>
            <td class="style15">
                <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="222px" 
                    BorderColor="Black"></asp:TextBox>
                  </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
           <td class="style16" 
                style="text-align: right; font-weight: 700; font-size: large; color: White;">
             
                EMAIL ID:</td>
            <td class="style16">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="222px" 
                    BorderColor="Black"></asp:TextBox>
                   <br />
</td>
            <td class="style16">
                </td>
        </tr>
        <tr>
          <td class="style15" style="text-align: right; font-weight: 700; font-size: large; color: White;">
             
                PASSWORD:</td>
            <td class="style15">
                <asp:TextBox ID="TextBox3" runat="server" Height="33px" Width="221px" 
                    BorderColor="Black" TextMode="Password"></asp:TextBox>
                  </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17" 
                style="text-align: right; font-weight: 700; font-size: large; color: White;">
             
                CONFIRM PASSWORD:</td>
            <td class="style17">
                <asp:TextBox ID="TextBox4" runat="server" Height="31px" Width="216px" 
                    BorderColor="Black" TextMode="Password"></asp:TextBox>
                 </td>
            <td class="style17">
              </td>
        </tr>
        <tr>
            <td class="style15">
                </td>
            <td class="style15">
                <asp:Button ID="Button1" runat="server" Height="48px" onclick="Button1_Click" 
                    Text="Register" Width="129px" BackColor="White" BorderColor="Black" 
                    Font-Bold="True" Font-Size="Medium" />
                </td>
            <td class="style15">
                </td>
        </tr>
    </table>
    <p>
    </p>
    
</asp:Content>

