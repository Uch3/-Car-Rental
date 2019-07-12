<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="margin: auto; background-color:aliceblue; height: 1301px; background-color:white; opacity:0.8; filter:alpha(opacity=80)" >
        <section style="margin-left:5%; margin-top:3%; height: 1261px;" >
        <link href="Content/home.css" rel="stylesheet" />
        <link href="Content/Login.css" rel="stylesheet" />
        <h3>New Cars</h3>
        <asp:Label ID="Label1" runat="server" Text="Name" style="text-align:center; font-weight:bold"  Width="120px"></asp:Label>
        
            <asp:TextBox ID="txtcarname" runat="server" Width="180px" ForeColor="Black"></asp:TextBox>
        <br />
         <asp:Label ID="Label2" runat="server" Text="Car ID" style="text-align:center; font-weight:bold"  Width="120px"></asp:Label>
        
            <asp:TextBox ID="txtcarid" runat="server" Width="180px" ForeColor="Black"></asp:TextBox>
        <br />
         <asp:Label ID="Label3" runat="server" Text="Fuel Policy" style="text-align:center; font-weight:bold"  Width="120px"></asp:Label>
        
            <asp:TextBox ID="txtfuelpolicy" runat="server" Width="180px" ForeColor="Black"></asp:TextBox>
        <br />
         <asp:Label ID="Label4" runat="server" Text="Mileage" style="text-align:center; font-weight:bold"  Width="120px"></asp:Label>
        
            <asp:TextBox ID="txtmileage" runat="server" Width="180px" ForeColor="Black"></asp:TextBox>
        <br />
         <asp:Label ID="Label5" runat="server" Text="Category" style="text-align:center; font-weight:bold"  Width="120px"></asp:Label>
        
            <asp:TextBox ID="txtcategory" runat="server" Width="180px" ForeColor="Black"></asp:TextBox>
        <br />
        <br />
         <asp:Label ID="Label6" runat="server" Text="Image" style="text-align:center; font-weight:bold"  Width="120px"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left:9%" Height="51px" Width="331px" />
        <br />
         <asp:Label ID="Label7" runat="server" Text="Price" style="text-align:center; font-weight:bold"  Width="120px"></asp:Label>
        
            <asp:TextBox ID="txtprice" runat="server" Width="180px" ForeColor="Black"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" style="margin-left: 13%" Text="Add" OnClick="Button1_Click" Width="150px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblsuccess" runat="server" ForeColor="#66FF33"></asp:Label>
        <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;
        <br />
        <h3>Registered Customers</h3>
    <asp:GridView ID="Customers" runat="server" AutoGenerateColumns="False" CellPadding="10" DataKeyNames="Drivers License No" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CellSpacing="5">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Drivers License No" HeaderText="Drivers License No" ReadOnly="True" SortExpression="Drivers License No" />
            <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
            <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
            <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        <br />
        <br />
        <h3>Rented Cars</h3>
        <asp:GridView ID="Rents" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CarID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="CarID" HeaderText="CarID" ReadOnly="True" SortExpression="CarID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Pick Up Date" HeaderText="Pick Up Date" SortExpression="Pick Up Date" />
                <asp:BoundField DataField="Drop Off Date" HeaderText="Drop Off Date" SortExpression="Drop Off Date" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Rating" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="Rating" HeaderText="Rating" ReadOnly="True" SortExpression="Rating" />
                </Columns>
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Rents]"></asp:SqlDataSource>
        <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
    <br />
</section>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
    <br />
</asp:Content>

