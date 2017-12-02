

$(document).ready(function () {
    $(".button-collapse").sideNav();
    $('.modal').modal();
    $('.tooltipped').tooltip({ delay: 50 });

});

$('.carousel.carousel-slider').carousel({ fullWidth: true });
$('#modal1').modal('open');

function myMap() {
    var myCenter = new google.maps.LatLng(51.508742, -0.120850);
    var mapCanvas = document.getElementById("map");
    var mapOptions = { center: myCenter, zoom: 5 };
    var map = new google.maps.Map(mapCanvas, mapOptions);
    var marker = new google.maps.Marker({ position: myCenter });
    marker.setMap(map);
}