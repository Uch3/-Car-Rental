<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content  ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
    $(document).ready(function () {
        $('#Pudate').datepicker({
            dateFormat: 'dd/mm/yy'
        });
    });
</script>
</head>
    <div class="row">
     <div class="jumbotron" style="opacity:0.8; filter:alpha(opacity=80); background-color: #000000; font-weight:bold; color:white; margin:5%; height: 586px; width: 461px; text-align: right;">
        <link href="Content/home.css" rel="stylesheet" />
        <h2 class="text-left">Search for a Car to hire in Nottingham</h2>
         <div class="text-justify">
    <label style="font-weight:bold" for="Location">
             <div class="text-justify" style="width: 164px">
                 Pick Up Options</div>
             </label> &nbsp;<label style="font-weight:bold" for="Location"><div class="text-justify" style="width: 158px">
                 Drop-off Options</div>
             </label> <br />
            <asp:DropDownList ID="ddlpickup" runat="server" ForeColor="Black" Width="161px">
                <asp:ListItem>Airport</asp:ListItem>
                <asp:ListItem>Home Delivery</asp:ListItem>
                <asp:ListItem>Garage</asp:ListItem>
            </asp:DropDownList>
&nbsp;
            <asp:DropDownList ID="ddldropoff" runat="server" ForeColor="Black" Width="166px">
                <asp:ListItem>Airport</asp:ListItem>
                <asp:ListItem>Home Delivery</asp:ListItem>
                <asp:ListItem>Garage</asp:ListItem>
            </asp:DropDownList>
             <br />
            <asp:CheckBox ID="Dropoffcb" runat="server" Text="Drop off at the same location" OnCheckedChanged="Dropoffcb_CheckedChanged" /> 
            <br />
            <br />
    <label style="font-weight:bold; width: 175px;" for="Location">Pick Up Date</label>&nbsp;&nbsp;
    <label style="font-weight:bold; width: 104px;" for="Location">Time</label><br />
            <asp:TextBox ID="Pudate" runat="server" Width="145px" ForeColor="Black"></asp:TextBox>
            &nbsp;
            <asp:DropDownList ID="ddlputime" runat="server" ForeColor="Black" Width="109px">
                <asp:ListItem>00:00</asp:ListItem>
                <asp:ListItem>00:30</asp:ListItem>
                <asp:ListItem>01:00</asp:ListItem>
                <asp:ListItem>01:30</asp:ListItem>
                <asp:ListItem>02:00</asp:ListItem>
                <asp:ListItem>02:30</asp:ListItem>
                <asp:ListItem>03:00</asp:ListItem>
                <asp:ListItem>03:30</asp:ListItem>
                <asp:ListItem>04:00</asp:ListItem>
                <asp:ListItem>04:30</asp:ListItem>
                <asp:ListItem>05:00</asp:ListItem>
                <asp:ListItem>05:30</asp:ListItem>
                <asp:ListItem>06:00</asp:ListItem>
                <asp:ListItem>06:30</asp:ListItem>
                <asp:ListItem>07:00</asp:ListItem>
                <asp:ListItem>07:30</asp:ListItem>
                <asp:ListItem>08:00</asp:ListItem>
                <asp:ListItem>08:30</asp:ListItem>
                <asp:ListItem>09:00</asp:ListItem>
                <asp:ListItem>09:30</asp:ListItem>
                <asp:ListItem>10:00</asp:ListItem>
                <asp:ListItem>10:30</asp:ListItem>
                <asp:ListItem>11:00</asp:ListItem>
                <asp:ListItem>11:30</asp:ListItem>
                <asp:ListItem>12:00</asp:ListItem>
                <asp:ListItem>12:30</asp:ListItem>
                <asp:ListItem>13:00</asp:ListItem>
                <asp:ListItem>13:30</asp:ListItem>
                <asp:ListItem>14:00</asp:ListItem>
                <asp:ListItem>14:30</asp:ListItem>
                <asp:ListItem>15:00</asp:ListItem>
                <asp:ListItem>15:30</asp:ListItem>
                <asp:ListItem>16:00</asp:ListItem>
                <asp:ListItem>16:30</asp:ListItem>
                <asp:ListItem>17:00</asp:ListItem>
                <asp:ListItem>17:30</asp:ListItem>
                <asp:ListItem>18:00</asp:ListItem>
                <asp:ListItem>18:30</asp:ListItem>
                <asp:ListItem>19:00</asp:ListItem>
                <asp:ListItem>19:30</asp:ListItem>
                <asp:ListItem>20:00</asp:ListItem>
                <asp:ListItem>20:30</asp:ListItem>
                <asp:ListItem>21:00</asp:ListItem>
                <asp:ListItem>21:30</asp:ListItem>
                <asp:ListItem>22:00</asp:ListItem>
                <asp:ListItem>22:30</asp:ListItem>
                <asp:ListItem>23:00</asp:ListItem>
                <asp:ListItem>23:30</asp:ListItem>
            </asp:DropDownList>
            <br />
    <label for="lname" style="width: 170px">
         Drop off Date</label>&nbsp;&nbsp;
    <label style="font-weight:bold; width: 104px;" for="Location">Time</label><br />
            <asp:TextBox ID="DODate" runat="server" Width="145px" ForeColor="Black"></asp:TextBox>
            &nbsp;
            <asp:DropDownList ID="ddldotime" runat="server" ForeColor="Black" Width="109px">
                <asp:ListItem>00:00</asp:ListItem>
                <asp:ListItem>00:30</asp:ListItem>
                <asp:ListItem>01:00</asp:ListItem>
                <asp:ListItem>01:30</asp:ListItem>
                <asp:ListItem>02:00</asp:ListItem>
                <asp:ListItem>02:30</asp:ListItem>
                <asp:ListItem>03:00</asp:ListItem>
                <asp:ListItem>03:30</asp:ListItem>
                <asp:ListItem>04:00</asp:ListItem>
                <asp:ListItem>04:30</asp:ListItem>
                <asp:ListItem>05:00</asp:ListItem>
                <asp:ListItem>05:30</asp:ListItem>
                <asp:ListItem>06:00</asp:ListItem>
                <asp:ListItem>06:30</asp:ListItem>
                <asp:ListItem>07:00</asp:ListItem>
                <asp:ListItem>07:30</asp:ListItem>
                <asp:ListItem>08:00</asp:ListItem>
                <asp:ListItem>08:30</asp:ListItem>
                <asp:ListItem>09:00</asp:ListItem>
                <asp:ListItem>09:30</asp:ListItem>
                <asp:ListItem>10:00</asp:ListItem>
                <asp:ListItem>10:30</asp:ListItem>
                <asp:ListItem>11:00</asp:ListItem>
                <asp:ListItem>11:30</asp:ListItem>
                <asp:ListItem>12:00</asp:ListItem>
                <asp:ListItem>12:30</asp:ListItem>
                <asp:ListItem>13:00</asp:ListItem>
                <asp:ListItem>13:30</asp:ListItem>
                <asp:ListItem>14:00</asp:ListItem>
                <asp:ListItem>14:30</asp:ListItem>
                <asp:ListItem>15:00</asp:ListItem>
                <asp:ListItem>15:30</asp:ListItem>
                <asp:ListItem>16:00</asp:ListItem>
                <asp:ListItem>16:30</asp:ListItem>
                <asp:ListItem>17:00</asp:ListItem>
                <asp:ListItem>17:30</asp:ListItem>
                <asp:ListItem>18:00</asp:ListItem>
                <asp:ListItem>18:30</asp:ListItem>
                <asp:ListItem>19:00</asp:ListItem>
                <asp:ListItem>19:30</asp:ListItem>
                <asp:ListItem>20:00</asp:ListItem>
                <asp:ListItem>20:30</asp:ListItem>
                <asp:ListItem>21:00</asp:ListItem>
                <asp:ListItem>21:30</asp:ListItem>
                <asp:ListItem>22:00</asp:ListItem>
                <asp:ListItem>22:30</asp:ListItem>
                <asp:ListItem>23:00</asp:ListItem>
                <asp:ListItem>23:30</asp:ListItem>
            </asp:DropDownList>
         <br />
         <asp:CheckBox ID="Agecb" runat="server" Text="Driver aged between 25 and 70?" />
             <br />
             <asp:Label ID="Label4" runat="server" ForeColor="#FF3300"></asp:Label>
