<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewEnquiry.aspx.cs" Inherits="confirmenquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <style type="text/css">
        .style9
    {
        text-align: left;
            font-family: "Arial Narrow";
            font-size: medium;
            font-weight: normal;
        }
        .style12
        {
            width: 5px;
        }
        .style14
        {
            font-size: x-large;
            color: #368099;
        }
        .style16
        {
            border: 1px solid #2582A1;
            padding: 1px 4px;
            font-family: "Arial Narrow";
            font-size: medium;
            font-weight: normal;
        }
        .style17
        {
            font-size: xx-large;
            font-family: "Arial Narrow";
        }
        .style134
        {
            color: #2582A1;
            height: 23px;
            font-family: "Arial Narrow";
            font-size: large;
            border: 1px solid #48928A;
            padding: 1px;
        }
        .text
        {}
        .style135
        {
            font-size: x-large;
            font-weight: normal;
            line-height: 19px;
            width: 241px;
            text-align: left;
            border: 1px solid #2582A1;
            padding: 1px 4px;
        }
        .style136
        {
            width: 5px;
            color: #2582A1;
            font-family: "Arial Narrow";
            border: 1px solid #2582A1;
            padding: 1px 4px;
        }
        .style137
        {
            width: 165px;
            text-align: left;
            border: 1px solid #2582A1;
            padding: 1px 4px;
        }
        .style139
        {
            border: 1px solid #2582A1;
            padding: 1px 4px;
        }
        .style140
        {
            color: #000000;
            width: 165px;
            text-align: left;
            font-family: "Arial Narrow";
            font-size: medium;
            border: 1px solid #2582A1;
            padding: 1px 4px;
        }
        .style141
        {
            width: 328px;
            text-align: right;
        }
        .style142
        {
            width: 67px;
        }
        .style143
        {
            width: 328px;
            text-align: right;
            font-size: xx-large;
        }
        .style144
        {
            color: #0066FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div   style="height: auto; width:1000px; margin-left:150px; background-image:url(image/pbg.png);
         background-repeat: inherit"> 
         
         
         
          <table style="width:100%; height: 114px;">
              <tr>
                  <td class="style141">
                      &nbsp;</td>
                  <td class="style142">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style143">
                      <span class="style144">Enquiry ID</span>:</td>
                  <td class="style142">
                      <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#6699FF" 
                          Font-Size="15pt" Height="36px" style="text-align: left" Width="201px" 
                          AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="EnquiryId" 
                          DataValueField="EnquiryId">
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:db %>" 
                          SelectCommand="SELECT DISTINCT * FROM [EnquiryInfo] WHERE ([Status] = @Status)">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </td>
                  <td style="text-align: left">
                      <asp:Button ID="Button2" runat="server" BackColor="#3366FF" 
                          BorderColor="#0000CC" BorderWidth="1px" Font-Size="15pt" Height="36px" 
                          onclick="Button2_Click" style="text-align: left" Text="Show" Width="153px" />
                  </td>
              </tr>
              <tr>
                  <td class="style141">
                      &nbsp;</td>
                  <td class="style142">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
          </table>
         
         
         
          </div>
 <div   style="height:auto; width:1000px; margin-left:150px; background-image:url(image/pbg.png);
         background-repeat: inherit">
        

    <table style="width: 100%; height: 445px;">
        <tr>
            <td colspan="4" class="style14">
                <img alt="" src="image/online_enquiry.png" 
                    style="height: 35px; width: 37px" /><span class="style17">View Enquiry 
                /Update Enquiry Status&nbsp; </span></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left" class="style16">
                <span class="style134" 
                    
                    
                    style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Enquiry Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Date:
                <asp:Label ID="date" runat="server" Text="Label"></asp:Label>
                </span></td>
            <td rowspan="17" class="style139">
                <img alt="" src="image/online-enquiry-form-graphic.png" 
                    style="height: 462px; width: 332px" class="style139" /></td>
        </tr>
        <tr>
            <td class="style140">
                Enquiry ID:</td>
            <td class="style136">
                <asp:Label ID="Eid" runat="server"></asp:Label>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                Enquiry On:</td>
            <td class="style136">
                <asp:TextBox ID="edate" runat="server" BorderColor="#304D75" 
                    BorderStyle="Dotted" BorderWidth="2px" Height="28px" Width="175px" 
                    style="text-align: left"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                Company Name:</td>
            <td class="style136">
                <asp:TextBox ID="cname" runat="server" BorderColor="#304D75" 
                    BorderStyle="Dotted" BorderWidth="2px" Height="28px" Width="175px" 
                    style="text-align: left"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                Email Address:</td>
            <td class="style136">
                <asp:TextBox ID="email" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td  colspan="2" class="style139" style="text-align: left">
                <span class="style134" 
                    
                    
                    style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Personal Details</span></td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                FullName:</td>
            <td class="style136">
                <asp:TextBox ID="fullname" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                Enquiry Type:</td>
            <td class="style136">
                <asp:TextBox ID="etype" runat="server" Width="183px"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                Mobile No:</td>
            <td class="style136">
                <asp:TextBox ID="mno" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                Address:</td>
            <td class="style136">
                <asp:TextBox ID="address" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                City:</td>
            <td class="style136">
                <asp:TextBox ID="city" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                Pincode</td>
            <td class="style136">
                <asp:TextBox ID="pincode" runat="server" CssClass="text" Height="28px" 
                    Width="178px"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                State:</td>
            <td class="style136">
                <asp:TextBox ID="state" runat="server" CssClass="text" Width="172px"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                Country:</td>
            <td class="style136">
                <asp:TextBox ID="country" runat="server" Width="168px"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style140">
                Enquiry Description:</td>
            <td class="style136">
                <asp:TextBox ID="enquiryDes" runat="server" TextMode="MultiLine" Width="198px" 
                    Height="127px"></asp:TextBox>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                Update Status:</td>
            <td class="style136">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    Height="35px" Width="188px">
                    <asp:ListItem>Solved</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style135">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style137">
                &nbsp;</td>
            <td class="style136">
                <asp:Button ID="Button1" runat="server" CssClass="text" 
                    Text="Update Enquiry Conformation" BorderColor="#0033CC" BorderStyle="Solid" 
                    onclick="Button1_Click" />
            </td>
            <td class="style135">
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
    </div>
</asp:Content>

