<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminViewAll.aspx.cs" Inherits="UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #000066;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content33" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="height:auto ; width:1000px; margin-left:150px ">

<div style="height: auto; width:1000px; background-color:White">

    <table style=" width: 100%; height:auto">
        <tr>
            <td>
                &nbsp;&nbsp;<asp:Image ID="Image4" runat="server" Height="20px" ImageUrl="~/Image/notification.png" Width="20px" />
                <span class="auto-style1">&nbsp;FeedBack</span></td>
        </tr>
              <tr>
            <td>
                &nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Left" Width="895px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                        <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
                        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                        <asp:BoundField DataField="FeedBackDate" HeaderText="FeedBackDate" SortExpression="FeedBackDate" />
                        <asp:BoundField DataField="FeedBackTime" HeaderText="FeedBackTime" SortExpression="FeedBackTime" />
                        <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [FeedBackInfo]"></asp:SqlDataSource>
                  </td>
        </tr>
        </table>

        <hr />

        </div>
</div>


</asp:Content>

