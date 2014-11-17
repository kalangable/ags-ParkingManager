<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>

<s:head />
<style type="text/css">
@import url(bootstrap/css/bootstrap-theme.min.css);
</style>
</head>
<body>
	<div class="content">
		<table class="automovelTable" cellpadding="5px">
			<tr>
				<th>Placa</th>
				<th>Descricao</th>
			</tr>
			<s:iterator value="listaAutomovel">
				<tr>
					<td><s:property value="placa" /></td>
					<td><s:property value="descricao" /></td>
				</tr>
			</s:iterator>
		</table>
	</div>
</body>
</html>