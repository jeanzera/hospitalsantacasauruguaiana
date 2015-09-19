<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<head>
    <title>HGSCCU - Pesquisar Usuário</title>
</head>
<body>
    <div class="container">
        <!--Cabeçalho-->
        <jsp:include 
            page="/view/cabecalho.jsp" 
            flush="true"/>

        <div class="page-header">
            <h1 style="font-weight:bold">Pesquisar Usuário</h1>
        </div>

        <div class="panel panel-default">
            <div class="panel panel-default">
                <!-- Default panel contents -->

                <div class="panel-heading">
                    <h2 class="panel-title" style="font-weight:bold">Usuários cadastrados</h2> 
                </div>
                <div class="panel panel-default">
                    <form class="navbar-form navbar-left" role="search" action="${pageContext.request.contextPath}/sistema" method="post">
                        <input type="hidden" name="classe" value="UsuarioController">
                        <input type="hidden" name="metodo" value="pesquisarUsuarios">
                        <div class="form-group">
                            <input id="nome_user_pesquisa" name="nome_user_pesquisa" type="text" class="form-control" placeholder="Nome do usuário">
                        </div>
                        <button type="submit" class="btn btn-default" value="Pesquisar">Pesquisar</button></a>
                    </form>
                </div>

                <!-- Table -->
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nome</th>
                            <th>Usuário</th>
                            <th>Email</th>
                            <th>Tipo</th>
                            <th>Ativo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="usuario" items="${requestScope.listaUsuariosRequest}" varStatus="contador">
                            <tr>
                                <td><b>${contador.count}</b></td>
                                <td>${usuario.nomeUsuario}</td>
                                <td>${usuario.usuario}</td>
                                <td>${usuario.emailUsuario}</td>
                                <td><c:if test="${usuario.administradorUsuario == true}">
                                        Administrador
                                    </c:if>
                                    <c:if test="${usuario.administradorUsuario == false}">
                                        Enfermeiro
                                    </c:if> </td>
                                <td><c:if test="${usuario.ativoUsuario == true}">
                                        Ativado
                                    </c:if>
                                    <c:if test="${usuario.ativoUsuario == false}">
                                        Desativado
                                    </c:if> </td>

                                <td align="center">
                                    <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
                                        <input type="hidden" name="classe" value="UsuarioController">
                                        <input type="hidden" name="metodo" value="editarUsuario">
                                        <input type="hidden" name="id_edicao" value="${usuario.idusuario}">
                                        <button type="submit" class="btn btn-warning" data-toggle="modal">
                                            Editar
                                        </button>
                                    </form>
                                </td>
                                <td align="center">
                                    <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
                                                <input type="hidden" name="classe" value="UsuarioController">
                                                <input type="hidden" name="metodo" value="alterarPermissaoUsuario">
                                                <input type="hidden" name="id_permissao" value="${usuario.idusuario}">
                                                <input type="hidden" name="ativo_usuario" value="${usuario.ativoUsuario}">
                                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#gridSystemModal${usuario.idusuario}">
                                        Ativar/desativar
                                    </button>
                                    <div id="gridSystemModal${usuario.idusuario}" class="modal fade" role="dialog" aria-labelledby="gridSystemModalLabel">
                                        <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="gridSystemModalLabel">Tem certeza de que quer alterar a atividade do(a) ${usuario.nomeUsuario}?</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div>Escolha uma das alternativas:</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                        <button type="submit" class="btn btn-primary">Confirmar</button>
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </form>
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->
                                </td>      
                            </tr>
                        </c:forEach>
                        <tr>
                        <tr>
                    </tbody>
                </table>
            </div>
        </div> <!-- /container -->
</body>
</html>