&nbsp;<br />
         </div>
        <p class="text-left">
            <asp:Button ID="btnsearch" runat="server" Text="Search&gt;&gt;" style="background-color:midnightblue" CssClass ="btn btn-primary btn-lg" Font-Bold="True" OnClick="btnsearch_Click" Width="128px" Font-Names="Cambria" />
         </p>
    </div>
    <div class="col-md-4" style="left: 587px; top: -654px; width: 650px; margin-top: 0px; height: 179px; background-color:black; opacity:0.7">
      <h2 style="width: 662px; height: 123px; color: #FFFFFF;" class="text-center"><strong>Find the right ride with great perks <br />and low rates!</strong></h2>
    </div>
        </div>
    <div class="row">
        <div class="col-md-4" style="background-color:white; opacity:0.8; filter:alpha(opacity=80)">
            <asp:Image ID="Image5" runat="server" Height="36px" ImageUrl="~/Images/rating.png" Width="216px" />
            <br />
            <asp:Image ID="Image1" runat="server" Height="158px" ImageUrl="~/Images/Fordfiesta.jpg" Width="240px" />
             <p>
                 <strong>Car of the Month: Ford Fiesta</strong></p>
            <p>
                &nbsp;<strong>Fuel Usage: </strong>
                <asp:Image ID="Image2" runat="server" Height="26px" ImageUrl="~/Images/tick.png" Width="36px" />
            </p>
            <p>
                <strong>Speed:
                <asp:Image ID="Image3" runat="server" Height="26px" ImageUrl="~/Images/tick.png" Width="36px" />
                </strong>
            </p>
        </div>
        <div class="col-md-4" style="background-color:white; border-left:1px solid black; opacity:0.8; filter:alpha(opacity=80); height:296px">
            <p>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Grsrv.PNG" />
&nbsp;</p>
        </div>
        <div class="col-md-4" style="background-color:white; opacity:0.8; filter:alpha(opacity=80); height:296px; border-left:1px solid black">
            <br />
            <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/Airport.jpg" />
            <br />
            <br />
        <p style="font-size: large"><strong>Find our Stand at the Airport</strong></p>
        </div>
    </div>
</asp:Content>

