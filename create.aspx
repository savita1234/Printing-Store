<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="create.aspx.cs" Inherits="create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .image
        {
            height: 226px;
            margin-top: 0px;
        }
        .style15
        {
            width: 100%;
            height: 514px;
        }
        .style16
        {
            width: 293px;
            height: 153px;
        }
        .style17
        {
            height: 153px;
            width: 492px;
        }
        .style19
        {
            width: 30%;
            height: 203px;
            margin-left: 44px;
        }
        .style20
        {
            height: 39px;
        }
        .style21
        {
            height: 30px;
        }
        .style22
        {
            height: 30px;
            width: 161px;
        }
        .style23
        {
            width: 492px;
        }
        .style24
        {
            width: 293px;
        }
        </style>
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
    <div>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" 
            Text="DESIGN YOUR OWN-"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Underline="True" 
            Text="PRINT TEXT"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="White" 
            Font-Bold="True" ForeColor="Black" NavigateUrl="~/ImageUp.aspx">UPLOAD AN IMAGE</asp:HyperLink>
        <br />
        <br />
    
   
       
        <table class="style15">
            <tr>
                <td class="style16" 
                    style="background-image: url('1.png'); background-color: #FFFFFF;" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<asp:Label ID="lbltext1" runat="server"></asp:Label>
                    
                   
                    <br />
                 
</td>

                <td class="style17">
                TSHIRT 
                    TYPE:-
                    <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>vneck</asp:ListItem>
                    <asp:ListItem>Roundneck</asp:ListItem>
                    <asp:ListItem>Polo</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
&nbsp;TYPE TEXT FOR FRONT SIDE:-<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
       TYPE TEXT FOR BACK SIDE:-<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
       FONT:-<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
        <asp:ListItem>Arial</asp:ListItem>
        <asp:ListItem>Verdana</asp:ListItem>
        <asp:ListItem>Times</asp:ListItem>
        <asp:ListItem>Arial Black</asp:ListItem>
        <asp:ListItem>Cambia Research</asp:ListItem>
        <asp:ListItem>Tahoma</asp:ListItem>
        </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        FONT SIZE:-<asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="true">
         <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
         </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        FONT COLOR:-<asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="true">
         <asp:ListItem>Red</asp:ListItem>
        <asp:ListItem>Black</asp:ListItem>
        <asp:ListItem>White</asp:ListItem>
        <asp:ListItem>Blue</asp:ListItem>

        </asp:DropDownList>
                  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  
                    <br />
                    <br />
 TSHIRT COLOR:-<asp:DropDownList ID="DropDownList4" runat="server">
<asp:ListItem>red</asp:ListItem>
<asp:ListItem>black</asp:ListItem>
<asp:ListItem>white</asp:ListItem>
<asp:ListItem>yellow</asp:ListItem>
<asp:ListItem>purple</asp:ListItem>
<asp:ListItem>green</asp:ListItem>
<asp:ListItem>grey</asp:ListItem>
<asp:ListItem>brown</asp:ListItem>
                    </asp:DropDownList>
                  
               
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DropDownList4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  
               
                <br />
                <br />
                </td>
               <tr>
               <td class="style24">
                   <asp:Label ID="lbltext2" runat="server"></asp:Label>
                   </td>
               <td class="style23">
&nbsp;SPECIAL INSTRUCTION-<asp:TextBox ID="TextBox8" runat="server" Height="30px" Width="235px"></asp:TextBox>
<br />
<br />

               <table style="width: 322px; margin-left: 263px; height: 17px;"><tr>
                   <td class="style22"> 
           PER TSHIRT=<asp:TextBox ID="TextBox9" runat="server" Width="29px">300</asp:TextBox>Rs</td>
               <td class="style21"> YOUR TOTAL IS:
                   <asp:TextBox ID="TextBox10" runat="server" BorderColor="White" ForeColor="Red" 
                       Width="40px"></asp:TextBox>
                   Rs</td></tr></table>
&nbsp;&nbsp;<table class="style19" 
                    style="background-color: #FFFFFF; border: medium groove #000000">
                    <tr>
                        <td>
                            SIZE</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            QUANTITY</td>
                    </tr>
                    <tr>
                        <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 20px" 
                                Width="66px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style20">
&nbsp;&nbsp;&nbsp;&nbsp; M&nbsp;
                        </td>
                        <td class="style20">
                            &nbsp;</td>
                        <td class="style20">
                            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 22px" 
                                Width="62px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp; L</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 21px" 
                                Width="64px"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td>
&nbsp;&nbsp;&nbsp; XL</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 19px" 
                                Width="64px"></asp:TextBox>
                        </td>
                        

                        
                    </tr>
                     <tr>
                        <td>
&nbsp;&nbsp;&nbsp;TOTAL</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 19px" 
                                Width="64px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        

                        
                    </tr>
                </table>
                <br />

             <asp:Button ID="btn1" Text="SAVE" runat="server" onclick="btn1_Click" 
                    BackColor="Black" BorderColor="White" Font-Bold="True" ForeColor="White" />



            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="Button2" runat="server" onclick="Button2_Click" BackColor="Black" BorderColor="White" Font-Bold="True" ForeColor="White"
                       Text="Make Payment" />



            &nbsp;</td>
            </tr>
            
        </table>


        <br />
       
        </div> 
</asp:Content>

