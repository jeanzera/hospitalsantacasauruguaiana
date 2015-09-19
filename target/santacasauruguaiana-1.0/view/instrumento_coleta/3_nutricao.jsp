<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="itensSelecao" class="br.edu.unipampa.controller.ProntuarioController"/>

<div class="panel panel-default" style="background-color: #E2EEFF">
    <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
        <input type="hidden" name="classe" value="ProntuarioController">
        <input type="hidden" name="metodo" value="adicionarNutricao">
        <input type="hidden" name="id_prontuario" value="<%=request.getAttribute("idProntuario")%>">

        <fieldset>
            <div class="panel-heading">
                <h2 class="panel-title" style="font-weight:bold">DOMÍNIO 2: NUTRIÇÃO</h2> 
                Atividade de ingerir, assimilar e usar nutrientes com fins de manter e reparar 
                tecidos e produzir energia.
            </div>
            <div class="panel-body">

                <div class="panel-body">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title" style="font-weight:bold" >Classe 1 - Ingestão</h2> 
                            Levar alimento e nutrientes para dentro do organismo.
                        </div>


                        <!-- Multiple Radios (inline) -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="alteracao_nutricao">Nutrição</label>
                            <div class="col-md-4"> 
                                <div class="radio">
                                    <label for="alteracao_nutricao-0">
                                        <input type="radio" name="alteracao_nutricao" id="alteracao_nutricao-0" value="n" checked="checked">
                                        Sem alterações
                                    </label> 
                                </div>
                                <div class="radio">
                                    <label for="nutricao-1">
                                        <input type="radio" name="alteracao_nutricao" id="alteracao_nutricao-1" value="s">
                                        Com alterações
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!--                         CONJUNTO -->
                        <div class="row" style="border: 1px solid black">
                            <div class="col-xs-12 col-sm-6 col-md-8">
                                <div class="row" style="border: 1px solid black">
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="cd">CD</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(9)}" varStatus="contador">
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
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="fr">FR</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(10)}" varStatus="contador">

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
                                    <label class="col-md-4 control-label" for="de1">DE</label>
                                    <div class="col-md-4">
                                        <div class="checkbox">
                                            <label for="de1-0">
                                                <input type="checkbox" name="de1" id="de1-0" value="1">
                                                Nutrição desequilibrada: mais do que as necessidades corporais (00001)
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                       

                        <!-- Textarea -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="observacoesNutriInges">Observações</label>
                            <div class="col-md-4">                     
                                <textarea class="form-control" id="observacoesNutriInges" name="observacoesNutriInges"></textarea>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="font-weight:bold" >Classe 4 - Metabolismo</h2> 
                        Processos químicos e físicos que ocorrem nos organismos vivos e nas células para 
                        o desenvolvimento e o uso do protoplasma, a produção de resíduos e energia, com 
                        a liberação de energia para todos os processos vitais.
                    </div>
                    <div class="panel-body">

                        <!-- Multiple Radios (inline) -->
                        <div class="form-group" id="glicemia">
                            <label class="col-md-4 control-label" for="glicemia">Glicemia</label>
                            <div class="col-md-4"> 
                                <div class="radio">
                                    <label for="glicemia-0">
                                        <input type="radio" name="glicemia" id="nutricao-0" value="n" checked="checked" onclick="$('#tipo_glicemia').hide('slow')">
                                        Sem alterações
                                    </label>
                                </div>
                                <div class="radio">
                                    <label for="glicemia-1">
                                        <input type="radio" name="glicemia" id="nutricao-1" value="s" onclick="$('#tipo_glicemia').show('slow')">
                                        Com alterações
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!-- Multiple Checkboxes -->
                        <div class="form-group" id="tipo_glicemia" style="display: none">
                            <label class="col-md-4 control-label" for="tipo_glicemia">Tipo glicemia</label>
                            <div class="col-md-4">
                                
                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(11)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="tipo_glicemia-${contador.count}">
                                            <input type="checkbox" name="tipo_glicemia" id="tipo_glicemia-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="valorGlicemia">Valor da glicemia capilar:</label>  
                            <div class="col-md-4">
                                <input id="valorGlicemia" name="valorGlicemia" type="number" placeholder="" class="form-control input-md" required="">
                                <span class="help-block">(mg/dl)</span>  
                            </div>
                        </div>

                        <!-- CONJUNTO -->
                        <div class="row" style="border: 1px solid black">
                            <div class="col-xs-12 col-sm-6 col-md-8">
                                <div class="row" style="border: 1px solid black">
                                    <!-- Multiple Checkboxes -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="frmetabolismo">FR</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(12)}" varStatus="contador">

                                                <div class="checkbox">
                                                    <label for="fr2-${contador.count}">
                                                        <input type="checkbox" name="fr2" id="fr2-${contador.count}" value="${contador.count}">
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
                                    <label class="col-md-4 control-label" for="de2_conforto">DE</label>
                                    <div class="col-md-4">
                                        <div class="checkbox">
                                            <label for="fr1-0">
                                                <input type="checkbox" name="de2_conforto" id="de2-0" value="1">
                                                Risco de glicemia instável (00179)
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="observacoesMetabolismo">Observações</label>  
                            <div class="col-md-6">
                                <textarea class="form-control input-md" id="observacoesMetabolismo" name="observacoesMetabolismo"></textarea>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <input type="submit" class="btn btn-primary" value="Avançar">
        </fieldset>
    </form>
</div>