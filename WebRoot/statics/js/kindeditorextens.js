(function (window, message, undefined) {
	var editor;
	var spdesc = document.getElementById('sp_desc');
	var inputdesc = document.getElementById('input_DESCRIPTION');
	var defaultText = "可输入房间描述、小区环境、周边配套、对合租者的要求等信息";
	KindEditor.ready(function (K) {
		editor = K.create('textarea[name="input_DESCRIPTION"]', {
			resizeType: 1,
			allowPreviewEmoticons: false,
			allowImageUpload: false,
			items: [
						'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
						'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
						'insertunorderedlist'],
			afterBlur: function () {
				var description = editor.html();
				var descount = editor.count('text');
				var flag = false;
				if (description !== "" && description !== defaultText && descount >= 5 && editor.count() < 5000) {
					spdesc.innerHTML = '';
					if (Common.isBaddeswords(description)) {
						inputdesc.className = 'inputerror';
						message.warn(spdesc, "房源描述含有敏感字符");
					} else if (/\d{7}/.test(description)) {
						inputdesc.className = 'inputerror';
						message.warn(spdesc, "房源描述不允许包含联系方式");
					} else {
						inputdesc.className = 'input';
						message.succeed(spdesc);
						jQuery("#input_DESCRIPTION_New").val(description);
						flag = true;
					}
				} else if (editor.count() >= 5000) {
					idMap.description.className = 'inputerror';
					message.warn(spdesc, "房源描述超出长度限制");
				} else {
					message.warn(spdesc, "请输入房源描述，最少五个汉字。");
				}
				if (this.isEmpty()) {
					this.html(defaultText);
				}
				return flag;
			},
			afterFocus: function () {
				spdesc.innerHTML = '';
				if (this.text() === defaultText) {
					this.html("");
				}
			},
			afterChange: function () {
				if (this.text() === defaultText) {
					message.warn(spdesc, "请输入房源描述，最少五个汉字。");
				}
				else {
					if (this.count() < 5000) {
						if (this.count('text') < 5) {
							message.warn(spdesc, "请输入房源描述，最少五个汉字。");
						}
					}
					else {
						inputdesc.className = 'inputerror';
						message.warn(spdesc, "房源描述超出长度限制。");
					}
				}
			}
		});
		window.editor = editor;
	});
} (window, message))