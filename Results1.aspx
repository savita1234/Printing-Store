<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Results1.aspx.cs" Inherits="Results1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .grid
        {
            height: 100px;
            width:100px;
            
            
        } 
        </style>
          
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
        CellPadding="3" DataSourceID="SqlDataSource1" 
     >
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="area" HeaderText="area" SortExpression="area" />
            <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
            <asp:BoundField DataField="text" HeaderText="text" SortExpression="text" />
            <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
           <asp:ImageField HeaderText="image" DataImageUrlField="image" ControlStyle-CssClass="grid"></asp:ImageField> 
            <asp:BoundField DataField="small" HeaderText="small" SortExpression="small" />
            <asp:BoundField DataField="medium" HeaderText="medium" 
                SortExpression="medium" />
            <asp:BoundField DataField="large" HeaderText="large" SortExpression="large" />
            <asp:BoundField DataField="xlarge" HeaderText="xlarge" 
                SortExpression="xlarge" />
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
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT UPLOAD1.id, UPLOAD1.area, UPLOAD1.place, UPLOAD1.text, UPLOAD1.color, UPLOAD1.image, UPLOAD1.small, UPLOAD1.medium, UPLOAD1.large, UPLOAD1.xlarge, UPLOAD1.totalquantity, UPLOAD1.total, Payment.name, Payment.mobile, Payment.pincode, Payment.state, Payment.address, Payment.locality, Payment.city FROM UPLOAD1 INNER JOIN Payment ON UPLOAD1.total = Payment.total"></asp:SqlDataSource>
</div>
</asp:Content>

