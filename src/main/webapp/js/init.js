(function($){
  $(function(){

    $('.sidenav').sidenav();
    $('.parallax').parallax();

  }); // end of document ready
})(jQuery); // end of jQuery name space

  // Or with jQuery
  $(document).ready(function(){
    $('.modal').modal();
  });
  
  $('.bxslider').bxSlider({
  auto: true,
  autoControls: true,
  stopAutoOnClick: true,
  pager: true,
  shrinkItems: false,
  captions: true
  //slideWidth: 600,
});

 $(".submitbtn").click(function(){
    //$("p").click();
	//alert("Contact Information submitted successfully");
	M.toast({html: 'Information submitted successfully!', displayLength: 2000});
  });

$(document).ready(function(){
    $('.slider').slider({
	indicators: true,
	height: 400,
	duration: 2000,
	interval: 3000
});
});

function playSlideshow() {
	pauseButton.innerHTML = 'Pause';
	playing = true;
	slideInterval = setInterval(nextSlide,2000);
}



function pauseSlideshow() {
var buttonName = $('.pauseplay').html();
  if(buttonName==='pause') {
	$('.slider').slider('pause');
	$('.pauseplay').html('play_arrow');
  } else if(buttonName==='play_arrow') {
		$('.slider').slider('start');
		$('.pauseplay').html('pause');
  }
}

$(document).ready(function() {
$('.pauseplay').click(function(){
    pauseSlideshow();
  });
})

/*$(document).ready(function(){
$('.enterleave').mouseenter(function(){
    $('.slider').slider('pause');
  });
$('.enterleave').mouseleave(function(){
    $('.slider').slider('start');
  });
})*/


//onclick="window.location.href = 'shoppingCart.jsp'; alert("sadfds");"

$(document).ready(function(){
$('.test122').click(function(){
	window.location.href = window.location.origin+"/toShoppingCart";
  });
});

$(document).ready(function(){
$('.test1122').click(function(){
$('.tap-target').tapTarget('open');
  });
});

	var offset = 300,
		scrollTopDuration = 700,
		backToTop = $('#back-to-top');

	$(window).scroll(function(){
		$(this).scrollTop() > offset ? backToTop.removeClass('scale-out') : backToTop.addClass('scale-out');
	});

	backToTop.on('click', function(event){
		event.preventDefault();
		$('body,html').animate({scrollTop:0}, scrollTopDuration);
	});
	


  
 // CAROUSEL 
$('.carousel.carousel-slider').carousel({
    dist: 0,
    padding: 0,
    fullWidth: true,
    indicators: true,
    duration: 100,
	//shift: 20,
	numVisible: 2
	
  });
  autoplay();
	function autoplay() {
    $('.carousel').carousel('next');
    setTimeout(autoplay, 4500);
}

$(document).ready(function(){
 $(".slickslider").slick({
        dots: true,
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 4,
		autoplay: true,
		autoplaySpeed: 2000,
		prevArrow: $(".pp2"),
		nextArrow: $(".nn2")
      });
});
  //$('.carousel').carousel('next', 3);
 // $('.carousel').carousel('prev', 3);
 
/*========== Initialization OpenCart ==========*/
function getURLVar(key) {
	var value = [];
	var query = String(document.location).split('?');
	if (query[1]) {
		var part = query[1].split('&');
		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');
			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}
		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	} else {
		var query = String(document.location.pathname).split('index.html');

		if (query[query.length - 1] == 'cart') {
			value['route'] = 'checkout/cart';
		}

		if (query[query.length - 1] == 'checkout') {
			value['route'] = 'checkout/checkout';
		}

		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}
}

var buttonCart = $('#cart'),
	totalCart = $('#cart-total'),
	modalCartContent = $('#modal-cart-content');
	
	var localStorage = window.localStorage;
	
$(document).ready(function() {
	  totalCart = $('#cart-total');
	  var addToCartCount = Number(localStorage.getItem("count"));
	  totalCart.html(addToCartCount);
});
	
