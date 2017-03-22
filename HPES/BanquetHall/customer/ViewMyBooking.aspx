<%@ Page Title="" Language="C#" MasterPageFile="~/customer/Customer.master" AutoEventWireup="true" CodeFile="ViewMyBooking.aspx.cs" Inherits="customer_ViewMyBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 50%;
            border: 5px solid #66CCFF;
        }
        .auto-style7 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style6">
        <tr>
            <td><h2 align="center">My Bookings</h2><hr solid size="3px" color="red" />&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label2" runat="server" BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="3px" Height="30px" Width="100%" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Booking_Id" ForeColor="#333333" GridLines="Horizontal" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" PageSize="4" BorderColor="#3399FF" BorderStyle="Solid" BorderWidth="5px" Font-Bold="False" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Booking_Id" HeaderText="Booking ID" ReadOnly="True" />
                        <asp:BoundField DataField="Hall_Name" HeaderText="Hall Name" ReadOnly="True" />
                        <asp:BoundField DataField="Area" HeaderText="Area" ReadOnly="True" />
                        <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" ReadOnly="True" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# bind("Booking_Id") %>' CommandName="cancel">Cancel Booking</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

