<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<tags:template titulo="Vendas">
	<h1>Vendas</h1>
	
	<c:url value="/venda/editar" var="acao"/>
	<form:form action="${acao}" method="post" commandName="venda">
		<form:hidden path="codigo"/>
		<div class="form-group">
			<form:label path="cliente">Cliente</form:label>
			<form:input path="cliente" cssClass="form-control"/>
		</div>
		<div class="form-group">
			<form:label path="data">Data</form:label>
			<form:input path="data" cssClass="form-control"/>
		</div>
		<div class="form-group">
			<form:label path="valor">Valor</form:label>
			<form:input path="valor" cssClass="form-control"/>
		</div>
		<div class="form-group">
			<form:label path="descricao">Descrição</form:label>
			<form:textarea path="descricao" cssClass="form-control"/>
		</div>
		<input type="submit" value="Editar" class="btn btn-primary">
	</form:form>
	
</tags:template>