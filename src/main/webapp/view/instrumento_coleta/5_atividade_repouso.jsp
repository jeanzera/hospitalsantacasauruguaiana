<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="itensSelecao" class="br.edu.unipampa.controller.ProntuarioController"/>

<div class="panel panel-default" style="background-color: #E2EEFF">
    <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
        <input type="hidden" name="classe" value="ProntuarioController">
        <input type="hidden" name="metodo" value="adicionarAtividadeRepouso">
        <input type="hidden" name="id_prontuario" value="<%=request.getAttribute("idProntuario")%>">
        <fieldset>
            <div class="panel-heading">
                <h2 class="panel-title" style="font-weight:bold">DOMÍNIO 4: ATIVIDADE/REPOUSO</h2> 
                Produção, conservação, gasto ou equilíbrio de recursos energéticos.
            </div>
            <div class="panel-body">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="font-weight:bold" >Classe 2 - Atividade e Exercício</h2> 
                        Movimento de partes do corpo (mobilidade), realização de tarefas ou desempenho de ações 
                        normalmente (embora nem sempre) contra certa resistência.
                    </div>
                    <div class="panel-body">



                        <!-- Multiple Radios -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="forca_muscular">Força muscular</label>
                            <div class="col-md-4">
                                <div class="radio">
                                    <label for="forca_muscular-0">
                                        <input type="radio" name="forca_muscular" id="forca_muscular-0" value="n" checked="checked">
                                        Preservada
                                    </label>
                                </div>
                                <div class="radio">
                                    <label for="forca_muscular-1">
                                        <input type="radio" name="forca_muscular" id="forca_muscular-1" value="s">
                                        Diminuida
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!-- Multiple Radios -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="mobilidade">Mobilidade</label>
                            <div class="col-md-4">
                                <div class="radio">
                                    <label for="mobilidade-0">
                                        <input type="radio" name="mobilidade" id="mobilidade-0" value="n" checked="checked" onclick="$('#alteracoes_mobilidade').hide('slow')">
                                        Sem alterações
                                    </label>
                                </div>
                                <div class="radio">
                                    <label for="mobilidade-1">
                                        <input type="radio" name="mobilidade" id="mobilidade-1" value="s" onclick="$('#alteracoes_mobilidade').show('slow')">
                                        Com alterações
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!-- Multiple Checkboxes -->
                        <div class="form-group" id="alteracoes_mobilidade" style="display: none">
                            <label class="col-md-4 control-label" for="alteracoes_mobilidade">Alterações de mobilidade</label>
                            <div class="col-md-4">

                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(19)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="alteracoes_mobilidade-${contador.count}">
                                            <input type="checkbox" name="alteracoes_mobilidade" id="alteracoes_mobilidade-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <!-- CONJUNTO -->
                        <div class="row" style="border: 1px solid black">
                            <div class="col-xs-12 col-sm-6 col-md-8">
                                <div class="row" style="border: 1px solid black">
                                    <!-- Multiple Checkboxes -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="cd1_ativ_exer">CD</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(20)}" varStatus="contador">
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
                                        <label class="col-md-4 control-label" for="fr1_ativ_exerc">FR</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(21)}" varStatus="contador">
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
                                    <label class="col-md-4 control-label" for="de1_ativ_exer">DE</label>
                                    <div class="col-md-4">
                                        <div class="checkbox">
                                            <label for="de1_ativ_exer-0">
                                                <input type="checkbox" name="de1_ativ_exer" id="de1_ativ_exer-0" value="1">
                                                Mobilidade física prejudicada (00085)
                                            </label>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="observacoes_ativ_exerc">Observações</label>  
                            <div class="col-md-6">
                                <textarea id="observacoes_ativ_exerc" name="observacoes_ativ_exerc" class="form-control input-md"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="font-weight:bold" >Classe 4 - Respostas Cardiovasculares/Pulmonares</h2> 
                        Mecanismos cardiovasculares que apoiam atividade/repouso.
                    </div>
                    <div class="panel-body">

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="frequencia_cardiaca">Frequência cardíaca (FC)</label>  
                            <div class="col-md-6">
                                <input id="frequencia_cardiaca" name="frequencia_cardiaca" type="number" placeholder="" class="form-control input-md" required="">
                                <span class="help-block">bpm</span>  
                            </div>
                        </div>

                        <!-- Multiple Checkboxes -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="pressao_arterial">Pressão aterial</label>
                            <div class="col-md-4">

                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(22)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="pressao_arterial-${contador.count}">
                                            <input type="checkbox" name="pressao_arterial" id="pressao_arterial-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="medida_pressao_arterial">Medida da pressão arterial</label>  
                            <div class="col-md-6">
                                <input id="medida_pressao_arterial" name="medida_pressao_arterial" type="number" placeholder="" class="form-control input-md" required="">
                                <span class="help-block">mmHg</span>  
                            </div>
                        </div>

                        <!-- Multiple Checkboxes -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="perfusao_periferica">Perfusão periférica</label>
                            <div class="col-md-4">

                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(23)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="perfusao_periferica-${contador.count}">
                                            <input type="checkbox" name="perfusao_periferica" id="perfusao_periferica-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <!-- CONJUNTO -->
                        <div class="row" style="border: 1px solid black">
                            <div class="col-xs-12 col-sm-6 col-md-8">
                                <div class="row" style="border: 1px solid black">
                                    <!-- Multiple Checkboxes -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="cd1_resp_card">CD</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(24)}" varStatus="contador">
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
                                        <label class="col-md-4 control-label" for="fr1_resp_card">FR</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(25)}" varStatus="contador">
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
                                    <label class="col-md-4 control-label" for="de1_resp_card">DE</label>
                                    <div class="col-md-4">
                                        <div class="checkbox">
                                            <label for="de1_resp_card-0">
                                                <input type="checkbox" name="de1_resp_card" id="de1_resp_card-0" value="1">
                                                Perfusão tissular periférica ineficaz (00204)
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="observacoes_resp_card">Observações</label>  
                            <div class="col-md-6">
                                <textarea id="observacoes_resp_card" name="observacoes_resp_card" class="form-control input-md"></textarea>

                            </div>
                        </div>

                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title" style="font-weight:bold" >Classe 5 - Autocuidado</h2> 
                            Capacidade de desempenhar atividades para cuidar do próprio corpo e das funções corporais.
                        </div>
                        <div class="panel-body">
                            <!-- Multiple Radios -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="necessita_auxilio_higiene">Necessita de auxilio para higiene corporal</label>
                                <div class="col-md-4">
                                    <div class="radio">
                                        <label for="necessita_auxilio_higiene-0">
                                            <input type="radio" name="necessita_auxilio_higiene" id="necessita_auxilio_higiene-0" value="n" checked="checked" onclick="$('#tipo_aux_higiene').hide('slow')">
                                            Não
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label for="necessida_auxilio_higiene-1">
                                            <input type="radio" name="necessita_auxilio_higiene" id="necessita_auxilio_higiene-1" value="s" onclick="$('#tipo_aux_higiene').show('slow')">
                                            Sim
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group" id="tipo_aux_higiene" style="display: none">
                                <label class="col-md-4 control-label" for="tipo_aux_higiene">Tipo de auxilio para higiene</label>  
                                <div class="col-md-6">
                                    <input id="tipo_aux_higiene" name="tipo_aux_higiene" type="text" placeholder="" class="form-control input-md">

                                </div>
                            </div>

                            <!-- CONJUNTO -->
                            <div class="row" style="border: 1px solid black">
                                <div class="col-xs-12 col-sm-6 col-md-8">
                                    <div class="row" style="border: 1px solid black">
                                        <!-- Multiple Checkboxes -->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="cd1_autocuidado">CD</label>
                                            <div class="col-md-4">

                                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(26)}" varStatus="contador">
                                                    <div class="checkbox">
                                                        <label for="cd3-${contador.count}">
                                                            <input type="checkbox" name="cd3" id="cd3-${contador.count}" value="${contador.count}">
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
                                            <label class="col-md-4 control-label" for="fr1_autocuidado">FR</label>
                                            <div class="col-md-4">

                                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(27)}" varStatus="contador">
                                                    <div class="checkbox">
                                                        <label for="fr3-${contador.count}">
                                                            <input type="checkbox" name="fr3" id="fr3-${contador.count}" value="${contador.count}">
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
                                        <label class="col-md-4 control-label" for="de1_autocuidado">DE</label>
                                        <div class="col-md-4">
                                            <div class="checkbox">
                                                <label for="de1_autocuidado-0">
                                                    <input type="checkbox" name="de1_autocuidado" id="de1_autocuidado-0" value="1">
                                                    Deficit do autocuidado para banho (00108)
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="observacoes_autocuidado">Observações</label>  
                                <div class="col-md-6">
                                    <textarea id="observacoes_autocuidado" name="observacoes_autocuidado" class="form-control input-md"></textarea>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <input type="submit" class="btn btn-primary" value="Avançar">
                </fieldset>
                </form>
            </div>