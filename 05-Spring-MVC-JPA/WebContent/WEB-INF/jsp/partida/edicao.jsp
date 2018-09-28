<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<tags:template titulo="Edi��o de Partida">

	<h1>Edi��o de Partida</h1>
	
	<c:url value="/partida/editar" var="churros"/>
	<form:form action="${churros }" method="post" commandName="partida">
		<form:hidden path="codigo"/>
		<div class="form-group">
			<form:label path="timeA">Time Casa</form:label>
			<form:input path="timeA" cssClass="form-control"/>
		</div>
		<div class="form-group">
			<form:label path="timeB">Time Visitante</form:label>
			<form:input path="timeB" cssClass="form-control"/>
		</div>
		<div class="form-group">
			<form:label path="data">Data</form:label>
			<form:input path="data" cssClass="form-control"/>
		</div>
		<input type="submit" value="Editar" class="btn btn-primary">
	</form:form>

</tags:template>