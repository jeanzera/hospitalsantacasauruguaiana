<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="itensSelecao" class="br.edu.unipampa.controller.ProntuarioController"/>

<div class="panel panel-default" style="background-color: #E2EEFF">
    <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
        <input type="hidden" name="classe" value="ProntuarioController">
        <input type="hidden" name="metodo" value="adicionarEliminacaoTroca">
        <input type="hidden" name="id_prontuario" value="<%=request.getAttribute("idProntuario")%>">
        <fieldset>
            <div class="panel-heading">
                <h2 class="panel-title" style="font-weight:bold">DOMÍNIO 3: ELIMINAÇÃO E TROCA</h2> 
                Secreção e excreção de produtos residuais do organismo.
            </div>
            <div class="panel-body">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="font-weight:bold" >Classe 2 - Função Gastrointestinal</h2> 
                        Processo de absorção e secreção dos subprodutos da digestão.
                    </div>
                    <div class="panel-body">


                        <!-- Multiple Radios -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="abdome">Abdome</label>
                            <div class="col-md-4">
                                <div class="radio">
                                    <label for="abdome-0">
                                        <input type="radio" name="abdome" id="abdome-0" value="n" checked="checked" onclick="$('#alteracoes_abdome').hide('slow')">
                                        Sem alterações
                                    </label>
                                </div>
                                <div class="radio">
                                    <label for="abdome-1">
                                        <input type="radio" name="abdome" id="abdome-1" value="s" onclick="$('#alteracoes_abdome').show('slow')">
                                        Com Alterações
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!-- Multiple Checkboxes -->
                        <div class="form-group" id="alteracoes_abdome" style="display: none">
                            <label class="col-md-4 control-label" for="alteracoesAbdome">Alterações abdome</label>
                            <div class="col-md-4">
                                
                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(13)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="alteracoesAbdome-${contador.count}">
                                            <input type="checkbox" name="alteracoesAbdome" id="alteracoesAbdome-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>
                                
                            </div>
                        </div>

                        <!-- Multiple Radios (inline) -->
                        <div class="form-group" id="glicemia">
                            <label class="col-md-4 control-label" for="ruidosHidroaereos">Ruídos hidroaéreos</label>
                            <div class="col-md-4"> 
                                <div class="radio">
                                    <label for="ruidosHidroaereos-0">
                                        <input type="radio" name="ruidosHidroaereos" id="nutricao-0" value="1" checked="checked" onclick="$('#tipoRuidosHidroaereos').hide('slow')">
                                        Ausentes
                                    </label>
                                </div>
                                <div class="radio">
                                    <label for="ruidosHidroaereos-1">
                                        <input type="radio" name="ruidosHidroaereos" id="nutricao-1" value="2" onclick="$('#tipoRuidosHidroaereos').show('slow')">
                                        Presentes
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!-- Multiple Checkboxes -->
                        <div class="form-group" id="tipoRuidosHidroaereos" style="display: none">
                            <label class="col-md-4 control-label" for="tipoRuidosHidroaereos">Tipos de ruídos hidroaéreos</label>
                            <div class="col-md-4">
                                
                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(14)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="tipoRuidosHidroaereos-${contador.count}">
                                            <input type="checkbox" name="tipoRuidosHidroaereos" id="tipoRuidosHidroaereos-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>
                                
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="eliminacao_intestinal_freq">Frequência da eliminação intestinal</label>  
                            <div class="col-md-6">
                                <input id="eliminacao_intestinal_freq" name="eliminacao_intestinal_freq" type="text" placeholder="" class="form-control input-md" required="">

                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="eliminacao_intestinal_quant">Quantidade da eliminação intestinal</label>  
                            <div class="col-md-6">
                                <input id="eliminacao_intestinal_quant" name="eliminacao_intestinal_quant" type="text" placeholder="" class="form-control input-md" required="">

                            </div>
                        </div>

                        <!-- Multiple Radios -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="alteracao_eliminacao_intestinal">Alteração da eliminação intestinal</label>
                            <div class="col-md-4">
                                <div class="radio">
                                    <label for="alteracao_eliminacao_intestinal-0">
                                        <input type="radio" name="alteracao_eliminacao_intestinal" id="alteracao_eliminacao_intestinal-0" value="n" checked="checked" onclick="$('#tipo_alteracao_intestinal').hide('slow')">
                                        Sem alteração
                                    </label>
                                </div>
                                <div class="radio">
                                    <label for="alteracao_eliminacao_intestinal-1">
                                        <input type="radio" name="alteracao_eliminacao_intestinal" id="alteracao_eliminacao_intestinal-1" value="s" onclick="$('#tipo_alteracao_intestinal').show('slow')">
                                        Com alteração
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group" id="tipo_alteracao_intestinal" style="display: none">
                            <label class="col-md-4 control-label" for="tipo_alteracao_intestinal">Tipo da alteração</label>  
                            <div class="col-md-6">
                                <input id="tipo_alteracao_intestinal" name="tipo_alteracao_intestinal" type="text" placeholder="" class="form-control input-md">

                            </div>
                        </div>

                        <!-- CONJUNTO -->
                        <div class="row" style="border: 1px solid black">
                            <div class="col-xs-12 col-sm-6 col-md-8">
                                <div class="row" style="border: 1px solid black">
                                    <!-- Multiple Checkboxes -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="cd1_func_gast">CD</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(15)}" varStatus="contador">
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
                                        <label class="col-md-4 control-label" for="fr1_func_gast">FR</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(16)}" varStatus="contador">
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
                                                    Constipação (00011)
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            
                            </div>

                            <!-- CONJUNTO -->
                            
                            <div class="row" style="border: 1px solid black">
                                <div class="col-xs-12 col-sm-6 col-md-8">
                                    <div class="row" style="border: 1px solid black">

                                        <!-- Multiple Checkboxes -->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="cd2_func_gast">CD</label>
                                            <div class="col-md-4">

                                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(17)}" varStatus="contador">
                                                    <div class="checkbox">
                                                        <label for="cd2-${contador.count}">
                                                            <input type="checkbox" name="cd2" id="cd2-${contador.count}" value="${contador.count}">
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
                                            <label class="col-md-4 control-label" for="fr2_func_gast">FR</label>
                                            <div class="col-md-4">

                                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(18)}" varStatus="contador">
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
                                        <label class="col-md-4 control-label" for="de2">DE</label>
                                        <div class="col-md-4">
                                            <div class="checkbox">
                                                <label for="de2-0">
                                                    <input type="checkbox" name="de2" id="de2-0" value="1">
                                                    Diarreia (00013)
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
                                    <textarea class="form-control input-md" id="observacoes_func_gast" name="observacoes_func_gast"></textarea>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <input type="submit" class="btn btn-primary" value="Avançar">
                </fieldset>
                </form>
            </div>