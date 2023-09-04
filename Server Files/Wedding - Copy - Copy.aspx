<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Wedding - Copy - Copy.aspx.cs" Inherits="Wedding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>PRASANG | wedding</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- educate icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/educate-custon-icon.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
    <!-- style CSS
		============================================ -->
	 <link href="css/bootstrap.css" rel="stylesheet">
     <link href="style.css" rel="stylesheet">	
	 
	 <link href="css/style_1.css" rel="stylesheet">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js" type="text/javascript">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript">

    function checkname()
    {
     var name=document.getElementById("username" ).value;
    	
     if(name)
     {
      $.ajax({
      type: 'post',
      url: 'checkdata',
      data: {
       user_name:name,
      },
      success: function (response) {
       $( '#name_status' ).html(response);
       if(response=="OK")	
       {
        return true;	
       }
       else
       {
        return false;	
       }
      }
      });
     }
     else
     {
      $( '#name_status' ).html("");
      return false;
     }
    }
    </script>
    <script type="text/javascript">
    
 
    function phonenumber()
    {
 	 var p = parseInt(document.getElementById("contact").value);
      var phoneno = /^\(?([789]{1})\)?[-. ]?([0-9]{9}))$/;
      if((p.value.match(phoneno))
            {
          return true;
            }
          else
            {
            alert("Enter Valid contact number");
            return false;
            }
    }
    </script>
    
    <script src="jquery-1.11.2.js"></script>
    <script type="text/javascript">
         $(document).ready(function(){
        	 $("#cdShowPassword").click(function() {
        		 $("#password3").attr('type',$(this).is(':checked') ? 'text' : 'password');
        	 });
         });
    </script>

    <style type="text/css">

@import url(https://fonts.googleapis.com/css?family=Raleway:400,300,800);
@import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);
figure.snip0045 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  overflow: hidden;
  margin: 10px;
  min-width: 380px;
  max-width: 480px;
  width: 100%;
  background: #ffffff;
  color: #000000;
}
figure.snip0045 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
figure.snip0045 > img {
  width: 50%;
  border-radius: 50%;
  border: 4px solid #ffffff;
  -webkit-transition: all 0.35s ease-in-out;
  transition: all 0.35s ease-in-out;
  -webkit-transform: scale(1.6);
  transform: scale(1.6);
  position: relative;
  left: -15%;
  z-index: 1;
}
figure.snip0045 figcaption {
  padding: 20px 30px 20px 20px;
  position: absolute;
  right: 0;
  width: 50%;
}
figure.snip0045 figcaption h2,
figure.snip0045 figcaption p {
  margin: 0;
  text-align: right;
  padding: 10px 0;
  width: 100%;
}
figure.snip0045 figcaption h2 {
  font-size: 1.3em;
  font-weight: 300;
  text-transform: uppercase;
  border-bottom: 1px solid rgba(0, 0, 0, 0.2);
}
figure.snip0045 figcaption h2 span {
  font-weight: 800;
}
figure.snip0045 figcaption p {
  font-size: 0.9em;
  opacity: 0.8;
}
figure.snip0045 figcaption .icons {
  width: 100%;
 /* text-align: right;*/
   text-align:  left;

}
figure.snip0045 figcaption .icons i {
  font-size: 26px;
  padding: 5px;
  top: 50%;
  color: #000000;
}
figure.snip0045 figcaption a {
  opacity: 0.3;
  -webkit-transition: opacity 0.35s;
  transition: opacity 0.35s;
}
figure.snip0045 figcaption a:hover {
  opacity: 0.8;
}
figure.snip0045 .position {
  width: 100%;
  text-align: right;
  padding: 15px 30px;
  font-size: 0.9em;
  opacity: 1;
  font-style: italic;
  color: #ffffff;
  background: #000000;
}
figure.snip0045.blue .position {
  background: #20638f;
}
figure.snip0045.red .position {
  background: #962d22;
}
figure.snip0045.yellow .position {
  background: #bf6516;
}
figure.snip0045.green .position {
  background: #1e8449;
}
figure.snip0045:hover > img,
figure.snip0045.hover > img {
  left: -12%;
}


  .snip1336 {
  font-family: 'Roboto', Arial, sans-serif;
  position: relative;
  overflow: hidden;
  margin: 10px;
  min-width: 230px;
  max-width: 315px;
  width: 100%;
  color: #ffffff;
  text-align: left;
  line-height: 1.4em;
  background-color: #141414;
}
.snip1336 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.25s ease;
  transition: all 0.25s ease;
}
.snip1336 img {
  max-width: 100%;
  vertical-align: top;
  opacity: 0.85;
}
.snip1336 figcaption {
  width: 100%;
  background-color: #141414;
  padding: 25px;
  position: relative;
}
.snip1336 figcaption:before {
  position: absolute;
  content: '';
  bottom: 100%;
  left: 0;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 55px 0 0 400px;
  border-color: transparent transparent transparent #141414;
}
.snip1336 figcaption a {
  padding: 5px;
  border: 1px solid #ffffff;
  color: #ffffff;
  font-size: 0.7em;
  text-transform: uppercase;
  margin: 10px 0;
  display: inline-block;
  opacity: 0.65;
  width: 47%;
  text-align: center;
  text-decoration: none;
  font-weight: 600;
  letter-spacing: 1px;
}
.snip1336 figcaption a:hover {
  opacity: 1;
}
.snip1336 .profile {
  border-radius: 50%;
  position: absolute;
  bottom: 100%;
  left: 25px;
  z-index: 1;
  max-width: 90px;
  opacity: 1;
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
}
.snip1336 .follow {
  margin-right: 4%;
  border-color: #2980b9;
  color: #2980b9;
}
.snip1336 h2 {
  margin: 0 0 5px;
  font-weight: 300;
}
.snip1336 h2 span {
  display: block;
  font-size: 0.5em;
  color: #2980b9;
}
.snip1336 p {
  margin: 0 0 10px;
  font-size: 0.8em;
  letter-spacing: 1px;
  opacity: 0.8;
}
  

    </style>
