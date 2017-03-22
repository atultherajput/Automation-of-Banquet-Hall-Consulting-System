<%@ Page Title="" Language="C#" MasterPageFile="~/customer/Customer.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="customer_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 70%;
           border: 5px solid #66CCFF;
        }
        .auto-style7 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style6">
        <tr>
            <td colspan="2"><h2 align="center">Enter Your Payment Details</h2><hr solid size="3px" color="red" /></td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td><strong>Product</strong></td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Booking ID</strong></td><td>
            <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Card Number</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="207px" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Card Type</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>Master Card</asp:ListItem>
                    <asp:ListItem>Mastero</asp:ListItem>
                    <asp:ListItem>Rupay</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><strong>Account Number</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="205px" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Date</strong></td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Customer ID</strong></td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Total Amount</strong></td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
            <td class="auto-style7">
                <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
    </table>
</asp:Content>

