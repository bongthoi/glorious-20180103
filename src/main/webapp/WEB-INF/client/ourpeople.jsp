<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

   
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="dist/fancybox/jquery.fancybox.js"></script>
 
<div ng-app="myApp" ng-controller="peopleCrtl">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" style="margin-left:0;">
            <!-- Content Header (Page header) -->
            <section class="content-header" style="height:190px;">
                <div class="title ">
                    <a class="">
                        OUR PEOPLE
                    </a>
                </div>
                <nav class="navbar wrap_center" id="mainmenu">
                    <ul class="carousel-indicators_custom nav navbar-nav" style="max-width: 900px;">
                        <!-- <li data-pactive="all" data-target="#myCarousel" data-slide-to="0" class="active">
                            All
                        </li> -->
                        <li data-pactive="directors" data-target="#myCarousel" data-slide-to="0" class="active">
                            DIRETORS
                        </li>
                        <li data-pactive="hr" data-target="#myCarousel" data-slide-to="1">
                            HR
                        </li>
                        <li data-pactive="it" data-target="#myCarousel" data-slide-to="2">
                            IT
                        </li>
                        <li data-pactive="business" data-target="#myCarousel" data-slide-to="3">
                            BUSINESS
                        </li>
                    </ul>
                </nav>

            </section>

            <!-- Main content -->
            <section class="content" style="min-height: 950px;">
                <div class="container">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
                        <!-- Indicators -->

						
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            
<!--                             <div class="item active">
                                <div class="row">
                                    <div class="col-md-3 col-xs-6" ng-repeat="person in myData">
                                        <div class="person_card wrap_center" style="width:100%;height:400px;background: transparent;">
                                            <div class="wrap" style="width: 200px;height: 400px;background: cadetblue;">
                                                <a data-fancybox="gallery" data-srcset="" data-caption="{{person.des}}" href="upload/people/{{person.img}}">
                                                    <img class="person_img" ng-src="upload/people/{{person.img}}" alt="">
                                                    <img class="display" ng-src="upload/people/{{person.img}}" alt="">
                                                    <div class="info">
                                                        <div class="name">{{person.name}}</div>
                                                        <div class="position">{{person.posittion}}</div>
                                                    </div>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
 -->                            
                            <div class="item active">
                                <div class="row">
                                    <div class="col-md-3 col-xs-6" ng-repeat="person in myData  | filter:{ department_name : 'directors' } ">
                                        <div class="person_card wrap_center" style="width:100%;height:400px;background: transparent;">
                                            <div class="wrap" style="width: 200px;height: 400px;background: cadetblue;">
                                                <a data-fancybox="gallery" data-srcset="" data-caption="{{person.des}}" href="upload/people/{{person.img}}">
                                                    <img class="person_img" ng-src="upload/people/{{person.img}}" alt="">
                                                    <img class="display" ng-src="upload/people/{{person.img}}" alt="">
                                                    <div class="info">
                                                        <div class="name">{{person.name}}</div>
                                                        <div class="position">{{person.posittion}}</div>
                                                    </div>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3 col-xs-6" ng-repeat="person in myData | filter:{department_name:'hr'}">
                                    
                                    
                                        <div class="person_card wrap_center" style="width:100%;height:400px;background: transparent;">
                                            <div class="wrap" style="width: 200px;height: 400px;background: cadetblue;">
                                                <a data-fancybox="gallery" data-srcset="" data-caption="{{person.des}}" href="upload/people/{{person.img}}">
                                                    <img class="person_img" ng-src="upload/people/{{person.img}}" alt="">
                                                    <img class="display" ng-src="upload/people/{{person.img}}" alt="">
                                                    <div class="info">
                                                        <div class="name">{{person.name}}</div>
                                                        <div class="position">{{person.posittion}}</div>
                                                    </div>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3 col-xs-6" ng-repeat="person in myData | filter:{department_name:'it'}">
                                    
                                    
                                        <div class="person_card wrap_center" style="width:100%;height:400px;background: transparent;">
                                            <div class="wrap" style="width: 200px;height: 400px;background: cadetblue;">
                                                <a data-fancybox="gallery" data-srcset="" data-caption="{{person.des}}" href="upload/people/{{person.img}}">
                                                    <img class="person_img" ng-src="upload/people/{{person.img}}" alt="">
                                                    <img class="display" ng-src="upload/people/{{person.img}}" alt="">
                                                    <div class="info">
                                                        <div class="name">{{person.name}}</div>
                                                        <div class="position">{{person.posittion}}</div>
                                                    </div>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3 col-xs-6" ng-repeat="person in myData | filter:{department_name:'business'}">
                                    
                                    
                                        <div class="person_card wrap_center" style="width:100%;height:400px;background: transparent;">
                                            <div class="wrap" style="width: 200px;height: 400px;background: cadetblue;">
                                                <a data-fancybox="gallery" data-srcset="" data-caption="{{person.des}}" href="upload/people/{{person.img}}">
                                                    <img class="person_img" ng-src="upload/people/{{person.img}}" alt="">
                                                    <img class="display" ng-src="upload/people/{{person.img}}" alt="">
                                                    <div class="info">
                                                        <div class="name">{{person.name}}</div>
                                                        <div class="position">{{person.posittion}}</div>
                                                    </div>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Left and right controls -->
                        <a style="display: none;" class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a style="display: none;" class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>

            </section>
            <!-- /.content -->
        </div>
    <!-- /.content-wrapper -->

</div>
   <script>
        var people =[{}];
        var desArray = [];
        var app = angular.module('myApp', []);
        app.controller('peopleCrtl', function($scope,$http) {
        	
        	$http.get("people/api/get_all")
            .then(function(response) {
            	console.log(response);
            	people=response.data;
                $scope.myData = people;
                people.forEach(myFunction);
               /* console.log(people);*/
               /* $scope.statuscode = response.status;
                $scope.statustext = response.statustext; */
            });
           /* people.forEach(myFunction);
            $scope.myData = people;*/
            
        	
        });
	
        function myFunction(person, index) {
          /*  console.log(person);*/
            var pString = "";
          console.log(person.story);
            /*(person.story).forEach(function(item) {
                pString += '<p>' + item + '</p>';
            });*/
            pString ='<p>'+ person.story +'</p>';
            var resultString = '<div class=" info-wrapper ">\
                        <div class="thumb ">' +
                '<img alt="Image " src="upload/people/' + person.img_content + '">\
                        </div>\
                        <div class="info ">\
                        <h3><span>' + person.name + '</span></h3>\
                        <em><span >' + person.posittion + '\
                        </span></em>\
                        </div>\
                        <div class="story ">\
                        <span>\
                        ' + pString + '\
                    </span>\
                </div>\
            </div>';
            //console.log(resultString);
            people[index].des = resultString;
            return resultString;
        }

    </script>
    