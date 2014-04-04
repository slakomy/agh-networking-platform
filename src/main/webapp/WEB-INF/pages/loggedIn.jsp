<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="/css/font-awesome.css" rel="stylesheet">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome to TradeBook: ${username}</title>
    <link href="/css/loggedIn.css" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.css" rel="stylesheet">
    <!-- Awesome fonts -->
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <script src="<c:url value="/js/jquery-2.0.2js" />"></script>
    <script src="<c:url value="/js/bootstrap.js" />"></script>
    <script src="<c:url value="/js/loggedIn.js" />"></script>
</head>
<body>
<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container">
        <!-- gorny pasek -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/welcome">TraderB00k</a>
        </div>
        <!-- przycisk log out oraz informacja o zalogowanym uzytkowniku -->
        <div class="navbar-collapse collapse">
            <form class="navbar-form navbar-right" action="/j_spring_security_logout" method="POST">
                <div class="form-group text-muted">
                    <strong>Logged as: ${username} &nbsp</strong>
                </div>
                <button type="submit" class="btn btn-danger">Log out</button>
            </form>
        </div>
    </div>
</div>
<!-- Content -->
<div class="container">
    <div class="row well">
        <div class="col-md-2">
            <ul class="nav nav-pills nav-stacked well" id="tabs">
                <li class="active"><a data-toggle="tab" href="#home"><i class="fa fa-home"></i> Home</a></li>
                <li><a data-toggle="tab" href="#messages"><i class="fa fa-envelope"></i> Messages</a></li>
                <li><a data-toggle="tab" href="#profile"><i class="fa fa-user"></i> Profile</a></li>
                <li>
                    <c:url value="/j_spring_security_logout" var="logout" />
                    <a href="${logout}"><i class="fa fa-sign-out"></i> Logout</a>
                </li>
            </ul>
        </div>
        <div class="col-md-10">
            <div class="panel">
                <img class="pic img-circle" src="http://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/twDq00QDud4/s120-c/photo.jpg" alt="...">
                <div class="name"><small>${username}</small></div>
                <a href="#" class="btn btn-xs btn-primary pull-right" style="margin:10px;"><span class="glyphicon glyphicon-picture"></span> Change cover</a>
            </div>

            <br><br><br>
        </div>
    </div>
</div>
</body>
</html>
