<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<html>
<head>
	<meta charset="utf-8">

</head>
<body>
	<h1>Crear contacto:</h1>
	
	<form method="POST" action="/insert">
		<table>

			<tr>
				<td><label name="name">Name<label></td>
				<td><input name="name" /></td>
			</tr>
			<tr>
				<td><label name="address">Address</label></td>
				<td><input name="address" /></td>
			</tr>
			<tr>
				<td><label name="email">Email</label></td>
				<td><input name="email" /></td>
			</tr>
			<tr>
				<td><label path="telephone">Telephone</label></td>
				<td><input name="telephone" /></td>
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
