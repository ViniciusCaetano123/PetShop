<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sistema Cadastro</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
.navbar-inverse .navbar-nav>li>a {
    color: #fff;
}
.navbar-inverse .navbar-brand {
    color: #fff;
}
</style>
</head>
<body>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-2">
			    <div class="col-sm-2 sidenav hidden-xs">
			      <h2>Pet Shop</h2>
			      <ul class="nav nav-pills nav-stacked">
			        <li class="active"><a href="listaPrincipal">Home</a></li>
			        <li><a href="#"><span class="glyphicon glyphicon-user" style="color:#337ab7"></span style="color:#fff">${usuarioLogado.login}</a></li>
				      <li><a href="loginForm"><span class="glyphicon glyphicon-log-in" style="color:#337ab7"></span style="color:#fff"> Sair</a></li>
			     </ul>
			    </div>
		    </div>
		  
		    <div class="col-10">					
					<div class="col-sm-10">		
					<div style="padding:20px;">
					
											<h2>Consulta</h2>
											<br> 
																							
											<form action="alterarConsulta" method="post">	
											<input type="hidden" name="id" value="${consulta.id}" />	
												<div class="form-group">
													<label for="cli">Selecione um Cliente :</label>
													<select class="form-control" id="cli" name="idCliente">
													 <option value="${cliente.id}">${cliente.nome}</option>
														 <c:forEach items="${clientes}" var="clientee">
														 	<c:if test="${clientee.id != cliente.id}">
														 		<option value="${clientee.id}" >${clientee.nome}</option>
														 	</c:if>
														 </c:forEach>
													</select>
												</div>
																					
												<div class="form-group">
													<label for="cli">Selecione um Funcionario :</label>
													<select class="form-control" id="cli" name="idFuncionario">
													 <option value="${funcionario.id}">${funcionario.nome}</option>
														 <c:forEach items="${funcionarios}" var="funcionarioo">
														 	<c:if test="${funcionarioo.id != funcionario.id}">
														 		<option value="${funcionarioo.id}" >${funcionarioo.nome}</option>
														 	</c:if>
														 </c:forEach>
													</select>
												</div>
												<div class="form-group">
													<label for="Login">Descri��o</label>  
													<input type="text" class="form-control"  name="servico"  value="${consulta.servico}" >
												</div>
												<div class="form-group">
													<label for="Senha">Data</label>  
													<input type="text"  class="form-control" name="data"    value="${consulta.data}" >
												</div>
												
												</div>
											<input type="submit" class="btn btn-primary" value="Alterar" >
											<a href="removerConsulta?id=${consulta.id}" class="btn btn-primary" >Exlcuir</a>
											</form>
										</div>
					</div>
				</div>
			</div>
</body>
</html>