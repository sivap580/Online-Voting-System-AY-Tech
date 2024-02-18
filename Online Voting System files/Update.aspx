<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="onv.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 125px;
        }
    .auto-style12 {
        width: 125px;
        height: 26px;
        text-align: right;
    }
    .auto-style13 {
        height: 26px;
        text-align: left;
    }
    .auto-style14 {
        width: 37%;
    }
    .auto-style15 {
        text-align: center;
        color: #FFFFFF;
    }
    .auto-style16 {
        text-align: right;
    }
    .auto-style17 {
        width: 125px;
        text-align: right;
    }
    .auto-style18 {
        text-align: left;
    }
    .auto-style19 {
        background-color: #FF0000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6" style="background-image: url('images/updateimage.png')">

        <h3 class="auto-style15" style="background-color: #6699FF">Upate Your Details 😊</h3>
        <table style="border-style: inherit; border-width: inherit; border-color: #808080; background-color: #808000;" align="center" class="auto-style14">
            <tr>
                <td class="auto-style11">
                    <asp:RadioButton ID="RdBtnMr" runat="server" Text="Mr" />
&nbsp;&nbsp;
                    <asp:RadioButton ID="RdBtnMRs" runat="server" Text="Mrs" />
                </td>
               
               
            </tr>
            <tr>
                <td class="auto-style17"><strong>Name :</strong></td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style17"><strong>Date of Birth :</strong></td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtStId" runat="server"></asp:TextBox>
                </td>
               
            </tr>
             <tr>
     <td class="auto-style17"><strong>St. ID</strong></td>
     <td class="auto-style18">
         <asp:TextBox ID="TxtDOB" runat="server"></asp:TextBox>
                 </td>
                 </tr>
                    <tr>
<td class="auto-style12"><strong>Course Category :</strong></td>
<td class="auto-style13">
    <asp:TextBox ID="TxtCOCA" runat="server" Width="119px"></asp:TextBox>
                        </td>
            </tr>
        <tr>
<td class="auto-style17"><strong>Course :</strong></td>
<td class="auto-style18">
    <asp:TextBox ID="TxtCO" runat="server"></asp:TextBox>
            </td>
            </tr>
        <tr>
<td class="auto-style17"><strong>Password :</strong></td>
<td class="auto-style18">
    <asp:TextBox ID="TxtPAss" runat="server" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
            &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Text="." onchange="togglePasswordVisibility()"/>
    <script>
    function togglePasswordVisibility() {
        var passwordField = document.getElementById('<%= TxtPAss.ClientID %>');
        var showPasswordCheckbox = document.getElementById('<%= CheckBox1.ClientID %>');

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
            </tr>
        <tr>
<td class="auto-style17"><strong>Phone No :</strong></td>
<td class="auto-style18">
    <asp:TextBox ID="TxtPho" runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Email :</strong></td>
                <td class="auto-style18"> 
                    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>

        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="OK" Width="81px" />
        <br />
        <br />
        <h4 class="auto-style19"><strong>NOTE : You should Update Your Password if the passworld field is blank.Thank You</strong></h4>
        <br />
        <br />
        <br />

    </div>
</asp:Content>
