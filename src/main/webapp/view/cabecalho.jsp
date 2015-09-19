
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/santacasauruguaiana/view/imagens/estetoscopio.png">
<!-- Incluindo o JavaScript do Bootstrap -->
<script src="/santacasauruguaiana/view/src/js/jquery.min.js"></script>
<!-- Incluindo o JavaScript do Bootstrap -->
<script src="/santacasauruguaiana/view/library/assets/js/bootstrap.min.js"></script>
<!-- Bootstrap -->
<link href="/santacasauruguaiana/view/library/assets/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="/santacasauruguaiana/view/library/assets/css/signin.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<div class="navbar navbar-inverse">
    <div class="container">
        <!-- Header -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" 
                    data-toggle="collapse" 
                    data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/sistema?classe=SistemaController&metodo=menu">
                HGSCCU
            </a>
        </div>
        <!-- Navbar Links -->
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/sistema?classe=SistemaController&metodo=cadastrarPaciente">Cadastro de paciente</a></li>
                <li><a href="${pageContext.request.contextPath}/sistema?classe=PacienteController&metodo=listarPacientes">Pesquisar paciente</a></li>
                <li><a href="${pageContext.request.contextPath}/sistema?classe=SistemaController&metodo=gerarRelatorios">Gerar relatório de pacientes</a></li>
                <li><a href="${pageContext.request.contextPath}/sistema?classe=SistemaController&metodo=cadastrarUsuario">Cadastro de usuário</a></li>
                <li><a href="${pageContext.request.contextPath}/sistema?classe=UsuarioController&metodo=listarUsuarios">Pesquisar usuário</a></li>
                <li><a href="${pageContext.request.contextPath}/sistema?classe=SistemaController&metodo=ajuda">Ajuda</a></li>
            </ul>
        </div>
            <c:choose>
            <c:when test="${sessionScope.user != null }">
                <text style="color: whitesmoke">Bem-vindo(a) ${sessionScope.user.nomeUsuario }</text>
                <text style="color: whitesmoke">(<a href="${pageContext.request.contextPath}/sistema?classe=SistemaController&metodo=executarLogout">Sair</a>)</text>
            </c:when>
            <c:otherwise>
                <text style="color: whitesmoke">Você ainda não se identificou (<a href="${pageContext.request.contextPath}/sistema?classe=SistemaController&metodo=login">Acesso</a>)</text>
            </c:otherwise>

        </c:choose>
        
    </div>
</div>