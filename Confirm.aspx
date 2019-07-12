<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Confirm.aspx.cs" Inherits="Confirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="background-color:aliceblue; height: 710px;">
        <header style="padding:2px; border:2px solid white; background-color:midnightblue; color:white "><h3 style="margin-left:4%; width: 1165px;">Welcome, 
            <strong> 
            <asp:Label ID="lbluser" runat="server" Font-Italic="True" style="font-size: xx-large"></asp:Label>
            <a style="margin-left:50%" href="Update.aspx"><span style="color: #FFFFFF; font-size: medium; text-decoration:underline">Update Account Information</span></a></strong>
            | <a href="Home.aspx" onclick="ExpireAllCookies()"><span style="font-size: medium; text-decoration: underline; color: #FFFFFF;"><strong>Logout</strong></span></a></h3>
            &nbsp;</header>
        <div style="margin-left:5%; margin-top:2%">
        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" DataKeyField="CarID" RepeatDirection="Horizontal" Height="382px">
            <ItemTemplate>
                <div class="text-left">
                    <asp:Image ID="Image1" runat="server" Height="162px" ImageUrl='<%# Eval("ImageFile") %>' Width="222px" />
                    <br />
                    Name: <strong>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    </strong>
                    Car ID:
                    <asp:Label ID="CarIDLabel" runat="server" Text='<%# Eval("CarID") %>'></asp:Label>
                    <br />
                    Price per Day: £<asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                    <br />
                    Pick Up Location:
                    <asp:Label ID="Label1" runat="server" Text='<%# Session["PUlocation"] %>'></asp:Label>
                    <br />
                    Pick Up Date &amp; Time:&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Session["Pudate"] %>'></asp:Label>
                    &nbsp;/&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Session["putime"] %>'></asp:Label>
                    <br />
                    Drop off Location:
                    <asp:Label ID="Label8" runat="server" Text='<%# Session["dropoff"] %>'></asp:Label>
                    <br />
                    Drop off Date &amp; Time:
                    <asp:Label ID="Label4" runat="server" Text='<%# Session["dodate"] %>'></asp:Label>
                    &nbsp;/
                    <asp:Label ID="Label5" runat="server" Text='<%# Session["dotime"] %>'></asp:Label>
                    <br />
                    Number of Days:
                    <asp:Label ID="Label6" runat="server" Text='<%# Session["Days"] %>'></asp:Label>
                    <br />
                    <strong>Total: <span style="font-size: x-large">£</span><asp:Label ID="Label7" runat="server" style="font-size: x-large" Text='<%# Session["price"] %>'></asp:Label>
                    </strong>
                    <br />
                    <br />
                </div>
            </ItemTemplate>
        </asp:DataList>

        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CarID], [Name], [ImageFile], [UnitPrice] FROM [Cars] WHERE ([CarID] = @CarID)">
            <SelectParameters>
                <asp:SessionParameter Name="CarID" SessionField="key" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

            <asp:Button ID="btnconfirm" runat="server" Text="Confirm" style="background-color:midnightblue; margin-left:5%" CssClass ="btn btn-primary btn-lg" Font-Bold="True" Width="120px" Font-Names="Cambria" OnClick="btnconfirm_Click" />

            <asp:Button ID="btnchange" runat="server" Text="Change Selection" style="background-color:midnightblue; margin-left:5%" CssClass ="btn btn-primary btn-lg" Font-Bold="True" Width="191px" Font-Names="Cambria" OnClick="btnchange_Click" />
         <br />
         <br />

        <strong>

        <asp:Label ID="lbltxt" runat="server" ForeColor="#00CC00" style="font-size: large; margin-left:5%"></asp:Label>

        &nbsp;</strong><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Visible="False">Click here to rate our services.</asp:LinkButton>

        <br />

        <strong>

        <asp:Label ID="lbltxt0" runat="server" ForeColor="Red" style="font-size: large; margin-left: 5%"></asp:Label>

        </strong>

    </div>
</asp:Content>

