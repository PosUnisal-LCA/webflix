<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../pages/template/header.jsp" />
<div class="card-body">
    <div class="card-body">
        <a style="float: right; margin-top: -5px;" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#CnfNovoFilme"> <i class="fa fa-plus"></i> Adicionar</a> 
    </div>
    <div class="table-responsive modal-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nome</th>
                    <th>Descrição</th>
                    <th>Genero</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="f" items="${filmes}">
                    <tr id="filmes_${f.id}">
                        <td>${f.id}</td>
                        <td>${f.nome}</td>
                        <td>${f.descricao}</td>
                        <td>${f.genero}</td>                    
                        <td> <a href="" class="btn btn-primary btn-xs" data-target ="#CnfEditFilme${f.id}" data-toggle="modal" title="Editar"> <span class="glyphicon glyphicon-pencil"> </span> </a></td>
                        <td> <a href="" class="btn btn-danger btn-xs subgp" data-target ="#CnfExcluirFilme${f.id}" data-toggle="modal" title="Excluir"> <span class="glyphicon glyphicon-remove"> </span> </a></td>         
                    </tr>
                    <!--  Editar Filme -->
                <div class="modal" tabindex="-1" id="CnfEditFilme${f.id}" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Editar Filme</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form class="form-group" action="editaFilme" method="post">
                                    <div class="form-group">
                                        <b><p>Codigo</p></b>
                                        <input type="text" placeholder="" name="id"  value ="${f.id}" class="form-control" hidden="" required="required" />
                                    </div>
                                    <div class="form-group">
                                        <b><p>Nome:</p></b>
                                        <input type="text" placeholder="" name="nome"  value ="${f.nome}" class="form-control" required="required"/>
                                    </div>
                                    <div class="form-group">
                                        <b><p>Descrição</p></b>
                                        <input type="text" placeholder="" name="descricao"  value ="${f.descricao}" class="form-control" required="required"/>
                                    </div>
                                    <div class="form-group">
                                        <b><p>Genero</p></b>
                                        <input type="text" placeholder="" name="genero"  value ="${f.genero}" class="form-control" required="required"/>
                                    </div>
                                    <div class="form-group">
                                        <b><p>Imagem</p></b>
                                        <input type="text" placeholder="" name="imagem"  value ="${f.imagem}" class="form-control" required="required"/>
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
                <!--  FIM editar Filme-->

                <!--  Excluir Filme -->
                <div class="modal" tabindex="-1" id="CnfExcluirFilme${f.id}" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Excluir Filme</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form class="form-group" action="excluirFilme" method="post">
                                    <input type="text" placeholder="" name="id"  value ="${f.id}" class="form-control" hidden="" required="required" />
                                    <h5>Código: ${f.id} - Nome: ${f.nome}</h5>
                                    <br/>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Excluir</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Fim Excluir Filme-->
            </c:forEach>
            </tbody>
        </table>
    </div>
    <br/>



</div>

<div class="modal" tabindex="-1" id="CnfNovoFilme" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Inserir Filme</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
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

    <c:import url="../pages/template/footer.jsp" />
