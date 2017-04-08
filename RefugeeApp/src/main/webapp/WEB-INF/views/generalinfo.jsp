<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>My Refugee Employer</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/simple-sidebar.css" rel="stylesheet">
<style>
.navbar{
       margin-bottom: 0!important;
    }
</style>
</head>

<body>
<nav class="navbar navbar-inverse" style="border-color:white;background-color:#3B5998">
  <div class="container-fluid">
    <div class="navbar-header">
    <button id="menu-toggle" type="button" class="menu-toggle navbar-toggle pull-left" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
       <a class="menu-toggle navbar-brand" href="#" style="color:white">My Refugee Employer</a>
     </div>
      <div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: 'ar,en,fr', layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL}, 'google_translate_element');
}
</script>
    
  </div>
</nav>
<div id="wrapper" >

        <!-- Sidebar -->
        <div id="sidebar-wrapper"  style="border-color:white;background-color:#5588EE">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="home" style="color:white">
                        Legal Documentations
                    </a>
                </li>
                <li>
                    <a href="learning" style="color:white">Learning Portal</a>
                </li>
                <li>
                    <a href="jobportal" style="color:white">Job Portal</a>
                </li>
                <li>
                    <a href="generalinfo" style="color:white">Jobs in France</a>
                </li>
                 <li>
                   
                </li>
             </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                      <h1>New Job postings</h1>
                    	<div id="map" style="width:100%;height:340px;"></div>
                    	<script>
            function myMap() {
                var mapCanvas = document.getElementById("map");
                var myCenter = new google.maps.LatLng(47.2276, 4.537);
                var mapOptions = {center: myCenter, zoom: 5};
                var map = new google.maps.Map(mapCanvas, mapOptions);
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(48.8566, 2.3522),
                    animation: google.maps.Animation.BOUNCE

                });
                var marker2 = new google.maps.Marker({
                    position: new google.maps.LatLng(45.8566, 5.3522),
                    animation: google.maps.Animation.BOUNCE

                });
				 var marker3 = new google.maps.Marker({
	                    position: new google.maps.LatLng(43.2965, 5.3698),
	                    animation: google.maps.Animation.BOUNCE

	                });
				 var marker4 = new google.maps.Marker({
	                    position: new google.maps.LatLng(44.8378, 0.5792),
	                    animation: google.maps.Animation.BOUNCE

	                });
				 var marker5 = new google.maps.Marker({
	                    position: new google.maps.LatLng(49.1829, 0.3707),
	                    animation: google.maps.Animation.BOUNCE

	                });
				 var marker6 = new google.maps.Marker({
	                    position: new google.maps.LatLng(43.0915, 0.0457),
	                    animation: google.maps.Animation.BOUNCE

	                });
				 var marker7 = new google.maps.Marker({
	                    position: new google.maps.LatLng(45.7640, 4.8357),
	                    animation: google.maps.Animation.BOUNCE

	                });
                var infowindow = new google.maps.InfoWindow({
                    content: "800 Jobs posted"
                });
                var infowindow1 = new google.maps.InfoWindow({
                    content: "70 Jobs posted"
                });
                var infowindow2 = new google.maps.InfoWindow({
                    content: "65 Jobs posted"
                });
                var infowindow3 = new google.maps.InfoWindow({
                    content: "60 Jobs posted"
                });
                var infowindow4 = new google.maps.InfoWindow({
                    content: "44 Jobs posted"
                });
                var infowindow5 = new google.maps.InfoWindow({
                    content: "22 Jobs posted"
                });
                var infowindow6 = new google.maps.InfoWindow({
                    content: "10 Jobs posted"
                });
                var infowindow7 = new google.maps.InfoWindow({
                    content: "5 Jobs posted"
                });
                
                marker.setMap(map);
                marker2.setMap(map);
                marker3.setMap(map);
                marker4.setMap(map);
                marker5.setMap(map);
                marker6.setMap(map);
                marker7.setMap(map);

                google.maps.event.addListener(marker, 'mouseover', function () {
                    infowindow.open(map, marker);
                });
                google.maps.event.addListener(marker, 'mouseout', function () {
                    infowindow.close(map, marker);
                });
                google.maps.event.addListener(marker2, 'mouseover', function () {
                    infowindow2.open(map, marker2);
                });
                google.maps.event.addListener(marker2, 'mouseout', function () {
                    infowindow2.close(map, marker2);
                });
                google.maps.event.addListener(marker3, 'mouseover', function () {
                    infowindow3.open(map, marker3);
                });
                google.maps.event.addListener(marker3, 'mouseout', function () {
                    infowindow3.close(map, marker3);
                });
                google.maps.event.addListener(marker4, 'mouseover', function () {
                    infowindow4.open(map, marker4);
                });
                google.maps.event.addListener(marker4, 'mouseout', function () {
                    infowindow4.close(map, marker4);
                });
                google.maps.event.addListener(marker5, 'mouseover', function () {
                    infowindow5.open(map, marker5);
                });
                google.maps.event.addListener(marker5, 'mouseout', function () {
                    infowindow5.close(map, marker5);
                });
                google.maps.event.addListener(marker6, 'mouseover', function () {
                    infowindow6.open(map, marker6);
                });
                google.maps.event.addListener(marker6, 'mouseout', function () {
                    infowindow6.close(map, marker6);
                });
                google.maps.event.addListener(marker7, 'mouseover', function () {
                    infowindow7.open(map, marker7);
                });
                google.maps.event.addListener(marker7, 'mouseout', function () {
                    infowindow7.close(map, marker7);
                });
                // Zoom to 9 when clicking on marker
                google.maps.event.addListener(marker, 'click', function () {
                    map.setZoom(9);
                    map.setCenter(marker.getPosition());
                    window.setTimeout(function () {
                        map.setZoom(pos);
                    }, 3000);
                });
            }

        </script>
           <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBTQ-lTSdMbmzpQsQ4wZ72O7lXgGHGD4iU&callback=myMap"></script>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $(".menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>

</html>
