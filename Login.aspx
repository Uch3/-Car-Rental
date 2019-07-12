<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link href="Content/Login.css" rel="stylesheet" />
    <link href="Content/home.css" rel="stylesheet" />
    <br />
    <br />
    <div class="transbox" style="margin:inherit; height: 418px;">
      <strong><h2 style="font-family: Cambria, Cochin, Georgia, Times, Times New Roman, serif; margin-top:5%; text-align:center; font-weight: bold;">kamCars.com</h2></strong>
        <h5 style="font-weight:bold; margin: 5%" class="text-center">Please enter your details to complete or view your booking</h5>
        <div class="text-right">
        <a style="text-align:right; margin-right:5%; text-decoration: underline; font-size: medium; color: #FFFFFF;" href="Register.aspx"><strong>Create an Account</strong></a>
        </div>
        <section style="margin-left:5%; width: 407px; height: 205px;">
        <label style="font-weight:bold; width: 104px; font-size: medium;" for="Location" class="label"></label>
            <table style="width: 100%">
                <tr>
                    <td class="text-left"><strong>Email address</strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="textbox" TextMode="Email" Height="34px" Width="295px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><strong>Password</strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtpswd" runat="server" CssClass="textbox" TextMode="Password" Height="34px" Width="295px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpswd" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
            <asp:Button ID="btnlogin" runat="server" Text="Login" style="background-color:midnightblue; font-size: medium;" CssClass ="btn btn-primary btn-lg" Font-Bold="True" Width="128px" Font-Names="Cambria" Height="47px" OnClick="btnlogin_Click" />
                        <br />
                        <br />
                        <asp:Label ID="lblcreate" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        </section>
    </div>
    <br />
</asp:Content>

