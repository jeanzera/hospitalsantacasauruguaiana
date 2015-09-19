<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="itensSelecao" class="br.edu.unipampa.controller.ProntuarioController"/>

<div class="panel panel-default" style="background-color: #E2EEFF">
    <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
        <input type="hidden" name="classe" value="ProntuarioController">
        <input type="hidden" name="metodo" value="adicionarPromocaoSaude">
        <input type="hidden" name="id_paciente" value="<%=request.getAttribute("idPaciente")%>">
        <fieldset>
            <div class="panel-heading">
                <h2 class="panel-title" style="font-weight:bold">DOMÍNIO 1: PROMOÇÃO DA SAÚDE</h2> 
                Percepção de bem-estar ou de normalidade de funcionamento e estratégias
                utilizadas para manter o controle desse bem-estar e a normalidade do funcionamento, bem 
                como para melhorá-los.
            </div>
            <div class="panel-body">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="font-weight:bold">Classe 2 - Controle da Saúde</h2> 
                        Identificação, controle, desempenho e integração de atividades para manter a saúde e o bem-estar.
                    </div>
                    <div class="panel-body">

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="prontuario">Prontuário</label>  
                            <div class="col-md-6">
                                <input id="prontuario_paciente" name="prontuario_paciente" type="number" placeholder="Prontuário" class="form-control input-md" required="">
                            </div>
                        </div>
                        <!--                         Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="boletim_atendimento">Boletim de atendimento ambulatorial (BAA)</label>  
                            <div class="col-md-6">
                                <input id="boletim_atendimento_paciente" name="boletim_atendimento_paciente" type="number" placeholder="Boletim de atendimento ambulatorial (BAA)" class="form-control input-md" required="">

                            </div>
                        </div>
                        <!--                         Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="motivo_atendimento">Motivo do atendimento ambulatorial</label>  
                            <div class="col-md-6">
                                <input id="motivo_atendimento" name="motivo_atendimento" type="text" placeholder="Motivo do atendimento ambulatorial" class="form-control input-md" required="">

                            </div>
                        </div>

                        <!--                         Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="estado_saude_previa_atual">Estado de saúde prévia e atual (tratamentos)</label>  
                            <div class="col-md-6">
                                <input id="estado_saude_previa_atual" name="estado_saude_previa_atual" type="text" placeholder="Estado de saúde prévia e atual (tratamentos)" class="form-control input-md" required="">

                            </div>
                        </div>

                        <!--                         Multiple Checkboxes (inline) -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="historia_familiar">História familiar/fatores de risco para problemas de saúde</label>
                            <div class="col-md-4">
                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(4)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="historia_familiar-${contador.count}">
                                            <input type="checkbox" name="historia_familiar" id="historia_familiar-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <!--                         Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="historia_outras">Outras histórias</label>  
                            <div class="col-md-6">
                                <input id="historia_outras" name="historia_outras" type="text" placeholder="Outras histórias" class="form-control input-md">

                            </div>
                        </div>

                        <!--                         Multiple Radios (inline) -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="hospitalizacao_previa">Hospitalizacao prévia</label>
                            <div class="col-md-4"> 
                                <label class="radio-inline" for="hospitalizacao_previa-0">
                                    <input type="radio" name="hospitalizacao_previa" id="hospitalizacao_previa-0" value="n" checked="checked">
                                    Não
                                </label> 
                                <label class="radio-inline" for="hospitalizacao_previa-1">
                                    <input type="radio" name="hospitalizacao_previa" id="hospitalizacao_previa-1" value="s">
                                    Sim
                                </label>
                            </div>
                        </div>

                        <!--                         Multiple Radios (inline) -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="realizou_cirurgias">Já realizou cirurgias</label>
                            <div class="col-md-4"> 
                                <label class="radio-inline" for="realizou_cirurgias-0">
                                    <input type="radio" name="realizou_cirurgias" id="realizou_cirurgias-0" value="n" checked="checked" onclick="$('#quais_cirurgias').hide('slow')">
                                    Não
                                </label> 
                                <label class="radio-inline" for="realizou_cirurgias-1">
                                    <input type="radio" name="realizou_cirurgias" id="realizou_cirurgias-1" value="s" onclick="$('#quais_cirurgias').show('slow')">
                                    Sim
                                </label>
                            </div>
                        </div>

                        <!--                         Text input-->
                        <div class="form-group" id="quais_cirurgias" style="display: none">
                            <label class="col-md-4 control-label" for="quais_cirurgias">Quais cirurgias</label>  
                            <div class="col-md-6">
                                <input id="quais_cirurgias" name="quais_cirurgias" type="text" placeholder="Quais cirurgias" class="form-control input-md">

                            </div>
                        </div>

                        <!--                         Multiple Radios (inline) -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="utilizacao_medicamentos_casa">Utilização de medicamentos em casa</label>
                            <div class="col-md-4"> 
                                <label class="radio-inline" for="utilizacao_medicamentos_casa-0">
                                    <input type="radio" name="utilizacao_medicamentos_casa" id="utilizacao_medicamentos_casa-0" value="n" checked="checked" onclick="$('#medicamentos').hide('slow')">
                                    Não
                                </label> 
                                <label class="radio-inline" for="utilizacao_medicamentos_casa-1">
                                    <input type="radio" name="utilizacao_medicamentos_casa" id="utilizacao_medicamentos_casa-1" value="s" onclick="$('#medicamentos').show('slow')">
                                    Sim
                                </label>
                            </div>
                        </div>

                        <div id="medicamentos" style="display: none">
                            <!--                             Multiple Radios (inline) -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="uso_adequado">Faz uso adequado</label>
                                <div class="col-md-4"> 
                                    <label class="radio-inline" for="uso_adequado-0">
                                        <input type="radio" name="uso_adequado" id="uso_adequado-0" value="s" checked="checked">
                                        Sim
                                    </label> 
                                    <label class="radio-inline" for="uso_adequado-1">
                                        <input type="radio" name="uso_adequado" id="uso_adequado-1" value="n">
                                        Não
                                    </label>
                                </div>
                            </div>

                            <!--                             Textarea -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="prescritos_casa">Prescritos (Nome, dose, frequência e horários)</label>
                                <div class="col-md-4">                     
                                    <textarea class="form-control" id="preescritos_casa" name="prescritos_casa"></textarea>
                                </div>
                            </div>

                            <!--                             Textarea -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="nao_prescritos_casa">Não prescritos</label>
                                <div class="col-md-4">                     
                                    <textarea class="form-control" id="nao_prescritos_casa" name="nao_prescritos_casa"></textarea>
                                </div>
                            </div>
                        </div>

                        <!--                         Multiple Radios (inline) -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="alergico">Alérgico a medicamentos</label>
                            <div class="col-md-4"> 
                                <label class="radio-inline" for="alergico-0">
                                    <input type="radio" name="alergico" id="alergico-0" value="n" checked="checked" onclick="$('#medicamentos_alergico').hide('slow')">
                                    Não
                                </label> 
                                <label class="radio-inline" for="alergico-1">
                                    <input type="radio" name="alergico" id="alergico-1" value="s" onclick="$('#medicamentos_alergico').show('slow')">
                                    Sim
                                </label>
                            </div>
                        </div>

                        <!--                         Textarea -->
                        <div class="form-group" id="medicamentos_alergico" style="display: none">
                            <label class="col-md-4 control-label" for="medicamentos_alergico">Quais</label>
                            <div class="col-md-4">                     
                                <textarea class="form-control" id="medicamentos_alergico" name="medicamentos_alergico"></textarea>
                            </div>
                        </div>

                        <!--                         CONJUNTO -->
                        <div class="row" style="border: 1px solid black">
                            <div class="col-xs-12 col-sm-6 col-md-8">
                                <div class="row" style="border: 1px solid black">
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="cd">CD</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(5)}" varStatus="contador">

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

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(6)}" varStatus="contador">

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
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="de1">DE</label>
                                    <div class="col-md-4">
                                        <div class="checkbox">
                                            <label for="de1-0">
                                                <input type="checkbox" name="de1" id="de1-0" value="1">
                                                Manutenção ineficaz da saúde(00099)
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!--                         CONJUNTO -->
                        <div class="row" style="border: 1px solid black">
                            <div class="col-xs-12 col-sm-6 col-md-8">
                                <div class="row" style="border: 1px solid black">
                                    <!--                                     Multiple Checkboxes -->
                                    <div class="form-group">

                                        <label class="col-md-4 control-label" for="cd2">CD</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(7)}" varStatus="contador">

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
                                    <!--                                     Multiple Checkboxes -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="fr2">FR</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(8)}" varStatus="contador">

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
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="de2">DE</label>
                                    <div class="col-md-4">
                                        <div class="checkbox">
                                            <label for="de2-0">
                                                <input type="checkbox" name="de2" id="de2-0" value="1">
                                                Proteção ineficaz (00043)
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <!--                         Textarea -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="observacoes">Observações</label>
                            <div class="col-md-4">                     
                                <textarea class="form-control" id="observacoes" name="observacoes"></textarea>
                            </div>
                        </div>


                    </div>
                </div>
                <input type="submit" class="btn btn-primary" value="Cadastrar prontuário e avançar">
                </fieldset>
                </form>
            </div>
