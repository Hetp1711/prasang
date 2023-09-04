<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewRegisterUser.aspx.cs" Inherits="EnquiryStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="jquery-2.1.3.min.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="jquery-ui.js" type="text/javascript"></script>
    <style type="text/css">
        .style134
        {
            font-size: xx-large;
            color: #3366FF;
        }
        .style135
        {
            font-size: x-large;
            color: #0033CC;
        }
        .style136
        {
            font-size: x-large;
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div   style="height:auto; width:1000px; margin-left:150px; background-image:url(image/pbg.png);background-repeat: inherit">
         
         
         
         <table style="width: 100%; height: 383px;">
             <tr>
                 <td class="style134" colspan="3">
                 Register User
                 </td>
             </tr>
             <tr>
                 <td class="style135" colspan="3" style="text-align: left">
                     Detail Info:</td>
             </tr>
             <tr>
                 <td colspan="3">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true"
                         CellPadding="4" EmptyDataText="No Record  Found" 
                         ForeColor="#333333" GridLines="None" Width="975px" 
                         DataSourceID="SqlDataSource1">
                         <AlternatingRowStyle BackColor="White" />
                        
                         <EditRowStyle BackColor="#2461BF" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />

<SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:db %>" 
                         SelectCommand="SELECT * FROM [CustomerInfo]"></asp:SqlDataSource>
                 </td>
             </tr>
            
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
         </table>
         
         
         
         </div>
</asp:Content>

