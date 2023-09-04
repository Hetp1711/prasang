<%@ Page Language="C#" MasterPageFile="EzzyMasterPage.master" AutoEventWireup="true" CodeFile="listview.aspx.cs" Inherits="home1" Title=":: Ezzy Collection|Home  ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    <script src="js-image-slider.js" type="text/javascript"></script>
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
    <div style="height:auto;width:1000px">
    <div style="height:5px; width:1000px; background-color:Transparent"></div>

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
    <asp:ListView runat="server" ID="listView" GroupItemCount="1" >
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
     <div style="font-size:10pt;background-color:#C7B88C; border-style:solid;border-width:1px; color:Black; Height:20px; Width:900px; margin-left:10px; margin-bottom:10px ; text-align:left">
            <b>
              ProductId :  <%# Eval("ProductId") %> </b></div>
        <div style="height:auto; width:900px ; float:left ;  text-align:left ; margin-left:10px">
            
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductDetail1") %>' ></asp:Label>
        </div>
       
          
           <br />
 
    </div>
</ItemTemplate>
    </asp:ListView>
    </tr>
    </td>
    </table>
</div>
   
   </div>
</asp:Content>

