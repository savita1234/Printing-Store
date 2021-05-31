<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 192px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" 
        GridLines="Vertical" Width="1193px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="frontsidetext" HeaderText="frontsidetext" 
                SortExpression="frontsidetext" />
            <asp:BoundField DataField="backsidetext" HeaderText="backsidetext" 
                SortExpression="backsidetext" />
            <asp:BoundField DataField="font" HeaderText="font" SortExpression="font" />
            <asp:BoundField DataField="fontsize" HeaderText="fontsize" 
                SortExpression="fontsize" />
            <asp:BoundField DataField="fontcolor" HeaderText="fontcolor" 
                SortExpression="fontcolor" />
            <asp:BoundField DataField="tshirtcolor" HeaderText="tshirtcolor" 
                SortExpression="tshirtcolor" />
            <asp:BoundField DataField="instruction" HeaderText="instruction" 
                SortExpression="instruction" />
            <asp:BoundField DataField="small" HeaderText="small" SortExpression="small" />
            <asp:BoundField DataField="medium" HeaderText="medium" 
                SortExpression="medium" />
            <asp:BoundField DataField="large" HeaderText="large" SortExpression="large" />
            <asp:BoundField DataField="xlarge" HeaderText="xlarge" 
                SortExpression="xlarge" />
            <asp:BoundField DataField="tshirttype" HeaderText="tshirttype" 
                SortExpression="tshirttype" />
            <asp:BoundField DataField="totalquantity" HeaderText="totalquantity" 
                SortExpression="totalquantity" />
            <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" 
                SortExpression="pincode" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="locality" HeaderText="locality" 
                SortExpression="locality" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT CREATE5.id, CREATE5.frontsidetext, CREATE5.backsidetext, CREATE5.font, CREATE5.fontsize, CREATE5.fontcolor, CREATE5.tshirtcolor, CREATE5.instruction, CREATE5.small, CREATE5.medium, CREATE5.large, CREATE5.xlarge, CREATE5.tshirttype, CREATE5.totalquantity, CREATE5.total, Payment.name, Payment.mobile, Payment.pincode, Payment.state, Payment.address, Payment.locality, Payment.city FROM CREATE5 INNER JOIN Payment ON CREATE5.total = Payment.total">
    </asp:SqlDataSource>
</div>
</asp:Content>

