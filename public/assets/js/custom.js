var wth = $(window).width();
var baseUrl = location.pathname.substring(location.pathname.lastIndexOf("/") + 1);

$(document).scroll(function() {
	  var y = $(this).scrollTop();
	  if (y > 0) {
		$('.headerwrp').addClass("fixed");
		$('.slidenavwrp').addClass("fixed");
	  } else {
		$('.headerwrp').removeClass("fixed");
		$('.slidenavwrp').removeClass("fixed");
	  }
	  
	  if(wth < 1000){
		if (y > 0) {
			$('.logowrp').addClass("active");
			$('.tonnavwrp').addClass("active");
		  } else {
			$('.logowrp').removeClass("active");
			$('.tonnavwrp').removeClass("active");
		  }  
	  }
	  
	  
	  
	  if(baseUrl == "index.html" || baseUrl == ""){
		  var os_offsetop = $('.ourSpecialitieswrp').offset();
		  os_offsetop = os_offsetop.top - 200;
		  if (y > os_offsetop) {
			setTimeout(function(){ $('.osbox1').stop().removeClass("anim"); }, 500);
			setTimeout(function(){ $('.osbox2').stop().removeClass("anim"); }, 1000);
			setTimeout(function(){ $('.osbox3').stop().removeClass("anim"); }, 2000);
			setTimeout(function(){ $('.osbox4').stop().removeClass("anim"); anlr('.ourSpecialitieswrp .hanginganim .text');  }, 3000);		
			setTimeout(function(){$('.oursslider .sitem').removeClass('hanginganim'); $('.oursslider .sitem .text').removeAttr('style'); }, 4000);
		  }
		  
		  var rainbow_offsetop = $('.kaleidoscopewrp').offset().top - 100;
		  if(y > rainbow_offsetop){
			setTimeout(function(){ $('.rbbox1').stop().removeClass("anim"); }, 500);
			setTimeout(function(){ $('.rbbox2').stop().removeClass("anim"); anlr('.kaleidoscopewrp .hanginganim .text'); }, 1000);
			setTimeout(function(){$('.kaleidoscopewrp .sitem').removeClass('hanginganim'); $('.kaleidoscopewrp .sitem .text').removeAttr('style'); }, 3000);
		  }
		  
		  var about_offsetop = $('.aboutuswrp').offset().top - 100;
		  if(y > about_offsetop){
			setTimeout(function(){ $('.aboutuswrp .contentwrp').stop().removeClass("anim"); }, 1000);
		  }
	  }
});




