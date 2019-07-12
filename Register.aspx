<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Reg.css" rel="stylesheet" />
    <link href="Content/home.css" rel="stylesheet" />
    <title>Register</title>
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            text-align: justify;
        }
        .auto-style3 {
            background-color: aliceblue;
            width: 600px;
            height: 844px;
            margin: auto;
        }
        </style>
   </head>
<body style="background-image:url(Images/BVU1.jpg)">
    <div class="auto-style3">
    <header class="header"><h1 style="text-align:center">kamCars.com</h1>

    </header>
        <h3 style="margin-left:4%">Please provide the following details</h3>
    <section style="margin-left:4%; margin-right:4%" class="auto-style2">
    <form id="form1" runat="server" defaultbutton="btnregister" method="post">
        <asp:Label ID="label1" runat="server" Text="First Name" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtFname" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" CssClass="validator" ErrorMessage="Required"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lbl" runat="server" Text="Last Name" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtlname" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" CssClass="validator" ErrorMessage="Required"></asp:RequiredFieldValidator>
        <br />
        <strong>
        <asp:Label ID="Label2" runat="server" Text="UK Drivers License No" CssClass="auto-style1"></asp:Label>
    &nbsp;</strong><asp:TextBox ID="txtDL" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDL" CssClass="validator" ErrorMessage="Required"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" CssClass="label" Text="Telephone"></asp:Label>
&nbsp;<asp:TextBox ID="txtphone" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtphone" CssClass="validator" ErrorMessage="Required"></asp:RequiredFieldValidator>
        <br />
        <strong>
        <asp:Label ID="Label4" runat="server" style="text-align:center" Text="Email Address" Width="162px"></asp:Label>
        </strong>
        <asp:TextBox ID="txtemail" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" CssClass="validator" ErrorMessage="Required"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="validator1" runat="server" ControlToValidate="txtemail" CssClass="regvalidator" margin-left="18%" ErrorMessage="Please enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <strong>
        <asp:Label ID="Label5" runat="server" style="text-align:center" Text="Confirm Email Address" Width="162px" Height="28px"></asp:Label>
        </strong>
        <asp:TextBox ID="txtemail2" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail2" CssClass="validator" ErrorMessage="Required"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtemail" ControlToValidate="txtemail2" CssClass="regvalidator" ErrorMessage="Please ensure both emails are the same"></asp:CompareValidator>
        <br />
        <asp:Label ID="Label6" runat="server" style=" text-align: center; font-weight: bold" Text="Password" Width="162px"></asp:Label>
        <asp:TextBox ID="pswd1" runat="server" Height="35px" TextMode="Password" Width="49%"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="pswd1" CssClass="validator" ErrorMessage="Required"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Font-Bold="True" style="text-align:center" Text="Confirm Password" Width="162px"></asp:Label>
        <asp:TextBox ID="pswd2" runat="server" Height="35px" TextMode="Password" Width="49%"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="pswd2" CssClass="validator" ErrorMessage="Required"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="pswd1" ControlToValidate="pswd2" CssClass="regvalidator" ErrorMessage="Please ensure both password enteries are the same"></asp:CompareValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="btnregister" runat="server" Font-Bold="True" Height="48px" OnClick="btnregister_click" style="margin-left:25%; background-color:midnightblue" Text="Register" Width="130px" />
        <br />
        <asp:Label ID="lblsuccess" runat="server" ForeColor="#00CC00"></asp:Label>
        <br />
      
    </form>
    </section>
    </div>
</body>
</html>
