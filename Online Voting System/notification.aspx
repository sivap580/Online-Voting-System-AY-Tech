<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="notification.aspx.cs" Inherits="onv.notification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <style>
    /* Add some basic CSS styling */
    #notificationContainer {
        font-family: Arial, sans-serif;
        margin-top: 20px;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        max-width: 600px;
        margin-left: auto;
        margin-right: auto;
        background-color: #f2f2f2; /* Set background color */

    }

    .notification {
        margin-bottom: 10px;
        color: #333; /* Set text color */

    }

    .blink {
        animation: blink 1s infinite;
    }

    @keyframes blink {
        50% {
            opacity: 0; /* Make it invisible at 50% of the animation */
        }
    }


    #Button1 {
    background-color: #4CAF50; /* Set background color for the button */
    color: white; /* Set text color for the button */
    padding: 10px 20px; /* Add padding to the button */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div id="notificationContainer">
            
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="See Notifications" />
            <br />
            <br />
           <asp:Label ID="LabelNotifications" runat="server"></asp:Label>
           
        </div>
</asp:Content>
