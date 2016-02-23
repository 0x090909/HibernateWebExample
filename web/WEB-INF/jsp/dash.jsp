<%-- 
    Document   : dash
    Created on : 11-feb-2016, 11.38.50
    Author     : FSEVERI\gutu2891
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="head.jsp" />
    <body>
    <c:if test="${loggedIn == 0}">
        <c:redirect url="/"></c:redirect>
    </c:if>
       
<div class="col-md-9">
	<div class="profile-sidebar">
		<div class="profile-usermenu" style="margin-top:0px;">
			<ul class="nav">
				<li >
					<a href="./mostraClienti">
						<i class="glyphicon glyphicon-list-alt"></i>
						Visualizza tabella </a>
					</li>
					<li>
						<a href="./modificaClienti">
							<i class="glyphicon glyphicon-edit"></i>
							Modifica clienti </a>
						</li>
						<li>
							<a href="./addCliente" >
								<i class=" glyphicon glyphicon-plus"></i>
								Aggiungi clienti </a>
							</li>
							<li>
								<a href="./rimuoviClient">
									<i class="glyphicon glyphicon-trash"></i>
									Rimuovi clienti </a>
								</li>
						<!--<li>
							<a href="#" target="_blank">
							<i class="glyphicon glyphicon-font"></i>
							Font Size </a>
						</li>

						<li>
							<a href="#" target="_blank">
							<i class="glyphicon glyphicon-envelope"></i>
							Messages </a>
						</li>
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-folder-open"></i>
							Archive </a>
						</li>-->
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<br>

</body></html>
