<%@ Page Title="" Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" rel="Stylesheet" href="css/index.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content">
    <div class="item" id="item1" style="display:none;">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_blue" style="left:320px;display:none;" id="item2">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_ligntblue" style="left:640px;display:none;" id="item3">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_magenta" style="top:185px; display:none;" id="item4">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_purple" style="top:185px; left:320px;display:none;" id="item5">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_lime" style="top:185px; left:640px;display:none;" id="item6">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_brown" style="top:370px; display:none;" id="item7">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_pink" style="top:370px; left:320px;display:none;" id="item8">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_red" style="top:370px; left:640px;display:none;" id="item9">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_green" style="top:555px; display:none;" id="item10">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_indigoblue" style="top:555px; left:320px;display:none;" id="item11">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_purple2" style="top:555px; left:640px;display:none;" id="item12">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_teal2" style="top:740px; left:320px;" id="item13">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
            <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
        </div>
    </div>
    <div class="item color_dark" style="top:740px; left:320px;display:none;" id="item14">
        <div class="iContainer">
            <div class="iHeader">
                <div class="iTitle">title</div>
            </div>
            <div class="iContent">
                test<br />
                test
            </div>
             <div class="exitFull" style="display:none;"><img alt="" src="img/ExitFull.png" class="fixpng" style="width:100%;height:100%;" /></div>
       </div>
    </div>
</div>
<script language="javascript" type="text/javascript">
    function flipItem(item, theOld, callBack) {
        var supportWebkit = typeof ($(document.body)[0].style.webkitAnimation) != "undefined";
        if (!theOld && supportWebkit) {
            theOld = document.createElement("div");
            $(theOld).attr("id", $(item).attr("id") + "Cover");
            $(theOld).width($(item).width());
            $(theOld).height($(item).height());
            $(theOld).css("position", "absolute");
            $(theOld).css("top", $(item).css("top"));
            $(theOld).css("left", $(item).css("left"));
            $(theOld).css("border", "1px solid #cccccc");
            var coverDiv = document.createElement("div");
            $(coverDiv).addClass("itemCover");
            $(theOld).append($(coverDiv));
            $(".content").append($(theOld));
        }
        if (supportWebkit) {
            $(item).addClass("unfliped");
            $(item).removeClass("fliped");
            $(theOld).addClass("fliped");
            $(theOld).removeClass("unfliped");
            $(item).bind("webkitAnimationEnd", function () {
                $(this).removeClass("unfliped");
                $(this)[0].style.webkitAnimation = "";
                if (typeof (callBack) == "function")
                    callBack();
            });
            $(theOld).bind("webkitAnimationEnd", function () {
                $(this).remove();
            });
            $(item).show();
            $(theOld)[0].style.webkitAnimation = "flip1 1s";
            $(item)[0].style.webkitAnimation = "flip2 1s";

        }
        else {
            if (item) {
                $(item).fadeIn(1000);
            }
            if (theOld) {
                $(theOld).fadeOut(1000, function () { $(this).remove(); });
            }
        }
    }
    $(".content").animate({ height: 185 * 5 }, 1200);
    flipItem(document.getElementById("item1"));
    setTimeout(function () { flipItem(document.getElementById("item2")); }, 500);
    setTimeout(function () { flipItem(document.getElementById("item3")); }, 1000);
    setTimeout(function () { flipItem(document.getElementById("item4")); }, 200);
    setTimeout(function () { flipItem(document.getElementById("item5")); }, 700);
    setTimeout(function () { flipItem(document.getElementById("item6")); }, 1200);
    setTimeout(function () { flipItem(document.getElementById("item7")); }, 400);
    setTimeout(function () { flipItem(document.getElementById("item8")); }, 900);
    setTimeout(function () { flipItem(document.getElementById("item9")); }, 1400);
    setTimeout(function () { flipItem(document.getElementById("item10")); }, 600);
    setTimeout(function () { flipItem(document.getElementById("item11")); }, 1100);
    setTimeout(function () { flipItem(document.getElementById("item12")); }, 1600);
    //setTimeout(function () { flipItem(document.getElementById("item13")); }, 800);
    //setTimeout(function () { flipItem(document.getElementById("item14")); }, 1300);
    setTimeout(function () { flipItem(document.getElementById("item14"), document.getElementById("item13")); }, 3000);
    $(".item .iHeader").on("click", function () {
        var item = $(this).parent().parent();
        if(!item.attr("tempLeft")){
            item.attr("tempLeft", item.css("left").replace("px", ""));
            item.attr("tempTop", item.css("top").replace("px", ""));
            item.attr("tempWidth", item.width());
            item.attr("tempHtight", item.height());
            item.css("z-index", 2);
            item.attr("tempScrollTop", $(document.body).scrollTop());
            if($(document.documentElement).scrollTop() > 0)
                item.attr("tempScrollTopE", $(document.documentElement).scrollTop());
            item.stop(true, true).animate({ left: 0, top: 0, width: $(".content").width(), height: $(".content").width() * 9 / 16 });
            item.children(".iContainer").children(".exitFull").on("mouseenter", exitFullMouseEnter);
            item.children(".iContainer").children(".exitFull").on("mouseleave", exitFullMouseLeave);
            item.children(".iContainer").children(".exitFull").stop(true, true).fadeTo("normal", 0.6);
            $(".item[id!=" + item.attr("id") + "]").stop(true, true).fadeTo("normal", 0, function () { $(this).hide(); });
            $(".content").stop(true, true).animate({ height: $(".content").width() * 9 / 16 + 10 }, "slow");
        }
    });
    $(".item .exitFull").on("click", function () {
        var item = $(this).parent().parent();
        //item.css("z-index", "");
        item.children(".iContainer").children(".exitFull").off("mouseenter", exitFullMouseEnter);
        item.children(".iContainer").children(".exitFull").off("mouseleave", exitFullMouseLeave);
        item.stop(true, true).animate(
            { left: item.attr("tempLeft"), top: item.attr("tempTop"), width: item.attr("tempWidth"), height: item.attr("tempHtight") },
            "normal",
            function () { $(this).css("z-index", ""); }
        );
        item.children(".iContainer").children(".exitFull").stop(true, true).fadeTo("normal", 0, function () { $(this).hide(); });
        $(".item[id!=" + item.attr("id") + "]").stop(true, true).fadeTo("normal", 1);
        $(".content").stop(true, true).animate({ height: 185 * 5 }, "slow");
        if (item.attr("tempScrollTopE"))
            $(document.documentElement).stop(true, true).animate({ scrollTop: item.attr("tempScrollTopE") }, "slow");
        else
            $(document.body).stop(true, true).animate({ scrollTop: item.attr("tempScrollTop") }, "slow");
        item.removeAttr("tempLeft");
        item.removeAttr("tempTop");
        item.removeAttr("tempWidth");
        item.removeAttr("tempHtight");
        item.removeAttr("tempScrollTop");
    });
    var exitFullMouseEnter = function () {
        $(this).stop(true, true).fadeTo("normal", 1);
    };
    var exitFullMouseLeave = function () {
        $(this).stop(true, true).fadeTo("normal", 0.6);
    };
</script>
</asp:Content>

