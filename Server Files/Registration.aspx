<%@ Page Title="" Language="C#" MasterPageFile="~/EzzyMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="jquery-2.1.3.min.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="jquery-ui.js" type="text/javascript"></script>
    <script type="text/javascript">
        function checkFileExtension(elem) {
            var filePath = elem.value;


            if (filePath.indexOf('.') == -1)
                return false;

            var validExtensions = new Array();
            var ext = filePath.substring(filePath.lastIndexOf('.') + 1).toLowerCase();

            validExtensions[0] = 'docx';
            validExtensions[1] = 'doc';
            validExtensions[2] = 'pdf';

            for (var i = 0; i < validExtensions.length; i++) {
                if (ext == validExtensions[i])
                    return true;
            }


            alert('The file extension ' + ext.toUpperCase() + ' is not allowed!'+<br/>+"Allowed Extensions *.doc/*.docx");
            return false;
        }
    </script>
    <script type="text/javascript">
      <!--
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return true;

            return false;
        }
      
      //-->
    </script>
    <style type="text/css">
        .style2
        {
            color: #FFFFFF;
        }
        .style34
        {
            color: #000000;
        }
        .txtStyle
        {}
    .style134
    {
        width: 62px;
    }
    .style135
    {
        font-size: 13px;
        width: 62px;
    }
        .style136
        {
            color: #000000;
            height: 29px;
            width: 173px;
        }
        .style137
        {
            width: 62px;
            height: 29px;
        }
        .style139
        {
            color: #000000;
            width: 173px;
        }
        .style140
        {
            width: 237px;
        }
        .style141
        {
            height: 29px;
            width: 237px;
        }
        .style142
        {
            font-size: 13px;
            width: 237px;
        }
    .style144
    {
        color: #000000;
        width: 13%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div>
        <div id="RegistrationContainer" style=" margin-top:10px;">
            <table style="width: 1000px;   margin-left:150px;  background-color: White">
                <tr>
                    <td colspan="4" align="center">
                        <asp:Label ID="Label1" runat="server" Text=" Registration Form" Font-Bold="True"
                            Font-Size="14pt" CssClass="style34" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="style34">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style144">
                        Full Name :
                    </td>
                    <td class="style134">
                        <asp:TextBox ID="txtName" runat="server" 
                            Style="text-transform: uppercase; " onkeypress="return isNumberKey(event)"
                            CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="style140">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter FullName"
                            ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td rowspan="10">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/registration.png" />
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style144">
                        Email:</td>
                    <td class="style134">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="style140">
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="Invalid_Email" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style144">
                        PassWord:</td>
                    <td class="style134">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="txtStyle" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="style140">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Password"
                            ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style144">
                        Conform Password:</td>
                    <td class="style134">
                        <asp:TextBox ID="txtCnfrmPwd" runat="server" CssClass="txtStyle" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="style140">
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                            ControlToValidate="txtCnfrmPwd" ErrorMessage="Passwords_mismatch" Font-Size="9pt"
                            ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style144">
                        Gender:</td>
                    <td >
                       
                        <asp:RadioButtonList ID="rbtnListGender" runat="server" RepeatDirection="Horizontal"
                            Width="174px" Height="25px" BackColor="White" CssClass="txtStyle" 
                            AutoPostBack="True" ForeColor="Black">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="style140">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select Gender"
                            ControlToValidate="rbtnListGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
               
               
                <tr>
                    <td align="right" class="style144">
                        Contact No:</td>
                    <td class="style134">
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="style140">
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtMobile" ErrorMessage="Invalid Mobile" Font-Size="9pt" 
                            ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                  <tr>
                    <td align="right" class="style144">
                        University/collage Enrolment No:</td>
                    <td class="style134">
                        <asp:TextBox ID="txtEno" runat="server" CssClass="txtStyle" Height="45px"></asp:TextBox>
                    </td>
                    <td class="style140">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Enter Enrolment No"
                            ControlToValidate="txtEno" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
             
                <tr>
                    <td align="right" class="style144">
                        Sem:</td>
                    <td class="style135">
                        <span class="style2">
                        <asp:DropDownList ID="sem" runat="server" Height="21px" Width="128px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style140">
                        &nbsp;</td>
                </tr>
              
                   <tr>
                    <td align="right" class="style144">
                        Department:</td>
                    <td class="style134">
                        <span class="style2">
                        <asp:DropDownList ID="department" runat="server" Height="21px" Width="128px">
                            <asp:ListItem>COMPUTER</asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>ELECTRICAL</asp:ListItem>
                            <asp:ListItem>CIVIL</asp:ListItem>
                            <asp:ListItem>MECH</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style140">
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td align="right" class="style144">
                        Select Collage:</td>
                    <td class="style134">
                        <asp:DropDownList ID="collage" runat="server" Height="21px" Width="128px">
                            <asp:ListItem>PPI</asp:ListItem>
                            <asp:ListItem>PIET-DS</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style140">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" align="right">
                    <br class="style34" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="4" class="style34">
                        <span class="style3">&nbsp;</span><asp:Button ID="btnSubmit" runat="server" Text="RegisterNow" 
                             ForeColor="#003366" Height="31px" Width="122px" 
                            BorderStyle="Solid" BorderWidth="1px" onclick="btnSubmit_Click" />
                        <span class="style34">&nbsp;&nbsp;&nbsp;
                        </span>
                        <asp:Button ID="btnClear" runat="server" Text="Clear"  CausesValidation="False"
                            CssClass="btnStyle" ForeColor="#404037" Height="31px" Width="74px" 
                            onclick="btnClear_Click1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" align="center">
                        <asp:Label ID="lblMessage" runat="server" CssClass="style2" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                    </td>
                </tr>
            </table>
            
        </div>
         <script type="text/javascript">
             function ShowPopup(message) {
                 $(function () {
                     $("#dialog").html(message);
                     $("#dialog").dialog({
                         title: "",
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

