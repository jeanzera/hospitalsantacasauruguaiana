<%-- 
    Document   : falha
    Created on : 19/06/2015, 15:57:51
    Author     : 121151384
--%>
    <head>
        <title>HGSCCU - N�o foi poss�vel efetuar a opera��o</title>
    </head>
    <body>
        <div class="container">
            <!--Cabe�alho-->
            <jsp:include 
                page="/view/cabecalho.jsp" 
                flush="true"/>

            <div class="panel-heading">

                <div class="panel-body">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title" style="font-weight:bold">N�o foi poss�vel efetuar a opera��o. Verifique os dados e tente novamente.</h2> 
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