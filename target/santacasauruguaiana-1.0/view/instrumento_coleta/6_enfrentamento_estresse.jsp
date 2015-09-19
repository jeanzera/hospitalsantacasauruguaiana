<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="itensSelecao" class="br.edu.unipampa.controller.ProntuarioController"/>

<div class="panel panel-default" style="background-color: #E2EEFF">
    <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
        <input type="hidden" name="classe" value="ProntuarioController">
        <input type="hidden" name="metodo" value="adicionarEnfrentamentoEstresse">
        <input type="hidden" name="id_prontuario" value="<%=request.getAttribute("idProntuario")%>">
        <fieldset>
            <div class="panel-heading">
                <h2 class="panel-title" style="font-weight:bold">DOMÍNIO 9: ENFRENTAMENTO/TOLERÂNCIA AO ESTRESSE</h2> 
                Lutas contra eventos/processos de vida.
            </div>
            <div class="panel-body">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="font-weight:bold" >Classe 2 - Respostas de Enfrentamento</h2> 
                        Processo de controlar o estresse ambiental.
                    </div>
                    <div class="panel-body">


                        <!-- Multiple Radios -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="perdas">Perdas</label>
                            <div class="col-md-4">
                                <div class="radio">
                                    <label for="perdas-0">
                                        <input type="radio" name="perdas" id="perdas-0" value="n" checked="checked">
                                        Não
                                    </label>
                                </div>
                                <div class="radio">
                                    <label for="perdas-1">
                                        <input type="radio" name="perdas" id="perdas-1" value="s">
                                        Sim
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!-- CONJUNTO -->
                        <div class="row" style="border: 1px solid black">
                            <div class="col-xs-12 col-sm-6 col-md-8">
                                <div class="row" style="border: 1px solid black">
                                    <!-- Multiple Checkboxes -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="cd1_resp_enfr">CD</label>
                                        <div class="col-md-4">
                                            
                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(28)}" varStatus="contador">
                                                <div class="checkbox">
                                                    <label for="cd1-${contador.count}">
                                                        <input type="checkbox" name="cd1" id="cd1-${contador.count}" value="${contador.count}">
                                                        ${item}
                                                    </label>
                                                </div>
                                            </c:forEach>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="border: 1px solid black">
                                    <!-- Multiple Checkboxes -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="fr1_resp_enfr">FR</label>
                                        <div class="col-md-4">
                                            
                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(29)}" varStatus="contador">
                                                <div class="checkbox">
                                                    <label for="fr1-${contador.count}">
                                                        <input type="checkbox" name="fr1" id="fr1-${contador.count}" value="${contador.count}">
                                                        ${item}
                                                    </label>
                                                </div>
                                            </c:forEach>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-6 col-md-4" style="border: 1px solid black">
                                <!-- Multiple Checkboxes -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="de1_resp_enfr">DE</label>
                                    <div class="col-md-4">
                                        <div class="checkbox">
                                            <label for="de1_resp_enfr-0">
                                                <input type="checkbox" name="de1_resp_enfr" id="de1_resp_enfr-0" value="1">
                                                Ansiedade (00146)
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="observacoes_resp_enfr">Observações</label>  
                            <div class="col-md-6">
                                <textarea id="observacoes_resp_enfr" name="observacoes_resp_enfr" class="form-control input-md"></textarea>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <input type="submit" class="btn btn-primary" value="Avançar">
        </fieldset>
    </form>
</div>