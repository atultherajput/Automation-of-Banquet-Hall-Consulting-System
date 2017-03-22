<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="SendEmail.aspx.cs" Inherits="admin_SendEmail" %>

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
            <td colspan="2">&nbsp;<h1 align="center">Send Email</h1><hr solid size="3px" color="red" /></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><strong>To</strong></td>
            <td>
                <asp:TextBox ID="TextBoxTo" runat="server" Width="241px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Subject</strong></td>
            <td>
                <asp:TextBox ID="TextBoxSubject" runat="server" Width="242px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Body</strong></td>
            <td>
                <asp:TextBox ID="TextBoxBody" runat="server" Height="78px" TextMode="MultiLine" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>File Attached</strong></td>
            <td>
                <asp:FileUpload ID="FileUploadAttachment" runat="server" Height="22px" Width="250px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

