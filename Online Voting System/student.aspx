<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="onv.student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style8 {
            width: 41%;
            height: 80px;
        }
        .auto-style14 {
            width: 274px;
            text-align: left;
            height: 34px;
        }
        .auto-style15 {
            text-align: right;
            height: 52px;
        }
        .auto-style16 {
            width: 274px;
            text-align: left;
            height: 53px;
        }
        .auto-style17 {
            text-align: center;
            background-color: #669999;
            font-weight: normal;
        }
        .auto-style18 {
        text-align: right;
            width: 12%;
            height: 47px;
        }
        .auto-style25 {
            text-align: right;
            height: 34px;
            width: 12%;
        }
        .auto-style27 {
        width: 12%;
    }
        .auto-style28 {
            text-align: right;
            width: 12%;
            height: 53px;
        }
        .auto-style29 {
        text-align: left;
        width: 33%;
        height: 47px;
    }
        .auto-style301 {
        width: 773px;
        text-align: left;
        height: 34px;
        color: #FFFFFF;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('images/Screenshot 2023-11-18 154847.png')">

    <h2 class="auto-style300">STUDENT LOGIN</h2>
    <table align="center" class="auto-style8" style="background-color: #C0C0C0" >
        <tr>
            <td class="auto-style25"><strong>Student ID:</strong></td>
            <td class="auto-style301">
                <asp:TextBox ID="Txtid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28"><strong>Email:<br />
                </strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="TxtEmail" runat="server" Height="24px"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="BtnVerify" runat="server" Text="Verify" OnClick="BtnVerify_Click" />
                <br />
                <strong>
                <asp:Label ID="l1" runat="server" Text="Verify"></asp:Label>
                ...</strong><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Password:</strong></td>
            <td class="auto-style29">
                <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:CheckBox ID="ChkPAss" runat="server" Text="." onchange="togglePasswordVisibility()" />
                <script>
    function togglePasswordVisibility() {
        var passwordField = document.getElementById('<%= TxtPass.ClientID %>');
        var showPasswordCheckbox = document.getElementById('<%= ChkPAss.ClientID %>');

        if (showPasswordCheckbox.checked) {
            // Change the input type to 'text' to show the password
            passwordField.type = 'text';
        } else {
            // Change the input type back to 'password' to hide the password
            passwordField.type = 'password';
        }
    }
                </script>
                <br />
                Forgot Password!! try thorugh Email.</td>
        </tr>
        <tr>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="RstPass" runat="server" OnClick="RstPass_Click" Text="Reset Password" />
            </td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="OK" OnClick="Button3_Click" Height="28px" Width="52px" />
&nbsp;
                <asp:Button ID="Button4" runat="server" Text="Cancel" OnClick="Button4_Click" Height="27px" />
            </td>
        </tr>
    </table>
        <h4 class="auto-style17">Dont You have Registered?<strong><a class="auto-style9" href="Registration.aspx"><span class="auto-style10"> Register </span></a></strong>Here..........</h4>
        <br />
    <br />

    </div>
</asp:Content>
