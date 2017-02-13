<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
	<meta charset="utf-8">

</head>
<body>
	<h1>Crear contacto:</h1>
	
	<form:form method="POST" action="/insert" commandName="contactInsert">
		<table>

			<tr>
				<td><form:label name="name">Name</form:label></td>
				<td><form:input name="name" /></td>
			</tr>
			<tr>
				<td><form:label name="address">Address</form:label></td>
				<td><form:input name="address" /></td>
			</tr>
			<tr>
				<td><form:label name="email">Email</form:label></td>
				<td><form:input name="email" /></td>
			</tr>
			<tr>
				<td><form:label name="telephone">Telephone</form:label></td>
				<td><form:input name="telephone" /></td>
			</tr>
			<tr>
				<td colspan="2">
				    	<input type="submit" value="Submit"/>
				</td>
				<td colspan="2">
					<input type="submit" id="cancel" value="Cancelar"/>
				</td>
			</tr>
	</form:form>
</body>
</html> 