var cart = {
	'add': function(code) {
	var addToCartCount = Number(localStorage.getItem("count"));
	
	if(addToCartCount != 0) {
		
	}
	
	alert("product_id--"+code);
		$.ajax({
			url: './buyProduct',
			type: 'get',
			data: 'code=' + code,
			dataType: 'text',
			success: function(data) {
			alert("data--"+data);
			console.log(data);
				if (true) {
					M.toast({html: '<span><i class="material-icons left">check</i> </span>', classes: 'toast-success'});
					setTimeout(function () {
					addToCartCount = addToCartCount + 1;
					localStorage.setItem("count", addToCartCount);
					 var totalItemCount = localStorage.getItem("count");
						totalCart.html(totalItemCount);
					}, 100);
					buttonCart.addClass('pulse');
					totalCart.addClass('pulse');
					//modalCartContent.load('shoppingCart.jsp');
					//modalCartContent.load('indexe061.html?route=common/cart/info#modal-cart-list');
				}
			},
		});
	},
	'update': function(key, quantity) {
		$.ajax({
			url: 'index.php?route=checkout/cart/edit',
			type: 'post',
			data: 'key=' + key + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
			dataType: 'json',
			success: function(json) {
				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
					location = 'index630e.html?route=checkout/cart';
				} else {
					modalCartContent.load('indexe061.html?route=common/cart/info#modal-cart-list');
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	},
	'remove': function(key, product_id, quantity, message, cancel) {
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: 'key=' + key,
			dataType: 'json',
			success: function(json) {
				setTimeout(function() {
					totalCart.html(json['total']);
				}, 100);

				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
					location = 'index630e.html?route=checkout/cart';
				} else {
					modalCartContent.load('indexe061.html?route=common/cart/info#modal-cart-list');

					M.toast({html: '<span class="toast-undo-remove__text">' + message + '</span><button id="toast-undo-remove__' + key + '" class="btn-flat waves-effect toast-action toast-undo-remove__action cyan-text text-accent-3">' + cancel + '</button>', classes: 'no-padding'});

					$('#toast-undo-remove__' + key + '').click(function() {
						cart.add(product_id, quantity);
						var toastElement = $(this).parent();
						var toastInstance = M.Toast.getInstance(toastElement);
						toastInstance.dismiss();
					});
				}

				if (json['total'] == 0) {
					buttonCart.removeClass('pulse');
					totalCart.removeClass('pulse');
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}
}
var voucher = {
	'add': function() {

	},
	'remove': function(key) {
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: 'key=' + key,
			dataType: 'json',
			success: function(json) {
				setTimeout(function () {
					totalCart.html(json['total']);
				}, 100);

				if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
					location = 'index630e.html?route=checkout/cart';
				} else {
					modalCartContent.load('indexe061.html?route=common/cart/info#modal-cart-list');
				}
				if (json['total'] == 0) {
					buttonCart.removeClass('pulse');
					totalCart.removeClass('pulse');
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	}
}
var wishlist = {
	'add': function(product_id) {
		$.ajax({
			url: 'index.php?route=account/wishlist/add',
			type: 'post',
			data: 'product_id=' + product_id,
			dataType: 'json',
			success: function(json) {
				if (json['redirect']) {
					location = json['redirect'];
				}
				if (json['success']) {
					M.toast({html: '<span><i class="material-icons left">info</i>' + json['success'] + '</span>', classes: 'toast-info'});
				}
				$('#wishlist-total span').html(json['total']);
				$('#wishlist-total').attr('title', json['total']);
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	},
	'remove': function() {
	}
}
var compare = {
	'add': function(product_id) {
		$.ajax({
			url: 'index.php?route=product/compare/add',
			type: 'post',
			data: 'product_id=' + product_id,
			dataType: 'json',
			success: function(json) {
				if (json['success']) {
					M.toast({html: '<span><i class="material-icons left">check</i>' + json['success'] + '</span>', classes: 'toast-success'});
					$('#compare-btn').removeClass('scale-out');
					$('#compare-total').html(json['total']);
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	},
	'remove': function() {
	}
}

$(document).ready(function() {
	/*========== Initialization Materialize JS ==========*/
	var collapsible = $('.collapsible'),
		collapsibleExpandable = $('.collapsible.expandable'),
		tabs = $('.tabs'),
		modal = $('.modal'),
		tooltipped = $('.tooltipped'),
		dropdown = $('.dropdown-trigger'),
		select = $('select');

	collapsible.collapsible();
	collapsibleExpandable.collapsible({
		accordion: false
	});
	tabs.tabs();
	modal.modal();
	tooltipped.tooltip();
	dropdown.dropdown();
	select.formSelect();
	M.updateTextFields();

	var btnSideMenu = $('#btn-side-menu'),
		sideMenu = $('#slide-out'),
		dropdownLk = $('#dropdown-lk'),
		categoryDropdown = $('#main-dd-nav');

	btnSideMenu.on('click', function() {
		sideMenu.sidenav();
		sideMenu.load('index3b20.html?route=extension/materialize/common/sidenav');
	});


	dropdownLk.dropdown({
		hover: true,
		coverTrigger: false,
		constrainWidth: false
	});

	categoryDropdown.dropdown({
		hover: true,
		coverTrigger: false
	});

	/*========== Back to top ==========*/
	var offset = 300,
		scrollTopDuration = 700,
		backToTop = $('#back-to-top');

	$(window).scroll(function(){
		$(this).scrollTop() > offset ? backToTop.removeClass('scale-out') : backToTop.addClass('scale-out');
	});

	backToTop.on('click', function(event){
		event.preventDefault();
		$('body,html').animate({scrollTop:0}, scrollTopDuration);
	});

	/*========== Sticky Navigation ==========*/
	var headerNavigation = $('#header-navigation');
	if (headerNavigation.length) {
		headerNavigation.pushpin({
			top: headerNavigation.offset().top
		});
	}

	/*========== Initialization Open Cart ==========*/
	// Global site search
	var inputSearchHeader = $('#input-search');

	inputSearchHeader.parent().find('label').on('click', function() {
		var url = $('base').attr('href') + 'index.php?route=product/search',
			value = inputSearchHeader.val();
		if (value) {
			url += '&search=' + encodeURIComponent(value);
		}
		location = url;
	});

	inputSearchHeader.on('keydown', function(e) {
		if (e.keyCode == 13) {
			inputSearchHeader.parent().find('label').trigger('click');
		}
	});

	// Clear search form
	var searchClear = $('.search-buttons__clear');

	searchClear.click(function() {searchClear.parent().find('input').val('');});

	/*========== Gif image ==========*/
	$('.gifplay').each(function(el) {
		el += 1;
		var gifPlayImage = $(this).find('.gifplay-image'),
			gifSrc = $(this).find(gifPlayImage).attr('data-src'),
			gifData = $(this).find(gifPlayImage).attr('data-gif'),
			gifPreloader = '<div class="gifplay-preloader-wrapper z-depth-5"><div class="preloader-wrapper active"><div class="spinner-layer spinner-blue"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-red"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-yellow"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div><div class="spinner-layer spinner-green"><div class="circle-clipper left"><div class="circle"></div></div><div class="gap-patch"><div class="circle"></div></div><div class="circle-clipper right"><div class="circle"></div></div></div></div></div>';

		gifPlayImage.after('<div class="gifplay-button transition scale waves-effect waves-circle waves-darken z-depth-5"></div>')

		var gifPlayButton = $(this).find('.gifplay-button');

		gifPlayButton.click(function() {
			gifPlayImage.attr('src', gifData);
			gifPlayButton.hide();
			gifPlayButton.after(gifPreloader);
			gifPlayImage.on('load', function() {
				$('.gifplay-preloader-wrapper').remove();
			});
			gifPlayImage.addClass('activator');
		});

		gifPlayImage.click(function() {
			gifPlayImage.attr('src', gifSrc);
			gifPlayButton.show();
			gifPlayImage.removeClass('activator');
		});
	});

	/*========== Initialization Open Cart ==========*/
		// Checkout
		$(document).on('keydown', '#collapse-checkout-option input[name=\'email\'], #collapse-checkout-option input[name=\'password\']', function(e) {
			if (e.keyCode == 13) {
				$('#collapse-checkout-option #button-login').trigger('click');
			}
		});
		// Autocomplete
		$.fn.autocomplete = function(option) {
			return this.each(function() {
				this.timer = null;
				this.items = new Array();

				$.extend(this, option);

				$(this).attr('autocomplete', 'off');

				// Focus
				$(this).on('focus', function() {
					this.request();
				});

				// Blur
				$(this).on('blur', function() {
					setTimeout(function(object) {
						object.hide();
					}, 200, this);
				});

				// Keydown
				$(this).on('keydown', function(event) {
					switch(event.keyCode) {
						case 27: // escape
							this.hide();
							break;
						default:
							this.request();
							break;
					}
				});

				// Click
				this.click = function(event) {
					event.preventDefault();

					value = $(event.target).parent().attr('data-value');

					if (value && this.items[value]) {
						this.select(this.items[value]);
					}
				}

				// Show
				this.show = function() {
					$(this).siblings('.autocomplete-content.dropdown-content').css({
						'opacity': '1',
						'display': 'block'
					});
				}

				// Hide
				this.hide = function() {
					$(this).siblings('.autocomplete-content.dropdown-content').css({
						'opacity': '0',
						'display': 'none'
					});
				}

				// Request
				this.request = function() {
					clearTimeout(this.timer);

					this.timer = setTimeout(function(object) {
						object.source($(object).val(), $.proxy(object.response, object));
					}, 200, this);
				}

				// Response
				this.response = function(json) {
					html = '';

					if (json.length) {
						for (i = 0; i < json.length; i++) {
							this.items[json[i]['value']] = json[i];
						}

						for (i = 0; i < json.length; i++) {
							if (!json[i]['category']) {
								html += '<li class="waves-effect" data-value="' + json[i]['value'] + '">' + json[i]['img'] + '<span>' + json[i]['label'] + '</span></li>';
							}
						}

						// Get all the ones with a categories
						var category = new Array();

						for (i = 0; i < json.length; i++) {
							if (json[i]['category']) {
								if (!category[json[i]['category']]) {
									category[json[i]['category']] = new Array();
									category[json[i]['category']]['name'] = json[i]['category'];
									category[json[i]['category']]['item'] = new Array();
								}

								category[json[i]['category']]['item'].push(json[i]);
							}
						}

						for (i in category) {
							html += '<li class="dropdown-header">' + category[i]['name'] + '</li>';

							for (j = 0; j < category[i]['item'].length; j++) {
								html += '<li data-value="' + category[i]['item'][j]['value'] + '"><a href="#">&nbsp;&nbsp;&nbsp;' + category[i]['item'][j]['label'] + '</a></li>';
							}
						}
					}

					if (html) {
						this.show();
					} else {
						this.hide();
					}

					$(this).siblings('.autocomplete-content.dropdown-content').html(html);
				}

				$(this).after('<ul class="autocomplete-content dropdown-content"></ul>');
				$(this).siblings('.autocomplete-content.dropdown-content').delegate('span', 'click', $.proxy(this.click, this));

			});
		}

		$(document).delegate('.agree', 'click', function(e) {
			e.preventDefault();

			$('#modal-agree').remove();

			var element = this;

			$.ajax({
				url: $(element).attr('href'),
				type: 'get',
				dataType: 'html',
				success: function(data) {
					html  = '<div id="modal-agree" class="modal">';
					html += 	'<div class="modal-content">';
					html += 		'<i class="material-icons modal-action modal-close waves-effect waves-circle close-icon">close</i>';
					html += 		'<h4>' + $(element).text() + '</h4>';
					html += 		'<p>' + data + '</p>';
					html +=		'</div>';
					html += '</div>';
					$('body').append(html);
					$('#modal-agree').modal();
					$('#modal-agree').modal('open');
				}
			});
		});

});

document.addEventListener("DOMContentLoaded", function(event) {
                              	$(document).ready(function() {
                              		$('input[name=\'search\']').autocomplete({
                              			'source': function(request, response) {
                              				$.ajax({
                              					url: 'index.php?route=common/search/autocomplete&filter_name=' + encodeURIComponent(request),
                              					dataType: 'json',
                              					success: function(json) {
                              						response($.map(json, function(item) {
                              							return {
                              								label: item['name'],
                              								img: item['img'],
                              								value: item['product_id']
                              							}
                              						}));
                              					}
                              				});
                              			},
                              			'select': function(item) {
                              				window.location = "index1d84.html?route=product/product&amp;product_id="+item['value'];
                              			}
                              		});
                              	});
                              });
 
 
   
document.addEventListener("DOMContentLoaded", function(event) {
         	$('#form-language .language-select').on('click', function(e) {
         		e.preventDefault();
         		$('#form-language input[name=\'code\']').val($(this).attr('id'));
         		$('#form-language').submit();
         	});
         });
		 

         document.addEventListener("DOMContentLoaded", function(event) {
         	var callbackAttract = $('#callback__attract'),
         		callbackPhoneIcon = $('#callback__phone-icon');
         
         	setInterval(function() {
         		callbackPhoneIcon.toggleClass('callback-shake');
         	}, 2500);
         
         	var idleTimer = null,
         		idleState = false,
         		idleWait = 30000;
         
         	callbackAttract.tapTarget();
         
         	$(document).bind('mousemove keydown scroll', function() {
         		clearTimeout(idleTimer);
         
         		idleState = false;
         		idleTimer = setTimeout(function() {
         			callbackAttract.tapTarget('open');
         			idleState = true;
         		}, idleWait);
         	});
         
         	$("body").trigger("mousemove");
         });

         document.addEventListener("DOMContentLoaded", function(event) {
         			$('.timepicker').timepicker({
         		defaultTime: 'now',
         		autoclose: true,
         		i18n: {
         			clear: 'Clear',
         			cancel: 'Close',
         			done: 'Select',
         			twelvehour: true
         		}
         	});
         		$('#callback__button').on('click', function() {
         		$.ajax({
         			url: 'index.php?route=extension/module/callback/send',
         			type: 'post',
         			dataType: 'json',
         			data: $("#callback__modal").serialize(),
         			success: function(json) {
         				if (json['error']) {
         					M.toast({html: '<i class="material-icons left">warning</i>' + json['error'], classes: 'toast-warning'});
         				}
         				if (json['success']) {
         					M.toast({html: '<i class="material-icons left">check</i>' + json['success'], classes: 'toast-success'});
         					$('#callback-telephone').val('').removeClass('valid');
         					$('#callback-telephone').parent().find('label').removeClass('active');
         										$('#callback-name').val('').removeClass('valid');
         					$('#callback-name').parent().find('label').removeClass('active');
         																				$('#callback-calltime').val('');
         					$('#callback-calltime').parent().find('label').removeClass('active');
         															$('#agreement-check-callback').prop('checked', false);
         										$('#callback__modal').modal('close');
         				}
         			}
         		});
         	});
         });

document.addEventListener("DOMContentLoaded", function(event) {
                     	$('.slick-slider').not('.slick-initialized').slick({
                     		infinite: true,
                     		autoplay: true,
                     		autoplaySpeed: 5000,
                     		slidesToShow: 1,
                     		adaptiveHeight: true,
                     		fade: true,
                     		cssEase: 'linear',
                     		dots: true,
                     		arrows: true
                     	});
                     });
					 
