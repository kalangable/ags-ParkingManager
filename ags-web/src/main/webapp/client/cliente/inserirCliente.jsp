<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Incluir Cliente</title>

<s:head />
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="bootstrap/css/bootstrap-theme.min.css" />">
<link rel="stylesheet"
	href="<c:url value="bootstrap/css/datepicker.css" />">

</head>
<body>
	<div class="col-md-5">
		<div class="panel panel-default">
			<div class="panel-heading">Incluir Cliente</div>
			<div class="panel-body">
				<form role="form" action="SalvarCliente" method="post">
					<div class="form-group">
						<label for="placa">Código</label> <input type="text"
							name="clienteBean.cdCliente" id="cdCliente" class="form-control"
							placeholder="9999999" required>
					</div>
					<div class="form-group">
						<label for="descricao">Descrição</label> <input type="text"
							name="clienteBean.dsCliente" id="dsCliente" class="form-control"
							placeholder="Santana" required>
					</div>

					<div class="form-group">
						<label for="dtInicio">Data Início</label> <input
							class="datepicker" data-date-format="dd/mm/yyyy" id="dtInicio">
					</div>
					
					<div class="form-group">
						<label for="status">Status</label> <input type="text"
							name="clienteBean.status" id="status" class="form-control"
							placeholder="Ativo" required>
					</div>
					<div class="form-group">
						<label for="documento">Documento</label> <input type="text"
							name="clienteBean.documento" id="documento" class="form-control"
							placeholder="888.888.888.88" required>
					</div>

					<div class="form-group">
						<label for="documento">Telefone</label> <input type="text"
							name="clienteBean.telefone" id="telefone" class="form-control"
							placeholder="(99) 99999-9999" >
					</div>
					
					<div class="form-group">
						<label for="documento">Endereço</label> <input type="text"
							name="clienteBean.endereco" id="endereco" class="form-control"
							placeholder="R. das Palmeiras">
					</div>

					<div class="form-group">

						<button type="submit" class="btn btn-primary">Enviar</button>
						<button type="reset" class="btn btn-default">Limpar</button>

					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<c:url value="bootstrap/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="bootstrap/js/datepicker.js" />"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#dtInicio').datepicker();
			$('#dtFinal').datepicker();
		});
	</script>
</body>
</html>