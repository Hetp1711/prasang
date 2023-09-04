<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="EditProfile1.aspx.cs" Inherits="updateprofile " %>

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
      
        .style137
        {
            font-size: medium;
            width: 635px;
            color: #165601;
            font-family: Lato;
            font-weight: normal;
            text-align: left;
            border-color: #008000;
            padding: 0;
        }
        
        .style138
        {
            text-align: left;
        }
        .style139
        {
            color: #165601;
            text-align: left;
        }
        .style140
        {
            width: 1000px;
        }
        .style142
        {
            text-align: left;
            width: 77px;
        }
        .style143
        {
            width: 171px;
        }
        .style144
        {
            color: #000000;
            text-align: left;
            width: 101px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
        <div   style=" height:auto; width:1000px; margin-top:10px; ">
            <table style="margin-left:150px;  background-color:#D5967B" class="style140">
                <tr>
                    <td colspan="4" align="center" style="text-align: left">
                        <asp:Label ID="Label2" runat="server" Text="User Profile Form" Font-Bold="True"
                            Font-Size="14pt" CssClass="style34" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="style34">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style144">
                        Full Name :
                    </td>
                    <td class="style139">
                        <asp:TextBox ID="name" runat="server" 
                            Style="text-transform: uppercase; " onkeypress="return isNumberKey(event)"
                            CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="style142">
                        &nbsp;</td>
                    <td rowspan="7" class="style143">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style144">
                        Email:</td>
                    <td class="style139">
                        <asp:TextBox ID="email" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="style142">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style144">
                  New      PassWord:</td>
                    <td class="style139">
                        <asp:TextBox ID="password" runat="server" CssClass="txtStyle" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="style142">
                        &nbsp;</td>
                </tr>
               
               
                <tr>
                    <td class="style144">
                        Contact No:</td>
                    <td class="style139">
                        <asp:TextBox ID="cno" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="style142">
                        <br />
                    </td>
                </tr>
                  <tr>
                    <td class="style144">
                        Address:</td>
                    <td class="style139">
                        <asp:TextBox ID="add" runat="server" CssClass="txtStyle" Height="45px"></asp:TextBox>
                    </td>
                    <td class="style142">
                        &nbsp;</td>
                </tr>
               
             
                <tr>
                    <td class="style144">
                        City:</td>
                    <td class="style137">
                        <asp:TextBox ID="city" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="style142">
                        &nbsp;</td>
                </tr>
              
                   <tr>
                    <td class="style144">
                        State:</td>
                    <td class="style139">
                        <asp:TextBox ID="state" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="style142">
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td class="style144">
                      OldPassword:</td>
                    <td class="style139">
                        <asp:TextBox ID="pincode" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="style142">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" class="style138">
                    <br class="style34" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="style138">
                        <span class="style3">&nbsp;</span><asp:Button ID="Button1" runat="server" Text="UpdateNow" 
                             ForeColor="#003366" Height="31px" Width="122px" 
                            BorderStyle="Solid" BorderWidth="1px" onclick="Button1_Click"  />
                        <span class="style34">&nbsp;&nbsp;&nbsp;
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" align="center">
                        <asp:Label ID="Label3" runat="server" CssClass="style2" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                    </td>
                </tr>
            </table>
            
        </div>
         

  
  
</asp:Content>

