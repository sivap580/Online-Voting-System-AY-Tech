<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SendNotifications.aspx.cs" Inherits="onv.SendNotifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
     .auto-style223 {
         width: 71%;
         height: 122px;
     }
     .auto-style224 {
         width: 149px;
     }
     .auto-style225 {
         margin-bottom: 2px;
     }
     .auto-style226 {
         width: 149px;
         height: 55px;
     }
     .auto-style227 {
         height: 55px;
         width: 376px;
     }
     .auto-style228 {
         text-align: center;
         color: #000099;
         background-color: #CC6699;
             height: 45px;
         }
     .auto-style210 {
         color: #FF0000;
         background-color: #99FFCC;
     }
     .auto-style211 {
         width: 376px;
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div style="background-image: url('images/vote1.jpg')">
            <h1 class="auto-style228">NOTIFICATIONS </h1>
            <table border="1" class="auto-style223" aria-multiline="False">
                <tr>
                    <td class="auto-style226">
                        <h2>&nbsp;</h2>
                        <h2>
                        <strong><span class="auto-style210">Date</span></strong></h2>
                        <br />
                        <h2><strong><span class="auto-style210">Type Mesage</span></strong></h2>
                        <br />
                        <br />
                        </td>
                    <td class="auto-style227">
                        <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="178px" type="date" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Height="95px" TextMode="MultiLine" Width="463px" ></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style224">
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="Send"  />
                        &nbsp;<br />
                    </td>
                </tr>
            </table>
            </div>
        


</asp:Content>
