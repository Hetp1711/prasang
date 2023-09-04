<%@ Page Title="UserEnquiryForm" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="Sendquery.aspx.cs" Inherits="Sendquery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
       
        .style18
        {
            font-size: xx-large;
        }
       
        .style136
        {
            padding: 0;
        }
        .style137
        {
            border-color: #008000;
            font-size: medium;
            color: #165601;
            font-family: Lato;
            font-weight: normal;
            text-align: left;
            padding: 0;
        }
       
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div   style="border: 4px solid #0033CC; padding: 1px 4px; height:auto; width:985px; margin-left:150px;  background-color:White;
         background-repeat: repeat">
        

    <table style="width: 100%; height: 445px;">
        <tr>
            <td colspan="4" class="style14">
                <img alt="" src="image/darkbg.png" 
                    style="height: 35px; width: 37px" class="style142" /><span class="style18">User Enquiry/Request- Form </span></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left" class="style145">
                &nbsp;</td>
            <td rowspan="16" class="style139">
                <img alt="" src="image/1234.jpg" 
                    style="height: 462px; width: 332px" class="style139" /></td>
        </tr>
        <tr>
            <td class="style140">
                Enquiry ID:</td>
            <td class="style143">
                <asp:Label ID="Eid" runat="server"></asp:Label>
            </td>
            <td class="style136">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                RequestedUserId:</td>
            <td class="style136">
                <asp:TextBox ID="uid" runat="server" BorderColor="#304D75" 
                    BorderStyle="Dotted" BorderWidth="2px" Height="28px" Width="175px" 
                    style="text-align: left"></asp:TextBox>
            </td>
            <td class="style137">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                EventID:</td>
            <td class="style136">
                <asp:TextBox ID="pid" runat="server" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style136">
                &nbsp;</td>
        </tr>
        <tr>
            <td  colspan="2" class="style144" style="text-align: left">
                <span class="style134" 
                    
                    
                    style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Personal Details</span></td>
            <td class="style136">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                FullName:</td>
            <td class="style136">
                <asp:TextBox ID="fullname" runat="server" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style137">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please Enter Full Name" ForeColor="Red" 
                    ControlToValidate="fullname" style="font-size: small" CssClass="style142"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style140">
                Enquiry Type:</td>
            <td class="style136">
                <asp:TextBox ID="txtEnquiryType" runat="server" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style137">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                Mobile No:</td>
            <td class="style136">
                <asp:TextBox ID="mno" runat="server" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style137">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Please Enter Mobile Number" ForeColor="Red" 
                    ControlToValidate="mno" style="font-size: small" CssClass="style142"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style140">
                Address:</td>
            <td class="style136">
                <asp:TextBox ID="address" runat="server" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style137">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Please Enter Address" ForeColor="Red" 
                    ControlToValidate="address" style="font-size: small" CssClass="style142"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style140">
                City:</td>
            <td class="style136">
                <asp:TextBox ID="city" runat="server" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style137">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Please Enter City" ForeColor="Red" 
                    ControlToValidate="city" style="font-size: small" CssClass="style142"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style140">
                Pincode</td>
            <td class="style136">
                <asp:TextBox ID="pincode" runat="server" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style137">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="Please Enter Pincode" ForeColor="Red" 
                    ControlToValidate="pincode" style="font-size: small" CssClass="style142"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style140">
              Set Your Offer Event Price:</td>
            <td class="style136">
                <asp:TextBox ID="txtPrice" runat="server" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style136">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                Country:</td>
            <td class="style136">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    Height="41px" Width="178px">
                    <asp:ListItem>India</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style136">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                Enquiry Description:</td>
            <td class="style136">
                <asp:TextBox ID="enquiryDes" runat="server" TextMode="MultiLine" Width="178px" 
                    CssClass="style142"></asp:TextBox>
            </td>
            <td class="style137">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="Please Enter short Description" ForeColor="Red" 
                    ControlToValidate="enquiryDes" style="font-size: small" 
                    CssClass="style142"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style137">
                &nbsp;</td>
            <td class="style143">
                &nbsp;</td>
            <td class="style136">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                &nbsp;</td>
            <td class="style136">
                <asp:Button ID="Button1" runat="server" 
                    Text="Submit Your Enquiry" BorderColor="#0033CC" BorderStyle="Solid" 
                    onclick="Button1_Click" ForeColor="Black" />
            </td>
            <td class="style136">
                &nbsp;</td>
        </tr>
    </table>
    <script type="text/javascript">
        function ShowPopup(message) {
            $(function () {
                $("#dialog").html(message);
                $("#dialog").dialog({
                    title: "Sahajanand Laser Technology",
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    },
                    modal: true
                });
            });
        };
    </script>
    <div id="dialog" style="display: none">
    </div>
 </div>
</asp:Content>

