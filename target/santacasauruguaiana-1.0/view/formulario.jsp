<%-- 
    Document   : formulario
    Created on : 29/04/2015, 23:20:44
    Author     : Jeanzera
--%>
    <head>
        <title>HGSCCU - Cadastro de Paciente</title>
    </head>
    <body>
        <div class="container">
            <!--Cabeçalho-->
            <jsp:include 
                page="/view/cabecalho.jsp" 
                flush="true"/>

            <div class="page-header">
                <h1 style="font-weight:bold">Instrumento de Coleta de Dados para Pacientes em Unidade Ambulatorial <small> *Preencha integralmente e com acurácia </small></h1>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2 class="panel-title">Formulário</h2>
                </div>

                <div class="panel-body">

                    <!-- Miolo do formulário-->
                    <!--Identificação do Paciente-->
                    <div class="panel panel-default">
                        <!--Dados gerais do paciente-->
                        <jsp:include 
                            page="/view/instrumento_coleta/identificacao_paciente.jsp" 
                            flush="true"/>
                    </div>   

                    <!--Domínio 1-->
                    <jsp:include 
                        page="/view/instrumento_coleta/dominio_promocao_saude.jsp" 
                        flush="true"/>

                    <!--Domínio 2-->
                    <jsp:include 
                        page="/view/instrumento_coleta/dominio_nutricao.jsp" 
                        flush="true"/>

                    <!--Domínio 3-->
                    <jsp:include 
                        page="/view/instrumento_coleta/dominio_eliminacao_troca.jsp" 
                        flush="true"/>                    

                    <!--Domínio 4-->
                    <jsp:include 
                        page="/view/instrumento_coleta/dominio_atividade_repouso.jsp" 
                        flush="true"/>                     

                    <!--Domínio 9-->
                    <jsp:include 
                        page="/view/instrumento_coleta/dominio_enfrentamento_estresse.jsp" 
                        flush="true"/>                               

                    <!--Domínio 11-->
                    <jsp:include 
                        page="/view/instrumento_coleta/dominio_seguranca_protecao.jsp" 
                        flush="true"/>                       

                    <!--Domínio 12-->
                    <jsp:include 
                        page="/view/instrumento_coleta/dominio_conforto.jsp" 
                        flush="true"/>  
                    <button type="submit" class="btn btn-default">Cadastrar</button>
                </div>
            </div>            
        </div> <!-- /container -->
    </body>
</html>