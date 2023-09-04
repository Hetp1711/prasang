<%@ Page Title="UploadProduct"  Debug="true" Language="C#" MasterPageFile="~/Owner.master" AutoEventWireup="true" CodeFile="UploadEvent.aspx.cs" Inherits="PatientRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
    .style9
    {
        text-align: left;
            font-family: "Arial Narrow";
            font-size: medium;
            font-weight: normal;
        }
        .style10
        {
            color: rgb(48, 77, 117);
            font-family: "Arial Narrow";
            font-size: medium;
        }
        .style11
        {
        width: 209px;
        text-align: left;
    }
        .style12
        {
            width: 5px;
        }
        .style13
        {
            width: 241px;
            text-align: left;
        }
        .style14
        {
            font-size: x-large;
            color: #368099;
        }
        .style15
        {
        width: 209px;
        text-align: left;
        font-family: "Arial Narrow";
        font-size: medium;
    }
        .style16
        {
            font-family: "Arial Narrow";
            font-size: medium;
            font-weight: normal;
        }
        .style17
        {
            font-size: xx-large;
            font-family: "Arial Narrow";
        }
    .style18
    {
        color: #7C4343;
    }
    .style19
    {
        color: #F2292A;
    }
    .style20
    {
        color: #43C5F3;
    }
    .style21
    {
        color: #761BB4;
    }
    .text
    {}
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div   style="height:auto; width:998px; margin-left:150px; background-repeat: inherit; background-color:#E4A78C">
        

    <table style="width: 100%; height: 445px;">
        <tr>
            <td colspan="4" class="style14">
                <span class="style17">&nbsp;Event
                <span class="style20">Upload</span> <span class="style21">Form</span></span></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left" class="style16">
                <span class="style10" 
                    
                    style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Mandatory Field Details</span></td>
            <td rowspan="15">
                <img alt="" src="image/1234.jpg" 
                    style="height: 451px; width: 471px" height="300" width="300" /></td>
        </tr>
        <tr>
            <td class="style15">
                Event&nbsp; ID:</td>
            <td class="style12">
                <asp:Label ID="Pid" runat="server"></asp:Label>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
   
        <tr>
            <td class="style15">
                Member Name:</td>
            <td class="style12">
                <asp:TextBox ID="pname" runat="server" CssClass="login_input"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                EventCategory:</td>
            <td class="style12">
                <asp:DropDownList ID="category" runat="server" AutoPostBack="True" 
                  CssClass="login_input"  Height="26px" Width="174px">
                    <asp:ListItem>CateringService</asp:ListItem>
                    <asp:ListItem>PhotoGraphy</asp:ListItem>
                  
               
                    <asp:ListItem>Decorators</asp:ListItem>
                    <asp:ListItem>Sangit-DJ</asp:ListItem>
                    <asp:ListItem>Mehndi</asp:ListItem>
                    <asp:ListItem>PartyPlot</asp:ListItem>
                    <asp:ListItem>Parlour</asp:ListItem>
                    <asp:ListItem>Pandit</asp:ListItem>
                  
               
                </asp:DropDownList>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                Event Price:</td>
            <td class="style12">
                <asp:TextBox ID="price" runat="server" CssClass="login_input"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                Event Details:</td>
            <td class="style12">
                <asp:TextBox ID="txtD" runat="server" CssClass="login_input"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                Video Link:</td>
            <td class="style12">
                <asp:TextBox ID="txtVideo" runat="server" CssClass="login_input"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
       
       
        <tr>
            <td class="style11">
             Upload Cover Image Picture:</td>
            <td class="style12">
                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="login_input" />
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" CssClass="text" Text="Upload Event" 
                    onclick="Button1_Click" Width="228px" BorderColor="#FF6600" 
                    BorderStyle="Solid" BorderWidth="1px" />
            </td>
            <td class="style13">
                &nbsp;</td>
        </tr>
    </table>

 </div>
</asp:Content>

