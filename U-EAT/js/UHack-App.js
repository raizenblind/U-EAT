$(document).ready(function () {
    $(".button-collapse").sideNav();
    $('.modal').modal();
    $('.tooltipped').tooltip({
        delay: 50
    });

    $('#notif-btn').dropdown({
        inDuration: 300,
        outDuration: 225,
        constrainWidth: false, // Does not change width of dropdown to that of the activator
        hover: false, // Activate on hover
        gutter: 0, // Spacing from edge
        belowOrigin: true, // Displays dropdown below the button
        alignment: 'right', // Displays dropdown with edge aligned to the left of button
        stopPropagation: true // Stops event propagation
    });

});

$(".button-collapse").sideNav();
$('.carousel.carousel-slider').carousel({
    fullWidth: true
});
$('#modal1').modal('open');

function myMap() {
    var myCenter = new google.maps.LatLng(51.508742, -0.120850);
    var mapCanvas = document.getElementById("map");
    var mapOptions = {
        center: myCenter,
        zoom: 5
    };
    var map = new google.maps.Map(mapCanvas, mapOptions);
    var marker = new google.maps.Marker({
        position: myCenter
    });
    marker.setMap(map);
}

