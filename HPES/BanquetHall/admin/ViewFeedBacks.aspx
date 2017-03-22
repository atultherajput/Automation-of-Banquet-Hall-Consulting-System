<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="ViewFeedBacks.aspx.cs" Inherits="admin_ViewFeedBacks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 70%;
            border: 5px solid #66CCFF;

        }
        .auto-style7 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style6">
        <tr>
            <td class="auto-style7" colspan="2"><h1 align="center">FeedBacks</h1><hr solid size="3px" color="red" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label2" runat="server" BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="3px" Height="30px" Width="100%" Font-Size="Larger" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Complain_No" DataSourceID="SqlDataSourceFeedBack" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" PageSize="5" Width="100%">
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
                        <asp:BoundField DataField="Complain_No" HeaderText="Complain No" ReadOnly="True" SortExpression="Complain_No" InsertVisible="False" />
                        <asp:BoundField DataField="Cust_Member_Id" HeaderText="Customer Member ID" SortExpression="Cust_Member_Id" />
                        <asp:BoundField DataField="Comp_Name" HeaderText="Company Name" SortExpression="Comp_Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
                <asp:SqlDataSource ID="SqlDataSourceFeedBack" runat="server" ConnectionString="<%$ ConnectionStrings:BHCSConnectionString %>" SelectCommand="SELECT * FROM [FEEDBACK]" DeleteCommand="DELETE FROM [FEEDBACK] WHERE [Complain_No] = @Complain_No" InsertCommand="INSERT INTO [FEEDBACK] ([Cust_Member_Id], [Comp_Name], [Email], [Comment], [Date]) VALUES (@Cust_Member_Id, @Comp_Name, @Email, @Comment, @Date)" UpdateCommand="UPDATE [FEEDBACK] SET [Cust_Member_Id] = @Cust_Member_Id, [Comp_Name] = @Comp_Name, [Email] = @Email, [Comment] = @Comment, [Date] = @Date WHERE [Complain_No] = @Complain_No">
                    <DeleteParameters>
                        <asp:Parameter Name="Complain_No" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Cust_Member_Id" Type="String" />
                        <asp:Parameter Name="Comp_Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Comment" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Cust_Member_Id" Type="String" />
                        <asp:Parameter Name="Comp_Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Comment" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="Complain_No" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Delete All" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

