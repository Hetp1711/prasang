<%@ Page Title="" Language="C#" MasterPageFile="Owner.master" AutoEventWireup="true" CodeFile="SendReply.aspx.cs" Inherits="FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .auto-style1 {
            color: #000000;
            font-size: large;
        }
       . input[type="text"], textarea {

  background-color : black; 

}

       .body {

  color: black;
}
        .auto-style2 {
            width: 199px;
        }
        .auto-style3 {
            font-size: medium;
            color: #165601;
            font-family: Lato;
            font-weight: normal;
            text-align: left;
            border: 1px solid #008000;
            padding: 1px 4px;
            width: 199px;
        }
        .auto-style4 {
            width: 199px;
            height: 43px;
        }
        .auto-style5 {
            height: 43px;
        }
        .auto-style6 {
            height: 43px;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; width:1000px ; margin-left:150px ; color:black">
    <table style="width: 100%; height: 197px; color:black">
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style6">
                Give Response To User</td>
            <td class="auto-style5">
                </td>
        </tr>
        <tr>
            <td class="auto-style3">
                User Id:</td>
            <td class="style137">
                <asp:TextBox ID="txtID" runat="server" Height="26px" Width="187px" 
                    CssClass="style136" ReadOnly="True"></asp:TextBox>
            </td>
            <td rowspan="8" class="style139">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/image/En.png" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                Name:</td>
            <td class="style137">
                <asp:TextBox ID="txtName" runat="server" Height="26px" Width="187px" 
                    CssClass="style136" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                MobileNo:</td>
            <td class="style137">
                <asp:TextBox ID="txtMno" runat="server" Height="26px" Width="187px" 
                    CssClass="style136" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                FeedBackDate:</td>
            <td class="style137">
                <asp:TextBox ID="txtDate" runat="server" Height="26px" Width="187px" 
                    CssClass="style136" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                User Request:</td>
            <td class="style137">
                <asp:TextBox ID="txtTime" runat="server" Height="26px" Width="187px" 
                    CssClass="style136" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                Send Answer To User :</td>
            <td class="style137">
                <asp:TextBox ID="TextBox2" runat="server" Height="62px" TextMode="MultiLine" 
                    Width="185px" CssClass="auto-style1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                Change Status:</td>
            <td class="style137">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="188px">
                    <asp:ListItem>Request Solved</asp:ListItem>
                    <asp:ListItem>Not Intrested</asp:ListItem>
                    <asp:ListItem>PropertySold To Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="style137">
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#3333FF"></asp:Label>
                <asp:Button ID="Button1" runat="server" BorderStyle="None" Height="27px" 
                    onclick="Button1_Click" Text="Send Response" Width="176px" BackColor="#0099CC" ForeColor="White" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

