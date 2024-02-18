<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="onv.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style12 {
            width: 117px;
        }
        .auto-style13 {
            width: 35%;
        }
        .auto-style14 {
            height: 39px;
        }
        .auto-style15 {
            width: 201px;
        }
        .auto-style16 {
            height: 39px;
            width: 201px;
        }
        .auto-style17 {
            background-color: #C0C0C0;
        }
        .auto-style18 {
            color: #FFFFFF;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="newStyle8" style="background-image: url('images/ovspic.jpg')">
            <h2 class="auto-style6"><strong><span class="auto-style18">Registration of Voters&nbsp;&nbsp;&nbsp;</span> </strong></h2>
           
               
                <table class="auto-style13" align="center" style="background-color: #C0C0C0; border: medium solid #000000">
                    <tr>
                        <td class="auto-style12">
                            <asp:RadioButton ID="Rb1" runat="server" Text="Mr" ForeColor="Black" OnCheckedChanged="Rb1_CheckedChanged" GroupName="Gender" />
                            <span class="newStyle8">&nbsp;<asp:RadioButton runat="server" ForeColor="Black" style="font-size: small" ID="Rb2" OnCheckedChanged="Rbtn2_CheckedChanged" Text="Mrs" GroupName="Gender" />
                            </span></td>
                        
                    
                    </tr>
                     <tr>
     <td class="auto-style12" style="color: #000000">NAME :</td>
     <td class="auto-style15">
            <span class="newStyle1">
            <asp:TextBox ID="txtName" runat="server" CssClass="newStyle4" Height="18px" Width="122px" ></asp:TextBox>
        </span>
                         </td>
     
 </tr>
                     <tr>
     <td class="auto-style12" style="color: #000000">Date of Birth :</td>
     <td class="auto-style15">
            <asp:TextBox ID="txtDob" runat="server" Height="18px" Width="122px"></asp:TextBox>
                         </td>
    
 </tr>
                     <tr>
     <td class="auto-style12" style="color: #000000">ST.ID :</td>
     <td class="auto-style15">
            <asp:TextBox ID="txtStudentId" runat="server" CssClass="newStyle5" Width="122px" Height="22px"></asp:TextBox>
                         </td>
   
 </tr>
                     <tr>
     <td class="auto-style12" style="color: #000000">Course Category :</td>
     <td class="auto-style15">
            <asp:DropDownList ID="DropDownListCourse" runat="server" CssClass="newStyle7" Height="32px" Width="125px">
               <asp:ListItem>None</asp:ListItem>
                <asp:ListItem>UG</asp:ListItem>
                <asp:ListItem>PG</asp:ListItem>
            </asp:DropDownList>
                         </td>
   
 </tr>
                     <tr>
     <td class="auto-style12" style="color: #000000">Course :</td>
     <td class="auto-style15">
            
                         <asp:TextBox ID="TxtCourse" runat="server"></asp:TextBox>
            
                         </td>
   
 </tr>
                     <tr>
     <td class="auto-style12" style="color: #000000">Password :</td>
     <td class="auto-style15">
         <asp:TextBox ID="TxtPass" runat="server" TextMode="password"></asp:TextBox>
                         &nbsp;
         <asp:CheckBox ID="ChkSHow" runat="server" Text="." onchange="togglePasswordVisibility()"/>
         <script>
    function togglePasswordVisibility() {
        var passwordField = document.getElementById('<%= TxtPass.ClientID %>');
        var showPasswordCheckbox = document.getElementById('<%= ChkSHow.ClientID %>');

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
     <td class="auto-style12" style="color: #000000"><span class="auto-style17">
               
                Phone No :</span></td>
     <td class="auto-style15">
            <asp:TextBox ID="txtPhoneNo" runat="server" Height="22px" Width="122px"></asp:TextBox>
                         </td>
    
 </tr>
                     <tr>
     <td class="auto-style12" style="color: #000000"><span class="auto-style17">
               
                Email ID :</span></td>
     <td class="auto-style15">
            <asp:TextBox ID="txtEid" runat="server" Height="22px" Width="122px"></asp:TextBox>
                         </td>
    
 </tr>
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style16">
            <asp:Button ID="btnSave" runat="server" Text="Save" Width="73px" OnClick="btnSave_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="85px" Height="25px" OnClick="btnCancel_Click" />
                        </td>
                    </tr>
                </table>
               
&nbsp;&nbsp;&nbsp;&nbsp;
                 
                <br />
                <br />
                 
        </div>
&nbsp;
</asp:Content>
