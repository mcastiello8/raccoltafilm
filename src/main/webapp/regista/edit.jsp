<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
	<head>
	<script>
		
				function validateForm() {
					var nome = document.getElementById("nome");
					var cognome = document.getElementById("cognome");
					var nickName = document.getElementById("nickName");
					var dataDiNascita = document.getElementById("dataDiNascita");
					var sesso = document.getElementById("sesso");
					var formIsValid = true;
			
					if (nome.value === "") {
						nome.classList.add("is-invalid");
						formIsValid = false;
					} else {
						nome.classList.remove("is-invalid");
					}
			
					if (cognome.value === "") {
						cognome.classList.add("is-invalid");
						formIsValid = false;
					} else {
						cognome.classList.remove("is-invalid");
					}
			
					if (nickName.value === "") {
						nickName.classList.add("is-invalid");
						formIsValid = false;
					} else {
						nickName.classList.remove("is-invalid");
					}
					if (sesso.value === "") {
						sesso.classList.add("is-invalid");
						formIsValid = false;
					} else {
						sesso.classList.remove("is-invalid");
					}
			
					if (dataDiNascita.value === "") {
						dataDiNascita.classList.add("is-invalid");
						formIsValid = false;
					} else {
						dataDiNascita.classList.remove("is-invalid");
					}
			
					return formIsValid;
				}
				
			</script> 
			
			
		<meta charset="ISO-8859-1">
		<jsp:include page="../header.jsp" />
		<title>Modifica Regista</title>
	</head>
	 <body class="d-flex flex-column h-100">
		   
		   		<!-- Fixed navbar -->
		   		<jsp:include page="../navbar.jsp"></jsp:include>
		    
				
				<!-- Begin page content -->
				<main class="flex-shrink-0">
				  <div class="container">
				  
				  		<div class="alert alert-danger alert-dismissible fade show ${errorMessage==null?'d-none':'' }" role="alert">
						  ${errorMessage}
						  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
						</div>
				  
				  <div class='card'>
					    <div class='card-header'>
					        <h5>Modifica l'elemento selezionato</h5> 
					    </div>
					    <div class='card-body'>
			
			
			
								<form method="post" action="ExecuteEditRegistaServlet" class="row g-3" novalidate="novalidate" onsubmit="return validateForm()" >
								
									<c:set var="registaInPagina" value="${requestScope.registaDaAggiornare}" />
								
									<div class="col-md-6">
										<label for="nome" class="form-label">Nome</label>
										<input type="text" name="nome" id="nome" class="form-control"
											value="${registaInPagina.nome}" required>
									</div>
								
									<div class="col-md-6">
										<label for="cognome" class="form-label">Cognome</label>
										<input type="text" name="cognome" id="cognome" class="form-control"   
											value="<c:out value="${registaInPagina.cognome}" />" required>
									</div>
									
									<div class="col-md-6">
										<label for="nickName" class="form-label">Nickname</label>
										<input type="text" name="nickName" id="nickName" class="form-control"   
											value="<c:out value="${registaInPagina.nickName}" />" required>
									</div>
								
									<div class="col-md-3">
									<label for="dataDiNascita" class="form-label">Data di Nascita</label>
                        			<input class="form-control" id="dataDiNascita" type="date" placeholder="dd/MM/yy"
                            			title="formato : gg/mm/aaaa"  name="dataDiNascita" value="${registaInPagina.dataDiNascita }"  >
								</div>
									
									<div class="col-md-3">
									<label for="sesso" class="form-label">Sesso</label>
								    <select class="form-select" id="sesso" name="sesso" required>
								    	<option value="" selected> - Selezionare - </option>
								      	<option value="MASCHIO" ${registaInPagina.sesso == 'MASCHIO'?'selected':''} >M</option>
								      	<option value="FEMMINA" ${registaInPagina.sesso == 'FEMMINA'?'selected':''} >F</option>
								    </select>
								</div>
									
								
									
								<div class="col-12">
								<input type="hidden" name="id" value="${registaInPagina.id}">
									<button type="submit" name="submit" value="submit" id="submit" class="btn btn-primary" >Modifica</button>
								</div>
							</form>
	  
					    
					    
						<!-- end card-body -->			   
					    </div>
					<!-- end card -->
					</div>		
						  
				    
				  <!-- end container -->  
				  </div>
				  
				</main>
				
				<!-- Footer -->
				<jsp:include page="../footer.jsp" />
		 </body>
</html>