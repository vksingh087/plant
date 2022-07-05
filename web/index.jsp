<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PlantKarts</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
    </head>
    <body> 
        <div class="container-fluid">
            <div class="row">
                <%@include file="top.jsp" %> 
            </div>
                <%@include file="nav.jsp" %>
                <%@include file="slider.jsp" %>
                <div class="row mt-3">
                    <div class="card-deck">
                        <div class="card" style="width:18rem">
                            <img src="img/plantsforsell/croton.jpg"/>
                            <div class="card-body">
                                <h3>Croton</h3>
                                <p>Croton is indoor plant</p>
                                <p>Price: 100/- Per Plant</p>
                                <a href="buyplant.jsp?pid=1000" class="btn btn-danger">Buy</a>
                            </div>
                        </div>
                        <div class="card" style="width:18rem">
                            <img src="img/plantsforsell/Rubber-Plant.jpg"/>
                            <div class="card-body">
                                <h3>Rubber-Plant</h3>
                                <p>Rubber-Plant is indoor and outdoor plant</p>
                                <p>Price: 80/- Per Plant</p>
                                <a href="buyplant.jsp?pid=1001" class="btn btn-danger">Buy</a>
                            </div>
                        </div>
                        
                        <div class="card" style="width:18rem">
                            <img src="img/plantsforsell/cyrus.png"/>
                            <div class="card-body">
                                <h3>Cyrus</h3>
                                <p>Cyrus is outdoor plant</p>
                                <p>Price: 180/- Per Plant</p>
                                <a href="buyplant.jsp?pid=1002" class="btn btn-danger">Buy</a>
                            </div>
                        </div>
                         <div class="card" style="width:18rem">
                             <img src="img/plantsforsell/download.jpg"/>
                            <div class="card-body">
                                <h3>Aglaonema</h3>
                                <p>Aglaonema is outdoor plant</p>
                                <p>Price: 90/- Per Plant</p>
                                <a href="buyplant.jsp?pid=1003" class="btn btn-danger">Buy</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="card-deck">
                        <div class="card" style="width:18rem">
                            <img src="img/plantsforsell/croton.jpg"/>
                            <div class="card-body">
                                <h3>Croton</h3>
                                <p>Croton is indoor plant</p>
                                <p>Price: 100/- Per Plant</p>
                                <a href="" class="btn btn-danger">Buy</a>
                            </div>
                        </div>
                        <div class="card" style="width:18rem">
                            <img src="img/plantsforsell/Rubber-Plant.jpg"/>
                            <div class="card-body">
                                <h3>Rubber-Plant</h3>
                                <p>Rubber-Plant is indoor and outdoor plant</p>
                                <p>Price: 80/- Per Plant</p>
                                <a href="" class="btn btn-danger">Buy</a>
                            </div>
                        </div>
                        
                        <div class="card" style="width:18rem">
                            <img src="img/plantsforsell/cyrus.png"/>
                            <div class="card-body">
                                <h3>Cyrus</h3>
                                <p>Cyrus is outdoor plant</p>
                                <p>Price: 180/- Per Plant</p>
                                <a href="" class="btn btn-danger">Buy</a>
                            </div>
                        </div>
                         <div class="card" style="width:18rem">
                             <img src="img/plantsforsell/download.jpg"/>
                            <div class="card-body">
                                <h3>Aglaonema</h3>
                                <p>Aglaonema is outdoor plant</p>
                                <p>Price: 90/- Per Plant</p>
                                <a href="" class="btn btn-danger">Buy</a>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        
        
        
        
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
