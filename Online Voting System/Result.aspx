<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="onv.Result" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                  <style type="text/css">
      .auto-style1 {
        text-align: center;
        background-color:forestgreen;
        overflow: visible; 
      }
      .auto-style2 {
        color:  yellow;
      }
      .auto-style3 {
        width: 20%;
        height: 450px;
        float: left; 
        box-sizing: border-box;
        padding: 10px;
        margin: 10px;
        border: 2px solid #000;
        background-color: #c8a2c8;
      }
      .auto-style4 {
        text-align: left;
      }
       body {
           overflow: visible;
     background-image: url('images/bg1.jpg');
   
   
} 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="auto-style1">
  <h1 class="auto-style2"><strong>RESULT</strong></h1>
</div>
            <br />

<div class="auto-style3" style="margin-top: 30px;" >
  <center>
      <h5>Second</h5>
    <asp:Image ID="Image1" runat="server" Height="89px" ImageUrl="~/images/th.jpg" />
    <br />
  </center>
  <br />
  <span class="auto-style4">Name :&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TxtName1" runat="server" Width="150px"></asp:TextBox><br />
    </span>
    <br />
  <span class="auto-style4">ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</span><asp:TextBox ID="TxtID1" runat="server" Width="150px"></asp:TextBox>
    <br /><br />
    <span class="auto-style4">Department :&nbsp;&nbsp;</span><asp:TextBox ID="TxtDept1" runat="server" Width="150px"></asp:TextBox>
    <br /><br />
    <span class="auto-style4">No:of votes :&nbsp;&nbsp;</span><asp:TextBox ID="TxtVts1" runat="server" Width="150px"></asp:TextBox>
    <br /><br />
   
    
</div>
<div class="auto-style3" >
  <center>
      <h5>First</h5>
    <asp:Image ID="Image2" runat="server" Height="89px" ImageUrl="~/images/th.jpg" />
    <br />
  </center>
  <br />
  <span class="auto-style4">Name :&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</span><asp:TextBox ID="TxtName" runat="server" Width="150px"></asp:TextBox>
    <br /> <br />
  <span class="auto-style4">ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</span><asp:TextBox ID="TxtID" runat="server" Width="150px"></asp:TextBox>
    <br /> <br />
  <span class="auto-style4">Department :&nbsp;&nbsp;</span><asp:TextBox ID="TxtDept" runat="server" Width="150px"></asp:TextBox>
    <br /> <br />
     <span class="auto-style4">No:of votes :&nbsp;&nbsp;</span><asp:TextBox ID="TxtVts" runat="server" Width="150px"></asp:TextBox>
    <br />
</div>
 
  
<div class="auto-style3" style="margin-top: 50px; ">
  <center>
      <h5>Third</h5>
    <asp:Image ID="Image3" runat="server" Height="89px" ImageUrl="~/images/th.jpg" />
    <br />
  </center>
  <br />
  <span class="auto-style4">Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;</span><asp:TextBox ID="TxtName2" runat="server" Width="150px"></asp:TextBox>
    <br /> <br />
  <span class="auto-style4">ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</span><asp:TextBox ID="TxtID2" runat="server" Width="150px"></asp:TextBox>
    <br /> <br />
  <span class="auto-style4">Department :&nbsp;&nbsp;</span><asp:TextBox ID="TxtDept2" runat="server" Width="150px"></asp:TextBox>
    <br /> <br />
     <span class="auto-style4">No:of votes :&nbsp;&nbsp;</span><asp:TextBox ID="TxtVts2" runat="server" Width="150px"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</div>
                <center>
             <asp:Chart ID="Chart1" runat="server" Height="548px"  Width="430px" >
            <Series>
        <asp:Series ChartType="Pie" Name="s2">
        </asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1" BackColor="Transparent" BorderWidth="0">
            
            <Area3DStyle Enable3D="false" Inclination="10" Rotation="45" />
<Position Height="100" Width="100" X="0" Y="0" />
            <InnerPlotPosition Height="100" Width="100" X="0" Y="0" />
        </asp:ChartArea>
    </ChartAreas>
    </asp:Chart>

                    <br />
                    <br />

                    <br />

                </center>
    </asp:Content>
                  
