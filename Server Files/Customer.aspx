<%@ Page Title="" Language="C#" MasterPageFile="~/x.master" Debug="true" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="Js/SimpleMap.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDfHXRppIwDlNsDQanTG2R3isxoqkvYink&libraries=places"></script>
    <script type="text/javascript">
        var source, destination;
        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();
        google.maps.event.addDomListener(window, 'load', function () {
            new google.maps.places.SearchBox(document.getElementById('txtSource'));
            new google.maps.places.SearchBox(document.getElementById('txtDestination'));
            directionsDisplay = new google.maps.DirectionsRenderer({ 'draggable': true });
        });

        function GetRoute() {
            var mumbai = new google.maps.LatLng(18.9750, 72.8258);
            var mapOptions = {
                zoom: 7,
                center: mumbai
            };
            map = new google.maps.Map(document.getElementById('dvMap'), mapOptions);
            directionsDisplay.setMap(map);
            directionsDisplay.setPanel(document.getElementById('dvPanel'));

            //*********DIRECTIONS AND ROUTE**********************//
            source = document.getElementById("txtSource").value;
            destination = document.getElementById("txtDestination").value;

            var request = {
                origin: source,
                destination: destination,
                travelMode: google.maps.TravelMode.DRIVING
            };
            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });

            //*********DISTANCE AND DURATION**********************//
            var service = new google.maps.DistanceMatrixService();
            service.getDistanceMatrix({
                origins: [source],
                destinations: [destination],
                travelMode: google.maps.TravelMode.DRIVING,
                unitSystem: google.maps.UnitSystem.METRIC,
                avoidHighways: false,
                avoidTolls: false
            }, function (response, status) {
                if (status == google.maps.DistanceMatrixStatus.OK && response.rows[0].elements[0].status != "ZERO_RESULTS") {
                    var distance = response.rows[0].elements[0].distance.text;
                    var duration = response.rows[0].elements[0].duration.text;
                    var dvDistance = document.getElementById("dvDistance");
                    dvDistance.innerHTML = "";
                    dvDistance.innerHTML += "       Distance : " + distance + "<br />";
                    dvDistance.innerHTML += "       Duration : " + duration;

                } else {
                    alert("Sorry ! We Can't Find The Root.");
                }
            });
        }
    </script>
    <!-- MAIN TITLE -->
		<div class="main-title">
			
		</div><!-- /.main-title -->
		
		<!-- BREADCRUMBS -->
		<div class="breadcrumbs margin-bottom-0">
			
		</div><!-- /.breadcrumbs -->
        <div class="container">
				<div class="col-sm-12">
                    
                    <div class="container">
				<h1 class="main-title__primary">Register</h1>
			</div>
                  
                    <div class="container">
                       
				<span>
					<h3><a class="home" href="Xlancer.aspx" title="Go to CargoPress." rel="v:url">Are You Xlancer ? Click here For Registration </a></h3>
				</span>
				
			</div>
                    
                    <br />
				
        <legend>
            <h2><b style="color:blue">Client</b></h2>
            </legend>
        <div class="row form-group">
           <div class="col-xs-15 col-md-12">
              <asp:Label ID="Label4" runat="server" for="Panno" Text="Your Customer ID  : "></asp:Label>
                <asp:TextBox runat="server" class="form-control"  id="CId" />
                <span class="field-validation-valid" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
             </div>
                      <div class="row form-group">
           <div class="col-xs-15 col-md-12">
              <asp:Label ID="Label5" runat="server" for="Panno" Text=" Your Full Name     "></asp:Label>
                <asp:TextBox runat="server" Placeholder="Enter Full Name " class="form-control"  id="fullname"  />
               
                <span 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please Enter FullName" ControlToValidate="fullname" 
                    ForeColor="Red"></asp:RequiredFieldValidator></span>
            </div>
        </div>

                                   <div class="row form-group">
           <div class="col-xs-15 col-md-12">
              <asp:Label ID="Label1" runat="server" for="Panno" Text="Enter Password   "></asp:Label>
                <asp:TextBox runat="server" Placeholder="Enter Full Name " class="form-control"  id="Password"  />
               
                <span 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please Enter Password" ControlToValidate="Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator></span>
            </div>
        </div>
        <div class="row form-group">
          <div class="col-xs-15 col-md-12">

                <asp:TextBox runat="server" class="form-control"  id="email" name="Address1" placeholder=" Enter Email Address " />
            <span  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Please Enter Email" ControlToValidate="email" 
                    ForeColor="Red"></asp:RequiredFieldValidator></span>
            </div>
           </div>
  
        <div class="row form-group">

<div class="col-xs-12 col-md-12">
                <asp:TextBox runat="server" class="form-control"  id="Address2"  placeholder="Address Line " TextMode="MultiLine"/>
            </div>
           
        </div>
        <div class="row form-group">
           <div class="col-xs-12 col-md-6">
           <input class="form-control" name="city" type="text" id="txtSource"  placeholder="Select Your  City" /
            
                <span class="field-validation-valid" data-valmsg-for="Pincode" data-valmsg-replace="true"></span>
            </div>  
        </div>
   <div class="row form-group">
     
          
        </div>
    
   

        <div class="row form-group">
            <div class="col-xs-12 col-md-6">
                <asp:TextBox runat="server" class="form-control"  id="Mobile"  placeholder=" Enter Mobile No " type="text" value="" />
                <span class="field-validation-valid" data-valmsg-for="Mobile" data-valmsg-replace="true"></span>
            </div>
           
        </div>

    <div class="row form-group">
            <div class="col-xs-12 col-md-6">
                <asp:Label ID="Label3" runat="server" for="Panno" Text="Your Living Country "></asp:Label>
                <asp:TextBox runat="server" class="form-control"  id="country"   Text="India" />
                <span class="field-validation-valid" data-valmsg-for="Panno" data-valmsg-replace="true"></span>
            </div>
            </div>
             <div class="row form-group">
            <div class="col-xs-12 col-md-6">
                <asp:Label ID="Label6" runat="server" for="Panno" Text="Upload Your Id Proof : "></asp:Label>
                <asp:FileUpload ID="FileUpload3" class="form-control"  runat="server" />
                <span class="field-validation-valid" data-valmsg-for="Panno" data-valmsg-replace="true"></span>
            </div>
            </div>
            <div class="row form-group" style="margin-top:25px; margin-bottom:50px">
            <div class="col-xs-12 col-md-6">
            <p>By clicking "Register", you Accept that you are agree to our Privacy Policy and Terms of Service.</p>
                <asp:Button ID="Button1"  class="btn-primary btn" runat="server" 
                    Text="Save And Register " onclick="Button1_Click" />
                <span class="field-validation-valid" data-valmsg-for="Companylogo" data-valmsg-replace="true"></span>
            </div>
        </div>
        </div>
        </div>
        </div>
</asp:Content>

