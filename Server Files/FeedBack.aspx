<%@ Page Title="" Language="C#" MasterPageFile="user.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            width: 427px;
        }
        .style2
        {
            width: 427px;
        }
        .style3
        {
            width: 244px;
        }
        .style134
        {
            color: #000000;
            font-size: large;
        }
        .style135
        {
            font-size: large;
            font-family: "Lato Thin";
            color: #000000;
            font-weight: bold;
            width: 244px;
            text-align: left;
            border: 1px solid #0000FF;
            padding: 1px;
        }
        .style136
        {
            font-size: large;
        }
        .style137
        {
            color: #FFFFFF;
            font-weight: normal;
            width: 427px;
            border: 1px solid #0000FF;
        }
        .style138
        {
            font-size: xx-large;
            font-family: "Lato Thin";
            color: #FFFFFF;
            font-weight: bold;
            width: 244px;
            text-align: left;
            border: 1px solid #0000FF;
            padding: 1px;
        }
        .style139
        {
            border: 1px solid #0000FF;
        }
        .style140
        {
            border: 1px solid #0000FF;
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            width: 427px;
        }
        .auto-style1 {
            color: #165601;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; width:1000px ; margin-left:150px ">
    <table style="width: 100%; height: 197px;">
        <tr>
            <td class="style138">
                &nbsp;</td>
            <td class="style140">
                Give Feed Back To&nbsp; Prasang Event Services</td>
            <td class="style139">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style135">
                User Id:</td>
            <td class="style137">
                <asp:TextBox ID="txtID" runat="server" Height="26px" Width="187px" 
                    CssClass="style136" ReadOnly="True"></asp:TextBox>
            </td>
            <td rowspan="7" class="style139">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/img/feedback1.jpg" Width="450px" />
            </td>
        </tr>
        <tr>
            <td class="style135">
                Name:</td>
            <td class="style137">
                <asp:TextBox ID="txtName" runat="server" Height="26px" Width="187px" 
                    CssClass="style136" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style135">
                MobileNo:</td>
            <td class="style137">
                <asp:TextBox ID="txtMno" runat="server" Height="26px" Width="187px" 
                    CssClass="style136" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style135">
                FeedBackDate:</td>
            <td class="style137">
                <asp:TextBox ID="txtDate" runat="server" Height="26px" Width="187px" 
                    CssClass="style136" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style135">
                FeedBack Time:</td>
            <td class="style137">
                <asp:TextBox ID="txtTime" runat="server" Height="26px" Width="187px" 
                    CssClass="style136" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style135">
                Enter FeedBack:</td>
            <td class="style137">
                <asp:TextBox ID="TextBox2" runat="server" Height="42px" TextMode="MultiLine" 
                    Width="185px" CssClass="auto-style1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style138">
                &nbsp;</td>
            <td class="style137">
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#3333FF"></asp:Label>
                <asp:Button ID="Button1" runat="server" BorderStyle="None" Height="27px" 
                    onclick="Button1_Click" Text="Send FeedBack" Width="176px" BackColor="#0099CC" ForeColor="White" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

