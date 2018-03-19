<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../pages/template/header.jsp" />
 

<style>


.intro {
  text-align: center;
}


.container {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  max-width: 100%;
  margin-left: auto;
  margin-right: auto;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.movie-card {
  background: #ffffff;
  box-shadow: 0px 6px 18px rgba(0, 0, 0, 0.1);
  width: 100%;
  max-width: 280px;
  margin: 2em;
  border-radius: 10px;
  display: inline-block;
}

.movie-header {
  padding: 0;
  margin: 0;
  max-height: 360px;
  width: 100%;
  display: block;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}


.manOfSteel {
  background: url("http://henrycavill.org/images/Films/2013-Man-of-Steel/posters/3-Walmart-Superman-a.jpg");
  background-size: cover;
}

.babyDriver {
  background: url("https://i0.wp.com/media2.slashfilm.com/slashfilm/wp/wp-content/images/baby-driver-poster.jpg");
  background-size: cover;
}

.theDarkTower {
  background: url("http://cdn.collider.com/wp-content/uploads/2017/03/the-dark-tower-poster.jpg");
  background-size: cover;
  background-position: 100% 100%;
}

.bladeRunner2049 {
  background: url("http://cdn.collider.com/wp-content/uploads/2017/05/blade-runner-2049-poster-ryan-gosling.jpeg");
  background-size: cover;
  background-position: 100% 80%;
}

.header-icon-container {
  position: relative;
}

.header-icon {
  width: 100%;
  height: 367px;
  line-height: 367px;
  text-align: center;
  vertical-align: middle;
  margin: 0 auto;
  color: #ffffff;
  font-size: 54px;
  text-shadow: 0px 0px 20px #6abcea, 0px 5px 20px #6ABCEA;
  opacity: .85;
}

.header-icon:hover {
  background: rgba(0, 0, 0, 0.15);
  font-size: 74px;
  text-shadow: 0px 0px 20px #6abcea, 0px 5px 30px #6ABCEA;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  opacity: 1;
}

.movie-card:hover {
  -webkit-transform: scale(1.03);
          transform: scale(1.03);
  box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.08);
}

.movie-content {
  padding: 18px 18px 24px 18px;
  margin-top: 30px;
}

.movie-content-header, .movie-info {
  display: table;
  width: 100%;
}

.movie-title {
  font-size: 24px;
  margin: 0;
  display: table-cell;
}



.movie-info {
  margin-top: 1em;
}

.info-section {
  display: table-cell;
  text-transform: uppercase;
  text-align: center;
}

.info-section:first-of-type {
  text-align: left;
}

.info-section:last-of-type {
  text-align: right;
}

.info-section label {
  display: block;
  color: rgba(0, 0, 0, 0.5);
  margin-bottom: .5em;
  font-size: 9px;
}

.info-section span {
  font-weight: 700;
  font-size: 11px;
}

@media screen and (max-width: 500px) {
  .movie-card {
    width: 95%;
    max-width: 95%;
    margin: 1em;
    display: block;
  }


}





.carousel-inner img {
    width: 100%;
    max-height: 460px
}

.carousel-control {
    width: 0;
}

.carousel-control.left,
.carousel-control.right {
	opacity: 1;
	filter: alpha(opacity=100);
	background-image: none;
	background-repeat: no-repeat;
	text-shadow: none;
}

.carousel-control.left span {
	padding: 40px 40px 40px 40px;

}

.carousel-control.right span {
	padding: 35px 80px 40px 40px;
}

.carousel-control .glyphicon-chevron-left, 
.carousel-control .glyphicon-chevron-right, 
.carousel-control .icon-prev, 
.carousel-control .icon-next {
	position: absolute;
	top: 45%;
	z-index: 5;
	display: inline-block;
}

.carousel-control .glyphicon-chevron-left,
.carousel-control .icon-prev {
	left: 0;
}

.carousel-control .glyphicon-chevron-right,
.carousel-control .icon-next {
	right: 0;
}

.carousel-control.left span,


.carousel-control.left span:hover,
.carousel-control.right span:hover {
	opacity: .7;
	filter: alpha(opacity=70);
}

/* Carousel Header Styles */
.header-text {
    position: absolute;
    top: 20%;
    left: 1.8%;
    right: auto;
    width: 96.66666666666666%;
    color: #fff;
}

.header-text h2 {
    font-size: 40px;
}

.header-text h2 span {
    background-color: #2980b9;
	padding: 10px;
}

.header-text h3 span {
	background-color: #000;
	padding: 15px;
}

.btn-min-block {
    min-width: 170px;
    line-height: 26px;
}

.btn-theme {
    color: #fff;
    background-color: transparent;
    border: 2px solid #fff;
    margin-right: 15px;
}

.btn-theme:hover {
    color: #000;
    background-color: #fff;
    border-color: #fff;
}

#carousel-example-generic{
    margin-top: -60px;
    margin-left: 10px;
    padding-left: 20px;
    padding-right: 30px;
}
.carousel{
    margin-left: 10px; 
}col-um {
  width: 40%;
  float: left;
}

.col-dois {
  width: 60%;
  float: right;
  font-size: 1em;
}
.col-tres {
  width: 350%;
  float: left;
  font-size: 1em;
}
</style>
<script>
function myFunction(id) {
    $("#modalfilme"+id).click();
}
</script>


	<div class="row">

    	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
			  	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
			    <div class="item active">
                                <img src="static/img/MulherMaravilha.jpg" alt=""/>
                    <!-- Static Header -->

			    </div>
			    <div class="item">
                                <img src="static/img/Vingadores.jpg" alt=""/>
			    	<!-- Static Header -->
                  
			    </div>
			    <div class="item">
                                <img src="static/img/panteraNegra.jpg" alt=""/>
			    	<!-- Static Header -->
			    </div>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    	<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    	<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div><!-- /carousel -->
	</div>

<div class="container">
<c:forEach var="u" items="${filmes}">
	<div class="movie-card" >
		<div class="movie-header ">
                    <img onclick="myFunction(${u.id})" src="${u.imagem}" alt="${u.nome}" width="100%" height="100%"/>

		</div><!--movie-header-->
		<div class="movie-content">
			
			<div class="movie-info">
				<div class="info-section">
                                    <label>uuid: ${u.uuid} </label>
					<span>${u.nome}</span>
				</div><!--date,time-->
				<div class="info-section">
					<label>Genero</label>
					<span>${u.genero}</span>
                                        <button id="modalfilme${u.id}" type="button" class="btn btn-warning" data-toggle="modal" data-target ="#CnfVerFilme${u.id}">Ver</button>
				</div><!--screen-->
                                

			</div>
		</div><!--movie-content-->
	</div><!--movie-card-->
        
    <div class="modal" tabindex="-1" id ="CnfVerFilme${u.id}" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

                <div class="modal-header" >
                    <h2 class="modal-title">${u.nome}</h2>
                </div>
                <div class="modal-body  row">
                    <div class="col-xs-6">
                        <img src="${u.imagem}" alt="${u.nome}" width="100%" height="100%"/>
                    </div>
     
                    <div class="col-xs-6">
                        <h4><b>Descrição:</b> ${u.descricao}</h4>
                        <h4><b>Gênero:</b> ${u.genero}</h4>
                    </div>


                </div>
            </div>
            </div>
        </div>

	
	</c:forEach>
    </div>




      
       

<c:import url="../pages/template/footer.jsp" />
