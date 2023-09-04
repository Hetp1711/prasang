<%@ Page Language="C#" MasterPageFile="~/BB.master" AutoEventWireup="true" CodeFile="OForgotPass.aspx.cs" Inherits="login" Title="::Login Page::" %>

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
        .auto-style6 {
            text-align: right;
            height: 15px;
        }
        .auto-style7 {
            text-align: right;
            height: 42px;
        }
        .auto-style8 {
            width: 284px;
            height: 42px;
        }
        .auto-style10 {
            width: 284px;
            height: 28px;
        }
        .auto-style11 {
            text-align: right;
            height: 28px;
        }
        .auto-style12 {
            width: 100%;
            height: 117px;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div style="height:400px; width:1000px; margin-left:150PX; background-color: Transparent">


    <table style="background-color:White" class="auto-style12">
        <tr>
            <td class="auto-style6" colspan="2"  >
                
                
                
                <h2 class="label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reset Password
            </h2>
            </td>
            <td rowspan="3">
                <asp:Image ID="Image2" runat="server" Height="100px" 
                    ImageUrl="~/clients.png" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11" >
                
                <h4>Enter Mobile No:</h4>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="Email1" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" >
                
                    <asp:RequiredFieldValidator ID="Email11" ErrorMessage="Please enter MobileNo" ControlToValidate="Email1" runat="server" />
            </td>
            <td class="auto-style10">
                <asp:Button ID="Button1" runat="server" BorderColor="#6A4141" 
                    BorderStyle="Solid" Font-Size="Large" ForeColor="#404037" Height="30px" 
                    Text="Verify"  onclick="Button1_Click1" />
            </td>
        </tr>
        </table>


</div>
 
               





</asp:Content>

