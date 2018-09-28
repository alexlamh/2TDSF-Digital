<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tags:template titulo="Lista de Partidas">
	
	<h1>Partidas registradas</h1>
	
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>
	
	<table class="table table-striped">
		<tr>
			<th>Data</th>
			<th>Jogo</th>
			<th>Realizado</th>
			<th></th>
		</tr>
		<c:forEach items="${partidas }" var="p">
			<tr>
				<td>
					<fmt:formatDate value="${p.data.time }"
						pattern="dd/MM/yyyy"/>
				</td>
				<td>${p.timeA } <b>${p.golsTimeA }</b>
					X
				<b>${p.golsTimeB }</b>  ${p.timeB }</td>
				<td>${p.realizado?"Sim":"Não" }</td>
				<td>
					<c:if test="${!p.realizado }">
						<!-- Button trigger modal -->
						<button onclick="codigoRealizar.value=${p.codigo };timeCasa.placeholder = 'Gols ${p.timeA}';timeVisitante.placeholder = 'Gols ${p.timeB }'" title="Realizar uma partida" type="button" class="btn btn-outline-success btn-sm" data-toggle="modal" data-target="#exampleModal1">
						  	<i class="fas fa-futbol"></i>
						</button>
						<a title="Editar uma partida" class="btn btn-outline-primary btn-sm" 
							href="<c:url value="/partida/editar/${p.codigo}"/>">
							<i class="fas fa-pencil-alt"></i>
						</a>
						<!-- Button trigger modal -->
						<button onclick="codigoExcluir.value = ${p.codigo}" title="Excluir uma partida" type="button" class="btn btn-outline-danger btn-sm" data-toggle="modal" data-target="#exampleModal">
						  	<i class="fas fa-trash-alt"></i>
						</button>
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
	

<!-- Modal Realizar partida-->
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmação</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <c:url value="/partida/realizar" var="pipoca"/>
      <form action="${pipoca }" method="post">
	      <div class="modal-body">
	        Deseja realmente realizar a partida?
	        <div class="row">
		        <div class="col">
			        <input type="text" name="golsA" class="form-control" id="timeCasa">        				    
			    </div>
			    <div class="col">
			    	<input type="text" name="golsB" class="form-control" id="timeVisitante">
			    </div>
		    </div>
	      </div>
	      <div class="modal-footer">
		        <input type="hidden" name="codigo" id="codigoRealizar">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
		        <button type="submit" class="btn btn-danger">Sim</button>
	      </div>
      </form>
    </div>
  </div>
</div>

<!-- Modal Excluir -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmação</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Deseja realmente excluir a partida?
      </div>
      <div class="modal-footer">
      	<c:url value="/partida/excluir" var="pipoca"/>
      	<form action="${pipoca }" method="post">
	        <input type="hidden" name="codigo" id="codigoExcluir">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
	        <button type="submit" class="btn btn-danger">Sim</button>
        </form>
      </div>
    </div>
  </div>
</div>

</tags:template>



