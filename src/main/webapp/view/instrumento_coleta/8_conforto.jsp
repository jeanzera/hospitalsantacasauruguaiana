<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="itensSelecao" class="br.edu.unipampa.controller.ProntuarioController"/>

<div class="panel panel-default" style="background-color: #E2EEFF">
    <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
        <input type="hidden" name="classe" value="ProntuarioController">
        <input type="hidden" name="metodo" value="adicionarConforto">
        <input type="hidden" name="id_prontuario" value="<%=request.getAttribute("idProntuario")%>">
        <fieldset>
            <div class="panel-heading">
                <h2 class="panel-title" style="font-weight:bold">DOMÍNIO 12: CONFORTO</h2> 
                Sensação de bem-estar ou tranquilidade mental, física ou social.
            </div>
            <div class="panel-body">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="font-weight:bold" >Classe 1 - Conforto</h2> 
                        Sensação de bem-estar ou tranquilidade e/ou estar livre da dor.
                    </div>
                    <div class="panel-body">

                        <!-- Multiple Checkboxes -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="qualidade_dor">Qualidade da dor</label>
                            <div class="col-md-4">

                                <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(50)}" varStatus="contador">
                                    <div class="checkbox">
                                        <label for="qualidade_dor-${contador.count}">
                                            <input type="checkbox" name="qualidade_dor" id="qualidade_dor-${contador.count}" value="${contador.count}">
                                            ${item}
                                        </label>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="avaliacao_dor">Avaliação da dor</label>  
                            <div class="col-md-6">
                                <input id="avaliacao_dor" name="avaliacao_dor" type="text" placeholder="" class="form-control input-md">

                            </div>
                        </div>

                        <!-- Select Basic -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="eva">Escala Visual Analógica (EVA)</label>
                            <div class="col-md-6">
                                <select id="eva" name="eva" class="form-control">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>
                            </div>
                        </div>

                        <!-- CONJUNTO -->
                        <div class="row" style="border: 1px solid black">
                            <div class="col-xs-12 col-sm-6 col-md-8">
                                <div class="row" style="border: 1px solid black">
                                    <!-- Multiple Checkboxes -->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="cd1_conforto">CD</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(51)}" varStatus="contador">
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
                                        <label class="col-md-4 control-label" for="fr1_conforto">FR</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(52)}" varStatus="contador">
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
                                    <label class="col-md-4 control-label" for="de1_conforto">DE</label>
                                    <div class="col-md-4">
                                        <div class="checkbox">
                                            <label for="de1_conforto-0">
                                                <input type="checkbox" name="de1_conforto" id="de1_conforto-0" value="1">
                                                Dor aguda (00132)
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
                                        <label class="col-md-4 control-label" for="cd2_conforto">CD</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(53)}" varStatus="contador">
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
                                        <label class="col-md-4 control-label" for="fr2_conforto">FR</label>
                                        <div class="col-md-4">

                                            <c:forEach var="item" items="${itensSelecao.gerarItensFormulario(54)}" varStatus="contador">
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
                                            <label for="de2_conforto-0">
                                                <input type="checkbox" name="de2_conforto" id="de2_conforto-0" value="1">
                                                Dor crônica (00133)
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="observacoes_conforto">Observações</label>  
                            <div class="col-md-6">
                                <textarea id="observacoes_conforto" name="observacoes_conforto" class="form-control input-md"></textarea>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <input type="submit" class="btn btn-primary" value="Avançar">
        </fieldset>
    </form>
</div>
