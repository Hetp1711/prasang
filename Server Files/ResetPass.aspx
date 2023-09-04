<%@ Page Language="C#" MasterPageFile="~/BB.master" AutoEventWireup="true" CodeFile="ResetPass.aspx.cs" Inherits="login" Title="::Login Page::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style type="text/css">
        .style16
        {
            color: #143A49;
        }
         .auto-style2 {
            height: 17px;
            width: 305px;
        }
        .auto-style3 {
            width: 305px;
        }
        .auto-style5 {
            text-align: right;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div style="height:400px; width:1000px; margin-left:150PX; background-color: Transparent">


    <table style="width: 100%; height: 300px; background-color:White">
        <tr>
            <td colspan="3" 
                
                 " 
                class="auto-style1" >
                
                <h2>Reset Password
            </h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" 
                >
                <h4>Enter New Password:</h4>
            </td>
            <td style="width: 284px">
                <asp:TextBox ID="Email1" runat="server" BorderColor="#404037" 
                    BorderStyle="Solid" Height="38px" Width="266px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Email11" ErrorMessage="Please enter Password" ControlToValidate="Email1" runat="server" />
            </td>
            <td style="width: 242px">
                <asp:Image ID="Image2" runat="server" Height="146px" 
                    ImageUrl="~/clients.png" Width="152px" />
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Agency FB'; font-size: x-large; color: #404037; " class="auto-style2">
                &nbsp;</td>
            <td style="width: 284px; height: 17px">
            </td>
            <td rowspan="2" style="width: 242px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-family: 'Agency FB'; font-size: x-large; color: #404037; " class="auto-style3">
                <h3 class="auto-style5">&nbsp;</h3>
            </td>
            <td style="width: 284px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BorderColor="#6A4141" 
                    BorderStyle="Solid" Font-Size="Large" ForeColor="#404037" Height="40px" 
                    Text="Reset Password" Width="216px" onclick="Button1_Click1" />
            </td>
        </tr>
    </table>


</div>
 
               





</asp:Content>

