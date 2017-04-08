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
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                      <h1>Welcome</h1>
                      <p>This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.</p>
                        <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>
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
