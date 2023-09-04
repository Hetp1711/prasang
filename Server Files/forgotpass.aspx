<%@ Page Language="C#" MasterPageFile="~/EzzyMasterPage.master" AutoEventWireup="true" CodeFile="forgotpass.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
        color: #FF00FF;
    }
        .style33
        {
            border-color: #000;
            border-width: 1px;
            color: Black;
            font-size: x-large;
        }
    .style134
    {
        border-color: #84E452;
            border-width: 1px;
        }
    .style138
    {
            border-color: #000;
            border-width: 1px;
            width: 166px;
            color: #000000;
            text-align: right;
            font-family: Tahoma;
            font-size: 13pt;
        }
        .style140
        {
            border-color: #000;
            border-width: 1px;
            width: 190px;
            text-align: left;
        }
        .style141
        {
            border-color: #000;
            border-width: 1px;
width: 166px;
            text-align: right;
        }
        .style142
        {
            font-family: Tahoma;
            font-size: 13pt;
        }
        .style143
        {
            font-size: 13pt;
            font-family: Tahoma;
            color: #FFFFFF;
            font-weight: bold;
        }
        .style144
        {
            width: 24%;
            color: #000000;
            text-align: center;
            font-family: Tahoma;
            font-size: 13pt;
            border-color: #000;
            border-width: 1px;
        }
        .style145
        {
            width: 24%;
            text-align: center;
            color: #FFFFFF;
            font-weight: normal;
            border-color: #000;
            border-width: 1px;
        }
        .style146
        {
            width: 20%;
            text-align: left;
            border-color: #000;
            border-width: 1px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    
           
              <div style="height:400px; width:1000px; margin-left:150px; margin-top:10px; background-color:White ; background-image:url(image/lgback.png);">


    <table style="width: 100%; height:400; ">
        <tr>
            <td colspan="3" 
                
                style="height: 73px; " 
                class="style33">
                MEMBER&nbsp; LOGIN</td>
        </tr>
        <tr>
            <td 
                class="style144">
                Enter Email Address:</td>
            <td class="style146">
                <br />
                <asp:TextBox ID="Email1" runat="server" BorderColor="#404037" 
                    BorderStyle="Solid" Height="38px" Width="266px" CssClass="style142" 
                    ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Email11" 
                    ErrorMessage="Please enter Email Address" ControlToValidate="Email1" 
                    runat="server" CssClass="style143" ForeColor="#FF3300" Font-Size="Small" />
            </td>
            <td rowspan="4" style="width: 242px" class="style134">
                <asp:Image ID="Image2" runat="server" Height="282px" 
                    ImageUrl="~/image/memberlogin.png" />
            </td>
        </tr>

        <tr>
            <td 
                class="style144">
                &nbsp;</td>
            <td class="style146">
                <span class="style2">
                <asp:Button ID="Button2" runat="server" BorderColor="#6A4141" 
                    BorderStyle="Solid" Font-Size="Large" ForeColor="#404037" Height="37px" 
                    Text="Verify" Width="122px"  CssClass="style142" CausesValidation="False" 
                    onclick="Button2_Click" />
            </td>
        </tr>

        <tr>
            <td 
                class="style144">
                Enter New PassWord :</td>
            <td class="style146">
                <br />
                <asp:TextBox ID="password" runat="server" BorderColor="#404037" 
                    BorderStyle="Solid" Height="37px" Width="266px" TextMode="Password" 
                    CssClass="style142" ></asp:TextBox>
                    &nbsp;<span class="style2"><asp:RequiredFieldValidator ID="rfvPWD" runat="server" 
                    ControlToValidate="password" ErrorMessage="Please enter Password" 
                    CssClass="style143" ForeColor="Red" Font-Size="Small"/>
            </td>
        </tr>
        <tr>
            <td style="font-size: x-large; color: #404037; " 
                class="style145">
                &nbsp;</td>
            <td class="style146">
                <asp:Button ID="Button1" runat="server" BorderColor="#6A4141" 
                    BorderStyle="Solid" Font-Size="Large" ForeColor="#404037" Height="53px" 
                    Text="Update New Password" Width="265px" onclick="Button1_Click" 
                    CssClass="style142" />
            </td>
        </tr>
        </table>


</div>


</asp:Content>

