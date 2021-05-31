<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminUpload.aspx.cs" Inherits="AdminUpload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 56%;
            height: 220px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 207px;
        }
        .style4
        {
            height: 23px;
            width: 207px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

    UPLOAD A PRODUCT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TextOrder.aspx">HyperLink</asp:HyperLink>
        <br />
&nbsp;<table class="style1">
            <tr>
                <td class="style3">
                    <asp:Label ID="Lbl1" runat="server" Text="Product id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Lbl2" runat="server" Text="Product Name"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TxtBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Lbl3" runat="server" Text="Tshirt Color"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Lbl4" runat="server" Text="Tshirt Style"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Lbl5" runat="server" Text="Price"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Lbl6" runat="server" Text="Upload a Product"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" Width="121px" 
                        onclick="Button1_Click" />
                        <br />
                        <br />

                    <asp:Label ID="upload" runat="server"></asp:Label>

                </td>
            </tr>
        </table>
    

    
    </div>
    </form>
</body>
</html>
