<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CandiApprooval.aspx.cs" Inherits="onv.CandiApprooval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .autostyle36 {
            width: 50%;
        }
        .autostyle37 {
            width: 356px;
            text-align: left;
        }
        .autostyle38 {
            width: 257px;
            text-align: right;
        }
        .auto-style16 {
            width: 183px;
        }
        .autostyle39 {
            width: 291px;
            text-align: center;
        }
        .autostyle40 {
            text-align: center;
            color: #FFFFFF;
        }
        .autostyle41 {
            color: #FFFFFF;
        }
        .autostyle42 {
            color: #000000;
            background-color: #999999;
        }
        .autostyle43 {
            background-color: #999999;
        }
    .auto-style24 {
        color: #000000;
        display: inline-block;
        font-size: 12px;
        transition: transform 0.3s ease-in-out;
        background-color: #999999;
    }
    .auto-style25 {
        text-decoration: none;
    }
        .auto-style26 {
        width: 913px;
        height: 50px;
        text-align: right;
    }
        .auto-style227 {
            width: 32%;
            height: 250px;
        }
        .auto-style28 {
            color: #FFFFFF;
            text-align: left;
        width: 183px;
    }
    .auto-style29 {
        color: #FFFFFF;
        width: 183px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style11" style="background-image: url('images/Approved.jpg')">

        <h2 class="auto-style300" style="background-image: url('images/vote1.jpg')">CANDIDATE APPROOVAL</h2>
        <h4 class="auto-style6"><a class="auto-style25" href="AdminHome.aspx"><span class="auto-style10" style="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style19" style="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="auto-style21">&nbsp;</span></span><span class="auto-style24" style=""> Home</span></a></h4>
        <br />
        <table class="auto-style227" align="center" style="background-color: #999966">
            <tr>
                <td class="auto-style26"><strong>Name :</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="TxtName" runat="server" ></asp:TextBox>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style26"><strong>ID :</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="TxtID" runat="server" ></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Verify" />
                </td>
            </tr>
            <tr>
                <td class="auto-style26"><strong>Party Name :</strong></td>
                <td class="auto-style28"><strong>
                    &nbsp;<asp:TextBox ID="TxtPartyname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                
            </tr>
            <tr>
                <td class="auto-style26"><strong>Image :</strong></td>
                <td class="auto-style16"><strong>
                    <asp:FileUpload ID="FileUpload" runat="server" />
                    <br />
                    <br />
                    </strong>
                    <asp:Label ID="lblMessage" runat="server" Text="Photo size should be less than 1 MB" />
                </td>

            </tr>
        </table>
        <div class="auto-style300">
        <br />
        <asp:Button ID="BtnRefresh" runat="server" BackColor="#993366" Font-Names="Algerian" ForeColor="White" Height="37px" OnClick="Button1_Click1" Text="Refresh" Width="117px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="36px" OnClick="Button2_Click" Text="Register" Width="90px" />
        
         <br />
        
         </div>
        
         <asp:GridView ID="GridView1" runat="server" OnRowDataBound="OnRowDataBound" BackColor="White" HorizontalAlign="Center">
                 <Columns>
        <asp:TemplateField HeaderText="Candidate">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Width="150" Height="150"/>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView><br />
        <br />
        
        <br />
        <br />
        <br />

    </div>
</asp:Content>
