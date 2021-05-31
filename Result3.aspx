<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Result3.aspx.cs" Inherits="Result3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="tname" HeaderText="tname" SortExpression="tname" />
            <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="small" HeaderText="small" SortExpression="small" />
            <asp:BoundField DataField="medium" HeaderText="medium" 
                SortExpression="medium" />
            <asp:BoundField DataField="large" HeaderText="large" SortExpression="large" />
            <asp:BoundField DataField="xlarge" HeaderText="xlarge" 
                SortExpression="xlarge" />
            <asp:BoundField DataField="totalquantity" HeaderText="totalquantity" 
                SortExpression="totalquantity" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
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
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT information1.id, information1.tname, information1.color, information1.price, information1.small, information1.medium, information1.large, information1.xlarge, information1.totalquantity, information1.email, information1.total, Payment.name, Payment.mobile, Payment.pincode, Payment.state, Payment.address, Payment.locality, Payment.city FROM information1 INNER JOIN Payment ON information1.total = Payment.total"></asp:SqlDataSource>
</asp:Content>

