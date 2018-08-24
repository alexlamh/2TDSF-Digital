<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tags:template titulo="Lista de Jogadores">
	
	<h1>Lista de Jogadores</h1>
	
	<c:if test="${not empty msg }">
		<div class="alert alert-success">
			${msg }
		</div>
	</c:if>
	
	<table class="table">
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>Ativo</th>
			<th>Data Nascimento</th>
			<th></th>
		</tr>
		<c:forEach var="j" items="${jogadores }">
			<tr>
				<td>${j.codigo }</td>
				<td>${j.nome }</td>
				<td>${j.ativo }</td>
				<td>
					<fmt:formatDate value="${j.dataNascimento.time }"
						pattern="dd/MM/yyyy"/>
				</td>
				<td>
					<a href="<c:url value="/jogador/editar/${j.codigo }"/>">Editar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
</tags:template>





