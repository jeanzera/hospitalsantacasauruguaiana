<%-- 
    Document   : sucesso
    Created on : 19/06/2015, 15:57:51
    Author     : 121151384
--%>
    <head>
        <title>HGSCCU - Operação Efetuada com Sucesso</title>
    </head>
    <body>
        <div class="container">
            <!--Cabeçalho-->
            <jsp:include 
                page="/view/cabecalho.jsp" 
                flush="true"/>

            <div class="panel-heading">

                <div class="panel-body">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title" style="font-weight:bold">Operação Efetuada com Sucesso</h2> 
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal">
                                <fieldset>
                                    <!-- Text input-->
                                </fieldset>
                                <a class="navbar-brand" href="${pageContext.request.contextPath}/sistema?classe=SistemaController&metodo=menu">
                                <button type="button" class="btn btn-default">Continuar</button>
                                </a>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
    </body>
</html>