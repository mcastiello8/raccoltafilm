<!doctype html>
<html lang="it">

	<head>
		<meta charset="utf-8">
		<title>Accedi</title>
	
		<!-- Common imports in pages -->
	 	<jsp:include page="./header.jsp" />
	
	
		 <!-- Custom styles for login -->
	    <link href="assets/css/signin.css" rel="stylesheet">
	
	</head>
	
	
	<body class="text-center bg-dark">
	    
		<main class="form-signin">
		  <form action="LoginServlet" method="post" novalidate="novalidate">
		  
	  		<div class="alert alert-danger alert-dismissible fade show ${errorMessage==null?'d-none': ''}" role="alert">
		 		 ${errorMessage}
			</div>
		  
		    <img class="mb-2" src="./assets/brand/ghostbusters-png-logo-0.png" alt="" width="100" height="80">
		    <h1 class="mb-3 fw-normal text-danger">Accedi</h1>
		
		    <div class="form-floating bg-secondary">
		      <input type="text" name="inputUsername" class="form-control bg-secondary" id="inputUsername" placeholder="username">
		      <label for="inputUsername">Email</label>
		    </div>
		    <div class="form-floating">
		      <input type="password" name="inputPassword" class="form-control bg-secondary" id="inputPassword" placeholder="Password">
		      <label for="inputPassword">Password</label>
		    </div>
		
		    <div class="checkbox mb-3">
		      <label class="text-white">
		        <input type="checkbox" value="remember-me"> Ricordami
		      </label>
		    </div>
		    <button class="w-100 btn btn-lg btn-outline-warning" type="submit">Accedi</button>
		    <p class="mt-5 mb-3 text-muted">&copy; 2023, Matteo Castiello</p>
		  </form>
		</main>
	
	    
	</body>


</html>