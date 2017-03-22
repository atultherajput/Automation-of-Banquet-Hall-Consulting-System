<%@ Page Title="" Language="C#" MasterPageFile="~/customer/Customer.master" AutoEventWireup="true" CodeFile="CancelMyBooking.aspx.cs" Inherits="customer_CancelMyBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 50%;
            border: 5px solid #66CCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style6">
        <tr>
            <td colspan="2"><h1 align="center">Cancel Booking</h1><hr solid size="3px" color="red" /></td>
        </tr>
        <tr>
            <td></td><td></td>
        </tr>
        <tr>
            <td><h2>Booking Details:</h2></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td><td></td>
        </tr>
        <tr>
            <td><strong>Booking ID:</strong></td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Hall Name:</strong></td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Area:</strong></td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Date:</strong></td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <strong>Purpose:</strong></td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Amount:</strong></td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Transaction ID:</strong></td>
            <td>
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Status:</strong></td>
            <td>
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td></td><td></td>
        </tr>
        <tr>
            <td colspan="2">
                <center><asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="Button1_Click" /></center>
            </td>
        </tr>
        <tr>
            <td></td><td></td>
        </tr>
        <tr>
            <td colspan="2">
               <center> <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></center>
            </td>
        </tr>
        <tr>
            <td></td><td></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label10" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td></td><td></td>
        </tr>
    </table>
</asp:Content>

