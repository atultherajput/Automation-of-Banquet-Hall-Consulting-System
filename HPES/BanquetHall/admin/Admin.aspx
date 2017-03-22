<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="admin_Admin" %>

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
            <td colspan="4"><h1 align="center">My Profile</h1><hr solid size="3px" color="red" /></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Image ID="Image2" runat="server" Height="200px" ImageAlign="Left" Width="200px" />
            </td>
            <td colspan="2">
                <asp:FileUpload ID="FileUploadImage" runat="server" Visible="False" />
            </td>
        </tr>
        <tr>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td><strong>Customer ID:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="LabelCustId" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>User Name:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="LabelUserName" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Password:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:TextBox ID="TextBoxPassword" runat="server" OnTextChanged="TextBoxPassword_TextChanged" Visible="False"></asp:TextBox>
                                        </td>
        </tr>
        <tr>
            <td><strong>Full Name:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:TextBox ID="TextBoxFullName" runat="server" OnTextChanged="TextBoxFullName_TextChanged" Visible="False"></asp:TextBox>
                                        </td>
        </tr>
        <tr>
            <td><strong>Address:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:TextBox ID="TextBoxAddress" runat="server" TextMode="MultiLine" OnTextChanged="TextBoxAddress_TextChanged" Visible="False"></asp:TextBox>
                                        </td>
        </tr>
        <tr>
            <td><strong>City:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:TextBox ID="TextBoxCity" runat="server" OnTextChanged="TextBoxCity_TextChanged" Visible="False"></asp:TextBox>
                                        </td>
        </tr>
        <tr>
            <td><strong>State:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:DropDownList ID="DropDownListState" runat="server" OnSelectedIndexChanged="DropDownListState_SelectedIndexChanged" Visible="False">
                                                <asp:ListItem>Bihar</asp:ListItem>
                                                <asp:ListItem>Jharkhand</asp:ListItem>
                                                <asp:ListItem>New Delhi</asp:ListItem>
                                                <asp:ListItem>U.P</asp:ListItem>
                                                <asp:ListItem>M.P</asp:ListItem>
                                                <asp:ListItem>West Bengal</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
        </tr>
        <tr>
            <td><strong>Country:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:Label ID="LabelCountry" runat="server" Text="India" Visible="False"></asp:Label>
                                        </td>
        </tr>
        <tr>
            <td><strong>Pin:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:TextBox ID="TextBoxPin" runat="server" TextMode="Number" OnTextChanged="TextBoxPin_TextChanged" Visible="False"></asp:TextBox>
                                        </td>
        </tr>
        <tr>
            <td><strong>Email:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" OnTextChanged="TextBoxEmail_TextChanged" Visible="False"></asp:TextBox>
                                        </td>
        </tr>
        <tr>
            <td><strong>Date Of Birth:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label11" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:TextBox ID="TextBoxDOB" runat="server" TextMode="Date" OnTextChanged="TextBox11_TextChanged" Visible="False"></asp:TextBox>
                                        </td>
        </tr>
        <tr>
            <td><strong>Occupation:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:DropDownList ID="DropDownListOccupation" runat="server" OnSelectedIndexChanged="DropDownListOccupation_SelectedIndexChanged" Visible="False">
                                                <asp:ListItem>Govt. Service</asp:ListItem>
                                                <asp:ListItem>Business Man</asp:ListItem>
                                                <asp:ListItem>Student</asp:ListItem>
                                                <asp:ListItem>Self Employed</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
        </tr>
        <tr>
            <td><strong>Phone Number:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label13" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:TextBox ID="TextBoxOfficePhone" runat="server" TextMode="Phone" OnTextChanged="TextBoxOfficePhone_TextChanged" Visible="False"></asp:TextBox>
                                        </td>
        </tr>
        <tr>
            <td><strong>Mobile Number:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:TextBox ID="TextBoxMobile" runat="server" TextMode="Phone" OnTextChanged="TextBoxMobile_TextChanged" Visible="False"></asp:TextBox>
                                        </td>
        </tr>
        <tr>
            <td><strong>Account Number:</strong></td>
            <td colspan="2">
                <asp:Label ID="Label15" runat="server"></asp:Label>
            </td>
            <td>
                                            <asp:TextBox ID="TextBoxAccountNumber" runat="server" TextMode="Number" OnTextChanged="TextBoxAccountNumber_TextChanged" Visible="False"></asp:TextBox>
                                        </td>
        </tr>
        <tr>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <center><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Edit" /></center>
            </td><td colspan="2">
                <asp:Button ID="Button2" runat="server" Text="Save" Visible="False" OnClick="Button2_Click" />
            </td><td>
                <asp:Button ID="Button3" runat="server" Text="Cancel" Visible="False" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4" class="auto-style7"></td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="Label16" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td></td><td></td><td></td><td></td>
        </tr>
        </table>
</asp:Content>

