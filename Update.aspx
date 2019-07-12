<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link href="Content/Login.css" rel="stylesheet" />
    <link href="Content/home.css" rel="stylesheet" />
    <br />
    <br />
    <div class="transbox" style="margin:inherit; color:white; height: 549px; width: 617px;">
        <h3 style="margin-left:5%">Enter the fields you want updated</h3>
        <br />
        <section style="margin-left:5%; height: 460px;">
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" style="text-align:center" Text="First Name" Width="162px"></asp:Label>
            <asp:TextBox ID="fname" runat="server" Width="301px" ForeColor="Black"></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        
            <br />
        
        <asp:Label ID="Label2" runat="server" Font-Bold="True" style="text-align:center" Text="Last Name" Width="162px"></asp:Label>
            <asp:TextBox ID="txtlname" runat="server" Width="301px" ForeColor="Black"></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        
            <br />
        
        <asp:Label ID="Label7" runat="server" Font-Bold="True" style="text-align:center" Text="UK Drivers License No" Width="162px"></asp:Label>
            <asp:TextBox ID="txtdlno" runat="server" Width="301px" ForeColor="Black"></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdlno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        
            <br />
        
        <asp:Label ID="Label8" runat="server" Font-Bold="True" style="text-align:center" Text="Telephone" Width="162px"></asp:Label>
        
            <asp:TextBox ID="txtphone" runat="server" Width="301px" ForeColor="Black"></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtphone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        
            <br />
        
        <asp:Label ID="Label10" runat="server" Font-Bold="True" style="text-align:center" Text="Password" Width="162px"></asp:Label>
            <asp:TextBox ID="txtpwd" runat="server" Width="320px" ForeColor="Black" Height="42px" TextMode="Password"></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpwd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        
            <br />
            <br />
            <br />

            <strong>

            <asp:Label ID="lblsuccess" runat="server" style="margin-left: 5%" ForeColor="#33CC33"></asp:Label>
            </strong>
            <br />

            <asp:Button ID="btnsubmit" runat="server" Text="Submit" style="background-color:midnightblue; margin-left:5%" CssClass ="btn btn-primary btn-lg" Font-Bold="True" Width="120px" Font-Names="Cambria" OnClick="btnsubmit_Click"  />

        </section>
    </div>
</asp:Content>

