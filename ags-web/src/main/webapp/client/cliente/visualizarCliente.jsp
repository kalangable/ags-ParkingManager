<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Registration Page</title>


<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="bootstrap/css/bootstrap-theme.min.css" />">

</head>
<body>
	<jsp:include page="/WEB-INF/pages/menuInicial.jsp" />
	<div class="modal fade" id="deletar" tabindex="-1" role="dialog"
		aria-labelledby="largeModal" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Deletar</h4>
				</div>
				<div class="modal-body">
					<h3>Tem certeza que deseja excluir o automóvel?</h3>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
					<s:push value="automovelBean">
						<a href='DeletarAutomovel?id=<s:property value="id"/>'
							class="btn  btn-danger">Deletar</a>
					</s:push>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="editar" tabindex="-1" role="dialog"
		aria-labelledby="largeModal" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Editar</h4>
				</div>
				<form role="form" action="AtualizarAutomovel" method="post">
					<div class="modal-body">
						<s:push value="automovelBean">
							<input type="hidden" name="automovelBean.id" id="id"
								value='<s:property value="id"/>'>
							<div class="form-group">
								<label for="placa">Placa</label> <input type="text"
									name="automovelBean.placa" id="placa" class="form-control"
									placeholder="XXX-9999" required
									value='<s:property value="placa"/>'>
							</div>
							<div class="form-group">
								<label for="descricao">Descrição</label> <input type="text"
									name="automovelBean.descricao" id="descricao"
									class="form-control" placeholder="Santana" required
									value='<s:property value="descricao"/>'>
							</div>
						</s:push>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
						<button type="reset" class="btn btn-default">Limpar</button>
						<button type="submit" class="btn btn-primary">Enviar</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<div class="panel panel-default">
		<div class="panel-heading">Visualizar Automóvel</div>
		<div class="panel-body">
			<s:push value="automovelBean">
				<table>
					<tr>
						<td>Placa:</td>
						<td><strong><s:property value="placa" /></strong></td>
					</tr>

					<tr>
						<td>Descrição:</td>
						<td><strong><s:property value="descricao" /></strong></td>
					</tr>

				</table>
			</s:push>
			<div class="form-group">
				<a href="ListaAutomovel" class="btn">Lista</a> <a href="#"
					class="btn  btn-primary" data-toggle="modal" data-target="#editar">Editar</a>
				<a href="#" class="btn  btn-danger" data-toggle="modal"
					data-target="#deletar">Deletar</a>
			</div>
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/JavaScript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script type="text/JavaScript"
		src="<c:url value="bootstrap/js/bootstrap.min.js" />"></script>


</body>
</html>