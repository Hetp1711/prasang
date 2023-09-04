<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminRemoveEvent.aspx.cs" Inherits="UserHome" %>

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
                <span class="auto-style1">&nbsp;Remove Preshang Member Upload Event Form</span></td>
        </tr>
              <tr>
            <td>
                &nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Left" Width="895px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="RecordID">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                         <asp:CommandField ShowSelectButton="True"  HeaderText="Remove"/>  
                        <asp:BoundField DataField="RecordID" HeaderText="RecordID" InsertVisible="False" ReadOnly="True" SortExpression="RecordID" />
                        <asp:BoundField DataField="EventId" HeaderText="EventId" SortExpression="EventId" />
                        <asp:BoundField DataField="EventService" HeaderText="EventService" SortExpression="EventService" />
                        <asp:BoundField DataField="MemberId" HeaderText="MemberId" SortExpression="MemberId" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Desc" HeaderText="Desc" SortExpression="Desc" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [RecordID], [EventId], [EventService], [MemberId], [Name], [Price], [Desc] FROM [EventInfo]"></asp:SqlDataSource>
                  </td>
        </tr>
        </table>

        <hr />

        </div>
</div>


</asp:Content>

