<%@ Page Language="C#" MasterPageFile="~/EzzyMasterPage.master" AutoEventWireup="true" CodeFile="OpenVideo.aspx.cs" Inherits="home1" Title="::COOK SMART & EAT SMART Online Recipe Store  ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles.css" rel="stylesheet" type="text/css" />
    <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style134
        {
            color: #E7A91F;
        }
    </style>
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
</style>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   
    <div style="height:5px; width:1000px; background-color:Transparent"></div>

    
    <%--slider end--%>
    <div style="height:5px; width:1200px; " ></div>
   <div style="height:auto; width:1000px; margin-left:150px">
        <iframe width="800" id="MyIframe" runat="server"
                height="800" 
               
                frameborder="0" 
                allowfullscreen></iframe>
        	
                 </div>   
           
    
  
    </div>


   
</asp:Content>

