<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <table align="center" class="auto-style6">
        <tr>
            <td>

                <!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="data1/images/251024x492.jpg" alt="" title="" id="wows1_0"/></li>
		<li><img src="data1/images/camp231024x681.jpg" alt="" title="" id="wows1_1"/></li>
		<li><img src="data1/images/camp261024x681.jpg" alt="" title="" id="wows1_2"/></li>
		<li><img src="data1/images/camp301024x681.jpg" alt="" title="" id="wows1_3"/></li>
		<li><a href="#"><img src="data1/images/img_34571024x683.jpg" alt="responsive slider" title="" id="wows1_4"/></a></li>
		<li><img src="data1/images/img_35001024x683.jpg" alt="" title="" id="wows1_5"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title=""><span><img src="data1/tooltips/251024x492.jpg" alt=""/>1</span></a>
		<a href="#" title=""><span><img src="data1/tooltips/camp231024x681.jpg" alt=""/>2</span></a>
		<a href="#" title=""><span><img src="data1/tooltips/camp261024x681.jpg" alt=""/>3</span></a>
		<a href="#" title=""><span><img src="data1/tooltips/camp301024x681.jpg" alt=""/>4</span></a>
		<a href="#" title=""><span><img src="data1/tooltips/img_34571024x683.jpg" alt=""/>5</span></a>
		<a href="#" title=""><span><img src="data1/tooltips/img_35001024x683.jpg" alt=""/>6</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="#"></a> </div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->


            </td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        Please Login First<br /><asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Login" PostBackUrl="~/Validator.aspx" />
                        .<br />
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table align="center" class="auto-style6">
        <tr>
            <td colspan="2" class="auto-style5"><<h1>Contact Us</h1></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Customer ID</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Company Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Comment</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server" Height="53px" TextMode="MultiLine" Width="224px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
    </table>

    

</asp:Content>