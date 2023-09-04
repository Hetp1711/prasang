<%@ Page Title="" Language="C#" MasterPageFile="~/Owner.master" AutoEventWireup="true" CodeFile="MemberHome.aspx.cs" Inherits="UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 
    <style type="text/css">
 
       .productItem {
     width: 350px;
     float: left;
     padding: 35px;
     margin: 5px;
     text-align: center;
     height:100%;
     
  
}
 
.cell1 
{
     width: 110px;
 height:30px;
      margin-left:-12px;
     float: left;
     font-size:12px;
     vertical-align:middle;
     color: Black;
     text-align:center;

	  padding:10px;
}
.cell2 
{
       width: 110px;
     height:30px;
     margin-left:5px;
     float: left;
     font-size:12px;
     vertical-align:middle;
   color: Black;
     text-align:center;
	  padding:10px;
}

 .follow {
  margin-right: 4%;
  border-color: #2980b9;
  color: #2980b9;
}
</style>
</asp:Content>
<asp:Content ID="Content33" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="height:auto ; width:1000px; margin-left:150px ">

<div style="height: auto; width:1000px; background-color:White">
        <hr />

    <div class="welcome">
         <div class="w3-container">
          <h5 class="w3-opacity"><b>Update Profile Video</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-arrows-alt fa-fw w3-margin-right"></i>
			  <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UpdateMemberVideo.aspx">Update</asp:HyperLink></h6>
         
          <hr>
        </div>
		<div class="banner-bottom">
		<div class="container">
				<div class="agileits_heading_section">
				<h3 class="w3layouts_head">Member <span>Profile Info</span></h3>
				
			</div>

			
         <div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
    
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
			<asp:Image ID="Image2" runat="server" style="width:100%" alt="Avatar"/>
          
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2>
				<asp:Label ID="lblName" runat="server" ></asp:Label></h2>
          </div>
        </div>
        <div class="w3-container">
          <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblCity" runat="server" Text="Jane Doe"></asp:Label></p>
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblAddress" runat="server" Text="Jane Doe"></asp:Label></p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblEmail" runat="server" Text="Jane Doe"></asp:Label></p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblMobileNo" runat="server" Text="Jane Doe"></asp:Label></p>
          <hr>

          <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills</b></p>
          <p>Event Manager</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div>
          </div>
         
          <br>

          <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i> Event Deliver</b></p>
          <p>All City In India</p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:100%"></div>
          </div>
         
          <br>
        </div>
      </div><br>

    <!-- End Left Column -->
    </div>

    <!-- Right Column -->
    <div class="w3-twothird">
    
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Cover Image</h2>

		     <div class="w3-container">
				 <asp:Image ID="Image1" runat="server" style="width:100%" alt="Avatar"/>
        
        
          <hr/>
        </div>


		  <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Work Experience</h2>


        <div class="w3-container">
          <h5 class="w3-opacity"><b>
			  <asp:Label ID="lblWork" runat="server" ></asp:Label></b></h5>
          
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>Profile Video</b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-arrows-alt fa-fw w3-margin-right"></i>
			  <asp:HyperLink ID="HyperLink1" runat="server">View Video</asp:HyperLink></h6>
         
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>About Member</b></h5>
         
          <p> <asp:Label ID="lblAbout" runat="server" ></asp:Label></p><br>
        </div>
      </div>

   
    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
  <!-- End Page Container -->
</div>
   
		
	</div>
	</div>
		</div>


        </div>
</div>


</asp:Content>