$(window).on('load', function(){
	$('.circuleframe, .circuleframe2, .aboutbannimg').addClass('active');
});
$(document).ready(function(e) {	
	
	/*$('.ourSpecialitiess').find('.sitem').each(function(index){
		index += 1;
		if(index % 4 == 0){
		  $(this).addClass('list4');
		  if($(this).hasClass('list4')){
			  $('.ourSpecialitiess .list4').addClass('even');
		  }
		}
		
	});*/
	awardsSlider();
	
	function awardsSlider(){
		$(".awardsBtn:first a").addClass("active")
		$(".awardsSlider:first").addClass("active")
		$(".awardsBtn").each(function(index, element) {
            $(this).click(function(e) {
				e.preventDefault();
				$(this).find("a").addClass("active").parents(".awardsBtn").siblings().find("a").removeClass("active")
				var oClass = $(this).find("a").attr("data-showSlider")
				$("."+oClass).addClass("active").siblings().removeClass("active")
			});
        });
		
		}
	$('.creadm a').each(function(index, element) {
        $(this).click(function(e) {
            $('html, body').animate({scrollTop: $(".ourSpecialitieswrp").offset().top-40}, 2000);
        });
    });
	
	/*$('.ReadMoreh a').each(function(index, element) {
		var hcntwt, hcntht;		
        $(this).click(function(e) {
			hcntwt = ($(window).width() - $(this).parents('.htimeline-block').find('.htimeline-content').addClass('hmodelbox').width()) / 2;
			hcntht = ($(window).height() - $(this).parents('.htimeline-block').find('.htimeline-content').addClass('hmodelbox').height()) / 2;
			$('body').append('<div class="hmodeloverlay"></div>');			
            $(this).parents('.htimeline-block').find('.htimeline-content').addClass('hmodelbox').css({'left':hcntwt, 'top':hcntht});
        });
		$(window).resize(function(e) {
			hcntwt = ($(document).width() - $(this).parents('.htimeline-block').find('.hmodelbox').width()) / 2;
			hcntht = ($(window).height() - $(this).parents('.htimeline-block').find('.hmodelbox').height()) / 2;
			$('.hmodelbox').css({'left':hcntwt, 'top':hcntht});
		});
    });*/
	
	$('.sidenavbtn').click(function(e) {
		e.preventDefault();
		$('#sidenav').toggleClass('visible');
		$('body').css('overflow','hidden');
	});
	$('#sidenav a').click(function(e) {
		//e.preventDefault();
		$('#sidenav').toggleClass('visible');
		$('body').css({'overflow':'auto', 'overflow-x': 'hidden'});
	});
	$('#searchbtn, .ssubmitbtn').click(function(e) {
		e.preventDefault();
		$('#topsearchwrp').toggleClass('visible');
	});
	$('section, footer, .footerstikynav, .logowrp').click(function() {
		$('#topsearchwrp').removeClass('visible');
	});
	
	if($(window).width() < 980){ 
		$('.background img').each(function(index, element) {
			$(this).attr('src', 'assets/images/'+$(this).attr('data-t'));
		});
	}else{
		$('.background img').each(function(index, element) {
				$(this).attr('src', 'assets/images/'+$(this).attr('data-d'));
			});
	}
	
	if($(window).width() < 1200){ 
		$('.abmdscir .text').each(function(index, element) {
			$(this).stop().animate({width:$(this).parent().width(), height:$(this).parent().width()},600);
		});
	}
	$('.abawardswrp').each(function(index, element) {
		var setwh = $(this).width();
		$(this).stop().animate({height:setwh},600);
	});
	
	$(window).resize(function(e) {
		$('.abawardswrp').each(function(index, element) {
			var setwh = $(this).width();
			$(this).stop().animate({height:setwh},600);
		});
		if($(window).width() < 1200){ 
			$('.background img').each(function(index, element) {
				$(this).attr('src', 'assets/images/'+$(this).attr('data-t'));
			});
			$('.abmdscir .text').each(function(index, element) {
				$(this).stop().animate({width:$(this).parent().width(), height:$(this).parent().width()},600);
			});
		}else{
			$('.background img').each(function(index, element) {
				$(this).attr('src', 'assets/images/'+$(this).attr('data-d'));
			});
		}
	});
	
	
	var lastScrollTop = 0;
	$(window).scroll(function(event){
	   var st = $(this).scrollTop();
	   if (st > lastScrollTop){
		   $(".headerwrp, .slidenavwrp").addClass("active")
	   } else {
		  $(".headerwrp, .slidenavwrp").removeClass("active")
	   }
	   lastScrollTop = st;
	});
	
	
	
	$(".sidenavwrp").each(function(index, element) {
        var thisP = $(this)
		$("h2",this).click(function(e) {
			if(!$(this).parents('li').hasClass('active')){
				thisP.find('li.active').removeClass('active')
				$(this).parents('li').addClass('active')
				$(this).parents('.sidenavwrp').find('.subList').slideUp(1000)
				$(this).siblings('ul').slideDown(1200);
			}else{
				$(this).parents('li').removeClass('active');
				$(this).siblings('ul').slideUp(1200);
			}
        });
    });
	
	$(".openingwrpUL").find("h2").click(function(e) {
        if(!$(this).hasClass("active")){
				$(".openingwrpUL").find('h2').removeClass("active");
				$(this).addClass("active");
				$(".openingstaff_cont").slideUp(300)
				$(this).next(".openingstaff_cont").slideDown(300)
			}else{
				$(this).removeClass("active");
				$(this).next(".openingstaff_cont").slideUp(300)
				}
    });
	
	
	$('.ttheader .timewrp li a').each(function(index, element) {
        $(this).click(function(e) {
			if(!$(this).parent().hasClass('booked')){
				$('.ttheader .timewrp li').removeClass('active');
				$(this).parent().addClass('active');
				$('[data-popup="popup-2"]').delay(200).fadeIn(350); 
			}			
        });
    });
	$('#NewPatient').click(function(e) {
		$('.ttheader').delay(600).slideUp();
		$('.dconfirmawrp2').delay(600).slideDown();
		$('[data-popup="popup-2"]').delay(300).fadeOut(350);
	});
	$('#ExistingPatient').click(function(e) {
		$('.ttheader').slideUp();
		$('.dconfirmawrp').slideDown();
		$('[data-popup="popup-2"]').delay(300).fadeOut(350);
	});
	$('.btnPrevca').click(function(e) {
		$('.ttheader').slideDown();
		$('.dconfirmawrp').slideUp();
		$('.dconfirmawrp2').slideUp();
	});
	/* Start Confirm Appointment Form Validation */
	$('#txtOtp').on('input', function (event) { 
		this.value = this.value.replace(/[^0-9]/g, '');
	});
	$('#OtpSubmit').click(function(e) {
        if($('#txtOtp').val() != "1234"){
			$('#txtOtp').focus();
			$('#txtOtp').parents('li').append('<span class="error">Please Enter Vaild OTP!!!</span>');
			return false;
		}else{
			$('[data-popup="popup-1"]').fadeOut(350); 
			$('[data-popup="popup-2"]').fadeOut(350); 
			$('.dconfirmadresswrp').slideDown();
			$('.dconfirmawrp').slideUp();
			$('.dconfirmawrp2').slideUp();
		}
    });
	
	$('.ttheader2 ul li input').each(function(index, element) {
		$(this).keyup(function(e) {
			$(this).parent().find('span').remove('span');
		});
	});
	$('#txtMobile').on('input', function (event) { 
		this.value = this.value.replace(/[^0-9]/g, '');
	});
	$('#caSubmit').click(function() {
		var vn = $('#txtVisitorName'), ml = $('#txtMobile'), ed = $('#txtEmaiID');		
		if(vn.val() == ""){
			vn.focus();
			vn.parent().append('<span class="error">Please Enter Patient/Visitor Name* </span>');
			return false;
		}else if(ml.val() == ""){
			ml.focus();
			ml.parent().append('<span class="error">Please Enter Mobile Number* </span>');
			return false;
		}else if(!ml.val().match('[0-9]{10}')){
			ml.focus();
			ml.parent().append('<span class="error">Please Enter Valid Mobile Number* </span>');
			return false;
		}else if(ed.val() == ""){
			ed.focus();
			ed.parent().append('<span class="error">Please Enter Emai ID </span>');
			return false;
		}else if(!ed.val().match(/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/)){
			ed.focus();
			ed.parent().append('<span class="error">Please Enter Valid Emai ID </span>');
			return false;
		}else if(!$('#TNCA').parent('span').hasClass('selected')){
			$('#TNCA').parents('li').append('<span class="error">Please Select Terms & conditions apply</span>');
			return false;
		}else{
			$('[data-popup="popup-1"]').fadeIn(350); 
		}
	});
	$('#txtMobileSN').on('input', function (event) { 
		this.value = this.value.replace(/[^0-9]/g, '');
	});
	$('#caSubmitSN').click(function() {
		var vn = $('#txtVisitorNameSN'), ml = $('#txtMobileSN'), ed = $('#txtEmaiIDSN'), bd = $('#txtBirthDateSN'), mn = $('#txtMNameSN'), sc = $('#txtSourceSN');		
		if(vn.val() == ""){
			vn.focus();
			vn.parent().append('<span class="error">Please Enter Patient/Visitor Name* </span>');
			return false;
		}else if(ml.val() == ""){
			ml.focus();
			ml.parent().append('<span class="error">Please Enter Mobile Number* </span>');
			return false;
		}else if(!ml.val().match('[0-9]{10}')){
			ml.focus();
			ml.parent().append('<span class="error">Please Enter Valid Mobile Number* </span>');
			return false;
		}else if(ed.val() == ""){
			ed.focus();
			ed.parent().append('<span class="error">Please Enter Emai ID </span>');
			return false;
		}else if(!ed.val().match(/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/)){
			ed.focus();
			ed.parent().append('<span class="error">Please Enter Valid Emai ID </span>');
			return false;
		}else if(bd.val() == ""){
			bd.focus();
			/*bd.parent().append('<span class="error">Please Enter Birth Date* </span>');*/
			return false;
		}else if(mn.val() == ""){
			mn.focus();
			mn.parent().append('<span class="error">Please Enter Mother Name* </span>');
			return false;
		}else if(sc.val() == "Refer by Doctor"){
			sc.focus();
			sc.parent().append('<span class="error">Please Select Refer by Doctor </span>');
			return false;
		}else if(!$('#SNTNCA').parent('span').hasClass('selected')){
			$('#SNTNCA').parents('li').append('<span class="error">Please Select Terms & conditions apply</span>');
			return false;
		}else{
			$('[data-popup="popup-1"]').fadeIn(350); 
		}
	});
	/* End Confirm Appointment Form Validation */
	
	
	/* Start Custom Select */	
	$(".select option").each(function (index, element) {
		$(this).val($(this).val());
	});
	$(".select").each(function (index, element) {
		var thisVal = $('option:selected', this).text();
		$(this).siblings(".select-span").text(thisVal);
		$(this).on("change", function () {
			var thisVal = $('option:selected', this).text();
			$(this).siblings(".select-span").text(thisVal);
			$(this).parents('.selectbox').find('span.error').remove('span.error');
		});
	});
		
	$('#snext').click(function () {
        var $el = $('#snav li a.navSelected').removeClass('navSelected');
        var $next = $el.parent().next();
        $('#snav li').removeClass('active');
        if ($next.length == 0) $next = $('#snav li:first');

        $next.find('a.nav-button').addClass('navSelected');
        $next.find('a.nav-button').parent().addClass('active');
        window.location.href = $next.find('a.nav-button').attr('href');
    });


    $('#sprev').click(function () {
        var $el = $('#snav li a.navSelected').removeClass('navSelected');
        var $prev = $el.parent().prev();
        $('#snav li').removeClass('active');
        if ($prev.length == 0) $prev = $('#snav li:last');
        
        $prev.find('a.nav-button').addClass('navSelected');
        $prev.find('a.nav-button').parent().addClass('active');
        window.location.href = $prev.find('a.nav-button').attr('href');

    });
	if($(window).width() <= 980){
		$("#bg-video").remove('#bg-video');
	}
	/* 
	$('[data-fancybox]').fancybox({
		youtube : {
			controls : 0,
			showinfo : 0
		}
	});	*/
	
	/* Start Our Center List Navigation Changees */
	$('.ourcenterlist').parent().find('#slickNext').text($('.ourcenterlist .slick-current').next().attr('data-cityname'));
	$('.ourcenterlist').parent().find('#slickPrev').text($('.ourcenterlist .slick-current').prev().attr('data-cityname'));
	$('.ourcenterlist').parent().find('#slickNext').click(function(e) {
		$(this).text("");
		if($('.ourcenterlist .slick-current').next() != null){
        	$(this).text($('.ourcenterlist .slick-current').next().attr('data-cityname'));
		}
		if($('.ourcenterlist .slick-current').prev() != null){
			$('.ourcenterlist').parent().find('#slickPrev').text($('.ourcenterlist .slick-current').prev().attr('data-cityname'));
		}
    });
	$('.ourcenterlist').parent().find('#slickPrev').click(function(e) {
        $(this).text("");
		if($('.ourcenterlist .slick-current').next() != null){
        	$('.ourcenterlist').parent().find('#slickNext').text($('.ourcenterlist .slick-current').next().attr('data-cityname'));
		}
		if($('.ourcenterlist .slick-current').prev() != null){
			$(this).text($('.ourcenterlist .slick-current').prev().attr('data-cityname'));
		}
    });
	/* End Our Center List Navigation Changees */
	
	$('.oursslider .sitem::before').animate({'left': '10px'}, 1000).animate({'left': '-10px'}, 1000);
	$('#bg-video').videoBackground("assets/images/12396890.mp4");
	
	limittext(".data .text > p");
	if($(window).width() > 767){
		//setHeight($('.csrlist li'));		
	}
	
	/*if($(window).width() > 479){
		setHeight($('.eqhlist'));
	}
	
	$(window).resize(function(e) {
		setHeight($('.eqhlist'));
	});*/
	
});
$(function() {
    $('[data-popup-open]').on('click', function(e)  {
        var targeted_popup_class = jQuery(this).attr('data-popup-open');
        $('[data-popup="' + targeted_popup_class + '"]').fadeIn(350); 
        e.preventDefault();
    });
    $('[data-popup-close]').on('click', function(e)  {
        var targeted_popup_class = jQuery(this).attr('data-popup-close');
        $('[data-popup="' + targeted_popup_class + '"]').fadeOut(350); 
        e.preventDefault();
    });
});
$(document).ready(function(e) {
		$(window).resize(function(e) {
            resizeBox();
			fontSize();
        });
		resizeBox();
		fontSize()
		
		function fontSize(){
				var fontSizeH2 = $(".bannerCircle").width() * 76 / 100
				var fontSizeP = $(".bannerCircle").width() * 24/ 100				
				var fontSizeH3 = $(".bannerCircle").width() * 42 / 100
				var fontSizeH3mr = $(".bannerCircle").width() * 5 / 500
				//$(".bannerCircle h2").css("font-size", fontSizeH2+ "%")	
			}
		
		function resizeBox(){
				$(".bannerCircle").each(function(index, element) {
                    $(this).height($(this).width())
                });
			}
			
        
		msieversion();
		function msieversion() 
		{
			var ua = window.navigator.userAgent;
			var msie = ua.indexOf("MSIE ");
		
			if (msie > 0) // If Internet Explorer, return version number
			{
				//alert(parseInt(ua.substring(msie + 5, ua.indexOf(".", msie))));
				animationForIe();
			}
			else  // If another browser, return 0
			{
				//alert('otherbrowser');
				animationForOtherBrowser();
			}
		
			return false;
		}
		
		function animationForOtherBrowser(){
			$(".bannerCircle .st0").addClass("active")
				$(".bannerCircle .no").each(function(index, element) {
					$(this).click(function(e) {
						//$('.cdloader').fadeIn();
						var thisO = $(this);
						var indexOfNo = $(this).index();
						var bgImg = indexOfNo + 1
						setTimeout(function(){
								thisO.addClass("active").siblings(".no").removeClass("active");
								$(".zzwrp img").removeClass("active");
								$(".zz"+ (indexOfNo+1)).addClass("active");
								$(".data .text").removeClass("active");
								$(".tdata"+ (indexOfNo+1)).addClass("active");
								//$('.cdloader').fadeOut();
						}, 1200);
						$(".bg"+bgImg).addClass("active").siblings().removeClass("active");									
						$(".bannerCircle .st0").removeClass("active0 active1 active2").addClass("active"+indexOfNo);
					});
				});
			}
		
		
		function animationForIe(){			
			var dashoffset = 0;
			var totaldashArray = parseInt($(".bannerCircle .st0").css('stroke-dasharray'));
			
			var loadAnim = setInterval(function(){
				if((dashoffset+40) < 1604){
						dashoffset = dashoffset + 40
						$(".bannerCircle .st0").css('stroke-dashoffset', dashoffset)
					}else{
						clearInterval(loadAnim)
						}								
				}, 20)		
					
			$(".no").click(function(e) {
				var thisO = $(this);
				var offsetStop = $(this).index() * 401;				
				forwards(offsetStop, thisO)
			});
			
			function forwards(offsetStop, thisO, thisdata){
					var offVal = offsetStop;
					var active = thisO
					var datatext = thisdata
					//alert( dashoffset +" / "+ offVal +" / "+ (1604 - offVal) )
					var myAnimation = setInterval(function(){
							if(dashoffset > (1604 - offVal)){
									dashoffset = dashoffset - 1
									$(".bannerCircle .st0").css('stroke-dashoffset', dashoffset)
								}else if(dashoffset < (1604 - offVal)){
									dashoffset = dashoffset + 1
									$(".bannerCircle .st0").css('stroke-dashoffset', dashoffset)												
								}else{
									clearInterval(myAnimation)									
									active.addClass("active").siblings(".no").removeClass("active");
									//datatext.addClass("active").siblings(".tdata").removeClass("active");
								}
						},2)
				}
		}
    });
