/* Load this script using conditional IE comments if you need to support IE 7 and IE 6. */

window.onload = function() {
	function addIcon(el, entity) {
		var html = el.innerHTML;
		el.innerHTML = '<span style="font-family: \'icomoon\'">' + entity + '</span>' + html;
	}
	var icons = {
			'icon-windows-24' : '&#xe000;',
			'icon-pause-24' : '&#xe011;',
			'icon-new-24' : '&#xe012;',
			'icon-mic-24' : '&#xe013;',
			'icon-mail-24' : '&#xe014;',
			'icon-loop-24' : '&#xe015;',
			'icon-lock-24' : '&#xe016;',
			'icon-location-24' : '&#xe017;',
			'icon-list-24' : '&#xe018;',
			'icon-link-24' : '&#xe019;',
			'icon-info-24' : '&#xe01a;',
			'icon-image-24' : '&#xe01b;',
			'icon-home-24' : '&#xe01c;',
			'icon-heart-24' : '&#xe01d;',
			'icon-gear-24' : '&#xe01e;',
			'icon-folder-24' : '&#xe01f;',
			'icon-eye-24' : '&#xe020;',
			'icon-export-24' : '&#xe021;',
			'icon-document-24' : '&#xe022;',
			'icon-cross-circle-24' : '&#xe023;',
			'icon-cross-24' : '&#xe024;',
			'icon-credit-card-24' : '&#xe025;',
			'icon-cmd-24' : '&#xe026;',
			'icon-clip-24' : '&#xe027;',
			'icon-check-circle-24' : '&#xe028;',
			'icon-check-24' : '&#xe029;',
			'icon-chat-24' : '&#xe02a;',
			'icon-calendar-solid-24' : '&#xe02b;',
			'icon-calendar-24' : '&#xe02c;',
			'icon-bubble-24' : '&#xe02d;',
			'icon-bookmark-24' : '&#xe02e;',
			'icon-arror-right-24' : '&#xe02f;',
			'icon-arror-left-24' : '&#xe030;',
			'icon-alert-24' : '&#xe031;',
			'icon-gota' : '&#xe032;',
			'icon-window-24' : '&#xe001;',
			'icon-volume-24' : '&#xe002;',
			'icon-video-24' : '&#xe003;',
			'icon-user-24' : '&#xe004;',
			'icon-upload-24' : '&#xe005;',
			'icon-unknow-24' : '&#xe006;',
			'icon-trash-24' : '&#xe007;',
			'icon-time-24' : '&#xe008;',
			'icon-tag-24' : '&#xe009;',
			'icon-star-24' : '&#xe00a;',
			'icon-search-24' : '&#xe00b;',
			'icon-question-24' : '&#xe00c;',
			'icon-power-24' : '&#xe00d;',
			'icon-plus-circle-24' : '&#xe00e;',
			'icon-plus-24' : '&#xe00f;',
			'icon-play-24' : '&#xe010;',
			'icon-photo-24' : '&#xe033;',
			'icon-exit-24' : '&#xe034;'
		},
		els = document.getElementsByTagName('*'),
		i, attr, html, c, el;
	for (i = 0; ; i += 1) {
		el = els[i];
		if(!el) {
			break;
		}
		attr = el.getAttribute('data-icon');
		if (attr) {
			addIcon(el, attr);
		}
		c = el.className;
		c = c.match(/icon-[^\s'"]+/);
		if (c && icons[c[0]]) {
			addIcon(el, icons[c[0]]);
		}
	}
};