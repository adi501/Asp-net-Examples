<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="How_to_call_web_method_in_asp_net_using_jquery.aspx.cs" Inherits="WebApplication1.How_to_call_web_method_in_asp_net_using_jquery" %>

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

                    alert($("#DropDownList1 option:selected").text());
                    var postData = {
                        'selectedData': $("#DropDownList1 option:selected").text()
                    };
                    $.ajax({
                        type: "POST",
                        url: "/How_to_call_web_method_in_asp_net_using_jquery.aspx/GetDropDownSelectedData",
                        data: JSON.stringify(postData),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (r) {
                            alert(r.d);
                        }
                    });
                });
            </script>
        </div>
    </form>
</body>
</html>
