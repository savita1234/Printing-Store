<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ImageUp.aspx.cs" Inherits="ImageUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style13
        {
            width: 513px;
        }
        .style14
        {
            width: 148px;
        }
        .style15
        {
            width: 170px;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
    function ImagePreview(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#<%=Image1.ClientID%>').prop('src', e.target.result)
  .width(200)
  .height(200);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

</script>
    <div style="height: 890px; font-size: large; color: #000000; font-weight: bold;">
<table>
<tr>
<td class="style6">

ENTER AN IMAGE:-

    <br />
<br />
 PRINT AREA-
        <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>CHEST</asp:ListItem>
        <asp:ListItem>POCKET</asp:ListItem>
        </asp:DropDownList>
       
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
       
<br />

    <br />
 PRINT PLACE-<asp:DropDownList ID="DropDownList2" runat="server">
<asp:ListItem>BACK</asp:ListItem>
<asp:ListItem>FRONT</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

    <br />
    
    ENTER A TEXT:-


    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
 TSHIRT COLOR:-
        <asp:DropDownList ID="DropDownList3" runat="server">
        <asp:ListItem>red</asp:ListItem>
        <asp:ListItem>black</asp:ListItem>
        <asp:ListItem>white</asp:ListItem>
        <asp:ListItem>yellow</asp:ListItem>
        <asp:ListItem>grey</asp:ListItem>
        <asp:ListItem>blue</asp:ListItem>
        </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="DropDownList3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
ADD IMAGE-<br />
<br />
<asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);" />
        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
        runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
        <br />
        </td>
        <td class="style13"> 
            <asp:Image ID="Image1" runat="server" Height="305px" 
                Width="369px" style="margin-left: 73px" />
                </td>
        </tr>
        <tr><td class="style6">
                <table class="style19" 
                    style="background-color: #FFFFFF; border: medium groove #000000">
                    <tr>
                        <td>
                            SIZE</td>
                        <td>
                            QUANTITY</td>
                    </tr>
                    <tr>
                        <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S</td>
                        <td>
                            <asp:TextBox ID="Txtbox1" runat="server" style="margin-left: 20px" 
                                Width="66px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style20">
&nbsp;&nbsp;&nbsp;&nbsp; M
                        </td>
                        <td class="style20">
                            <asp:TextBox ID="Txtbox2" runat="server" style="margin-left: 22px" 
                                Width="62px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp; L</td>
                        <td>
                            <asp:TextBox ID="Txtbox3" runat="server" style="margin-left: 21px" 
                                Width="64px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
&nbsp;&nbsp;&nbsp; XL</td>
                        <td>
                            <asp:TextBox ID="Txtbox4" runat="server" style="margin-left: 19px" 
                                Width="64px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
&nbsp;&nbsp;&nbsp; TOTAL</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 19px" 
                                Width="64px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table></td>
                <td class="style13">
                <table style="width: 352px; margin-left: 24px; height: 17px;"><tr>
                   <td class="style15"> 
           PER TSHIRT=<asp:TextBox ID="TextBox9" runat="server" Width="29px">300</asp:TextBox>Rs</td>
               <td class="style14"> YOUR TOTAL IS  
                   <asp:TextBox ID="TextBox10" runat="server" Width="69px"></asp:TextBox>
                   Rs</td></tr></table>
                </td></tr></table>
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
 <asp:Button ID="Button2" runat="server" BackColor="Black" BorderColor="White" 
        Font-Bold="True" ForeColor="White" Text="SAVE" Width="87px" 
            onclick="Button2_Click" />
        &nbsp;<asp:Button ID="Button3" runat="server" BackColor="Black" BorderColor="White" 
        Font-Bold="True" ForeColor="White" Text="Make Payment" Width="112px" 
            onclick="Button3_Click" />
        <br />
    <br />
    <br />
  


</div>
   </asp:Content>

