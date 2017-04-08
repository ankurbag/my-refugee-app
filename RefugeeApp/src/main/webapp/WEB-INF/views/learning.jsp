<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, shrink-to-fit=no, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>My Refugee Employer</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/simple-sidebar.css" rel="stylesheet">
<style>
.navbar {
	margin-bottom: 0 !important;
}

textarea {
	resize: none;
	width: 300px;
	min-width: 300px;
	max-width: 300px;
	height: 300px;
	min-height: 300px;
	max-height: 300px;
}
</style>
<script type="text/javascript">

function f1()
    {
       alert("f1 called");
	   data=document.getElementById("usrinput").value;
	   var sr=document.getElementById("source");
	   var source = sr[sr.selectedIndex].value;
	   var tr=document.getElementById("target");
	   var target = tr[tr.selectedIndex].value;
        alert(data);
		var xhr = new XMLHttpRequest();
       xhr.open('POST', "https://translation.googleapis.com/language/translate/v2?key=AIzaSyAuGysPooOlua-rugGoJFcVliD2npriSJo&source="+source+"&target="+target+"&q="+data+"", true);
	   xhr.setRequestHeader("Content-type","application/json");
	   xhr.send();
	   xhr.onreadystatechange = function processRequest() {
     		if (xhr.readyState == 4 && xhr.status == 200) {
			alert(xhr.responseText);
			//var response = JSON.parse(xhr.responseText);
			//alert(response);
		}
      }
	   
	   
    }

function send() {
   
	   data=document.getElementById("usrinput").value;
	   var sr=document.getElementById("source");
	   var source = sr[sr.selectedIndex].value;
	   var tr=document.getElementById("target");
	   var target = tr[tr.selectedIndex].value;

    $.ajax({
        url: "https://translation.googleapis.com/language/translate/v2?key=AIzaSyAuGysPooOlua-rugGoJFcVliD2npriSJo&source="+source+"&target="+target+"&q="+data+"",
        type: 'post',
        dataType: 'json',
        success: function (data) {
        	console.log(JSON.stringify(data));
        	
        	console.log(data['translations']);
        	
        	var parsedJson =  JSON.stringify(data);
        	parsedJson = $.parseJSON(parsedJson);
        	console.log(parsedJson.data.translations[0].translatedText);
            $('#translatedtxt').text(parsedJson.data.translations[0].translatedText);
        }
    });
}
 
</script>
</head>

<body>
	<nav class="navbar navbar-inverse"
		style="border-color: white; background-color: #3B5998">
		<div class="container-fluid">
			<div class="navbar-header">
				<button id="menu-toggle" type="button"
					class="menu-toggle navbar-toggle pull-left" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="menu-toggle navbar-brand" href="#" style="color: white">My
					Refugee Employer</a>
			</div>

		</div>
	</nav>
	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper"
			style="border-color: white; background-color: #5588EE">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="home" style="color: white">
						Legal Documentations </a></li>
				<li><a href="learning" style="color: white">Learning Portal</a>
				</li>
				<li><a href="jobportal" style="color: white">Job Portal</a></li>
				<li><a href="generalinfo" style="color: white">General Info</a>
				</li>
			</ul>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container">
				<div class="row">
					<div class="col-md-2 col-lg-2">&nbsp;</div>
					<div class="col-md-8 col-lg-8">&nbsp;</div>
					<div class="col-md-2 col-lg-2">&nbsp;</div>
				</div>
				<div class="row">
					<div class="col-md-2 col-lg-2">&nbsp;</div>
					<div class="col-md-8 col-lg-8">
						<h1 class="text-center">
							Learn French
							</h3>
							<div class="row">
								<div class="col-lg-12">&nbsp;</div>
								<!-- /.col-lg-6 -->
							</div>
							<!-- /.row -->
							<div class="row">
								<div class="col-lg-12">&nbsp;</div>
								<!-- /.col-lg-6 -->
							</div>
							<!-- /.row -->
							<div class="row">
								<div class="col-lg-6">
									<div class="panel panel-primary">
										<div class="panel-heading">Cheapest</div>
										<div class="panel-body">
											<table class="table table-hover">
												<thead>

													<tr>
														<th>Source Language : <select id="source">
																<option value="en">English</option>
																<option value="ar">Arabic</option>
																<option value="fr">French</option>
														</select>
														</th>
													</tr>


												</thead>
												<tbody>
													<tr>
														<td><textarea id="usrinput"></textarea></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>



								</div>
								<!-- /.col-lg-6 -->
								<div class="col-lg-6">
									<div class="panel panel-success">
										<div class="panel-heading">Hot-Seller</div>
										<div class="panel-body">
											<table class="table table-hover">
												<thead>

													<tr>
														<th>Target Language: <select id="target">
																<option value="en">English</option>
																<option value="ar">Arabic</option>
																<option value="fr">French</option>
														</select>
														</th>
													</tr>


												</thead>
												<tbody>
													<tr>
														<td><textarea id="translatedtxt"></textarea></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>

								</div>
								<!-- /.col-lg-6 -->

							</div>
							<!-- /.row -->
							<div class="row">
								<div class="col-lg-12">&nbsp;</div>
								<!-- /.col-lg-6 -->
							</div>
							<!-- /.row -->
							<div class="row">
								<div class="col-lg-12">
									<div class="row">
										<div class="col-lg-12">&nbsp;</div>
										<!-- /.col-lg-6 -->
									</div>
									<button class="btn btn-success btn-block" onclick="send()">Thank
										you</button>
								</div>
								<!-- /.col-lg-6 -->
							</div>
							<!-- /.row -->
					</div>
					<div class="col-md-2 col-lg-2">&nbsp;</div>
				</div>
				<div class="row">
					<div class="col-md-2 col-lg-2">&nbsp;</div>
					<div class="col-md-8 col-lg-8">&nbsp;</div>
					<div class="col-md-2 col-lg-2">&nbsp;</div>
				</div>

			</div>

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
