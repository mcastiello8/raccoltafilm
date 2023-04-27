<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
	<head> 
	
	<script>
		
				function validateForm() {
					var titolo = document.getElementById("titolo");
					var genere = document.getElementById("genere");
					var dataPubblicazione = document.getElementById("dataPubblicazione");
					var minutiDurata = document.getElementById("minutiDurata");
					var registaId = document.getElementById("regista.id");
					var formIsValid = true;
			
					if (titolo.value === "") {
						titolo.classList.add("is-invalid");
						formIsValid = false;
					} else {
						titolo.classList.remove("is-invalid");
					}
			
					if (genere.value === "") {
						genere.classList.add("is-invalid");
						formIsValid = false;
					} else {
						genere.classList.remove("is-invalid");
					}
					
					if (dataPubblicazione.value === "") {
						dataPubblicazione.classList.add("is-invalid");
						formIsValid = false;
					} else {
						dataPubblicazione.classList.remove("is-invalid");
					}
					
					if (minutiDurata.value === "") {
						minutiDurata.classList.add("is-invalid");
						formIsValid = false;
					} else {
						minutiDurata.classList.remove("is-invalid");
					}
					
					if (registaId.value === "") {
						registaId.classList.add("is-invalid");
						formIsValid = false;
					} else {
						registaId.classList.remove("is-invalid");
					}
			
					return formIsValid;
				}
				
			</script> 
			
		<meta charset="ISO-8859-1">
		<jsp:include page="../header.jsp" />
		<title>Modifica Film</title>
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
				        <h5>Modifica film</h5> 
				    </div>
				    <div class='card-body'>
		
							<form method="post" action="ExecuteEditFilmServlet" class="row g-3" onsubmit="return validateForm()" >
							
								<c:set var="filmInPagina" value="${requestScope.edit_film_attr}" />
							
								
								<div class="col-md-6">
									<label for="titolo" class="form-label">Titolo</label>
									<input value="${filmInPagina.titolo}" type="text" name="titolo" id="titolo" class="form-control" placeholder="Inserire il titolo" >
								<div class="invalid-feedback">
										Campo obbligatorio
									</div>
								</div>
								
								<div class="col-md-6">
									<label for="genere" class="form-label">Genere</label>
									<input value="${filmInPagina.genere}" type="text" name="genere" id="genere" class="form-control" placeholder="Inserire il genere" >
								<div class="invalid-feedback">
										Campo obbligatorio
									</div>
								</div>
							
								<div class="col-md-6">
									<label for="dataPubblicazione" class="form-label">Data di Pubblicazione</label>
	                        		<input value="${filmInPagina.dataPubblicazione}" class="form-control" id="dataPubblicazione" type="date" placeholder="dd/MM/yy" 
	                        				title="formato : gg/mm/aaaa"  name="dataPubblicazione"  >
								<div class="invalid-feedback">
										Campo obbligatorio
									</div>
								</div>
								
								<div class="col-md-6">
									<label for="minutiDurata" class="form-label">Durata (minuti)</label>
									<input value="${filmInPagina.minutiDurata}" type="number" class="form-control" name="minutiDurata" id="minutiDurata" placeholder="Inserire la durata" >
								<div class="invalid-feedback">
										Campo obbligatorio
									</div>
								</div>
								
								<div class="col-md-6">
									  <label for="regista.id">Regista</label>
									  <select class="form-select" id="regista.id" name="regista.id">
									    <option value="" selected> -- Selezionare una voce -- </option>
									    
									    <c:forEach items="${edit_regista_attr }" var="registaItem">
									    
									      <option value="${registaItem.id}" ${registaItem.id == filmInPagina.regista.id ?'selected':''} > ${registaItem.nome } ${registaItem.cognome }</option>
									    </c:forEach>
									    
									  </select>
									 <div class="invalid-feedback">
										Campo obbligatorio
									</div>
									</div>
									
									<input type="hidden" value="${edit_film_attr.id }" name="idFilm"></input>
									 
								
								<div class="col-12">
									<button type="submit" name="submit" value="submit" id="submit" class="btn btn-primary"  >Conferma</button>
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