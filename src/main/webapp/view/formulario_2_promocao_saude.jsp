<%-- 
    Document   : formulario_promocao_saude
    Created on : 26/06/2015, 14:44:09
    Author     : 121151384
--%>
    <head>
        <title>HGSCCU - Cadastro de Paciente 2/8</title>
    </head>
    <body>
        <div class="container">
            <!--Cabe�alho-->
            <jsp:include 
                page="/view/cabecalho.jsp" 
                flush="true"/>

            <div class="page-header">
                <h1 style="font-weight:bold">Instrumento de Coleta de Dados para Pacientes em Unidade Ambulatorial <small> *Preencha integralmente e com acur�cia </small></h1>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <button onclick="parent.location.href = '/santacasauruguaiana/view/formulario_1_identificacao.jsp'" class="btn btn-default">Identifica��o</button>
                    <button onclick="parent.location.href = '/santacasauruguaiana/view/formulario_2_promocao_saude.jsp'" class="btn btn-default" disabled="disabled">Promo��o da Sa�de</button>
                    <button onclick="parent.location.href = '/santacasauruguaiana/view/formulario_3_nutricao.jsp'" class="btn btn-default">Nutri��o</button>
                    <button onclick="parent.location.href = '/santacasauruguaiana/view/formulario_4_eliminacao_troca.jsp'" class="btn btn-default">Elimina��o e Troca</button>
                    <button onclick="parent.location.href = '/santacasauruguaiana/view/formulario_5_atividade_repouso.jsp'" class="btn btn-default">Atividade/Repouso</button>
                    <button onclick="parent.location.href = '/santacasauruguaiana/view/formulario_6_enfrentamento_estresse.jsp'" class="btn btn-default">Enfr./Toler. ao Estresse</button>
                    <button onclick="parent.location.href = '/santacasauruguaiana/view/formulario_7_seguranca_protecao.jsp'" class="btn btn-default">Seguran�a/Prote��o</button>
                    <button onclick="parent.location.href = '/santacasauruguaiana/view/formulario_8_conforto.jsp'" class="btn btn-default">Conforto</button>
                </div>

                <div class="panel-body">

                    <!-- Miolo do formul�rio-->
                    <!--Identifica��o do Paciente-->
                    <div class="panel panel-default">
                        <!--Dom�nio 1-->
                        <jsp:include 
                            page="/view/instrumento_coleta/2_promocao_saude.jsp" 
                            flush="true"/>

                    </div>   
                    <button onclick="parent.location.href = '/santacasauruguaiana/view/formulario_1_identificacao.jsp'" type="submit" class="btn btn-default">Voltar</button>
                    <button onclick="parent.location.href = '/santacasauruguaiana/view/formulario_3_nutricao.jsp'" type="submit" class="btn btn-default">Avan�ar</button>
                </div>
            </div>            
        </div> <!-- /container -->
    </body>
</html>