$(document).ready(function(e) {
		$(window).resize(function(e) {
            resizeBox2();
        });
		resizeBox2();		
		function resizeBox2(){
			$(".bannerCirclebox").each(function(index, element) {
				$(this).height($(this).width())
			});
		}
		msieversion2();
		function msieversion2(){
			var ua = window.navigator.userAgent;
			var msie = ua.indexOf("MSIE ");
		
			if (msie > 0){
				animationForIe2();
			}
			return false;
		}
		
		function animationForIe2(){			
			var dashoffset = 0;
			var totaldashArray = parseInt($(".bannerCirclebox .st0").css('stroke-dasharray'));			
			var loadAnim = setInterval(function(){
				if((dashoffset+40) < 1604){
						dashoffset = dashoffset + 40
						$(".bannerCirclebox .st0").css('stroke-dashoffset', dashoffset)
					}else{
						clearInterval(loadAnim)
						}								
				}, 2000)
		
		}
    });
/*$(document).on('load scroll', stickyFooter);
$(window).on('resize', stickyFooter);*/
$(document).ready(function () {
    $(window).on("scroll resize", function () {
        stickyFooter();
		limittext(".redefcontent > p");
    })
})

//(function ($) {
    $.fn.videoBackground = function(video, options) {
        var that = this;
        if(typeof options === 'undefined') options = {};

        //check and see if options were passed
        var settings = {};
        settings.autoplay = options.autoplay ? options.autoplay : 'autoplay';
        settings.muted = options.muted ? options.muted : 'muted';
        settings.loop = options.loop ? options.loop : 'loop';
        settings.fit = options.fit ? options.fit : 'fill';
        settings.src = options.src ? options.src : video;

        //append a video tag to the target element
        that.append($('<video>')
            .attr({'autoplay': settings.autoplay, 'muted': settings.muted, 'loop': settings.loop, 'src': settings.src})
            .css({'height': '100%', 'width': '100%', 'object-fit': settings.fit, 'overflow': 'hidden', 'position': 'absolute'}));

        //sets the initial video size
        resizeVideo(that);

        //updates the sizing as the window size changes
        $(window).on('resize', function(e) {
            that.css({'width': '100%', 'height': '100%'});
            resizeVideo(that);
        });

        //function to adjust the video size as needed
        function resizeVideo(vidElement) {
            vidElement.height(vidElement.height());
            vidElement.width(vidElement.width())
        }
    }
