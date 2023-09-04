<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UpdateStatus.aspx.cs" Inherits="UpdateStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .style136
        {
            width: 8%;
        }
        .style137
        {
            width: 242px;
        }
        .style138
        {
            width: 23%;
        }
        .style140
        {
            width: 15%;
        }
        .style142
        {
            width: 30%;
        }
        .style143
        {
            width: 18%;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:auto; width:1000px; margin-left:150px">
<div style="height:150px; width:1000px; background-color:Silver">


    <table style="width: 100%; height: 142px;">
        <tr>
            <td class="style145" colspan="2">
                &nbsp;</td>
            <td class="style148" colspan="3">
                &nbsp;</td>
            <td class="style136" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                SelectOrderNumber:</td>
            <td class="style140">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="OrderNo" 
                    DataValueField="OrderNo" CssClass="textlay" Height="42px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db %>" 
                    SelectCommand="SELECT DISTINCT [OrderNo] FROM [Orderinfo] WHERE ([OrderStatus] != @OrderStatus)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Delivered" Name="OrderStatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style143">
                OrderDate:</td>
            <td class="style138">
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="OrderDate" 
                    DataValueField="OrderDate" Height="42px" Width="185px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db %>" 
                    SelectCommand="SELECT DISTINCT [OrderDate], [ProductDescription] FROM [Orderinfo] WHERE ([OrderNo] = @OrderNo)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="OrderNo" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style142">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    Height="42px" Width="210px">
              
                    <asp:ListItem>Delivered</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style136">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Update Order Status" 
                    CssClass="style7" BorderStyle="Solid" BorderWidth="2px" 
                    ForeColor="Black" Height="42px" />
            </td>
            <td class="style136">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style145" colspan="2">
                &nbsp;</td>
            <td class="style148" colspan="3">
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style136" colspan="2">
                &nbsp;</td>
        </tr>
    </table>


</div>

</div>
</asp:Content>

