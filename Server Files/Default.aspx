<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
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
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="style142">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style144">
                  New      PassWord:</td>
                    <td class="style139">
                        <asp:TextBox ID="password" runat="server" CssClass="txtStyle"></asp:TextBox>
                    </td>
                    <td class="style142">
                        &nbsp;</td>
                </tr>
               
               
                <tr>
                    <td class="style144">
                        Contact No:</td>
                    <td class="style139">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="style142">
                        <br />
                    </td>
                </tr>
                  <tr>
                    <td class="style144">
                        Address:</td>
                    <td class="style139">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td class="style142">
                        &nbsp;</td>
                </tr>
               
             
                <tr>
                    <td class="style144">
                        City:</td>
                    <td class="style137">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td class="style142">
                        &nbsp;</td>
                </tr>
              
                   <tr>
                    <td class="style144">
                        State:</td>
                    <td class="style139">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td class="style142">
                        &nbsp;</td>
                </tr>
                 <tr>
                    <td class="style144">
                       Pincode:</td>
                    <td class="style139">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
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
                        <span class="style3">&nbsp;</span><span class="style34">&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                            Text="Button" />
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
         

    </form>
</body>
</html>
