<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <style type="text/css"> 
.info
{
    height:300px;
    width:300px;
    border:5px groove black;
}
   
         </style>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:Label ID="prd" Text="PRODUCT CATALOG" Font-Size="Larger" Font-Bold="true" runat="server"></asp:Label></div>
    <br />
    
     <div><table>
<tr>
<td>
<asp:Image ID="img1" CssClass="info" ImageUrl="~/hoodies/background/hoodie1.jpg" runat="server" /></td>
<td class="info">
<asp:Label ID="hed1" runat="server" Text="HOODIE-" Font-Bold="True" 
        Font-Size="Large" ForeColor="#000066"></asp:Label><br /><br />
<asp:Label ID="lbl1" Text="Hoodie available in our best quality.
                Luxe is made at a whopping 340
gsm biowashed fabric.Customized
                in a unisex fit with front pockets
                cotton cuffs and tailored in-house
                
                our hoodies are washed and
                ironed." Font-Bold="true" Font-Size="Medium" runat="server"></asp:Label>
</td>
<td>
<asp:Image ID="img2" CssClass="info" ImageUrl="~/hoodies/background/round1.png" runat="server" /></td>
<td class="info">
<asp:Label ID="hrd2" runat="server" Text="ROUND-NECK TSHIRT-" Font-Bold="True" 
        Font-Size="Large" ForeColor="#000066"></asp:Label><br /><br />

<asp:Label ID="lbl2" Text="Round neck tshirt available in
                
                three different qualities Comfort
                ,trend,luxe is one of our best selling
                products.Customized in a unisex
                fit and tailored in-house,our
                
                tshirts are washed and ironed." Font-Bold="true" Font-Size="Medium" runat="server"></asp:Label>

</td>
</tr>
<tr>
<td>
<asp:Image ID="img3" CssClass="info" ImageUrl="~/hoodies/background/vneck1.png" runat="server" /></td>
<td class="info">
<asp:Label ID="hrd3" runat="server" Text="V-NECK TSHIRT-" Font-Bold="True" 
        Font-Size="Large" ForeColor="#000066"></asp:Label><br /><br />

<asp:Label ID="lbl3" Text="v neck tshirt available in our best quality,Luxe is one of our best selling
                
                products.Customized in a unisex fit
                and tailored in-house,our tshirts are washed and ironed." Font-Bold="true" Font-Size="Medium" runat="server"></asp:Label>
</td>
<td>
<asp:Image ID="img4" CssClass="info" ImageUrl="~/hoodies/background/polo1.png" runat="server" /></td>
<td class="info">
<asp:Label ID="hrd4" runat="server" Text="POLO TSHIRT-" Font-Bold="True" 
        Font-Size="Large" ForeColor="#000066"></asp:Label><br /><br />

<asp:Label ID="lbl4" Text="polo tshirt available in two varients, Trend and Luxe is made using special 
                frained fabric different from average tshirt fabric. Customized in aunisex fit 
                with rim sleeves are washed and ironed."   Font-Bold="true" Font-Size="Medium" runat="server"></asp:Label>
                </td>
</tr>


</table>
</div>
    

  
</asp:Content>


