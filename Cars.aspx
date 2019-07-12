<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Cars.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="background-color:aliceblue">
        <div class="text-center">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="CarID" RepeatColumns="4" OnItemCommand="Datalist1_ItemCommand"  RepeatDirection="Horizontal" BorderColor="Black" CellPadding="5" CellSpacing="5" Height="260px" Width="1228px">
            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="175px" ImageUrl='<%# Eval("ImageFile") %>' Width="232px" />
                <br />
                <br />
                <strong>Name</strong>: <strong>
                <asp:Label ID="NameLabel" runat="server" ForeColor="#0033CC" style="font-size: x-large" Text='<%# Eval("Name") %>' />
                </strong>
                <br />
                <strong>Mileage</strong>:
                <asp:Label ID="MileageLabel" runat="server" Text='<%# Eval("Mileage") %>' />
                <br />
                <strong>Fuel Policy</strong>:
                <asp:Label ID="FuelPolicyLabel" runat="server" Text='<%# Eval("FuelPolicy") %>' />
                <br />
                <strong>Price per Day</strong>:&nbsp; £<strong><asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                </strong>
                <br />
                <br />
                <asp:Button ID="btnselect" runat="server" Text='Select' Height="30px" Width="94px" CommandName="Select" />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#66FF33" />
        </asp:DataList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [ImageFile], [Mileage], [FuelPolicy], [UnitPrice], [CarID] FROM [Cars]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
    </div>
</asp:Content>

