/* jQuery - Easy Ticker - Plugin v2.0 www.aakashweb.com (c) 2014 Aakash Chakravarthy MIT License. */
;(function ($, h, i, j) {
	var k = "easyTicker", defaults = {
		direction: 'up',
		easing: 'swing',
		speed: 'slow',
		interval: 2000,
		height: 'auto',
		visible: 0,
		mousePause: 1,
		controls: {up: '', down: '', toggle: '', playText: 'Play', stopText: 'Stop'}
	};

	function EasyTicker(f, g) {
		var s = this;
		s.opts = $.extend({}, defaults, g);
		s.elem = $(f);
		s.targ = $(f).children(':first-child');
		s.timer = 0;
		s.mHover = 0;
		s.winFocus = 1;
		init();
		start();
		$([h, i]).off('focus.jqet').on('focus.jqet', function () {
			s.winFocus = 1
		}).off('blur.jqet').on('blur.jqet', function () {
			s.winFocus = 0
		});
		if (s.opts.mousePause == 1) {
			s.elem.mouseenter(function () {
				s.timerTemp = s.timer;
				stop()
			}).mouseleave(function () {
				if (s.timerTemp !== 0) start()
			})
		}
		$(s.opts.controls.up).on('click', function (e) {
			e.preventDefault();
			moveDir('up')
		});
		$(s.opts.controls.down).on('click', function (e) {
			e.preventDefault();
			moveDir('down')
		});
		$(s.opts.controls.toggle).on('click', function (e) {
			e.preventDefault();
			if (s.timer == 0) start(); else stop()
		});

		function init() {
			s.elem.children().css('margin', 0).children().css('margin', 0);
			s.elem.css({position: 'relative', height: s.opts.height, overflow: 'hidden'});
			s.targ.css({'position': 'absolute', 'margin': 0});
			setInterval(function () {
				adjHeight()
			}, 100)
		}

		function start() {
			s.timer = setInterval(function () {
				if (s.winFocus == 1) {
					move(s.opts.direction)
				}
			}, s.opts.interval);
			$(s.opts.controls.toggle).addClass('et-run').html(s.opts.controls.stopText)
		}

		function stop() {
			clearInterval(s.timer);
			s.timer = 0;
			$(s.opts.controls.toggle).removeClass('et-run').html(s.opts.controls.playText)
		}

		function move(a) {
			var b, eq, appType;
			if (!s.elem.is(':visible')) return;
			if (a == 'up') {
				b = ':first-child';
				eq = '-=';
				appType = 'appendTo'
			} else {
				b = ':last-child';
				eq = '+=';
				appType = 'prependTo'
			}
			var c = s.targ.children(b);
			var d = c.outerHeight();
			s.targ.stop(true, true).animate({'top': eq + d + "px"}, s.opts.speed, s.opts.easing, function () {
				c.hide()[appType](s.targ).fadeIn();
				s.targ.css('top', 0);
				adjHeight()
			})
		}

		function moveDir(a) {
			stop();
			if (a == 'up') move('up'); else move('down')
		}

		function fullHeight() {
			var a = 0;
			var b = s.elem.css('display');
			s.elem.css('display', 'block');
			s.targ.children().each(function () {
				a += $(this).outerHeight()
			});
			s.elem.css({'display': b, 'height': a})
		}

		function visHeight(a) {
			var b = 0;
			s.targ.children(':lt(' + s.opts.visible + ')').each(function () {
				b += $(this).outerHeight()
			});
			if (a == 1) {
				s.elem.stop(true, true).animate({height: b}, s.opts.speed)
			} else {
				s.elem.css('height', b)
			}
		}

		function adjHeight() {
			if (s.opts.height == 'auto' && s.opts.visible != 0) {
				anim = arguments.callee.caller.name == 'init' ? 0 : 1;
				visHeight(anim)
			} else if (s.opts.height == 'auto') {
				fullHeight()
			}
		}

		return {
			up: function () {
				moveDir('up')
			}, down: function () {
				moveDir('down')
			}, start: start, stop: stop, options: s.opts
		}
	}

	$.fn[k] = function (a) {
		return this.each(function () {
			if (!$.data(this, k)) {
				$.data(this, k, new EasyTicker(this, a))
			}
		})
	}
})(jQuery, window, document);