//}(jQuery));


 
 function getMobileOperatingSystem() {
   var userAgent = navigator.userAgent || navigator.vendor || window.opera;
 
    // Windows Phone must come first because its UA also contains "Android"
  if (/windows phone/i.test(userAgent)) {
   //return alert("Windows Phone")
  }
 
  if (/android/i.test(userAgent)) {
   //return alert("Android")
   headerAnimation()
  }
 
  // iOS detection from: http://stackoverflow.com/a/9039885/177710
  if (/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream) {
   //return alert("iOS")
  }
 
  //return alert("unknown")
  headerAnimation()
 }
 
 
 function headerAnimation(){
   var lastScrollTop = 0;
   $(window).scroll(function(event){
      var st = $(this).scrollTop();
      if (st > lastScrollTop){
       $(".headerwrp, .slidenavwrp").addClass("active")
      } else {
      $(".headerwrp, .slidenavwrp").removeClass("active")
      }
      lastScrollTop = st;
   });
  }
 function headerAnimationForMAC(){
   var lastScrollTop = 0;
   $(window).scroll(function(event){
      var st = $(this).scrollTop();
      if (st < lastScrollTop){
       $(".headerwrp, .slidenavwrp").removeClass("active")       
      } else {
      $(".headerwrp, .slidenavwrp").addClass("active")
      }
      if (lastScrollTop > -1){
        lastScrollTop = st;
      }else{
       lastScrollTop = 0
       }
   });
  }		
		
