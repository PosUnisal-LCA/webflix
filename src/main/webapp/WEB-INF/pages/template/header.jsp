<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    
    
    <link  href="<c:url value="/static/css/bootstrap.min.css"/>" rel="stylesheet" />


    
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script  src="<c:url value="/static/js/bootstrap.min.js"/>" ></script>
    <script  src="<c:url value="/static/js/jquery-3.3.1.min.js"/>" ></script>
    

   <!-- 
   <link href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
   <script src="webjars/jquery/3.2.1/jquery.min.js"></script>
   <script src="webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>-->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>

$(document).ready(function() {
  $('.li.active').removeClass('active');
  $('a[href="' + location.pathname + '"]').closest('li').addClass('active'); 
});
  
</script>
<style>
    .navbar-default .navbar-collapse, .navbar-default .navbar-form{
        background-color: #222222;
    }  
    .navbar-default .navbar-nav>li>a{
        color: #fff;
        font-size: 1.3em;
    }
    .navbar-default .navbar-brand{
        color: #fff;
        font-size: 1.5em;
    }
    .navbar-default .navbar-nav>li>a:hover{
        color: #F0776C;
    }
    .navbar-default .navbar-header>a:hover{
         color: #F0776C;
    }

</style>
<title>Webflix Unisal</title>
</head>
<body>

<!------ Include the above in your HEAD tag ---------->

<div class="container-fluid" >
    <div class="row" id="menu">
		<div class="col-md-12">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						 <span class="sr-only">Pagina Inicial</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
					</button> <a class="navbar-brand" href="<c:url value='/inicio'></c:url>">Pagina Inicial</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
                                                
						<li class="dropdown">
							 <a href="<c:url value='/listaFilmes'></c:url>" >Filmes</a>
						</li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
                                            <li>
                                                <a href="<c:url value='/listaUsuarios'></c:url>">Usuarios</a>
                                            </li>
                                            <li>          
                                                <a href="<c:url value='/logout'></c:url>">Logout</a>
                                            </li>
						
					</ul>
				</div>
				
			</nav>
		</div>
	</div>
</div>
	<div>
	<!--	<c:import url="../pages/logout.jsp" /> -->
	</div>
	<br/>
	<br/>
        
    </div>
</div>


         