<%@ Page Title="" Language="C#" MasterPageFile="~/EzzyMasterPage.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="ViewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height:auto ; width:1000px">


<div style="height:400px; width:1000px; margin-left:150px; margin-top:5px; background-color:White">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Width="991px">
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                SortExpression="ProductId" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
            <asp:BoundField DataField="ProductCategory" HeaderText="ProductCategory" 
                SortExpression="ProductCategory" />
            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" 
                SortExpression="ProductPrice" />
            <asp:BoundField DataField="ProductDetail1" HeaderText="ProductDetail1" 
                SortExpression="ProductDetail1" />
            <asp:BoundField DataField="ProductDetail2" HeaderText="ProductDetail2" 
                SortExpression="ProductDetail2" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db %>" 
        
        
        SelectCommand="SELECT DISTINCT [ProductId], [ProductName], [ProductCategory], [ProductPrice], [ProductDetail1], [ProductDetail2] FROM [ProductInfo] WHERE ([ProductId] = @ProductId)">
        <SelectParameters>
            <asp:SessionParameter Name="ProductId" SessionField="pid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


</div>

</div>
</asp:Content>

