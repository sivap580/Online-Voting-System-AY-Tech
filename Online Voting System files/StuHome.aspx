<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StuHome.aspx.cs" Inherits="onv.StuHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style101 {
            text-align: center;
            height: 29px;
        }
        .auto-style114 {
            width: 136px;
        }
        .auto-style115 {
            width: 32%;
        }
        .auto-style116 {
            width: 64px;
        }
    .auto-style117 {
        font-weight: normal;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('images/Caltech-Voting-Phone-Online-S.2e16d0ba.fill-933x525-c100.jpg')">

        <h2 class="auto-style101"><strong>ONLINE VOTING SYSTEM<br />
            </strong></h2>
        <h5><span class="auto-style117"><strong>User Details</strong>&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="auto-style25" href="student.aspx"><span class="auto-style10">&nbsp;&nbsp;&nbsp; <span class="auto-style80">logout</span></span></a></h5>
        <table class="auto-style115" style="border: medium solid #000000" width="50%">
            <tr>
                <td class="auto-style114">
                    <asp:RadioButton ID="RdBtnMr" runat="server" Text="Mr" />
&nbsp;&nbsp;
                    <asp:RadioButton ID="RdBtnMRs" runat="server" Text="Mrs" />
                </td>
                
                
            </tr>
            <tr>
                <td class="auto-style114"><strong>Name :</strong></td>
                <td class="auto-style116">
                    <asp:TextBox ID="TxtName" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style114"><strong>Date of Birth :</strong></td>
                <td class="auto-style116">
                    <asp:TextBox ID="TxtDOB" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
              
            </tr>
             <tr>
     <td class="auto-style114"><strong>St.ID :</strong></td>
     <td class="auto-style116">
         <asp:TextBox ID="Txtid" runat="server" ReadOnly="True"></asp:TextBox>
                 </td>
                 </tr>
                    <tr>
<td class="auto-style114"><strong>Course Category :</strong></td>
<td class="auto-style116">
    <asp:TextBox ID="TxtCoCat" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
            </tr>
                    <tr>
<td class="auto-style114"><strong>Course :</strong></td>
<td class="auto-style116">
    <asp:TextBox ID="TxtCo" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
            </tr>
                    <tr>
<td class="auto-style114"><strong>Phone Number :</strong></td>
<td class="auto-style116">
    <asp:TextBox ID="TxtPh" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
            </tr>
                    <tr>
<td class="auto-style114"><strong>Email ID :</strong></td>
<td class="auto-style116">
    <asp:TextBox ID="TxtEma" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="UpdatButton" runat="server" BackColor="#999966" BorderColor="#000066" BorderStyle="Solid" Font-Bold="True" Font-Names="Arial Black" ForeColor="White" OnClick="UpdatButton_Click" Text="Update" />
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:ImageButton ID="votingimgButton2" runat="server" BorderColor="#339966" BorderStyle="Solid" Height="90px" ImageUrl="~/images/vote.jpg" OnClick="votingimgButton2_Click" Width="108px" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />

</div>
</asp:Content>
