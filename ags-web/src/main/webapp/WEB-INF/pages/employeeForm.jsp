<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>AGS</title>
	<meta name="generator" content="Bootply">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, maximum-scale=1">
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
		<div class="col-md-6">
			<div class="panel panel-info">
				<div class="panel-heading">Incluir Operador</div>
				<div class="panel-body">
					<s:form action="saveEmployee" method="post" id="validationForm" theme="bootstrap" cssClass="form-horizontal">
					    <s:textfield name="employee.firstName" value="%{employee.firstName}" label="%{getText('label.firstName')}"/>
					    <s:textfield name="employee.lastName" value="%{employee.lastName}" label="%{getText('label.lastName')}" />
					    <s:textfield name="employee.age" value="%{employee.age}" label="%{getText('label.age')}" size="20" cssClass="form-control"/>
					    
					   	<s:textfield name="employee.password" value="%{employee.password}" label="%{getText('label.password')}"/>
						<s:textfield name="employee.username" value="%{employee.username}" label="%{getText('label.username')}"/>
						
					    <s:hidden name="employee.employeeId" value="%{employee.employeeId}"/>
					    <s:submit value="%{getText('button.label.submit')}" cssClass="btn btn-primary"/>
					    <s:submit value="%{getText('button.label.cancel')}" action="index" cssClass="btn btn-default"/>
					</s:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>