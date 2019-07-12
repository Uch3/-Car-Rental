 <%@ Page Title="Contact-" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Car_Rental.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <head>
    <title>Simple Map</title>
    <meta name="viewport">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 250px;
        width:400px;
      }
    </style>
  </head>
    <div style="background-color:aliceblue; padding:3%; margin-top:3%">
        <div style="margin-left:5%; margin-top:4%">
    <h3 style="padding:7px">Contact Us</h3>
        <div>
         <div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 52.9118, lng: -1.1854}, 
          zoom: 15
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAgZD0jbrUceix3pFYlPSy5am-4vmi7HI4&callback=initMap"
    async defer></script>
        </div>
    <address>
        kamCars<br />
        Clifton Lane, Nottingham<br />
        NG11 8NS<br />
        <abbr title="Phone">P:</abbr>
        0800-KAM-CARS
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@kamCars.com">Support@kamCars.com</a><br />
    </address>
    </div>
    </div>
</asp:Content>
