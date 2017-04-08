<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%
    // Set response content type
    response.setContentType("text/html");
    // Set spanish language code.
    response.setHeader("Content-Language", "es");
    String title = "En Español";

%>
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
    .goog-te-combo {
        font-size: 19px !important;
         width: 100px;
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
                    <a href="generalinfo" style="color:white">General Info</a>
                </li>
             </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div class="container">
		<div class="row">
			<div class="col-md-2 col-lg-2">&nbsp;</div>
			<div class="col-md-8 col-lg-8">&nbsp;</div>
			<div class="col-md-2 col-lg-2">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-md-2 col-lg-2">&nbsp;</div>
			<div class="col-md-8 col-lg-8">
			<!-- 
			<div id="google_translate_element"></div>
			
			
			

<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
				 -->
				 <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
				<h1 class="text-center">
					Select Language?
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
						<div class="col-lg-12">&nbsp;</div>
						<!-- /.col-lg-6 -->
					</div>
					<!-- /.row -->
					<div class="row">
						<div class="col-lg-12">
							<center><div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: 'ar,en,fr', layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL}, 'google_translate_element');
}
</script>
						</div></center>
						<!-- /.col-lg-6 -->
					</div>
					<!-- /.row -->
					<div class="row">
						<div class="col-lg-12">&nbsp;</div>
						<!-- /.col-lg-6 -->
					</div>
					<!-- /.row --><div class="row">
		<div class="col-md-2 col-lg-2">
		&nbsp;
		</div>
		<div class="col-md-8 col-lg-8">
		<h1 class="text-center">List of Legal Documents</h3>
			<div class="row">
			  <div class="col-lg-12">
				&nbsp;
			  </div><!-- /.col-lg-6 -->
			</div><!-- /.row --><div class="row">
			  <div class="col-lg-12">
				&nbsp;
			  </div><!-- /.col-lg-6 -->
			</div><!-- /.row -->
			<div class="row">
			  <div class="col-lg-6">
			  	<div class="panel panel-primary">
			      <div class="panel-heading">Most Important</div>
			      <div class="panel-body">
			      	<table class="table table-hover">
									<thead>

										<tr>
											<th>List of Documents</th>
											</tr>


									</thead>
									<tbody>
										<c:forEach var="doc" items="${docs1}">
											<tr>
												<td>${doc.title} <a href=${doc.url}>link</a></td>
												<%--<td>${travelPlan.lat}</td>
												<td>${travelPlan.lng}</td> --%>
										    </tr>
										</c:forEach>

									</tbody>
						</table>
			      </div>
			    </div>
								
								
			    
			  </div><!-- /.col-lg-6 -->
			  <div class="col-lg-6">
			  <div class="panel panel-success">
			      <div class="panel-heading">Hot-Seller</div>
			      <div class="panel-body">
			      	<table class="table table-hover">
									<thead>

										<tr>
											<th>List of Documents</th>
										</tr>


									</thead>
									<tbody>
										<c:forEach var="doc" items="${docs}">
											<tr>
												<td>${doc.title} <a href=${doc.url}>link</a></td>
												<%--<td>${travelPlan.lat}</td>
												<td>${travelPlan.lng}</td> --%>
										    </tr>
										</c:forEach>

									</tbody>
						</table>
			      </div>
			    </div>
			    
			  </div><!-- /.col-lg-6 -->
			  
			</div><!-- /.row -->
			<div class="row">
			  <div class="col-lg-12">
				&nbsp;
			  </div><!-- /.col-lg-6 -->
			</div><!-- /.row -->
			<div class="row">
			  <div class="col-lg-12">
				<form class="form-inline">
				
							
				<div class="row">
				  <div class="col-lg-12">
					&nbsp;
				  </div><!-- /.col-lg-6 -->
				</div>
			  </form>
			  </div><!-- /.col-lg-6 -->
			</div><!-- /.row -->
			
		</div>
		<div class="col-md-2 col-lg-2">
		&nbsp;
		</div>
	</div>
			</div>
			<div class="col-md-2 col-lg-2">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col-md-2 col-lg-2">&nbsp;</div>
			<div class="col-md-8 col-lg-8">&nbsp;</div>
			<div class="col-md-2 col-lg-2">&nbsp;</div>
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
