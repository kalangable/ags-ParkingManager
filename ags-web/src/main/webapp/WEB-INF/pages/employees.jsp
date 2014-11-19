<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<%-- <link href="<s:url value='/css/main.css'/>" rel="stylesheet" --%>
<!-- 	type="text/css" /> -->

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
</style>
</head>
<body>
	<div class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">AGS</a>
			</div>

			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Cadastro</a></li>
					<li><a href="#contact">Garagem</a></li>
					<li><a href="#contact">Faturamento</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#about">Sair</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<div class="container">
			<div class="panel panel">
				<h1>
					<s:text name="label.employees" />
				</h1>
				<s:url id="url" action="inputEmployee" />
				<a href="<s:property value="#url"/>">Adicionar novo funcionário</a>
				<br /> <br />
				<table class="table">
					<tr>
						<th style="background-color: #CDCDCD"><s:text
								name="label.firstName" /></th>
						<th style="background-color: #CDCDCD"><s:text
								name="label.lastName" /></th>
						<th style="background-color: #CDCDCD"><s:text
								name="label.age" /></th>
						<th style="background-color: #CDCDCD"><s:text
						 		name="label.options"></s:text></th>
					</tr>
					<s:iterator value="employees" status="status">
						<tr>
							<td class="list-group-item"><s:property value="firstName" /></td>
							<td class="list-group-item"><s:property value="lastName" /></td>
							<td class="list-group-item"><s:property value="age" /></td>
							<td class="list-group-item">
							
							<s:url action="inputEmployee" id="url">
							<s:param name="employee.employeeId" value="employeeId" />
							</s:url> <a href="<s:property value="#url"/>">Edit</a>
							&nbsp;&nbsp;&nbsp; 
							
							<s:url action="deleteEmployee" id="url">
								<s:param name="employee.employeeId" value="employeeId" />
							</s:url> <a href="<s:property value="#url"/>">Delete</a></td>
						</tr>
					</s:iterator>
				</table>
			</div>
		</div>
</body>
</html>