function limittext(id){
	if($(window).width() < 580){
		$(id).each(function(i){
			$(this).text($(this).text().substr(0,100)+'...');
		});
	}
	if($(window).width() < 400){
		$(id).each(function(i){
			$(this).text($(this).text().substr(0,40)+'...');
		});
	}	
}
function stickyFooter(){
    var $footer = $(".footerNavwrp");
    var $stickyFooter = $(".footerstikynav");
    var footerOffsetTop = $footer.offset().top;
    var viewportHeight = $(window).height();
    var scrollPosition = $(this).scrollTop() + viewportHeight - $stickyFooter.outerHeight();
    
    if(scrollPosition >= footerOffsetTop){
        $stickyFooter.fadeOut();
    }else{
        $stickyFooter.stop().slideDown(400);
    }
}
function anlr(anmhanid){
	$(anmhanid).stop().animate({'left': '10px'}, 1000).animate({'left': '-10px'}, 1000).stop().animate({'left': '10px'}, 1000).animate({'left': '0px'}, 1000).stop();
	//$(anmhanid).stop().animate({'left': '+=1%'}, 1000).animate({'left': '-=1%'}, 1000).stop().animate({'left': '+=1%'}, 1000).animate({'left': '-=1%'}, 1000).stop().animate({'left': '+=1%'}, 1000).animate({'left': '-=1%'}, 1000);
	/*$('.hanginganim').each(function(index, element) {
        $(this).find('.text').stop().animate({'left': '10px'}, 1000).animate({'left': '-10px'}, 1000).stop().animate({'left': '10px'}, 1000).animate({'left': '-10px'}, 1000).stop().animate({'left': '10px'}, 1000).animate({'left': '0px'}, 1000);
		$(this).find('.hangingcircule').stop().animate({'left': '+=1%'}, 1000).animate({'left': '-=1%'}, 1000).stop().animate({'left': '+=1%'}, 1000).animate({'left': '-=1%'}, 1000).stop().animate({'left': '+=1%'}, 1000).animate({'left': '-=1%'}, 1000);
    });	*/
	//anlr();
}



