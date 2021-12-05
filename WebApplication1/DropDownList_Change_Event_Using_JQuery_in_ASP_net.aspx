<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownList_Change_Event_Using_JQuery_in_ASP_net.aspx.cs" Inherits="WebApplication1.DropDownList_Change_Event_Using_JQuery_in_ASP_net" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Jquery/jquery-3.6.0.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" CssClass="DropDownList1" runat="server">
                <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                <asp:ListItem Text="asp.net" Value="1"></asp:ListItem>
                <asp:ListItem Text="c#" Value="2"></asp:ListItem>
                <asp:ListItem Text="ado.net" Value="3"></asp:ListItem>
                <asp:ListItem Text="SQL Server" Value="4"></asp:ListItem>
            </asp:DropDownList>
            <script type="text/javascript">
                $('#DropDownList1').change(function () {
                    alert("DropDownList change() event.");
                    alert($("#DropDownList1 option:selected").text());
                    alert($("#DropDownList1 option:selected").val());
                });
            </script>
        </div>
    </form>
</body>
</html>
