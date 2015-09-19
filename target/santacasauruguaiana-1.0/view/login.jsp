<%-- 
    Document   : login
    Created on : 18/04/2015, 00:37:49
    Author     : Jeanzera
--%><%@ page contentType="text/html" pageEncoding="UTF-8"%>
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

    <head>
        <title>HGSCCU - Acessar Sistema</title>
    </head>
    <body>
        <div class="container">

            <div class="page-header">
                <h1 style="font-weight:bold">Acesso ao Sistema</h1>
            </div>

            <div class="container">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Acesso ao Sistema</h3>
                    </div>
                    <div class="panel-body">
                        <form class="form-signin" action="${pageContext.request.contextPath}/sistema" method="post">
                            <input type="hidden" name="classe" value="SistemaController">
                            <input type="hidden" name="metodo" value="executarLogin">
                            <h2 class="form-signin-heading">Por favor, digite seus dados de acesso:</h2>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="usuario_login" name="usuario_login" type="text" class="form-control" value="" placeholder="Usuário">                                        
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="usuario_senha" name="usuario_senha" type="password" class="form-control" value="" placeholder="Senha">
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="remember-me"> Lembrar-me
                                </label>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                        Esqueceu a senha?  
                                        <a href="#" onClick="$('#loginbox').hide();
                                                $('#signupbox').show()">
                                            Clique aqui.
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
                        </form>
                    </div>
                </div>

            </div> <!-- /container -->
    </body>
</html>