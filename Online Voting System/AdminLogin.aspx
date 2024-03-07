<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="onv.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
        width: 67%;
            height: 176px;
        }
    .auto-style17 {
        margin-left: 0px;
    }
    .auto-style18 {
        color: #FFFFFF;
        height: 0px;
            text-align: center;
        }
        .auto-style19 {
            color: #000000;
            width: 497px;
            text-align: right;
            height: 48px;
        }
        .auto-style69 {
            width: 1044px;
            height: 48px;
            text-align: left;
        }
        .auto-style22 {
        width: 1044px;
        text-align: left;
    }
        .auto-style25 {
        color: #000000;
        width: 497px;
        text-align: center;
        height: 57px;
    }
    .auto-style26 {
        width: 1044px;
        text-align: left;
        height: 57px;
    }
    .auto-style27 {
        text-align: left;
        width: 100px;
        height: 57px;
    }
    .auto-style28 {
        width: 55%;
        height: 81px;
    }
    .auto-style70 {
        color: #000000;
        width: 497px;
        text-align: right;
    }
    .auto-style71 {
        color: #000000;
        width: 497px;
        height: 57px;
        text-decoration: none;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div aria-autocomplete="both" style="background-image: url('images/adk.jpeg')">

        <div class="auto-style6">
            <h2 class="auto-style18">ADMIN LOGIN</h2>
            <div class="auto-style7">
            <br />
            </div>
        </div>

        <table align="center" class="auto-style28">
            <tr>
                <td class="auto-style19"><strong>USERNAME :</strong></td>
                <td class="auto-style69">
            <asp:TextBox ID="t1" runat="server" Width="162px" CssClass="auto-style17"></asp:TextBox>
                    </td>
                
            </tr>
            <tr>
                <td class="auto-style71"><strong>EMAIL :</strong></td>
                <td class="auto-style26"> 
            <asp:TextBox ID="t3" runat="server" Width="163px"></asp:TextBox>
                    </td>
                <td class="auto-style27"> <strong>
            <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="28px" OnClick="Button1_Click1" Text="Request New Password" Width="183px" />
            </strong>
                    </td>
            </tr>
            <tr>
                <td class="auto-style70"><strong>PASSWORD:</strong></td>
                <td class="auto-style22">
            <asp:TextBox ID="t2" runat="server"  Width="162px" Height="22px" TextMode="Password" ></asp:TextBox>
                    <asp:CheckBox ID="ChkShow" runat="server" Text="."  onchange="togglePasswordVisibility()"/>
                     <script>
                         function togglePasswordVisibility() {
                             var passwordField = document.getElementById('<%= t2.ClientID %>');
                             var showPasswordCheckbox = document.getElementById('<%= ChkShow.ClientID %>');

                             if (showPasswordCheckbox.checked) {
                                 // Change the input type to 'text' to show the password
                                 passwordField.type = 'text';
                             } else {
                                 // Change the input type back to 'password' to hide the password
                                 passwordField.type = 'password';
                             }
                         }
                     </script>
                    </td>
                <td>
            <asp:Button ID="b1" runat="server" Text="Admin Login" OnClick="Button1_Click" Font-Bold="True" Font-Italic="False" Font-Names="Engravers MT" ForeColor="#FF3300" Height="27px" Width="126px" />
                </td>
            </tr>
        </table>
         
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>
</asp:Content>
