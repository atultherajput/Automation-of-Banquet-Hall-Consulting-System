<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="ViewPayments.aspx.cs" Inherits="admin_ViewPayments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 80%;
            border: 5px solid #66CCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style6">
        <tr>
            <td colspan="2"><h1 align="center">View All Payments</h1><hr solid size="3px" color="red" />
            </td>
        </tr>
        <tr>
            <td align ="center">
                <asp:Label ID="Label2" runat="server" BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="3px" Height="30px" Width="100%" Font-Size="Larger" Visible="False" ></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Trans_Id" DataSourceID="SqlDataSourceViewPayment" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%" PageSize="5">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged1" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Trans_Id" HeaderText="Transcation ID" InsertVisible="False" ReadOnly="True" SortExpression="Trans_Id" />
                        <asp:BoundField DataField="Card_No" HeaderText="Card No" SortExpression="Card_No" />
                        <asp:BoundField DataField="Card_Type" HeaderText="Card Type" SortExpression="Card_Type" />
                        <asp:BoundField DataField="Account_No" HeaderText="Account No" SortExpression="Account_No" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Cust_Member_Id" HeaderText="Customer Member ID" SortExpression="Cust_Member_Id" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="Booking_Id" HeaderText="Booking ID" SortExpression="Booking_Id" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceViewPayment" runat="server" ConnectionString="<%$ ConnectionStrings:BHCSConnectionString %>" DeleteCommand="DELETE FROM [PAYMENT] WHERE [Trans_Id] = @Trans_Id" InsertCommand="INSERT INTO [PAYMENT] ([Card_No], [Card_Type], [Account_No], [Date], [Cust_Member_Id], [Amount], [Booking_Id]) VALUES (@Card_No, @Card_Type, @Account_No, @Date, @Cust_Member_Id, @Amount, @Booking_Id)" SelectCommand="SELECT * FROM [PAYMENT]" UpdateCommand="UPDATE [PAYMENT] SET [Card_No] = @Card_No, [Card_Type] = @Card_Type, [Account_No] = @Account_No, [Date] = @Date, [Cust_Member_Id] = @Cust_Member_Id, [Amount] = @Amount, [Booking_Id] = @Booking_Id WHERE [Trans_Id] = @Trans_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Trans_Id" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Card_No" Type="Decimal" />
                        <asp:Parameter Name="Card_Type" Type="String" />
                        <asp:Parameter Name="Account_No" Type="Decimal" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="Cust_Member_Id" Type="Decimal" />
                        <asp:Parameter Name="Amount" Type="Decimal" />
                        <asp:Parameter Name="Booking_Id" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Card_No" Type="Decimal" />
                        <asp:Parameter Name="Card_Type" Type="String" />
                        <asp:Parameter Name="Account_No" Type="Decimal" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="Cust_Member_Id" Type="Decimal" />
                        <asp:Parameter Name="Amount" Type="Decimal" />
                        <asp:Parameter Name="Booking_Id" Type="Decimal" />
                        <asp:Parameter Name="Trans_Id" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Delete All" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