$(document).ready(function () {
	customCheckbox("confirm");
	$(".knowmore2").click(function(){
		 $("html, body").delay(1000).animate({ scrollTop: $('.top').offset().top }, 2000);
	});
	
	/*$(".view-map").click(function(){
		$(".mapshow-mob").slideToggle();
		
		});*/
		
	$(".learnacrwrp .questionwrp").each(function(index, element) {
        $(this).click(function(){
			$(this).toggleClass("sel");
			$(this).siblings().removeClass("sel");
			$(this).next(".answerwrp").slideToggle(600);
			$(".answerwrp").not($(this).next()).slideUp(600)	
		});
    });
	$(".aco-wapper .DoctorDesk-aco").each(function(index, element) {
        if($(this).hasClass("sel")){
			$(this).next(".infotext").slideDown();
		}
    });
	
 	$(".DoctorDesk-aco").click(function(){
		
        $(this).toggleClass("sel");
		$(this).siblings().removeClass("sel");
		$(this).next(".infotext").slideToggle();
		$(".infotext").not($(this).next()).slideUp()	
	});
	
	$(".uploadfile").each(function(index, element) {
        $(this).find(".inputfile").on("change",function(){
					var FullFileName = $(this).val();
					var FileName;
					var rxFile;			
				if(FullFileName.lastIndexOf("\\") > 0){
						 FileName = FullFileName.substr(FullFileName.lastIndexOf("\\"));
						 rxFile = FileName.split("\\")[1];
					}else{
						rxFile = FullFileName;
					}				
				$(this).closest(".uploadfile").find(".nameuploadfile").addClass("active").html(rxFile)
			})
    });
	
	$(".GenraelPediatrics-aco").each(function(index, element) {
        if($(this).hasClass("sel")){
			$(this).parents().addClass('active');
			$(this).next(".GenraelPediatrics-Infotext").slideDown();
		}
		$(this).click(function(e) {
			$('html,body').animate({scrollTop: $('.ospesltyaccord').offset().top-80});	
			$(".GenraelPediatrics-aco").parents().removeClass('active');
			$(this).parents().addClass('active');
			$(this).toggleClass("sel");
			$(this).siblings().removeClass("sel");
			$(this).next(".GenraelPediatrics-Infotext").slideDown();
			$(".GenraelPediatrics-Infotext").not($(this).next()).slideUp(function(){				
							
			})
			
        });		
    });
	
	$(".rightsec").each(function(index, element) {
       $(this).append('<div class="plus hidden-lg hidden-md">Read More <span>+</span></div> <div class="minus hidden-lg hidden-md">Read More <span>-</span></div>');   
        
		if($(this).find("p:visible").length > 1){   
			$(this).find(".minus").css("display","block");
			$(this).find(".plus").css("display","none");
	   }else{
			$(this).find(".minus").css("display","none");
			$(this).find(".plus").css("display","block");
		}
		
	   if($(this).find("p").length < 2){   
		    $(this).find(".plus, .minus").hide();
		 }
	  $(".rightsec").on("click",".plus",function(){
			$(this).hide().siblings(".minus").show();    
			$(this).siblings("p").show();
	   })
	  $(".rightsec").on("click",".minus",function(){
	    	$(this).hide().siblings(".plus").show();
			$(this).siblings("p").not("p:first").hide();
	   })
    });
	
		
});
function setHeight(col) {
    var $col = $(col);
    var $maxHeight = 0;
    $col.each(function () {
        var $thisHeight = $(this).outerHeight();
        if ($thisHeight > $maxHeight) {
            $maxHeight = $thisHeight;
        }
    });
    $col.height($maxHeight);
}
function customCheckbox(checkboxName){
	var checkBox = $('input[name="'+ checkboxName +'"]');
	$(checkBox).each(function(){
		$(this).wrap( "<span class='custom-checkbox'></span>" );
		if($(this).is(':checked')){
			$(this).parent().addClass("selected");
		}
	});
	$(checkBox).click(function(){
		$(this).parent().toggleClass("selected");
		$(this).parents('li').find('span.error').remove('span.error');
	});
}

