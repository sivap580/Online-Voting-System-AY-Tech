<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="onv.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            background-color: #FF0000;
        }
    .auto-style12 {
        width: 89%;
    }
        .auto-style13 {
            text-align: center;
            color: #FFFFFF;
        }
    .auto-style14 {
        color: #FFFFFF;
    }
    .auto-style301 {
        width: 878px;
        height: 81px;
    }
    .auto-style302 {
        width: 201px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('images/adk.jpeg')">

        <h1 class="auto-style13">ADMIN HOME</h1>
        <p class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp; </strong><a class="auto-style9" href="AdminLogin.aspx"><span class="auto-style14"><strong>&nbsp;</strong></span><strong><span class="auto-style14">Logout</span></strong></a></p>
        <h4 class="auto-style11">CAUTION : Username should Remember always for your login and it is very confidential. Donot share to anyone. It leads for Security Viloation and Malpractises.So please remember section 171D in the Indian Penal Code,1860. Thank you.</h4>
&nbsp;&nbsp;
        <table class="auto-style301">
            <tr>
                <td class="auto-style6">

        <asp:Button ID="BtnNotify" runat="server" Text="Notification" OnClick="BtnNotify_Click" />

                </td>
                <td class="auto-style6">

        <asp:Button ID="BtnStApp" runat="server" Text="Student Approoval" OnClick="BtnStApp_Click" />

                </td>
                <td class="auto-style6">
        <asp:Button ID="BtnCandi" runat="server" Text="Candidate approoval" OnClick="BtnCandi_Click" />
                </td>
                <td class="auto-style302">
                    Activation<br />
                    <asp:RadioButton ID="RdResult" runat="server" Text="." />
        <asp:Button ID="BtnResult" runat="server" Text="Result Page" OnClick="BtnResult_Click" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;<h4 class="auto-style11">NOTE :You can publish the Result by clicking the checkbox near the result page as the day arrives and you can activate the voting page by clicking the checkbox near the Voting page. Voting page should activate on the day of voting only. </h4>
        <br />

    </div>
</asp:Content>
