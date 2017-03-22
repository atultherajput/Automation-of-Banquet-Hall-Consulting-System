<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="ViewBookings.aspx.cs" Inherits="admin_ViewBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 80%;
            border: 5px solid #66CCFF;
        }
        .auto-style7 {
            height: 85px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style6">
        <tr>
            <td colspan="2" class="auto-style7"><h2 align="center">View All Bookings</h2><hr solid size="3px" color="red" />&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label3" runat="server" BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="3px" Height="30px" Width="100%" Font-Size="Larger" Visible="False" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Booking_Id" DataSourceID="SqlDataSourceViewAllBooking" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" OnRowCommand="GridView1_RowCommand" PageSize="3">
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
                        <asp:BoundField DataField="Booking_Id" HeaderText="Booking ID" InsertVisible="False" ReadOnly="True" SortExpression="Booking_Id" />
                        <asp:BoundField DataField="Hall_Code" HeaderText="Hall Code" SortExpression="Hall_Code" />
                        <asp:BoundField DataField="Hall_Name" HeaderText="Hall Name" SortExpression="Hall_Name" />
                        <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="No_Of_Person" HeaderText="No Of Person" SortExpression="No_Of_Person" />
                        <asp:BoundField DataField="Purpose" HeaderText="Purpose" SortExpression="Purpose" />
                        <asp:BoundField DataField="Cust_Member_Id" HeaderText="Customer Member ID" SortExpression="Cust_Member_Id" />
                        <asp:BoundField DataField="Audio_System" HeaderText="Audio System" SortExpression="Audio_System" />
                        <asp:BoundField DataField="DJ_System" HeaderText="DJ System" SortExpression="DJ_System" />
                        <asp:BoundField DataField="Lightening_System" HeaderText="Lightening System" SortExpression="Lightening_System" />
                        <asp:BoundField DataField="Video_Recording" HeaderText="Video Recording" SortExpression="Video_Recording" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="Trans_Id" HeaderText="Transaction ID" SortExpression="Trans_Id" />
                        <asp:BoundField DataField="Booking_Date_Time" HeaderText="Booking Date Time" SortExpression="Booking_Date_Time" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# bind("Booking_Id") %>' CommandName="sendmail">Send Confirmation Mail</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:SqlDataSource ID="SqlDataSourceViewAllBooking" runat="server" ConnectionString="<%$ ConnectionStrings:BHCSConnectionString %>" SelectCommand="SELECT * FROM [BOOKING_DETAILS]" DeleteCommand="DELETE FROM [BOOKING_DETAILS] WHERE [Booking_Id] = @Booking_Id" InsertCommand="INSERT INTO [BOOKING_DETAILS] ([Hall_Code], [Hall_Name], [Area], [Time], [Date], [No_Of_Person], [Purpose], [Cust_Member_Id], [Audio_System], [DJ_System], [Lightening_System], [Video_Recording], [Amount], [Trans_Id], [Booking_Date_Time], [Status]) VALUES (@Hall_Code, @Hall_Name, @Area, @Time, @Date, @No_Of_Person, @Purpose, @Cust_Member_Id, @Audio_System, @DJ_System, @Lightening_System, @Video_Recording, @Amount, @Trans_Id, @Booking_Date_Time, @Status)" UpdateCommand="UPDATE [BOOKING_DETAILS] SET [Hall_Code] = @Hall_Code, [Hall_Name] = @Hall_Name, [Area] = @Area, [Time] = @Time, [Date] = @Date, [No_Of_Person] = @No_Of_Person, [Purpose] = @Purpose, [Cust_Member_Id] = @Cust_Member_Id, [Audio_System] = @Audio_System, [DJ_System] = @DJ_System, [Lightening_System] = @Lightening_System, [Video_Recording] = @Video_Recording, [Amount] = @Amount, [Trans_Id] = @Trans_Id, [Booking_Date_Time] = @Booking_Date_Time, [Status] = @Status WHERE [Booking_Id] = @Booking_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Booking_Id" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Hall_Code" Type="Decimal" />
                        <asp:Parameter Name="Hall_Name" Type="String" />
                        <asp:Parameter Name="Area" Type="String" />
                        <asp:Parameter DbType="Time" Name="Time" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="No_Of_Person" Type="Decimal" />
                        <asp:Parameter Name="Purpose" Type="String" />
                        <asp:Parameter Name="Cust_Member_Id" Type="Decimal" />
                        <asp:Parameter Name="Audio_System" Type="String" />
                        <asp:Parameter Name="DJ_System" Type="String" />
                        <asp:Parameter Name="Lightening_System" Type="String" />
                        <asp:Parameter Name="Video_Recording" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Trans_Id" Type="String" />
                        <asp:Parameter Name="Booking_Date_Time" Type="DateTime" />
                        <asp:Parameter Name="Status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Hall_Code" Type="Decimal" />
                        <asp:Parameter Name="Hall_Name" Type="String" />
                        <asp:Parameter Name="Area" Type="String" />
                        <asp:Parameter DbType="Time" Name="Time" />
                        <asp:Parameter DbType="Date" Name="Date" />
                        <asp:Parameter Name="No_Of_Person" Type="Decimal" />
                        <asp:Parameter Name="Purpose" Type="String" />
                        <asp:Parameter Name="Cust_Member_Id" Type="Decimal" />
                        <asp:Parameter Name="Audio_System" Type="String" />
                        <asp:Parameter Name="DJ_System" Type="String" />
                        <asp:Parameter Name="Lightening_System" Type="String" />
                        <asp:Parameter Name="Video_Recording" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Trans_Id" Type="String" />
                        <asp:Parameter Name="Booking_Date_Time" Type="DateTime" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="Booking_Id" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete All" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

