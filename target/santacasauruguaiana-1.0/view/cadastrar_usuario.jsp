<%-- 
    Document   : cadastrar_enfermeiro
    Created on : 19/06/2015, 15:57:51
    Author     : 121151384
--%>
<head>
    <title>HGSCCU - Cadastrar Usuário</title>
</head>
<body>
    <div class="container">
        <!--Cabeçalho-->
        <jsp:include 
            page="/view/cabecalho.jsp" 
            flush="true"/>

        <div class="page-header">
            <h1 style="font-weight:bold">Cadastrar Usuário</h1>
        </div>


        <div class="panel-heading">

            <div class="panel-body">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="font-weight:bold" >Dados do usuário</h2> 
                    </div>
                    <div class="panel-body">
                        <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
                            <input type="hidden" name="classe" value="UsuarioController">
                            <input type="hidden" name="metodo" value="adicionarUsuario">
                            <fieldset>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="nome_enfermeiro">Nome</label>  
                                    <div class="col-md-6">
                                        <input id="nome_enfermeiro" name="nome_enfermeiro" type="text" placeholder="" class="form-control input-md" value="${usuario.nomeUsuario}" required="">
                                        <span class="help-block">Nome completo</span>  
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="email_enfermeiro">Email</label>  
                                    <div class="col-md-6">
                                        <input id="email_enfermeiro" name="email_enfermeiro" type="text" placeholder="" class="form-control input-md" required="" value="${usuario.emailUsuario}">

                                    </div>
                                </div>

                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="usuario_enfermeiro">Usuário</label>  
                                    <div class="col-md-6">
                                        <input id="usuario_enfermeiro" name="usuario_enfermeiro" type="text" placeholder="" class="form-control input-md" value="${usuario.usuario}" required="">

                                    </div>
                                </div>

                                <!-- Password input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="senha_enfermeiro">Senha</label>
                                    <div class="col-md-6">
                                        <input id="senha_enfermeiro" name="senha_enfermeiro" type="password" placeholder="" class="form-control input-md" value="${usuario.senhaUsuario}" required="">

                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="tipo_usuario">Tipo de usuário</label>
                                    <div class="col-md-6">
                                        <select id="tipo_usuario" name="tipo_usuario" class="form-control">
                                            <option value="enfermeiro" ${usuario.administradorUsuario == false ? 'selected="selected"' : ''}>Enfermeiro</option>
                                            <option value="administrador" ${usuario.administradorUsuario == true ? 'selected="selected"' : ''}>Administrador</option>
                                        </select>
                                    </div>
                                </div>
                            </fieldset>
                            <!--                            <input type="submit" class="btn btn-primary" value="Cadastrar">-->
                            <button id="botao_cadastrar" type="button" class="btn btn-primary" data-toggle="modal" data-target="#gridSystemModal">
                                Cadastrar
                            </button>
                            <div id="gridSystemModal" class="modal fade" role="dialog" aria-labelledby="gridSystemModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="gridSystemModalLabel">Tem certeza de que quer realizar a ação?</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        Nome:  <p id="nome"></p>
                                                        Email: <p id="email"></p>
                                                        Nome do usuário para acesso: <p id="usuario"></p>
                                                        Tipo: <p id="tipo"></p> 
                                                        <script language="javascript">

                                                            //evento quando clicar no link com id="pegar-valor"
                                                            $("#botao_cadastrar").click(function () {
                                                                //pegamos o valor do input
                                                                var nome = document.getElementById('nome_enfermeiro').value;
                                                                document.getElementById("nome").innerHTML = nome;

                                                                var email = document.getElementById('email_enfermeiro').value;
                                                                document.getElementById("email").innerHTML = email;

                                                                var usuario = document.getElementById('usuario_enfermeiro').value;
                                                                document.getElementById("usuario").innerHTML = usuario;

                                                                var tipo = document.getElementById('tipo_usuario').value;
                                                                document.getElementById("tipo").innerHTML = tipo;
                                                            });
                                                        </script>
                                                        </td>
                                                        <div>Escolha uma das alternativas:</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="hidden" name="id_usuario" value="${usuario.idusuario}">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                <button type="submit" class="btn btn-primary">Confirmar</button>
                                            </div>
                                        </form>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->
                        </form>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>