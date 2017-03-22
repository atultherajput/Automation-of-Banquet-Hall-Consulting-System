<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="ViewUsers.aspx.cs" Inherits="admin_ViewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 80%;
            border: 5px solid #66CCFF;
        }
        .auto-style7 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style6">
        <tr>
            <td colspan="2"><h1 align="center">View Users</h1><hr solid size="3px" color="red" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label2" runat="server" BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="3px" Height="30px" Width="100%" Font-Size="Larger" Visible="False" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cust_Member_Id,Login_Name" DataSourceID="SqlDataSourceViewUser" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%">
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
                        <asp:BoundField DataField="Cust_Member_Id" HeaderText="Customer Member ID" InsertVisible="False" ReadOnly="True" SortExpression="Cust_Member_Id" />
                        <asp:BoundField DataField="Login_Name" HeaderText="Login Name" ReadOnly="True" SortExpression="Login_Name" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        <asp:BoundField DataField="Cus_Name" HeaderText="Customer Name" SortExpression="Cus_Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                        <asp:BoundField DataField="Pin" HeaderText="Pin" SortExpression="Pin" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Dob" HeaderText="DOB" SortExpression="Dob" />
                        <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
                        <asp:BoundField DataField="Phone_Office" HeaderText="Phone Office" SortExpression="Phone_Office" />
                        <asp:BoundField DataField="Mobile_No" HeaderText="Mobile No" SortExpression="Mobile_No" />
                        <asp:BoundField DataField="Account_No" HeaderText="Account No" SortExpression="Account_No" />
                        <asp:BoundField DataField="Admin" HeaderText="Admin" SortExpression="Admin" />
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
                <asp:SqlDataSource ID="SqlDataSourceViewUser" runat="server" ConnectionString="<%$ ConnectionStrings:BHCSConnectionString %>" DeleteCommand="DELETE FROM [CLIENT_REGISTRATION_DETAILS] WHERE [Cust_Member_Id] = @Cust_Member_Id AND [Login_Name] = @Login_Name" InsertCommand="INSERT INTO [CLIENT_REGISTRATION_DETAILS] ([Login_Name], [Password], [Cus_Name], [Address], [City], [State], [Country], [Pin], [Email], [Dob], [Occupation], [Phone_Office], [Mobile_No], [Account_No], [Admin]) VALUES (@Login_Name, @Password, @Cus_Name, @Address, @City, @State, @Country, @Pin, @Email, @Dob, @Occupation, @Phone_Office, @Mobile_No, @Account_No, @Admin)" SelectCommand="SELECT * FROM [CLIENT_REGISTRATION_DETAILS]" UpdateCommand="UPDATE [CLIENT_REGISTRATION_DETAILS] SET [Password] = @Password, [Cus_Name] = @Cus_Name, [Address] = @Address, [City] = @City, [State] = @State, [Country] = @Country, [Pin] = @Pin, [Email] = @Email, [Dob] = @Dob, [Occupation] = @Occupation, [Phone_Office] = @Phone_Office, [Mobile_No] = @Mobile_No, [Account_No] = @Account_No, [Admin] = @Admin WHERE [Cust_Member_Id] = @Cust_Member_Id AND [Login_Name] = @Login_Name">
                    <DeleteParameters>
                        <asp:Parameter Name="Cust_Member_Id" Type="Decimal" />
                        <asp:Parameter Name="Login_Name" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Login_Name" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Cus_Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Country" Type="String" />
                        <asp:Parameter Name="Pin" Type="Decimal" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter DbType="Date" Name="Dob" />
                        <asp:Parameter Name="Occupation" Type="String" />
                        <asp:Parameter Name="Phone_Office" Type="Decimal" />
                        <asp:Parameter Name="Mobile_No" Type="Decimal" />
                        <asp:Parameter Name="Account_No" Type="Decimal" />
                        <asp:Parameter Name="Admin" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Cus_Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Country" Type="String" />
                        <asp:Parameter Name="Pin" Type="Decimal" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter DbType="Date" Name="Dob" />
                        <asp:Parameter Name="Occupation" Type="String" />
                        <asp:Parameter Name="Phone_Office" Type="Decimal" />
                        <asp:Parameter Name="Mobile_No" Type="Decimal" />
                        <asp:Parameter Name="Account_No" Type="Decimal" />
                        <asp:Parameter Name="Admin" Type="Int32" />
                        <asp:Parameter Name="Cust_Member_Id" Type="Decimal" />
                        <asp:Parameter Name="Login_Name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete All" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

