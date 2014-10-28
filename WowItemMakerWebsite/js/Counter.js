function Counter(target, length, path) {
    if (typeof (target) == "string") {
        target = $("#" + target);
    }
    this.container = target;
    if (!length || length <= 0)
        length = 10;
    if (!path) {
        path = Counter.basePath;
    }
    if (path.length > 0 && path.charAt(path.length - 1) != "/") {
        path += "/";
    }
    $(this.container).html("");
    for (var i = 0; i < length; i++) {
        var html = '<div class="numberField">';
        html += '<div class="numberPart">';
        html += '<div num="0" class="numberLabel" style="display:block;"><img alt="" src="' + path + '00.png" /></div>';
        html += '<div num="9" class="numberLabel"><img alt="" src="' + path + '90.png" /></div>';
        html += '<div num="8" class="numberLabel"><img alt="" src="' + path + '80.png" /></div>';
        html += '<div num="7" class="numberLabel"><img alt="" src="' + path + '70.png" /></div>';
        html += '<div num="6" class="numberLabel"><img alt="" src="' + path + '60.png" /></div>';
        html += '<div num="5" class="numberLabel"><img alt="" src="' + path + '50.png" /></div>';
        html += '<div num="4" class="numberLabel"><img alt="" src="' + path + '40.png" /></div>';
        html += '<div num="3" class="numberLabel"><img alt="" src="' + path + '30.png" /></div>';
        html += '<div num="2" class="numberLabel"><img alt="" src="' + path + '20.png" /></div>';
        html += '<div num="1" class="numberLabel"><img alt="" src="' + path + '10.png" /></div>';
        html += '</div>';
        html += '<div class="numberPart">';
        html += '<div num="0" class="numberLabel" style="display:block;"><img alt="" src="' + path + '01.png" /></div>';
        html += '<div num="9" class="numberLabel"><img alt="" src="' + path + '91.png" /></div>';
        html += '<div num="8" class="numberLabel"><img alt="" src="' + path + '81.png" /></div>';
        html += '<div num="7" class="numberLabel"><img alt="" src="' + path + '71.png" /></div>';
        html += '<div num="6" class="numberLabel"><img alt="" src="' + path + '61.png" /></div>';
        html += '<div num="5" class="numberLabel"><img alt="" src="' + path + '51.png" /></div>';
        html += '<div num="4" class="numberLabel"><img alt="" src="' + path + '41.png" /></div>';
        html += '<div num="3" class="numberLabel"><img alt="" src="' + path + '31.png" /></div>';
        html += '<div num="2" class="numberLabel"><img alt="" src="' + path + '21.png" /></div>';
        html += '<div num="1" class="numberLabel"><img alt="" src="' + path + '11.png" /></div>';
        html += '</div>';
        html += '</div>';
        $(this.container).append(html);
    }
}
Counter.basePath = "";
Counter.prototype.getValue = function () {
    var resultStr = new String();
    $(this.container).children(".numberField").each(function (index, e) {
        var fieldNum = new String();
        $(e).children(".numberPart").first().children(".numberLabel").each(function (i, e) {
            if ($(e).css("display") != "none") {
                fieldNum = $(e).attr("num");
                return false;
            }
        });
        resultStr += fieldNum.length == 0 ? "0" : fieldNum;
    });
    return resultStr.length == 0 ? 0 : parseInt(resultStr);
};
Counter.prototype.setValue = function (value) {
    value = parseInt(value);
    if (value < 0)
        value = 0;
    var valueStr = new String(value);
    var counterLength = $(this.container).children(".numberField").length;
    if (counterLength < valueStr.length) {
        valueStr = valueStr.substring(valueStr.length - counterLength, valueStr.length);
    }
    else if (counterLength > valueStr.length) {
        var fillCount = counterLength - valueStr.length;
        for (var i = 0; i < fillCount; i++) {
            valueStr = "0" + valueStr;
        }
    }
    for (var i = 0; i < valueStr.length; i++) {
        var numberField = $(this.container).children(".numberField")[i];
        var fieldNum = new String();
        $(numberField).children(".numberPart").first().children(".numberLabel").each(function (index, e) {
            if ($(e).css("display") != "none") {
                fieldNum = $(e).attr("num");
                return false;
            }
        });
        if (fieldNum != valueStr.charAt(i)) {
            //需要变化数字
            $(numberField).children(".numberPart").each(function (index, e) {
                //把新的数字放在最前
                $(e).children(".numberLabel").first().before($(e).children(".numberLabel[num=" + valueStr.charAt(i) + "]"));
                //收起原来的数字
                $(e).children(".numberLabel[num!=" + valueStr.charAt(i) + "]").stop(true, true).delay(200 * (valueStr.length - i - 1) + index * 300).slideUp(300);
                //放下新的
                $(e).children(".numberLabel[num=" + valueStr.charAt(i) + "]").stop(true, true).delay(200 * (valueStr.length - i - 1) + index * 300).slideDown(300);
            });
        }
    }
};
Counter.prototype.add = function (value) {
    value = parseInt(value);
    var current = this.getValue();
    this.setValue(current + value);
};
