document.popups = new Array();
document.popup = null;
document.write('<div id="__PopupMask" style="background-color:#666666; z-index:1000; position:absolute; visibility:hidden; display:none; left:0; top:0;">&nbsp;</div>');
Popup = function (b) {
    if (typeof (b) == "string") {
        b = document.getElementById(b)
    }
    this.element = b;
    this.position = "middle center";
    this.offset = {
        x: 0,
        y: 0
    };
    this.fade = true;
    this.modal = true;
    this.visible = false;
    this.duration = 0;
    this.hidings = null;
    this.openButton = document.getElementById(this.element.id + "_OpenButton");
    this.closeButton = document.getElementById(this.element.id + "_CloseButton");
    this.confirmButton = document.getElementById(this.element.id + "_ConfirmButton");
    this.cancelButton = document.getElementById(this.element.id + "_CancelButton");
    this.dragBar = document.getElementById(this.element.id + "_DragBar");
    this.mask = new Mask()
};
Popup.prototype.onopen = null;
Popup.prototype.onclose = null;
Popup.prototype.onconfirm = null;
Popup.prototype.oncancel = null;
Popup.prototype.bind = function () {
    if (this.element != null) {
        if (this.position == null) {
            this.position = "middle center"
        }
        if (this.offset == null) {
            this.offset = {
                x: 0,
                y: 0
            }
        }
        if (typeof (this.offset) == "string") {
            var offset = this.offset;
            if (offset == "" || !/^\-?[0-9]+,\-?[0-9]+$/.test(offset)) {
                offset = "0,0"
            }
            offset = offset.split(",");
            this.offset = {
                x: parseInt(offset[0]),
                y: parseInt(offset[1])
            }
        }
        var fade = this.fade;
        if (fade == null) {
            fade = true
        }
        if (typeof (fade) == "string") {
            if (/^true$/i.test(fade) || /^false$/i.test(fade)) {
                fade = fade.toLowerCase()
            }
            fade = eval(fade)
        }
        if (fade != true && fade != false) {
            fade = false
        }
        this.fade = fade;
        var modal = this.modal;
        if (modal == null) {
            modal = (this.position != "event")
        }
        if (typeof (modal) == "string") {
            if (/^true$/i.test(modal) || /^false$/i.test(modal)) {
                modal = modal.toLowerCase()
            }
            modal = eval(modal)
        }
        if (modal != true && modal != false) {
            modal = false
        }
        this.modal = modal;
        if (this.hidings != null) {
            var hidings = this.hidings;
            this.hidings = new Array();
            if (typeof (hidings) == "string") {
                hidings = hidings.split(",");
                for (var i = 0; i < hidings.length; i++) {
                    this.hidings[i] = document.getElementById(hidings[i])
                }
            } else {
                if (hidings instanceof Array) {
                    for (var i = 0; i < hidings.length; i++) {
                        if (typeof (hidings[i]) == "string") {
                            this.hidings[i] = document.getElementById(hidings[i])
                        } else {
                            this.hidings[i] = hidings[i]
                        }
                    }
                }
            }
        }
        this.duration = parseInt(this.duration);
        if (isNaN(this.duration)) {
            this.duration = 0
        }
        if (this.openButton == null) {
            this.openButton = this.element.id + "_OpenButton"
        }
        if (typeof (this.openButton) == "string") {
            this.openButton = document.getElementById(this.openButton)
        }
        if (this.closeButton == null) {
            this.closeButton = this.element.id + "_CloseButton"
        }
        if (typeof (this.closeButton) == "string") {
            this.closeButton = document.getElementById(this.closeButton)
        }
        if (this.confirmButton == null) {
            this.confirmButton = this.element.id + "_ConfirmButton"
        }
        if (typeof (this.confirmButton) == "string") {
            this.confirmButton = document.getElementById(this.confirmButton)
        }
        if (this.cancelButton == null) {
            this.cancelButton = this.element.id + "_CancelButton"
        }
        if (typeof (this.cancelButton) == "string") {
            this.cancelButton = document.getElementById(this.cancelButton)
        }
        var visible = this.visible;
        if (typeof (visible) == "string") {
            if (/^true$/i.test(visible) || /^false$/i.test(visible)) {
                visible = visible.toLowerCase()
            }
            visible = eval(visible)
        }
        if (visible != true && visible != false) {
            visible = false
        }
        this.visible = visible;
        if (this.mask.color == null) {
            this.mask.color = "#666666"
        }
        if (this.mask.opacity == null) {
            this.mask.opacity = 3
        }
        if (typeof (this.mask.opacity) == "string") {
            this.mask.opacity = parseInt(this.mask.opacity)
        }
        this.element.style.display = "none";
        this.element.style.position = "absolute";
        this.element.style.zIndex = "1001";
        this.element.style.visibility = "hidden";
        this.element.style.overflow = "hidden";
        var popup = this;
        if (this.openButton != null) {
            this.openButton.onclick = function (ev) {
                popup.open(ev)
            }
        }
        if (this.closeButton != null) {
            this.closeButton.onclick = function (ev) {
                popup.close(ev)
            }
        }
        if (this.confirmButton != null) {
            this.confirmButton.onclick = function (ev) {
                popup.confirm(ev)
            }
        }
        if (this.cancelButton != null) {
            this.cancelButton.onclick = function (ev) {
                popup.cancel(ev)
            }
        }
        if (this.dragBar != null) {
            this.dragBar.style.cursor = "move";
            var __mouseDown = false;
            var offsetX, offsetY;
            var body = document.compatMode == "CSS1Compat" ? document.documentElement : document.body;
            var dragMask = document.createElement("DIV");
            dragMask.style.position = "absolute";
            dragMask.style.zIndex = this.element.style.zIndex + 1;
            dragMask.style.backgroundColor = "#FFFFFF";
            if (navigator.appName == "Microsoft Internet Explorer") {
                dragMask.style.filter = "alpha(opacity=0)"
            } else {
                dragMask.style.opacity = 0
            }
            dragMask.style.display = "none";
            dragMask.style.left = "0px";
            dragMask.style.top = "0px";
            dragMask.style.width = "400px";
            dragMask.style.height = "400px";
            document.body.insertBefore(dragMask, document.body.childNodes[0]);
            this.dragBar.onmousedown = function (ev) {
                __mouseDown = true;
                ev = ev || window.event;
                offsetX = ev.clientX + document.body.scrollLeft - popup.element.offsetLeft;
                offsetY = ev.clientY + document.body.scrollTop + document.documentElement.scrollTop - popup.element.offsetTop;
                var x = ev.clientX - 200;
                var y = ev.clientY - 200;
                if (x < 0) {
                    x = 0
                }
                if (x + 400 > body.offsetWidth) {
                    x = body.offsetWidth - 400
                }
                if (y < 0) {
                    y = 0
                }
                if (y + 400 > body.offsetHeight) {
                    x = body.offsetHeight - 100
                }
                dragMask.style.left = document.body.scrollLeft + x + "px";
                dragMask.style.top = document.body.scrollTop + document.documentElement.scrollTop + y + "px";
                dragMask.style.display = ""
            };
            this.dragBar.onmouseup = function () {
                if (__mouseDown) {
                    __mouseDown = false;
                    dragMask.style.display = "none"
                }
            };
            dragMask.onmouseup = this.dragBar.onmouseup;
            dragMask.onmouseout = this.dragBar.onmouseup;
            dragMask.onmousemove = function (ev) {
                ev = ev || window.event;
                if (__mouseDown) {
                    var x, y;
                    x = ev.clientX - 200;
                    y = ev.clientY - 200;
                    if (x < 0) {
                        x = 0
                    }
                    if (x + 400 > body.offsetWidth) {
                        x = body.offsetWidth - 400
                    }
                    if (y < 0) {
                        y = 0
                    }
                    if (y + 400 > body.offsetHeight) {
                        x = body.offsetHeight - 400
                    }
                    dragMask.style.left = body.scrollLeft + x + "px";
                    dragMask.style.top = body.scrollTop + y + "px";
                    x = ev.clientX - offsetX;
                    y = ev.clientY - offsetY;
                    if (x < 0) {
                        x = 0
                    }
                    if (x + popup.element.offsetWidth > body.offsetWidth) {
                        x = body.offsetWidth - popup.element.offsetWidth
                    }
                    if (y < 0) {
                        y = 0
                    }
                    if (y + popup.element.offsetHeight > body.offsetHeight) {
                        y = body.offsetHeight - popup.element.offsetHeight
                    }
                    popup.element.style.left = document.body.scrollLeft + x + "px";
                    popup.element.style.top = document.body.scrollTop  + document.documentElement.scrollTop + y + "px"
                }
            }
        }
        if (this.visible) {
            this.show()
        }
        document.popups[this.element.id] = popup
    }
};
Popup.prototype.locate = function (ev) {
    if (this.position.indexOf(",") == -1) {
        this.position = this.position.toLowerCase()
    }
    var body = document.compatMode == "CSS1Compat" ? document.documentElement : document.body;
    var documentWidth = body.clientWidth,
	documentHeight = body.clientHeight;
    var scrollLeft = body.scrollLeft,
	scrollTop = document.body.scrollTop + document.documentElement.scrollTop;
    var x = scrollLeft,
	y = scrollTop;
    switch (this.position) {
        case "middle center":
            x += (documentWidth - this.element.offsetWidth) / 2;
            y += (documentHeight - this.element.offsetHeight) / 2;
            break;
        case "top left":
            x += 0;
            y += 0;
            break;
        case "top center":
            x += (documentWidth - this.element.offsetWidth) / 2;
            y += 0;
            break;
        case "top right":
            x += documentWidth - this.element.offsetWidth;
            y += 0;
            break;
        case "middle left":
            x += 0;
            y += (documentHeight - this.element.offsetHeight) / 2;
            break;
        case "middle right":
            x += documentWidth - this.element.offsetWidth;
            y += (documentHeight - this.element.offsetHeight) / 2;
            break;
        case "bottom left":
            x += 0;
            y += documentHeight - this.element.offsetHeight;
            break;
        case "bottom center":
            x += (documentWidth - this.element.offsetWidth) / 2;
            y += documentHeight - this.element.offsetHeight;
            break;
        case "bottom right":
            x += documentWidth - this.element.offsetWidth;
            y += documentHeight - this.element.offsetHeight;
            break;
        case "buttonleft":
            x = this.openButton.offsetLeft - this.element.offsetWidth;
            y = this.openButton.offsetTop;
            if (y + this.element.offsetHeight > scrollTop + documentHeight) {
                y = this.openButton.offsetTop + this.openButton.offsetHeight - this.element.offsetHeight
            }
            break;
        case "buttonright":
            x = this.openButton.offsetLeft + this.openButton.offsetWidth;
            y = this.openButton.offsetTop;
            if (y + this.element.offsetHeight > scrollTop + documentHeight) {
                y = this.openButton.offsetTop + this.openButton.offsetHeight - this.element.offsetHeight
            }
            break;
        case "buttontop":
            x = this.openButton.offsetLeft;
            if (x + this.element.offsetWidth > scrollLeft + documentWidth) {
                x = this.openButton.offsetLeft + this.openButton.offsetWidth - this.element.offsetWidth
            }
            y = this.openButton.offsetTop - this.element.offsetHeight;
            break;
        case "buttonbottom":
            x = this.openButton.offsetLeft;
            if (x + this.element.offsetWidth > scrollLeft + documentWidth) {
                x = this.openButton.offsetLeft + this.openButton.offsetWidth - this.element.offsetWidth
            }
            y = this.openButton.offsetTop + this.openButton.offsetHeight;
            break;
        case "event":
            ev = ev || window.event;
            x = 0,
		y = 0;
            if (ev) {
                x = ev.clientX;
                y = ev.clientY;
                if (x + this.element.offsetWidth > documentWidth) {
                    x = x - this.element.offsetWidth
                }
                if (y + this.element.offsetHeight > documentHeight) {
                    y = y - this.element.offsetHeight
                }
                if (x < 0) {
                    x = 0
                }
                if (y < 0) {
                    y = 0
                }
                x += scrollLeft;
                y += scrollTop
            }
            break;
        default:
            var location = this.position.split(",");
            x = scrollLeft + eval(location[0]);
            y = scrollTop + eval(location[1]);
            break
    }
    x += this.offset.x;
    y += this.offset.y;
    if (x < 0) {
        x = 0
    }
    if (y < 0) {
        y = 0
    }
    this.element.style.left = x + "px";
    this.element.style.top = y + "px"
};
Popup.prototype.show = function (d, c) {
    if (d == null) {
        d = !this.fade
    }
    Popup.__HideHidings(this.hidings);
    if (this.modal) {
        this.mask.show(d)
    }
    this.element.style.display = "";
    this.locate(c);
    this.element.style.visibility = "visible";
    if (!d) {
        Popup.__FadeIn(this.element.id, 0)
    } else {
        Popup.__SetOpacity(this.element, 10)
    }
    this.visible = true;
    document.popup = this
};
Popup.prototype.hide = function (b) {
    if (this.visible) {
        if (b == null) {
            b = !this.fade
        }
        if (!b) {
            Popup.__FadeOut(this.element.id, 10)
        } else {
            this.element.style.display = "none";
            this.element.style.visibility = "hidden"
        }
        if (this.modal) {
            this.mask.hide(b)
        }
        Popup.__ShowHidings(this.hidings);
        this.visible = false;
        document.popup = null;
        if (Popup.__Timer != null) {
            window.clearTimeout(Popup.__Timer)
        }
    }
};
Popup.prototype.open = function (b) {
    if (document.popup != this) {
        if (Popup.__ReturnEventValue(this, "onopen", b)) {
            if (document.popup != null) {
                document.popup.hide(true)
            }
            this.show(null, b);
            if (this.duration > 0) {
                Popup.__Timer = window.setTimeout("if (document.popup != null && Popup.__Timer != null) document.popup.close();", this.duration)
            }
        }
    }
};
Popup.prototype.close = function (b) {
    if (document.popup == this) {
        if (Popup.__ReturnEventValue(this, "onclose", b)) {
            this.hide()
        }
    }
};
Popup.prototype.confirm = function (b) {
    if (document.popup == this) {
        if (Popup.__ReturnEventValue(this, "onconfirm", b)) {
            this.hide()
        }
    }
};
Popup.prototype.cancel = function (b) {
    if (document.popup == this) {
        if (Popup.__ReturnEventValue(this, "oncancel", b)) {
            this.hide()
        }
    }
};
Popup.__Timer = null;
Popup.__ReturnEventValue = function (popup, eventName, ev) {
    var returnValue = true;
    if (popup[eventName] != null) {
        if (typeof (popup[eventName]) == "function") {
            returnValue = popup[eventName](ev)
        } else {
            if (typeof (popup[eventName]) == "string") {
                eval("returnValue = function(ev){" + popup[eventName] + "}");
                returnValue = returnValue.call(popup, ev)
            }
        }
        if (returnValue != false && returnValue != true) {
            returnValue = true
        }
    }
    return returnValue
};
Popup.__SetOpacity = function (c, d) {
    if (d == null) {
        d = 10
    }
    if (navigator.appName == "Microsoft Internet Explorer") {
        c.style.filter = "alpha(opacity=" + (d * 10) + ")"
    } else {
        c.style.opacity = d / 10
    }
};
Popup.__FadeIn = function (d, e) {
    if (e < 10) {
        e++;
        var f = document.getElementById(d);
        Popup.__SetOpacity(f, e);
        window.setTimeout('Popup.__FadeIn("' + d + '", ' + e + ");", 10)
    }
};
Popup.__FadeOut = function (d, e) {
    var f = document.getElementById(d);
    if (e > 0) {
        e--;
        Popup.__SetOpacity(f, e);
        window.setTimeout('Popup.__FadeOut("' + d + '", ' + e + ");", 10)
    } else {
        f.style.visibility = "hidden";
        f.style.display = "none"
    }
};
Popup.__HideHidings = function (c) {
    if (c instanceof Array) {
        for (var d = 0; d < c.length; d++) {
            c[d].style.display = "none"
        }
    }
};
Popup.__ShowHidings = function (c) {
    if (c instanceof Array) {
        for (var d = 0; d < c.length; d++) {
            c[d].style.display = ""
        }
    }
};
Popup.Resize = function () {
    Mask.Resize();
    if (document.popup != null) {
        if (document.popup.position != "event") {
            document.popup.locate()
        }
    }
};
Mask = function (d, c) {
    this.color = d || "#666666";
    this.opacity = c || 3
};
Mask.Element = document.getElementById("__PopupMask");
Mask.prototype.show = function (b) {
    if (b == null) {
        b = false
    }
    Mask.Element.style.display = "";
    Mask.Element.style.visibility = "visible";
    Mask.Element.style.backgroundColor = this.color;
    if (b) {
        Mask.__SetOpacity(this.opacity)
    } else {
        Mask.__SetOpacity(0);
        Mask.__FadeIn(0, this.opacity)
    }
};
Mask.prototype.hide = function (b) {
    if (b == null) {
        b = false
    }
    if (b) {
        Mask.Element.style.visibility = "hidden";
        Mask.Element.style.display = "none"
    } else {
        Mask.__FadeOut(this.opacity)
    }
};
Mask.Resize = function () {
    var j = 0,
	i = 0;
    var m = document.body.childNodes;
    for (var l = 0; l < m.length; l++) {
        if (m[l].nodeType == 1) {
            if (m[l].offsetLeft + m[l].offsetWidth > j) {
                j = m[l].offsetLeft + m[l].offsetWidth
            }
        }
    }
    for (var l = m.length - 1; l >= 0; l--) {
        if (m[l].offsetTop > 0) {
            i = m[l].offsetTop + m[l].offsetHeight;
            break
        }
    }
    var h = document.compatMode == "CSS1Compat" ? document.documentElement : document.body;
    var k = h.scrollLeft + h.clientWidth;
    if (j < k) {
        j = k
    }
    var n = document.body.scrollTop + document.documentElement.scrollTop + document.body.clientHeight;
    if (i < n) {
        i = n
    }
    Mask.Element.style.width = j + "px";
    Mask.Element.style.height = i + "px"
};
Mask.__SetOpacity = function (b) {
    if (b == null) {
        b = 0
    }
    if (navigator.appName == "Microsoft Internet Explorer") {
        Mask.Element.style.filter = "alpha(opacity=" + (b * 10) + ")"
    } else {
        Mask.Element.style.opacity = b / 10
    }
};
Mask.__FadeIn = function (d, c) {
    if (d < c) {
        d++;
        Mask.__SetOpacity(d);
        window.setTimeout("Mask.__FadeIn(" + d + ", " + c + ");", 10)
    }
};
Mask.__FadeOut = function (b) {
    if (b > 0) {
        b--;
        Mask.__SetOpacity(b);
        window.setTimeout("Mask.__FadeOut(" + b + ");", 10)
    } else {
        Mask.Element.style.visibility = "hidden";
        Mask.Element.style.display = "none"
    }
};
function __InitializePopups() {
    Mask.Resize();
    window.onresize = Popup.Resize;
    var d = document.getElementsByTagName("Popup");
    for (var e = 0; e < d.length; e++) {
        var f = new Popup(d[e].getAttribute("Element"));
        f.position = d[e].getAttribute("Position");
        f.offset = d[e].getAttribute("Offset");
        f.fade = d[e].getAttribute("Fade");
        f.modal = d[e].getAttribute("Modal");
        f.hidings = d[e].getAttribute("Hidings");
        f.duration = d[e].getAttribute("Duration");
        f.openButton = d[e].getAttribute("OpenButton");
        f.closeButton = d[e].getAttribute("CloseButton");
        f.confirmButton = d[e].getAttribute("ConfirmButton");
        f.cancelButton = d[e].getAttribute("CancelButton");
        f.visible = d[e].getAttribute("Visible");
        f.onopen = d[e].getAttribute("OnOpen");
        f.onclose = d[e].getAttribute("OnClose");
        f.onconfirm = d[e].getAttribute("OnConfirm");
        f.oncancel = d[e].getAttribute("OnCancel");
        f.mask.color = d[e].getAttribute("MaskColor");
        f.mask.opacity = d[e].getAttribute("MaskOpacity");
        f.bind()
    }
}
__InitializePopups();