/* Responcive Equal Height */
equalheight = function(container){

var currentTallest = 0,
     currentRowStart = 0,
     rowDivs = new Array(),
     $el,
     topPosition = 0;
 $(container).each(function() {

   $el = $(this);
   $($el).height('auto')
   topPostion = $el.position().top;

   if (currentRowStart != topPostion) {
     for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
       rowDivs[currentDiv].height(currentTallest);
     }
     rowDivs.length = 0; // empty the array
     currentRowStart = topPostion;
     currentTallest = $el.height();
     rowDivs.push($el);
   } else {
     rowDivs.push($el);
     currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);
  }
   for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
     rowDivs[currentDiv].height(currentTallest);
   }
 });
}

$(window).load(function() {
  equalheight('.eqhlist');
  equalheight('.eqhlist2');
  equalheight('.PressReleasesBox');
  equalheight('.pressrelease-sec');
    equalheight('.pediat-text');
	//equalheight('.ablpcell');
	
});


$(window).resize(function(){
  equalheight('.eqhlist');
  equalheight('.eqhlist2');
  equalheight('.PressReleasesBox');
  equalheight('.pressrelease-sec');
  equalheight('.pediat-text');
  //equalheight('.ablpcell');	
});



/*$("button").click(function() {
    $('html,body').animate({
        scrollTop: $(".second").offset().top},
        'slow');
});
*/
/*$('#easyPaginate').easyPaginate({
    paginateElement: '.PressReleasesBox',
    elementsPerPage: 9,
    effect: ''
});*/

