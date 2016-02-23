<%-- 
    Document   : editClienti
    Created on : 17-feb-2016, 13.32.19
    Author     : FSEVERI\gutu2891
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="head.jsp" />
<script>
    $(document).ready(function (){
       $("#sel").prop( "disabled", false );
       
    });
    
    function updateForm(id){
            $.get("./getUser",{piva: id}, function (res){
                 $("#piva").val(res['piva']);
                 $("#nome").val(res['nome']);
                 $("#cog").val(res['cognome']);
                 $("#address").val(res['indirizzo']);
                 $("form").show();
            });
        
    }
    
    $("#invia").click(function (){
        $.post("./updateUser", {piva: "123"}, function (res) {
            alert(res);
        });
    });
    
    
    </script>
<div class="col-md-9">
	<div class="profile-sidebar">
		<div class="profile-usermenu" style="margin-top:0px;padding:20px;">

			
			<p>Seleziona il cliente da modificare:		
                            <select  id="sel" class="form-control" onchange="updateForm(this.options[this.selectedIndex].value)">
					<option value=""></option>
                                        <c:forEach items="${clienti}" var="cliente">
                                            <option value="${cliente.piva}">${cliente.nome} ${cliente.cognome}</option>

                                        </c:forEach>

						
						
				</select><p>

                           <button id="invia"   class="btn btn-default">Modifica</button>
					<form style="display:none;"   role="form"  >
						<div class="form-group">
							<label for="piva">PIVA:</label>
							<input id="piva" type="text" class="form-control" name="piva" disabled value=" " placeholder="Enter piva">
						</div>
						<div class="form-group">
							<label for="name">Nome:</label>
							<input id="nome" type="text" class="form-control" name="name" value=" " placeholder="Enter name">
						</div>
						<div class="form-group">
							<label for="name">Cognome:</label>
							<input id="cog" type="text" class="form-control" name="surname" value=" " placeholder="Enter name">
						</div>
						
						<div class="form-group">
							<label for="address">Indirizzo:</label>
							<input id="address" type="text" class="form-control" name="address" value=" " placeholder="Enter address">
						</div>
						<input type="hidden" name="edit" value="go" />
						
					</form>

			</div>
		</div>
	</div>
</div>
</div>
<br>
<br>
</body></html>
