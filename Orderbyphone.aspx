<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Orderbyphone.aspx.cs" Inherits="Orderbyphone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="border: medium groove #000000; font-size: large; color: #000000; font-weight: bold">
<asp:Label ID="lbl1" runat="server" Text="ORDER BY PHONE-" Font-Size="XX-Large" 
        ForeColor="Red"></asp:Label><br />
If you are prefer to order by phone,there is no better way to do it.
<br />
Ordering Customized Tshirts online is easy and fast but sometimes you want to hear a friendly ,human voice reassuring you that your order has been correctly placed.
<br />PHONE-<asp:Label ID="lbl2" runat="server" Text="8097787988" 
        Font-Size="X-Large" ForeColor="#FF6699"></asp:Label><br />
Email-<asp:Label ID="lbl4" runat="server" Text="savitagawas99@gmail.com" 
        ForeColor="Red"></asp:Label>

<br />
ADVANTAGES OF PHONE ORDERS<br />
1.Gift orders<br />
2.event orders<br />
3.get bulk discount if order quantity is above 10 tshirts.<br />
</div>
</asp:Content>

