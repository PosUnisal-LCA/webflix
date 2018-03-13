<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../pages/template/header.jsp" />


<form class="form-group" action="salvarFilme" method="post">
    <div class="form-group">
        <label>Filme</label>
        <input type="text" placeholder="nome" name="nome" class="form-control" required="required"/>
    </div>

    <div class="form-group">
        <label>Poster</label>
        <input type="text" placeholder="imagem" name="imagem" class="form-control" required="required"/>
    </div>

    <div class="form-group">
        <label>Descricao</label>
        <input type="text" placeholder="descricao" name="descricao" class="form-control" required="required"/>
    </div>
    <select class="form-control" id="genero" name="genero">
        <c:forEach var="g" items="${genero}">
            <option>${g}</option>
        </c:forEach>

    </select>
    <br/>
    <button type="submit" class="btn btn-success">Salvar</button>
</form>
</div>


<c:import url="../pages/template/footer.jsp" />
