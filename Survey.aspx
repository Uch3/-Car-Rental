<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Survey.aspx.cs" Inherits="Survey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <link href="Content/Login.css" rel="stylesheet" />
    <link href="Content/home.css" rel="stylesheet" />
    <br />
    <br />
    <div class="transbox" style="margin:inherit; color:white; height: 403px; width: 617px;">
        <h3 style="margin-left:5%">kamCars Survey</h3>
        <br />
        <section style="margin-left:5%; height: 268px;">
        
            <br />
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" style="text-align:center" Text="Please rate our services" Width="306px"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList1" style="margin-left:5%; font-weight: bold; color:black" runat="server">
                <asp:ListItem>Poor</asp:ListItem>
                <asp:ListItem>Good</asp:ListItem>
                <asp:ListItem>Satisfactory</asp:ListItem>
                <asp:ListItem>Excellent</asp:ListItem>
            </asp:DropDownList>
        
            <br />
        
            <br />
        
            <strong>

            <asp:Label ID="lblsuccess" runat="server" style="margin-left: 5%" ForeColor="#33CC33"></asp:Label>
            </strong>
            <br />

            <asp:Button ID="btnsubmit" runat="server" Text="Submit" style="background-color:midnightblue; margin-left:5%" CssClass ="btn btn-primary btn-lg" Font-Bold="True" Width="120px" Font-Names="Cambria" OnClick="btnsubmit_Click"  />

        </section>
    </div>
     </div>
</asp:Content>

