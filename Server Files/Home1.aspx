<%@ Page Language="C#" MasterPageFile="EzzyMasterPage.master" AutoEventWireup="true" CodeFile="Home1.aspx.cs" Inherits="home1" Title=":: DCS|Home  ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    <script src="js-image-slider.js" type="text/javascript"></script>
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
   

    <style type="text/css">
 
       .productItem {
     width: 250px;
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
      margin-left:12px;
     float: left;
     font-size:12px;
     vertical-align:middle;
     color: Black;
     text-align:center;
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
}

    #imgstones
        {
            width: 100%;
            overflow: hidden;
        }
        #imgstones a
        {
            position: relative;
            float: left;
            margin: 5px;
        }
        #imgstones a span
        {
            background-repeat: no-repeat;
            width: 48px;
            height: 48px;
            display: none;
            position: absolute;
            left: 15px;
            top: 15px;
        }
        #imgstones
        {
            border: solid 1px #999;
            padding: 5px;
        }
        
        .zoom {      
-webkit-transition: all 0.35s ease-in-out;    
-moz-transition: all 0.35s ease-in-out;    
transition: all 0.35s ease-in-out;     
cursor: -webkit-zoom-in;      
cursor: -moz-zoom-in;      
cursor: zoom-in;  
}     

.zoom:hover,  
.zoom:active,   
.zoom:focus {
/**adjust scale to desired size, 
add browser prefixes**/
-ms-transform: scale(2.5);    
-moz-transform: scale(2.5);  
-webkit-transform: scale(2.5);  
-o-transform: scale(2.5);  
transform: scale(2.5);    
position:relative;      
z-index:100;  
}

/**To keep upscaled images visible on mobile, 
increase left & right margins a bit**/  
@media only screen and (max-width: 768px) {   
ul.gallery {      
margin-left: 15vw;       
margin-right: 15vw;
}
</style>
     <script type="text/javascript">
         $(document).ready(function () {
             $('#imgstones').width(200);
             $('#imgstones').mouseover(function () {
                 $(this).css("cursor", "pointer");
                 $(this).animate({ width: "500px" }, 'slow');
             });

             $('#imgstones').mouseout(function () {
                 $(this).animate({ width: "200px" }, 'slow');
             });
         });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:auto;width:1000px">
    <div style="height:5px; width:1000px; background-color:Transparent"></div>
 <div id="sliderFrame">
        <div id="slider" style="margin-left:150px; top: 1px; left: -161px;">
            
                <img src="image/1.png"  />
                 <img src="image/2.png"  />
         <img src="image/3.png"  />
        
       
     
        </div>
            
            </div>
    
    <%--slider end--%>
    <div style="height:5px; width:1000px; background-color:Transparent"></div>
   <div style="height:auto; margin-left:148px; width:1000px; background-repeat:inherit;background-image:url(image/bg.png);">
        
        	<h2><span>BIG DEALS OF 
                TODAY</span></h2>
                 </div>   
            <div style="height:100%; margin-left:148px; width:1000px; background-color:White">
            <table style="height:auto; ">
            <tr>
            <td>
    <asp:ListView runat="server" ID="listView" GroupItemCount="3" >
       <LayoutTemplate>
    <div>
        <div >
            <asp:PlaceHolder runat="server" ID="groupPlaceHolder" />
        </div>
        <asp:DataPager runat="server" ID="dpMyDatePager" PageSize="8" PagedControlID="listView"></asp:DataPager>
    </div>
</LayoutTemplate>
<GroupTemplate>
    <div style="clear: both;  height:100%">
        <asp:PlaceHolder runat="server" ID="itemPlaceHolder" />
    </div>
</GroupTemplate>
<ItemTemplate>
    <div class="productItem">
     <div style="font-size:10pt;background-color:#C7B88C; border-style:solid;border-width:1px; color:Black; Height:20px; Width:250px; margin-left:10px; margin-bottom:10px">
            <b>
              ProductId :  <%# Eval("ProductId") %> </b></div>
        <div>
         <a> <asp:Image ID="imgstones" class="thumbnail zoom" runat="server" ImageUrl='<%# Eval("ProductImage") %>' height="300" width="250" data-toggle="magnify"   /> </a>  

        </div>
       
            <div>
            <b>   Product Name  : <%# Eval("ProductName") %></b></div>
        <div style="clear: right;">
           <br /> Our Price: ₹ <%# Eval("ProductPrice") %></div>
           <br />
        <div class="cell1">
        <asp:Label ID="id"  runat="server" Text='<%#Eval("ProductId")%>' Visible="false"></asp:Label>
   <asp:LinkButton ID="LinkButton1"  BackColor="#0066CC" 
                    BorderColor="Blue" BorderStyle="Solid" BorderWidth="1px" Font-Size="10pt" 
                    ForeColor="White" Height="20px" Width="110px" OnClick="btnAdd13_Click" runat="server">Add To Cart</asp:LinkButton>
           </div>
        <div class="cell2">
          
           <asp:Label ID="detail"  runat="server" Text='<%#Eval("ProductId")%>' Visible="false"></asp:Label>
   <asp:LinkButton ID="LinkButton2"  BackColor="#61CA0C" 
                    BorderColor="Blue" BorderStyle="Solid" BorderWidth="1px" Font-Size="10pt" 
           ForeColor="White" Height="20px" Width="110px" runat="server" OnClick="btnAdd14_Click">View Details</asp:LinkButton>
          
          </div>
    </div>
</ItemTemplate>
    </asp:ListView>
    </tr>
    </td>
    </table>
</div>
   
   </div>
</asp:Content>

