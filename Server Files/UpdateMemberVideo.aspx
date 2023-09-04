<%@ Page Title="" Language="C#" MasterPageFile="~/Owner.master" AutoEventWireup="true" CodeFile="UpdateMemberVideo.aspx.cs" Inherits="Registration" %>

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
        .auto-style2 {
            width: 932px;
        }
        .auto-style4 {
            text-align: left;
            width: 34px;
        }
        .auto-style6 {
            width: 147px;
            text-align: left;
        }
        .auto-style7 {
            width: 751px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style=" height:auto; width:1000px; margin-left:150px">
        <div id="RegistrationContainer">
            <table style="background-image:url('image/explosion.png')" class="auto-style2">
                <tr>
                    <td colspan="3" align="center">
                        <asp:Label ID="Label1" runat="server" Text="Edit Your Profile Video" Font-Bold="True"
                            Font-Size="14pt" CssClass="style34" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="style34">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        Full Name :
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtName" runat="server" 
                            Style="text-transform: uppercase; " onkeypress="return isNumberKey(event)"
                            CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        Member Id:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        Upload Video Link</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtV" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" align="right">
                    <br class="style34" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="text-left">
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
                    <td colspan="3" class="text-left">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" class="text-left">
                        Update Cover Image:<asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="text-left">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" class="text-left">
                        <asp:Button ID="btnImage" runat="server" Text="Update Image Now" 
                             ForeColor="#003366" Height="31px" Width="200px" 
                            BorderStyle="Solid" BorderWidth="1px" onclick="btnImage_Click" />
                    </td>
                </tr>
                   <tr>
                    <td colspan="3" class="text-left">
                        Update Profile Image:<asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="text-left">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" class="text-left">
                        <asp:Button ID="Button1" runat="server" Text="Update Profile Image Now" 
                             ForeColor="#003366" Height="31px" Width="200px" 
                            BorderStyle="Solid" BorderWidth="1px" onclick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblMessage" runat="server" CssClass="style2" ForeColor="Blue"></asp:Label>
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

