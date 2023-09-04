<%@ Page Title="" Language="C#" MasterPageFile="~/Owner.master" AutoEventWireup="true" CodeFile="OwnerViewEnquiryStatus.aspx.cs" Inherits="confirmenquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <style type="text/css">
        .style9
    {
        text-align: left;
            font-family: "Arial Narrow";
            font-size: medium;
            font-weight: normal;
        }
        .style12
        {
            width: 5px;
        }
        .style14
        {
            font-size: x-large;
            color: #368099;
        }
        .style16
        {
            border: 1px solid #2582A1;
            padding: 1px 4px;
            font-family: "Arial Narrow";
            font-size: medium;
            font-weight: normal;
        }
        .style17
        {
            font-size: xx-large;
            font-family: "Arial Narrow";
        }
        .style134
        {
            color: #2582A1;
            height: 23px;
            font-family: "Arial Narrow";
            font-size: large;
            border: 1px solid #48928A;
            padding: 1px;
        }
        .text
        {}
        .style135
        {
            font-size: x-large;
            font-weight: normal;
            line-height: 19px;
            width: 241px;
            text-align: left;
            border: 1px solid #2582A1;
            padding: 1px 4px;
        }
        .style136
        {
            width: 5px;
            color: #2582A1;
            font-family: "Arial Narrow";
            border: 1px solid #2582A1;
            padding: 1px 4px;
        }
        .style137
        {
            width: 165px;
            text-align: left;
            border: 1px solid #2582A1;
            padding: 1px 4px;
        }
        .style139
        {
            border: 1px solid #2582A1;
            padding: 1px 4px;
        }
        .style140
        {
            color: #000000;
            width: 165px;
            text-align: left;
            font-family: "Arial Narrow";
            font-size: medium;
            border: 1px solid #2582A1;
            padding: 1px 4px;
        }
        .style141
        {
            width: 328px;
            text-align: right;
        }
        .style142
        {
            width: 67px;
        }
        .style143
        {
            width: 328px;
            text-align: right;
            font-size: xx-large;
        }
        .style144
        {
            color: #0066FF;
        }
        .auto-style1 {
            text-align: left;
            font-size: large;
            color: #333300;
        }
        .auto-style2 {
            text-align: right;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div   style="height: auto; width:1000px; margin-left:150px; background-image:url(image/pbg.png);
         background-repeat: inherit"> 
         
         
         
          <table style="width:100%; height: 114px;">
              <tr>
                  <td class="auto-style1" colspan="3">
                      User Requested Services</td>
              </tr>
              <tr>
                  <td >
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                          <AlternatingRowStyle BackColor="White" />
                          <Columns>
                                <asp:CommandField ShowSelectButton="True"  HeaderText="SendReplay"/>  
                              <asp:BoundField DataField="EnquiryId" HeaderText="EnquiryId" SortExpression="EnquiryId" />
                              <asp:BoundField DataField="EventId" HeaderText="EventId" SortExpression="EventId" />
                              <asp:BoundField DataField="EnquiryDate" HeaderText="EnquiryDate" SortExpression="EnquiryDate" />
                               <asp:BoundField DataField="OfferPrice" HeaderText="OfferPrice" SortExpression="OfferPrice" />
                              <asp:BoundField DataField="EnquiryDescription" HeaderText="EnquiryDescription" SortExpression="EnquiryDescription" />
                              <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                          </Columns>
                          <FooterStyle BackColor="#CCCC99" />
                          <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                          <RowStyle BackColor="#F7F7DE" />
                          <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#FBFBF2" />
                          <SortedAscendingHeaderStyle BackColor="#848384" />
                          <SortedDescendingCellStyle BackColor="#EAEAD3" />
                          <SortedDescendingHeaderStyle BackColor="#575357" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT DISTINCT [EnquiryId], [EventId], [EnquiryDate], [EnquiryDescription],[OfferPrice], [Status] FROM [EnquiryInfo] WHERE ([MemberId] = @RequestUserID)">
                          <SelectParameters>
                              <asp:SessionParameter Name="RequestUserID" SessionField="Mid" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </td>
              </tr>
              <tr>
                  <td class="style141">
                      &nbsp;</td>
                  <td class="style142">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
          </table>
         
         
         
          </div>
 
</asp:Content>

