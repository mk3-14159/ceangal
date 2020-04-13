console.log("connection secured");

// navbar scroll animation
$(function () {
    $(window).on('scroll', function () {
        if ( $(window).scrollTop() > 10 ) {
            $('.navbar').addClass('active');
        } else {
            $('.navbar').removeClass('active');
        }
    });
});

var videoWidth = 1280;
var  video = $(".video-container video").attr("srcdesk");
if($(window).width() < 721) {
  videoWidth = 720;
  video = $(".header video").attr("srcmob");
}
$(".header video").attr("width", videoWidth).append('<source src="assets/mobile_compressed_twice.mp4"' + video + '"type="video/mp4" >');
// It is very usually that user touch screen  ...



// hero curtain scroll
//$(document).scroll(function(){
//    if ($(document).scrollTop() > 320 ) {
//        $('.advised').addClass('active');
//        $('.overlay').addClass('activetwo');
//    }
//    
//     else {
//         $('.advised').removeClass('active');
//          $('.overlay').removeClass('activetwo');
//     }
// 
// });
  
