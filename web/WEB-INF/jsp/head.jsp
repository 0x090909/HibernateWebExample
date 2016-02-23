<%-- 
    Document   : head
    Created on : 11-feb-2016, 11.46.15
    Author     : FSEVERI\gutu2891
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>
            ${title}
        </title>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="./resources/css/style.css" rel="stylesheet">
        <script type="text/javascript" src="./resources/js/jquery-2.2.0.min.js"></script>
        <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script type="text/javascript"></script>
    </head>
    <body>



        <div class="container">
            <div class="col-md-12">
                <div class="row profile">
                    <div class="page-title">
                        ${title}
                    </div>
                </div>
            </div>
            <div class="row profile">
                <div class="col-md-3">
                    <div class="profile-sidebar">
                        <!-- SIDEBAR USERPIC -->
                        <div class="profile-userpic">
                            <img src="http://blog.ramboll.com/fehmarnbelt/wp-content/themes/ramboll2/images/profile-img.jpg" style="width:200px;height:200px;" class="img-responsive" alt="">
                        </div>
                        <!-- END SIDEBAR USERPIC -->
                        <!-- SIDEBAR USER TITLE -->
                        <div class="profile-usertitle">
                            <div class="profile-usertitle-name">

                                ${sessione.getNome()}
                            </div>
                            <div class="profile-usertitle-job">
                                Developer
                            </div>
                            <a href="./logout.php" class="btn btn-danger">Logout</a>
                        </div>
                        <!-- END SIDEBAR USER TITLE -->
                        <!-- SIDEBAR BUTTONS -->
                        <!--<div class="profile-userbuttons">
                                <button type="button" class="btn btn-success btn-sm">Follow</button>
                                <button type="button" class="btn btn-danger btn-sm">Message</button>
                        </div>-->
                        <!-- END SIDEBAR BUTTONS -->
                        <!-- SIDEBAR MENU -->
                        <c:if test="${showDetail == 'yes'}">
                        <div class="profile-usermenu">
                            <ul class="nav">
                                <li >
                                    <a href="./mostraClienti">
                                        <i class="glyphicon glyphicon-list-alt"></i>
                                        Visualizza tabella </a>
                                </li>
                                <li >
                                    <a href="./modificaClienti">
                                        <i class="glyphicon glyphicon-edit"></i>
                                        Modifica clienti </a>
                                </li>
                                <li >
                                    <a href="./addCliente" >
                                        <i class=" glyphicon glyphicon-plus"></i>
                                        Aggiungi clienti </a>
                                </li>
                                </li>
                                <li >
                                    <a href="./rimuoviClienti">
                                        <i class="glyphicon glyphicon-trash"></i>
                                        Rimuovi clienti </a>
                                </li>
                            </ul>
                        </div>
                        </c:if>
                        <!-- END MENU -->
                    </div>
                </div>
                <!-- per vedere tutte le icone utilizzabili andate su http://glyphicons.com/ -->
