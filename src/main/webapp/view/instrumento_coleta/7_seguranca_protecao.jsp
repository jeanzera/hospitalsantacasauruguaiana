<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="itensSelecao" class="br.edu.unipampa.controller.ProntuarioController"/>

<div class="panel panel-default" style="background-color: #E2EEFF">
    <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
        <input type="hidden" name="classe" value="ProntuarioController">
        <input type="hidden" name="metodo" value="adicionarSegurancaProtecao">
        <input type="hidden" name="id_paciente" value="<%=request.getAttribute("idPaciente")%>">
        <fieldset>
            <div class="panel-heading">
                <h2 class="panel-title" style="font-weight:bold">DOMÍNIO 11: SEGURANÇA/PROTEÇÃO</h2> 
                Estar livre de perigo, lesão física ou dano ao sistema imunológico; conservação 
                contra perdas e proteção da segurança e da ausência de perigos.
            </div>

            <div class="panel-body">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="font-weight:bold" >Classe 1 - Infecção</h2> 
                        Respostas do hospedeiro após invasão de patógenos.
                    </div>
                    <div class="panel-body">


                        <!-- Multiple Checkboxes -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="sinais_infeccao">Sinais de infecção</label>
                            <div class="col-md-4">

                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(30)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="sinais_infeccao-${contador.count}">
                                            <input type="checkbox" name="sinais_infeccao" id="sinais_infeccao-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <!-- Multiple Checkboxes -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="vacinas">Vacinas realizadas</label>
                            <div class="col-md-4">

                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(31)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="vacinas-${contador.count}">
                                            <input type="checkbox" name="vacinas" id="vacinas-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="outras_vacinas">Outras vacinas</label>  
                            <div class="col-md-6">
                                <input id="outras_vacinas" name="outras_vacinas" type="text" placeholder="" class="form-control input-md">

                            </div>
                        </div>

                        <!-- CONJUNTO -->
                        <div class="row" style="border: 1px solid black">
                            <div class="col-xs-12 col-sm-6 col-md-8">
                                <div class="row" style="border: 1px solid black">
                                    <!-- Multiple Checkboxes -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="fr1_infeccao">FR</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(32)}" varStatus="contador">
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
                                    <label class="col-md-4 control-label" for="de1_infeccao">DE</label>
                                    <div class="col-md-4">
                                        <div class="checkbox">
                                            <label for="de1_infeccao-0">
                                                <input type="checkbox" name="de1_infeccao" id="de1_infeccao-0" value="1">
                                                Risco de infecção (00004)
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="observacoes_infeccao">Observações</label>  
                            <div class="col-md-6">
                                <textarea id="observacoes_infeccao" name="observacoes_infeccao" class="form-control input-md"></textarea>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="font-weight:bold" >Classe 2 - Lesão Física</h2> 
                        Dano ou ferimento ao organismo.
                    </div>
                    <div class="panel-body">

                        <!-- Multiple Radios -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="alteracao_pele">Pele</label>
                            <div class="col-md-4">
                                <div class="radio">
                                    <label for="alteracao_pele-0">
                                        <input type="radio" name="alteracao_pele" id="alteracao_pele-0" value="n" checked="checked" onclick="$('#alteracoes_pele').hide('slow')">
                                        Sem alterações
                                    </label>
                                </div>
                                <div class="radio">
                                    <label for="alteracao_pele-1">
                                        <input type="radio" name="alteracao_pele" id="alteracao_pele-1" value="s" onclick="$('#alteracoes_pele').show('slow')">
                                        Com alterações
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div id="alteracoes_pele" style="display: none">
                            <!-- Multiple Checkboxes -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="lesoes_pele">Lesões na pele</label>
                                <div class="col-md-4">

                                    <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(33)}" varStatus="contador">
                                        <div class="checkbox">
                                            <label for="lesoes_pele-${contador.count}">
                                                <input type="checkbox" name="lesoes_pele" id="lesoes_pele-${contador.count}" value="${contador.count}">
                                                ${item}
                                            </label>
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="outras_alter_pele">Outras lesões</label>  
                                <div class="col-md-6">
                                    <input id="outras_alter_pele" name="outras_alter_pele" type="text" placeholder="" class="form-control input-md">

                                </div>
                            </div>
                        </div>

                        <!-- Multiple Checkboxes -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="umidade_pele">Umidade da pele</label>
                            <div class="col-md-4">

                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(34)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="umidade_pele-${contador.count}">
                                            <input type="checkbox" name="umidade_pele" id="umidade_pele-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <!-- Multiple Checkboxes -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="coloracao_pele">Coloração da pele</label>
                            <div class="col-md-4">

                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(35)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="coloracao_pele-${contador.count}">
                                            <input type="checkbox" name="coloracao_pele" id="coloracao_pele-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <!-- Multiple Radios -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="recuper_imediata">Incisão Cirúrgica (recuperação)</label>
                            <div class="col-md-4">
                                <div class="radio">
                                    <label for="recuper_imediata-0">
                                        <input type="radio" name="recuper_imediata" id="recuper_imediata-0" value="s" checked="checked">
                                        PO Imediato
                                    </label>
                                </div>
                                <div class="radio">
                                    <label for="recuper_imediata-1">
                                        <input type="radio" name="recuper_imediata" id="recuper_imediata-1" value="n">
                                        PO Tardio
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="espec_cirurgia">Especificar a cirurgia e dias em PO</label>  
                            <div class="col-md-6">
                                <input id="espec_cirurgia" name="espec_cirurgia" type="text" placeholder="" class="form-control input-md">

                            </div>
                        </div>

                        <!-- Multiple Checkboxes -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="upp">Presença de úlcera por pressão (UPP)</label>
                            <div class="col-md-4">

                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(36)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="upp-${contador.count}">
                                            <input type="checkbox" name="upp" id="upp-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <!-- Multiple Radios -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="presenca_lesoes">Presença de lesões</label>
                            <div class="col-md-4">
                                <div class="radio">
                                    <label for="presenca_lesoes-0">
                                        <input type="radio" name="presenca_lesoes" id="presenca_lesoes-0" value="n" checked="checked" onclick="$('#lesoes_pele').hide('slow')">
                                        Não
                                    </label>
                                </div>
                                <div class="radio">
                                    <label for="presenca_lesoes-1">
                                        <input type="radio" name="presenca_lesoes" id="presenca_lesoes-1" value="s" onclick="$('#lesoes_pele').show('slow')">
                                        Sim
                                    </label>
                                </div>
                            </div>
                        </div>


                        <div id="lesoes_pele" style="display: none">

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="local_lesao">Local da lesão</label>  
                                <div class="col-md-6">
                                    <input id="local_lesao" name="local_lesao" type="text" placeholder="" class="form-control input-md">

                                </div>
                            </div>

                            <!-- Select Basic -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="tempo_lesao">Tempo</label>
                                <div class="col-md-6">
                                    <select id="tempo_lesao" name="tempo_lesao" class="form-control">
                                        <option value="1">Menos de 6 meses</option>
                                        <option value="2">Menos de 1 ano</option>
                                        <option value="3">Mais de 2 anos</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="diametro_comp">Diâmetro (céfalo-caudal)</label>  
                                <div class="col-md-6">
                                    <input id="diametro_comp" name="diametro_comp" type="number" placeholder="" class="form-control input-md">
                                    <span class="help-block">(em centímetros)</span>  
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="diametro_horizontal">Diâmetro (horizontal)</label>  
                                <div class="col-md-6">
                                    <input id="diametro_horizontal" name="diametro_horizontal" type="number" placeholder="" class="form-control input-md">
                                    <span class="help-block">(em centímetros)</span>  
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="profundidade_lesao">Profundidade</label>  
                                <div class="col-md-6">
                                    <input id="profundidade_lesao" name="profundidade_lesao" type="number" placeholder="" class="form-control input-md">
                                    <span class="help-block">(em centímetros)</span>  
                                </div>
                            </div>

                            <!-- Multiple Checkboxes -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="exsudato">Exsudato (substância líquida eliminada patologicamente)</label>
                                <div class="col-md-4">

                                    <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(37)}" varStatus="contador">
                                        <div class="checkbox">
                                            <label for="exsudato-${contador.count}">
                                                <input type="checkbox" name="exsudato" id="exsudato-${contador.count}" value="${contador.count}">
                                                ${item}
                                            </label>
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>

                            <!-- Multiple Radios -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="odor_lesao">Odor</label>
                                <div class="col-md-4">
                                    <div class="radio">
                                        <label for="odor_lesao-0">
                                            <input type="radio" name="odor_lesao" id="odor_lesao-0" value="n" checked="checked">
                                            Ausente
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label for="odor_lesao-1">
                                            <input type="radio" name="odor_lesao" id="odor_lesao-1" value="s">
                                            Presente
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <!-- Multiple Checkboxes -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="leito">Leito</label>
                                <div class="col-md-4">

                                    <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(38)}" varStatus="contador">
                                        <div class="checkbox">
                                            <label for="leito-${contador.count}">
                                                <input type="checkbox" name="leito" id="leito-${contador.count}" value="${contador.count}">
                                                ${item}
                                            </label>
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>

                            <!-- Multiple Checkboxes -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="bordas">Bordas</label>
                                <div class="col-md-4">

                                    <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(40)}" varStatus="contador">
                                        <div class="checkbox">
                                            <label for="bordas-${contador.count}">
                                                <input type="checkbox" name="bordas" id="bordas-${contador.count}" value="${contador.count}">
                                                ${item}
                                            </label>
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>

                            <!-- Multiple Radios -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="debridamento">Debridamento</label>
                                <div class="col-md-4">
                                    <div class="radio">
                                        <label for="debridamento-0">
                                            <input type="radio" name="debridamento" id="debridamento-0" value="n" checked="checked" onclick="$('#debridamento_info').hide('slow')">
                                            Não
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label for="debridamento-1">
                                            <input type="radio" name="debridamento" id="debridamento-1" value="s" onclick="$('#debridamento_info').show('slow')">
                                            Sim
                                        </label>
                                    </div>
                                </div>
                            </div>

                                <div id="debridamento_info" style="display: none">
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="debridamento_quando">Quando</label>  
                                        <div class="col-md-6">
                                            <input id="debridamento_quando" name="debridamento_quando" type="text" placeholder="" class="form-control input-md">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="debridamento_quem">Por quem</label>  
                                        <div class="col-md-6">
                                            <input id="debridamento_quem" name="debridamento_quem" type="text" placeholder="" class="form-control input-md">

                                        </div>
                                    </div>

                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="debridamento_onde">Onde</label>  
                                        <div class="col-md-6">
                                            <input id="debridamento_onde" name="debridamento_onde" type="text" placeholder="" class="form-control input-md">

                                        </div>
                                    </div>

                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="debridamento_vezes">Quantas vezes</label>  
                                        <div class="col-md-6">
                                            <input id="debridamento_vezes" name="debridamento_vezes" type="text" placeholder="" class="form-control input-md">

                                        </div>
                                    </div>

                                    <!-- Multiple Checkboxes -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="debridamento_opcao">Tipo</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(41)}" varStatus="contador">
                                                <div class="checkbox">
                                                    <label for="debridamento_opcao-${contador.count}">
                                                        <input type="checkbox" name="debridamento_opcao" id="debridamento_opcao-${contador.count}" value="${contador.count}">
                                                        ${item}
                                                    </label>
                                                </div>
                                            </c:forEach>

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
                                            <label class="col-md-4 control-label" for="cd1_lesa_fisi">CD</label>
                                            <div class="col-md-4">

                                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(42)}" varStatus="contador">
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
                                            <label class="col-md-4 control-label" for="fr1_lesa_fisi">FR</label>
                                            <div class="col-md-4">

                                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(43)}" varStatus="contador">
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
                                        <label class="col-md-4 control-label" for="de1_lesa_fisi">DE</label>
                                        <div class="col-md-4">
                                            <div class="checkbox">
                                                <label for="de1_lesa_fisi-0">
                                                    <input type="checkbox" name="de1_lesa_fisi" id="de1_lesa_fisi-0" value="1">
                                                    Integridade da pele prejudicada (00046)
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
                                            <label class="col-md-4 control-label" for="cd2_lesa_fisi">CD</label>
                                            <div class="col-md-4">

                                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(44)}" varStatus="contador">
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
                                            <label class="col-md-4 control-label" for="fr2_lesa_fisi">FR</label>
                                            <div class="col-md-4">

                                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(45)}" varStatus="contador">
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
                                        <label class="col-md-4 control-label" for="de2_lesa_fisi">DE</label>
                                        <div class="col-md-4">
                                            <div class="checkbox">
                                                <label for="de2_lesa_fisi-0">
                                                    <input type="checkbox" name="de2_lesa_fisi" id="de2_lesa_fisi-0" value="1">
                                                    DE: Recuperação cirúrgica retardada
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>


                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="observacoes_lesa_fisi">Observações</label>  
                                <div class="col-md-6">
                                    <textarea id="observacoes_lesa_fisi" name="observacoes_lesa_fisi" class="form-control input-md"></textarea>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title" style="font-weight:bold" >Classe 6 - Termorregulação</h2> 
                            Processo fisiológico de regulação de calor e energia no corpo para protegê-lo.
                        </div>
                        <div class="panel-body">
                            <!-- Multiple Radios -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="alteracao_temperatura">Temperatura corporal</label>
                                <div class="col-md-4">
                                    <div class="radio">
                                        <label for="alteracao_temperatura-0">
                                            <input type="radio" name="alteracao_temperatura" id="alteracao_temperatura-0" value="n" checked="checked">
                                            Normal
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label for="alteracao_temperatura-1">
                                            <input type="radio" name="alteracao_temperatura" id="alteracao_temperatura-1" value="s">
                                            Com alterações
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="tax_temperatura">Tax.</label>  
                                <div class="col-md-6">
                                    <input id="tax_temperatura" name="tax_temperatura" type="number" placeholder="" class="form-control input-md">
                                    <span class="help-block">ºC</span>  
                                </div>
                            </div>

                            <!-- CONJUNTO -->
                            <div class="row" style="border: 1px solid black">
                                <div class="col-xs-12 col-sm-6 col-md-8">
                                    <div class="row" style="border: 1px solid black">
                                        <!-- Multiple Checkboxes -->
                                        <div class="form-group">
                                            <label class="col-md-4 control-label" for="cd1_termorregulacao">CD</label>
                                            <div class="col-md-4">

                                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(46)}" varStatus="contador">
                                                    <div class="checkbox">
                                                        <label for="cd4-${contador.count}">
                                                            <input type="checkbox" name="cd4" id="cd4-${contador.count}" value="${contador.count}">
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
                                            <label class="col-md-4 control-label" for="fr1_termorregulacao">FR</label>
                                            <div class="col-md-4">

                                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(47)}" varStatus="contador">
                                                    <div class="checkbox">
                                                        <label for="fr4-${contador.count}">
                                                            <input type="checkbox" name="fr4" id="fr4-${contador.count}" value="${contador.count}">
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
                                        <label class="col-md-4 control-label" for="de1_termorregulacao">DE</label>
                                        <div class="col-md-4">
                                            <div class="checkbox">
                                                <label for="de1_termorregulacao-0">
                                                    <input type="checkbox" name="de1_termorregulacao" id="de1_termorregulacao-0" value="1">
                                                    Hipotermia (00007)
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
                                            <label class="col-md-4 control-label" for="cd2_termorregulacao">CD</label>
                                            <div class="col-md-4">

                                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(48)}" varStatus="contador">
                                                    <div class="checkbox">
                                                        <label for="cd5-${contador.count}">
                                                            <input type="checkbox" name="cd5" id="cd5-${contador.count}" value="${contador.count}">
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
                                            <label class="col-md-4 control-label" for="fr1_termorregulacao">FR</label>
                                            <div class="col-md-4">

                                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(49)}" varStatus="contador">
                                                    <div class="checkbox">
                                                        <label for="fr5-${contador.count}">
                                                            <input type="checkbox" name="fr5" id="fr5-${contador.count}" value="${contador.count}">
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
                                        <label class="col-md-4 control-label" for="de2_termorregulacao">DE</label>
                                        <div class="col-md-4">
                                            <div class="checkbox">
                                                <label for="de2_termorregulacao-0">
                                                    <input type="checkbox" name="de2_termorregulacao" id="de2_termorregulacao-0" value="1">
                                                    Hipotermia (00006)
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="termorregulacao_observacoes">Observações</label>  
                                <div class="col-md-6">
                                    <textarea id="termorregulacao_observacoes" name="termorregulacao_observacoes" class="form-control input-md"></textarea>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <input type="submit" class="btn btn-primary" value="Avançar">
                </fieldset>
                </form>
            </div>