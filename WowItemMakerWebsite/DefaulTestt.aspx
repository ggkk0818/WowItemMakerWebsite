<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefaulTestt.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <a href="javascript:void(0);" onclick="test()">test</a>
    <a href="javascript:void(0);" onclick="test2()">test2</a>
    <a href="javascript:void(0);" onclick="test3()">test3</a>
    <a href="javascript:void(0);" onclick="test4()">test4</a>
    <div id="content">
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    </div>
    </form>
    <script language="javascript" type="text/javascript">
        function test() {
            $.ajax({
                url: 'default.aspx/test',
                type: "POST",
                error: function (res, msg) {
                    alert(res.responseText);
                },
//                data: '{str:"1"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (response) {
                    alert(response.d);
                }
            });
        }
        function test2() {
            PageMethods.test2("1", function (res) { alert(res); }, function (msg) { alert(msg); }, null);
        }
        function test3() {
            $.ajax({
                url: 'test.asmx/test3',
                type: "POST",
                error: function (res, msg) {
                    alert(res.responseText);
                },
                data: '{str:"1"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (response) {
                    alert(response.d);
                }
            });
        }
        function test4() {
            $.ajax({
                url: 'test.asmx/test4',
                type: "POST",
                error: function (res, msg) {
                    alert(res.responseText);
                },
                data: '{str:"1"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (response) {
                    $.each(response.d, function (i, e) {
                        $("#content").append(e.UserName);
                    });
                }
            });
        }
    </script>
</body>
</html>
