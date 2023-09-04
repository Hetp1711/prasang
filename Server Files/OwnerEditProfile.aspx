<%@ Page Title="" Language="C#" MasterPageFile="~/Owner.master" AutoEventWireup="true" CodeFile="OwnerEditProfile.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
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
        .auto-style1 {
            width: 340px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" height:auto; width:1000px; margin-left:150px">
        <div id="RegistrationContainer">
            <table style="width:932px;   background-image:url('image/explosion.png')">
                <tr>
                    <td colspan="3" align="center">
                        <asp:Label ID="Label1" runat="server" Text="Edit Your Profile" Font-Bold="True"
                            Font-Size="14pt" CssClass="style34" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="style34">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style1">
                        Full Name :
                    </td>
                    <td class="style136">
                        <asp:TextBox ID="txtName" runat="server" 
                            Style="text-transform: uppercase; " onkeypress="return isNumberKey(event)"
                            CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" class="auto-style1">
                        Email:</td>
                    <td class="style136">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style1">
                      Old  PassWord:</td>
                    <td class="style136">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" class="auto-style1">
                        Set
                        New Password:</td>
                    <td class="style136">
                        <asp:TextBox ID="txtCnfrmPwd" runat="server" CssClass="txtStyle" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <br />
                    </td>
                </tr>
                
               
                <tr>
                    <td align="right" class="auto-style1">
                        Contact No:</td>
                    <td class="style136">
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*"
                            ControlToValidate="txtMobile" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                
               
                <tr>
                    <td align="right" class="auto-style1">
                        Address:</td>
                    <td class="style136">
                        <asp:TextBox ID="txtCountry" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*"
                            ControlToValidate="txtCountry" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style1">
                       About You:</td>
                    <td class="style137">
                        <asp:TextBox ID="txtCity" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
                            ControlToValidate="txtCity" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style1">
                        City:</td>
                    <td class="style136">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="txtStyle" Height="45px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*"
                            ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="right">
                    <br class="style34" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3" class="style34">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubmit" runat="server" Text="Update Now" 
                             ForeColor="#003366" Height="31px" Width="122px" 
                            BorderStyle="Solid" BorderWidth="1px" onclick="btnSubmit_Click" />
                        <span class="style34">&nbsp;&nbsp;&nbsp;
                        </span>
                        <asp:Button ID="btnClear" runat="server" Text="Clear"  CausesValidation="False"
                            CssClass="btnStyle" ForeColor="#404037" Height="31px" Width="74px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Label ID="lblMessage" runat="server" CssClass="style2" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                    </td>
                </tr>
            </table>
            
        </div>
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

