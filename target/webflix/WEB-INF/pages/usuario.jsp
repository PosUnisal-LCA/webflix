<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../pages/template/header.jsp" />

<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>#</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Login</th>
				<th>Senha</th>
				<th>UUID</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="u" items="${usuarios}">
				<tr id="usuario_${u.id}">
					<td>${u.id}</td>
					<td>${u.nome}</td>
					<td>${u.email}</td>
					<td>${u.login}</td>
					<td>${u.senha}</td>
					<td>${u.uuid}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br/>

</div>

<c:import url="../pages/template/footer.jsp" />
