<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="voting.aspx.cs" Inherits="onv.voting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        color: #000000;
        background-color: #FF0000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('images/Rectangle 46.png')">

        <script> 

            function DisableButton() {
                // Disable the button to prevent double-click
                document.getElementById('<%= Button4.ClientID %>').disabled = true;


            }
            window.onbeforeunload = DisableButton;

        </script>

        <h2 class="auto-style300">VOTING</h2>
&nbsp;<h4 class="auto-style11">NOTE : Cast your Vote patiently.Once you vote you can&#39;t cast your vote once more...... So choose wisely.</h4>
        <h3>CANDIDATED ARE..........</h3>
&nbsp;&nbsp;
                        <asp:GridView ID="GridView" runat="server" OnRowDataBound="OnRowDataBound" CellSpacing="1" SelectedIndex="1" BackImageUrl="~/image/vote.jpg" CellPadding="1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#333333" GridLines="None" Height="16px" ShowFooter="True" HorizontalAlign="Center" Width="545px">
                    <AlternatingRowStyle BackColor="White" />
             <Columns >
    <asp:TemplateField HeaderText="VOTE">
     <ItemTemplate>
    <asp:CheckBox id="chkvote"  runat="server" AutoPostBack="True" ClientIDMode="Predictable" />
         </ItemTemplate>
    </asp:TemplateField>
               
<asp:TemplateField HeaderText="CANDIDATE">
    <ItemTemplate>
                <asp:Image ID="Image" height="150" runat="server" Width="150" />
            
</ItemTemplate>
</asp:TemplateField>
</Columns>
                
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                
                </asp:GridView>
        <div class="auto-style300">
            <br />
            <asp:Button ID="Button4" runat="server" Height="40px" OnClick="Button4_Click" Text="Vote" Width="119px"/> 
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        <br />
        <br />

        </div>

    </div>
</asp:Content>
