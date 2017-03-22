<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaymentHold.aspx.cs" Inherits="customer_PaymentHold" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" class="auto-style1">
            <tr>
                <td>
                    <br />
                    <br />
&nbsp; Please wait while we process your request.....<br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                    <br />
                    <br />
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Image ID="Image1" runat="server" Height="342px" ImageAlign="Middle" ImageUrl="~/images/ajax_loader_red_512.gif" />
                            <br />
                            <br />
                            <asp:Timer ID="Timer1" runat="server" Interval="6000" OnTick="Timer1_Tick">
                            </asp:Timer>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
