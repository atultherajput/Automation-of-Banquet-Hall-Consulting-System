<%@ Page Title="" Language="C#" MasterPageFile="~/customer/Customer.master" AutoEventWireup="true" CodeFile="CheckHall.aspx.cs" Inherits="customer_CheckHall" %>

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
            <td colspan="2"><h2 align="center">Check Hall Avaliblity</h2><hr solid size="3px" color="red" /></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><strong>Hall Name</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Ballroom</asp:ListItem>
                    <asp:ListItem>Lounge</asp:ListItem>
                    <asp:ListItem>Restaurant</asp:ListItem>
                    <asp:ListItem>Hall</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><strong>Hall Area</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceCheckHallArea" DataTextField="Address" DataValueField="Address" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceCheckHallArea" runat="server" ConnectionString="<%$ ConnectionStrings:BHCSConnectionString %>" SelectCommand="SELECT [Address] FROM [BANQUET_HALL_Master] WHERE ([Hall_Name] = @Hall_Name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Hall_Name" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td><strong>Date</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" AutoPostBack="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Book" Visible="False" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td><td></td>
        </tr>
        <tr>
            <td colspan="2">
                <strong>Results:</strong>&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td></td><td></td>
        </tr>
    </table>
</asp:Content>

