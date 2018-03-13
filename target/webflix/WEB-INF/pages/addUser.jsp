<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../pages/template/header.jsp" />

<div>
    <form class="form-group" action="salvarUsuario" method="post">
        <div class="form-group">
            <input type="text" placeholder="nome" name="nome" class="form-control" required="required"/>
        </div>
        <div class="form-group">
            <input type="text" placeholder="email" name="email" class="form-control" required="required"/>
        </div>
        <div class="form-group">
            <input type="text" placeholder="login" name="login" class="form-control" required="required"/>
        </div>
        <div class="form-group">
            <input type="text" placeholder="senha" name="senha" class="form-control" required="required"/>
        </div>
        <br/>
		<button type="submit" class="btn btn-success">Salvar</button>
    </form>
</div>


<c:import url="../pages/template/footer.jsp" />
