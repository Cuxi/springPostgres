<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<body>

	<h1>Contacts</h1>
	<p>
	<select name="clave" >
	<option value="">Selecciona uno</option>
	<c:forEach items="${contact}" var="contact">
		<option value="/show/${contact}">${contact}</option>
	</c:forEach>
	</select>
	</p>
</body>
</html>
