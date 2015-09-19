<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<head>
    <title>HGSCCU - Pesquisar Paciente</title>
</head>
<body>
    <div class="container">
        <!--Cabeçalho-->
        <jsp:include 
            page="/view/cabecalho.jsp" 
            flush="true"/>

        <div class="page-header">
            <h1 style="font-weight:bold">Pesquisar Paciente</h1>
        </div>

        <div class="panel panel-default">
            <div class="panel panel-default">
                <!-- Default panel contents -->

                <div class="panel-heading">
                    <h2 class="panel-title" style="font-weight:bold">Pacientes cadastrados</h2> 
                </div>
                <div class="panel panel-default">
                    <form class="navbar-form navbar-left" role="search" action="${pageContext.request.contextPath}/sistema" method="post">
                        <input type="hidden" name="classe" value="PacienteController">
                        <input type="hidden" name="metodo" value="pesquisarPacientes">
                        <div class="form-group">
                            <input id="nome_paciente_pesquisa" name="nome_paciente_pesquisa" type="text" class="form-control" placeholder="Nome do paciente">
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
                            <th>Telefone</th>
                            <th>Última consulta</th>
                            <th>Prontuário</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="paciente" items="${requestScope.listaPacientesRequest}" varStatus="contador">
                            <tr>
                                <td><b>${contador.count}</b></td>
                                <td>${paciente.nome}</td>
                                <td>${paciente.telefone}</td>
                                <td>${paciente.dataUltimaConsulta}</td>
                                <td>${paciente.prontuario}</td>
                                
                                <td align="center">
                                    <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
                                        <input type="hidden" name="classe" value="PacienteController">
                                        <input type="hidden" name="metodo" value="editarPaciente">
                                        <input type="hidden" name="id_paciente_edicao" value="${paciente.idpaciente}">
                                        <input type="hidden" name="id_prontuario_edicao" value="${paciente.prontuario}">
                                        <button type="submit" class="btn btn-warning" data-toggle="modal">
                                            Editar
                                        </button>
                                    </form>
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