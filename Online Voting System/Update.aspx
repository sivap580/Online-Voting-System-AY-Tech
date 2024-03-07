<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="onv.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style121 {
        width: 244px;
        height: 26px;
        text-align: right;
    }
    .auto-style131 {
        height: 26px;
        text-align: left;
    }
    .auto-style151 {
        text-align: center;
        color: #FFFFFF;
    }
    .auto-style171 {
            width: 244px;
            text-align: right;
        }
    .auto-style181 {
        text-align: left;
    }
    .auto-style191 {
        background-color: #FF0000;
    }
        .auto-style301 {
            width: 767px;
            color: #FFFFFF;
            text-align: center;
            height: 352px;
        }
        .auto-style303 {
            color: #FFFFFF;
            margin-left: 0px;
            width: 244px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style300" style="background-image: url('images/updateimage.png')">

        <h3 class="auto-style151" style="background-color: #6699FF">Upate Your Details 😊</h3>
        <table style="border-style: inherit; border-width: inherit; border-color: #808080; background-color: #808000;" align="center" class="auto-style301">
            <tr>
                <td class="auto-style171">
                    <asp:RadioButton ID="RdBtnMr" runat="server" Text="Mr" />
&nbsp;&nbsp;
                    <asp:RadioButton ID="RdBtnMRs" runat="server" Text="Mrs" />
                </td>
               
               
            </tr>
            <tr>
                <td class="auto-style171"><strong>Name :</strong></td>
                <td class="auto-style181">
                    <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style171"><strong>Date of Birth :</strong></td>
                <td class="auto-style181">
                    <asp:TextBox ID="TxtStId" runat="server"></asp:TextBox>
                </td>
               
            </tr>
             <tr>
     <td class="auto-style171"><strong>St. ID</strong></td>
     <td class="auto-style181">
         <asp:TextBox ID="TxtDOB" runat="server"></asp:TextBox>
                 </td>
                 </tr>
                    <tr>
<td class="auto-style121"><strong>Course Category :</strong></td>
<td class="auto-style131">
    <asp:TextBox ID="TxtCOCA" runat="server" Width="119px"></asp:TextBox>
                        </td>
            </tr>
        <tr>
<td class="auto-style171"><strong>Course :</strong></td>
<td class="auto-style181">
    <asp:TextBox ID="TxtCO" runat="server"></asp:TextBox>
            </td>
            </tr>
        <tr>
<td class="auto-style303"><strong>Password :</strong></td>
<td class="auto-style181">
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
<td class="auto-style171"><strong>Phone No :</strong></td>
<td class="auto-style181">
    <asp:TextBox ID="TxtPho" runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>
                <td class="auto-style171"><strong>Email :</strong></td>
                <td class="auto-style181"> 
                    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>

        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="OK" Width="81px" Height="29px" />
        <br />
        <br />
        <h4 class="auto-style191"><strong>NOTE : You should Update Your Password if the passworld field is blank.Thank You</strong></h4>
        <br />
        <br />
        <br />

    </div>
</asp:Content>
