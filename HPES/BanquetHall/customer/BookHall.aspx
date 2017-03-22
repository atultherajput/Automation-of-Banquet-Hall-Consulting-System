<%@ Page Title="" Language="C#" MasterPageFile="~/customer/Customer.master" AutoEventWireup="true" CodeFile="BookHall.aspx.cs" Inherits="customer_BookHall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 70%;
            border: 5px solid #66CCFF;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style6">
        <tr>
            <td colspan="2"><h2 align="center">Book Hall</h2><hr solid size="3px" color="red" /></td>
        </tr>
        <tr>
            <td><strong>Hall Code</strong></td>
            <td>
                <asp:Label ID="LabelHallCode" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Hall Name</strong></td>
            <td>
                <asp:Label ID="LabelHallName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Area</strong></td>
            <td>
                <asp:Label ID="LabelHallArea" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Date</strong></td>
            <td>
                <asp:Label ID="LabelDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Time</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Time"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Total Person to attend the Ceremony</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Purpose</strong></td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>Wedding</asp:ListItem>
                    <asp:ListItem>Social Events</asp:ListItem>
                    <asp:ListItem>Corporate Events</asp:ListItem>
                    <asp:ListItem>Birthday Parties</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><strong>Request Other Services</strong></td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Audio System" OnCheckedChanged="CheckBox1_CheckedChanged" />
                <br />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="DJ System" />
                <br />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Lightening System" />
                <br />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="Video Recording" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Proceed" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

