<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="AddHalls.aspx.cs" Inherits="admin_BanquetHall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 60%;
            border: 5px solid #66CCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style6">
        <tr>
            <td colspan="2"><h1 align="center"> Add Halls</h1><hr solid size="3px" color="red" /></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><strong>Hall Name</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Ballroom</asp:ListItem>
                    <asp:ListItem>Lounge</asp:ListItem>
                    <asp:ListItem>Restaurant</asp:ListItem>
                    <asp:ListItem>Hall</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><strong>Address</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>District</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Height="16px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Rooms</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td colspan="2">
                <strong>
                <asp:Label ID="Label2" runat="server" Font-Bold="True"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
    </table>
</asp:Content>