</head>
<body>
    <form id="form1" runat="server">
<figure class="snip0045 red">
  <figcaption>
    <h2>Tiffany <span>Case</span></h2>
    <p>Some things don't need the thought people give them.</p>
    <div class="icons">
      <a href="#"><i class="ion-ios-home"></i></a>
      <a href="#"><i class="ion-ios-email"></i></a>
      <a href="#"><i class="ion-ios-telephone"></i></a>
    </div>  
  </figcaption>
  <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sq-sample7.jpg" alt="sample7"/> 
  <div class="position">Photographer</div>
</figure>
<figure class="snip0045 green">
  <figcaption>
    <h2>Tiffany <span>Case</span></h2>
    <p>Some things don't need the thought people give them.
    </p>
    <div class="icons">
       <a href="#"><i class="ion-ios-telephone"></i>Media Editor</a>
        
         </div>  
  
      <div class="icons">
      <a href="#"><i class="ion-ios-email"></i>Media Editor</a>
           
         </div> 
     
      

      
  </figcaption>
  <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sq-sample6.jpg" alt="sample6"/> 
  <div class="position">Media Editor</div>
</figure>
      
<figure class="snip1336">
  <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample87.jpg" alt="sample87" />
  <figcaption>
    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample4.jpg" alt="profile-sample4" class="profile" />
    <h2>Hans Down<span>Engineer</span></h2>
    <p>I'm looking for something that can deliver a 50-pound payload of snow on a small feminine target. Can you suggest something? Hello...? </p>
    <a href="#" class="follow">Follow</a>
    <a href="#" class="info">More Info</a>
  </figcaption>
</figure>
<figure class="snip1336 hover"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample74.jpg" alt="sample74" />
  <figcaption>
    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample2.jpg" alt="profile-sample2" class="profile" />
    <h2>Wisteria Widget<span>Photographer</span></h2>
    <p>Calvin: I'm a genius, but I'm a misunderstood genius. Hobbes: What's misunderstood about you? Calvin: Nobody thinks I'm a genius.</p>
    <a href="#" class="follow">Follow</a>
    <a href="#" class="info">More Info</a>
  </figcaption>
</figure>
<figure class="snip1336"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample69.jpg" alt="sample69" />
  <figcaption>
    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/profile-sample5.jpg" alt="profile-sample5" class="profile" />
    <h2>Desmond Eagle<span>Accountant</span></h2>
    <p>If you want to stay dad you've got to polish your image. I think the image we need to create for you is "repentant but learning".</p>
    <a href="#" class="follow">Follow</a>
    <a href="#" class="info">More Info</a>
  </figcaption>
</figure>

    <!-- jquery
        ============================================ -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
        ============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
        ============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
        ============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
        ============================================ -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
        ============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- sticky JS
        ============================================ -->
    <script src="js/jquery.sticky.js"></script>
    <!-- scrollUp JS
        ============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
        ============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
        ============================================ -->
    <script src="js/metisMenu/metisMenu.min.js"></script>
    <script src="js/metisMenu/metisMenu-active.js"></script>
    <!-- morrisjs JS
        ============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/jquery.charts-sparkline.js"></script>
    <!-- calendar JS
        ============================================ -->
    <script src="js/calendar/moment.min.js"></script>
    <script src="js/calendar/fullcalendar.min.js"></script>
    <script src="js/calendar/fullcalendar-active.js"></script>
    <!-- maskedinput JS
        ============================================ -->
    <script src="js/jquery.maskedinput.min.js"></script>
    <script src="js/masking-active.js"></script>
    <!-- datepicker JS
        ============================================ -->
    <script src="js/datepicker/jquery-ui.min.js"></script>
    <script src="js/datepicker/datepicker-active.js"></script>
        <!-- pwstrength JS
		============================================ -->
    <script src="js/password-meter/pwstrength-bootstrap.min.js"></script>
    <script src="js/password-meter/zxcvbn.js"></script>
    <script src="js/password-meter/password-meter-active.js"></script>
    <!-- form validate JS
        ============================================ -->
    <script src="js/form-validation/jquery.form.min.js"></script>
    <script src="js/form-validation/jquery.validate.min.js"></script>
    <script src="js/form-validation/form-active.js"></script>
    <!-- dropzone JS
        ============================================ -->
    <script src="js/dropzone/dropzone.js"></script>
    <!-- tab JS
        ============================================ -->
    <script src="js/tab.js"></script>
    <!-- plugins JS
        ============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
        ============================================ -->
   
    

    </form>
</body>
</html>
