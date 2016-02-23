<%-- 
    Document   : clienti
    Created on : 11-feb-2016, 11.55.31
    Author     : FSEVERI\gutu2891
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<jsp:include page="head.jsp" />
    <body>
    <c:if test="${loggedIn == 0}">
        <c:redirect url="/"></c:redirect>
    </c:if>
       
		<div class="col-md-9">
            <div class="profile-sidebar">
			  <div  style="margin: 0 auto; text-align:center; margin-top:0px;padding:20px;">
					<table class="table">
						<tr>  <th>PIVA</th> <th>Nome</th> <th>Cognome</th>  <th>Indirizzo</th></tr>
                                              
                                                 <c:forEach items="${clienti}" var="cliente">
        <tr>
          <td><c:out value="${cliente.piva}" /></td> 
          <td><c:out value="${cliente.nome}" /></td> 
          <td><c:out value="${cliente.cognome}" /></td> 
          <td><c:out value="${cliente.indirizzo}" /></td> 
        </tr>
      </c:forEach>	
					</table>
                              	</ul>
				</div>
            </div>
		</div>
	</div>
</div>
<br>
<br>
                            
                        </body></html>
