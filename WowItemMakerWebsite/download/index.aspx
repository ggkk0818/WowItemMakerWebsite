<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="download_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" rel="Stylesheet" href="../css/download.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
        <canvas id="myCanvas" width="600" height="300">你的浏览器还不支持哦</canvas> 
        <input type="color" value="red" />
        <input type="range" value="" />
        <input type="date" value="" />
        <input type="file" accept="image/*" value="" />
    </div>
<script type="text/javascript">

    var width, height, top, left;
    width = 209;
    height = 45;
    top = left = 5;
    var x = 2;
    var y = 2;

    var c = document.getElementById("myCanvas");

    var maxwidth = c.width - 5;
    var maxheight = c.height - 5;
    var cxt = c.getContext("2d");
    cxt.strokeStyle = "#00f";
    cxt.strokeRect(0, 0, c.width, c.height);

    var img = new Image();
    img.src = "../img/logo.png";
    var MyInterval = null;
    start();
    function Refresh() {
        cxt.clearRect(left, top, width, height);
        if ((left + x) > (maxwidth - width) || left + x < 0) {
            x = -x;
        }

        if ((top + y) > (maxheight - height) || top + y < 0) {
            y = -y;
        }

        left = left + x;
        top = top + y;
        cxt.drawImage(img, left, top, width, height);
        cxt.font = "20pt 宋体";
        cxt.fillText("测试", left, top + 25);

    }

    function start() {
        if (MyInterval == null) {
            MyInterval = setInterval("Refresh()", 10);
        }
    }

    function stop() {
        if (MyInterval != null) {
            clearInterval(MyInterval);
            MyInterval = null;
        }
    }
    function InRectangle(x, y, rectx, recty, rwidth, rheight) {
        return (x >= rectx && x <= rectx + rwidth) && (y >= recty && y <= recty + rheight)
    }
    c.onmouseover = function (e) {
        if (InRectangle(e.clientX, e.clientY, left, top, width, height)) {
            stop();
        }

        c.onmouseout = function (e) {
            start();
        }

        c.onmousemove = function (e) {
            if (InRectangle(e.clientX, e.clientY, left, top, width, height)) {
                if (MyInterval != null) {
                    stop();
                }
            } else {
                start();
            }
        }

    }
</script> 
</asp:Content>

