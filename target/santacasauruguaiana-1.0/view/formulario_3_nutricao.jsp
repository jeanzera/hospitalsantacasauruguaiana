<%-- 
    Document   : formulario_nutricao
    Created on : 26/06/2015, 16:05:38
    Author     : 121151384
--%>
    <head>
        <title>HGSCCU - Cadastro de Paciente 3/8</title>
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
                    <button onclick="parent.location.href='/santacasauruguaiana/view/formulario_1_identificacao.jsp'" class="btn btn-default">Identificação</button>
                    <button onclick="parent.location.href='/santacasauruguaiana/view/formulario_2_promocao_saude.jsp'" class="btn btn-default">Promoção da Saúde</button>
                    <button onclick="parent.location.href='/santacasauruguaiana/view/formulario_3_nutricao.jsp'" class="btn btn-default" disabled="disabled">Nutrição</button>
                    <button onclick="parent.location.href='/santacasauruguaiana/view/formulario_4_eliminacao_troca.jsp'" class="btn btn-default">Eliminação e Troca</button>
                    <button onclick="parent.location.href='/santacasauruguaiana/view/formulario_5_atividade_repouso.jsp'" class="btn btn-default">Atividade/Repouso</button>
                    <button onclick="parent.location.href='/santacasauruguaiana/view/formulario_6_enfrentamento_estresse.jsp'" class="btn btn-default">Enfr./Toler. ao Estresse</button>
                    <button onclick="parent.location.href='/santacasauruguaiana/view/formulario_7_seguranca_protecao.jsp'" class="btn btn-default">Segurança/Proteção</button>
                    <button onclick="parent.location.href='/santacasauruguaiana/view/formulario_8_conforto.jsp'" class="btn btn-default">Conforto</button>
                </div>

                <div class="panel-body">

                    <!-- Miolo do formulário-->
                    <!--Identificação do Paciente-->
                    <div class="panel panel-default">
                        <!--Domínio 1-->
                        <jsp:include 
                            page="/view/instrumento_coleta/3_nutricao.jsp" 
                            flush="true"/>
                    </div>   
                    <button onclick="parent.location.href='/santacasauruguaiana/view/formulario_2_promocao_saude.jsp'" type="submit" class="btn btn-default">Voltar</button>
                    <button onclick="parent.location.href='/santacasauruguaiana/view/formulario_4_eliminacao_troca.jsp'" type="submit" class="btn btn-default">Avançar</button>
                </div>
            </div>            
        </div> <!-- /container -->
    </body>
</html>