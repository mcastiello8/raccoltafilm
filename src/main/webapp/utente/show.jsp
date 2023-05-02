<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="it" class="h-100">
<head>

<!-- Common imports in pages -->
<jsp:include page="../header.jsp" />

<title>Visualizza Elemento</title>

</head>
<body class="d-flex flex-column h-100">

	<!-- Fixed navbar -->
	<jsp:include page="../navbar.jsp"></jsp:include>


	<!-- Begin page content -->
	<main class="flex-shrink-0">
		<div class="container">

			<div class='card'>
				<div class='card-header'>
					<h5>Visualizza dettaglio</h5>
				</div>


				<div class='card-body'>
					<dl class="row">
						<dt class="col-sm-3 text-right">Id:</dt>
						<dd class="col-sm-9">${show_utente_attr.id}</dd>
					</dl>

					<dl class="row">
						<dt class="col-sm-3 text-right">username:</dt>
						<dd class="col-sm-9">${show_utente_attr.username}</dd>
					</dl>

					<dl class="row">
						<dt class="col-sm-3 text-right">Cognome:</dt>
						<dd class="col-sm-9">${show_utente_attr.cognome}</dd>
					</dl>

					<dl class="row">
						<dt class="col-sm-3 text-right">nome:</dt>
						<dd class="col-sm-9">${show_utente_attr.nome}</dd>
					</dl>

					<dl class="row">
						<dt class="col-sm-3 text-right">stato:</dt>
						<dd class="col-sm-9">${show_utente_attr.stato}</dd>
					</dl>
					
					<c:forEach items="${show_utente_attr.ruoli }" var="ruoliItem">
					<dl class="row">
						<dt class="col-sm-3 text-right">ruoli</dt>
						<dd class="col-sm-9">${ruoliItem.descrizione}</dd>
					</dl>
					</c:forEach>
					
					
					<dl class="row">
							  <dt class="col-sm-3 text-right">dateCreated:</dt>
							  <dd class="col-sm-9">
							  	<fmt:parseDate value="${show_utente_attr.dateCreated}" pattern="yyyy-MM-dd" var="localDateToBeParsed" type="date"/>
								<fmt:formatDate pattern="dd/MM/yyyy" value="${localDateToBeParsed}" />
							  </dd>
					    	</dl>
				</div>			    	
				<div class='card-footer'>
					<a href="${pageContext.request.contextPath}/admin/ExecuteVisualizzaUtenteServlet"
						class='btn btn-outline-secondary' style='width: 80px'> <i
						class='fa fa-chevron-left'></i> Back
					</a>
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
