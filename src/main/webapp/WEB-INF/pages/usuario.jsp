<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../pages/template/header.jsp" />
<div class="container-fluid">
<div class="table-responsive">
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>#</th>
				<th>Nome</th>
				<th>E-mail</th>
				<th>Login</th>
				<th>Senha</th>
				<th>UUID</th>
                                <th>Editar</th>
                                <th>Excluir</th>

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
                                        <td> <a href="" class="btn btn-primary btn-xs" data-target ="#CnfEditUsuario${u.id}" data-toggle="modal" title="Editar"> <span class="glyphicon glyphicon-pencil"> </span> </a></td>
                                        <td> <a href="" class="btn btn-danger btn-xs subgp" data-target ="#CnfExcluirUsuario${u.id}" data-toggle="modal" title="Excluir"> <span class="glyphicon glyphicon-remove"> </span> </a></td>        
				</tr>
                                
                                <!--  Editar Ususario -->
                <div class="modal" tabindex="-1" id="CnfEditUsuario${u.id}" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Editar Usuário</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form class="form-group" action="editarUsuario" method="post">
                                  <div class="form-group">
                                        <input type="hidden" placeholder="" name="id"  value ="${u.id}" class="form-control" required="required" />
                                    </div>
                                    <div class="form-group">
                                        <b><p>Nome:</p></b>
                                        <input type="text" placeholder="Nome" name="nome"  value ="${u.nome}" class="form-control" required="required" maxlength="100"/>
                                    </div>
                                    <div class="form-group">
                                        <b><p>E-mail:</p></b>
                                        <input type="email" placeholder="E-mail" name="email"  value ="${u.email}" class="form-control" required="required" maxlength="50"/>
                                    </div>
                                    <div class="form-group">
                                        <b><p>Login:</p></b>
                                        <input type="text" placeholder="Login" name="login"  value ="${u.login}" class="form-control" required="required" maxlength="30"/>
                                    </div>
                                    <div class="form-group">
                                        <b><p>Senha:</p></b>
                                        <input type="text" placeholder="Senha" name="senha"  value ="${u.senha}" class="form-control" required="required" maxlength="30"/>
                                    </div>
                                    
                                    <br/>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Salvar</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div> 
                <!--  FIM editar Usuario--> 
                
                <!--  Excluir Usuario -->
                <div class="modal" tabindex="-1" id="CnfExcluirUsuario${u.id}" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Excluir Usuario</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form class="form-group" action="excluirUsuario" method="post">
                                    <input type="hidden" placeholder="" name="id"  value ="${u.id}" class="form-control" hidden="" required="required" />
                                    <h5>Código: ${u.id} - Nome: ${u.nome}</h5>
                                    <br/>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Excluir</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Fim Excluir Usuario-->
                
                
			</c:forEach>
		</tbody>
	</table>
	<br/>

</div>



<!-- Modal -->
<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="modalLabel">Excluir Item</h4>
                </div>
            <div class="modal-body">Deseja realmente excluir este item? </div>
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
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Sim</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" tabindex="-1" id="CnfNovoFilme" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Inserir Usuário</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="form-group" action="salvarUsuario" method="post">
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
                    <div class="form-group">
                        <label>Genero</label>
                        <input type="text" placeholder="genero" name="genero" class="form-control" required="required"/>
                        <!-- <select class="form-control" id="genero" name="genero">
                        <!-- <c:forEach var="g" items="${genero}">
                             <option>${g}</option>
                        </c:forEach> -->

                        </select>
                        <br/>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success">Salvar</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
            </div>
        </div>
    </div>
</div>   

<c:import url="../pages/template/footer.jsp" />
