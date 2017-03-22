<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="ViewHall.aspx.cs" Inherits="admin_ViewHall" %>

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
            <td colspan="2" height="23px"><h1 align="center">View Halls</h1><hr solid size="3px" color="red" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label3" runat="server" BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="3px" Height="30px" Width="100%" Font-Size="Larger" Visible="False" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Hall_Code" DataSourceID="SqlDataSourceViewHall" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="5" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Hall_Code" HeaderText="Hall Code" InsertVisible="False" ReadOnly="True" SortExpression="Hall_Code" />
                        <asp:BoundField DataField="Hall_Name" HeaderText="Hall Name" SortExpression="Hall_Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                        <asp:BoundField DataField="Rooms" HeaderText="Rooms" SortExpression="Rooms" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:CommandField ShowSelectButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSourceViewHall" runat="server" ConnectionString="<%$ ConnectionStrings:BHCSConnectionString %>" DeleteCommand="DELETE FROM [BANQUET_HALL_Master] WHERE [Hall_Code] = @Hall_Code" InsertCommand="INSERT INTO [BANQUET_HALL_Master] ([Hall_Name], [Address], [District], [Rooms]) VALUES (@Hall_Name, @Address, @District, @Rooms)" SelectCommand="SELECT * FROM [BANQUET_HALL_Master]" UpdateCommand="UPDATE [BANQUET_HALL_Master] SET [Hall_Name] = @Hall_Name, [Address] = @Address, [District] = @District, [Rooms] = @Rooms WHERE [Hall_Code] = @Hall_Code">
                    <DeleteParameters>
                        <asp:Parameter Name="Hall_Code" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Hall_Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="District" Type="String" />
                        <asp:Parameter Name="Rooms" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Hall_Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="District" Type="String" />
                        <asp:Parameter Name="Rooms" Type="Decimal" />
                        <asp:Parameter Name="Hall_Code" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete All" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

