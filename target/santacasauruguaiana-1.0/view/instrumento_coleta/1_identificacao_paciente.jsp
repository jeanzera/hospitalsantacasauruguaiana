<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="itensSelecao" class="br.edu.unipampa.controller.ProntuarioController"/>

<div class="panel-heading">
    <h2 class="panel-title" style="font-weight:bold">IDENTIFICAÇÃO DO PACIENTE</h2>
</div>

<!--Dados gerais do paciente-->
<div class="panel-body">
    <!-- Text input-->


    <form class="form-horizontal" action="${pageContext.request.contextPath}/sistema" method="post">
        <input type="hidden" name="classe" value="PacienteController">
        <input type="hidden" name="metodo" value="adicionarPaciente">
        <fieldset>
            
            <!-- Formulário construído com Bootsnipp-->    
            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="nome_paciente">Nome</label>  
                <div class="col-md-6">
                    <input id="nome_paciente" name="nome_paciente" type="text" placeholder="Nome do paciente" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Multiple Radios (inline) -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="sexo">Sexo</label>
                <div class="col-md-4"> 
                    <label class="radio-inline" for="sexo-0">
                        <input type="radio" name="sexo_paciente" id="sexo_paciente-0" value="masculino" checked="checked">
                        Masculino
                    </label> 
                    <label class="radio-inline" for="sexo-1">
                        <input type="radio" name="sexo_paciente" id="sexo_paciente-1" value="feminino">
                        Feminino
                    </label>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="endereco">Endereço</label>  
                <div class="col-md-6">
                    <input id="endereco_paciente" name="endereco_paciente" type="text" placeholder="Endereço" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="profissao">Profissão</label>  
                <div class="col-md-6">
                    <input id="profissao_paciente" name="profissao_paciente" type="text" placeholder="Profissão" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="escolaridade">Escolaridade</label>
                <div class="col-md-6">
                    <select id="escolaridade_paciente" name="escolaridade_paciente" class="form-control">
                        <option value="Sem escolaridade">Sem escolaridade</option>
                        <option value="Ensino fundamental">Ensino fundamental</option>
                        <option value="Ensino medio">Ensino médio</option>
                        <option value="Ensino superior">Ensino superior</option>
                    </select>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="naturalidade">Naturalidade</label>  
                <div class="col-md-6">
                    <input id="naturalidade_paciente" name="naturalidade_paciente" type="text" placeholder="Naturalidade" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="pessoacontato">Pessoa para contato</label>  
                <div class="col-md-6">
                    <input id="pessoacontato_paciente" name="pessoacontato_paciente" type="text" placeholder="Pessoa para contato" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Multiple Radios (inline) -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="moradia">Moradia</label>
                <div class="col-md-4"> 
                    <label class="radio-inline" for="moradia-0">
                        <input type="radio" name="moradia_paciente" id="moradia_paciente-0" value="urbana" checked="checked">
                        Urbana
                    </label> 
                    <label class="radio-inline" for="moradia-1">
                        <input type="radio" name="moradia_paciente" id="moradia_paciente-1" value="rural">
                        Rural
                    </label>
                </div>
            </div>

            <!--             Text input
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="idade">Idade</label>  
                            <div class="col-md-6">
                                <input id="idade_paciente" name="idade_paciente" type="number" placeholder="Idade" class="form-control input-md" required="">
            
                            </div>
                        </div>-->

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="data_nasc">Data de nascimento</label>  
                <div class="col-md-6">
                    <input id="data_nasc_paciente" name="data_nasc_paciente" type="date" placeholder="Data de nascimento" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="cidade">Cidade</label>  
                <div class="col-md-6">
                    <input id="cidade_paciente" name="cidade_paciente" type="text" placeholder="Cidade" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="estado_civil">Estado civil</label>
                <div class="col-md-6">
                    <select id="estado_civil_paciente" name="estado_civil_paciente" class="form-control">
                        <option value="solteiro">Solteiro</option>
                        <option value="casado">Casado</option>
                        <option value="separado">Separado</option>
                        <option value="divorciado">Divorciado</option>
                        <option value="viuvo">Viúvo</option>
                    </select>
                </div>
            </div>

            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="etnia">Etnia</label>
                <div class="col-md-6">
                    <select id="etnia_paciente" name="etnia_paciente" class="form-control">
                        <option value="branco">Branco</option>
                        <option value="negro">Negro</option>
                        <option value="pardo">Pardo</option>
                        <option value="indio">Índio</option>
                        <option value="mulato">Mulato</option>
                    </select>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="servico_referencia">Serviço de referência</label>  
                <div class="col-md-6">
                    <input id="servico_referencia_paciente" name="servico_referencia_paciente" type="text" placeholder="Serviço de referência" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="telefone">Telefone</label>  
                <div class="col-md-6">
                    <input id="telefone_paciente" name="telefone_paciente" type="phone" placeholder="Telefone" class="form-control input-md" required="">

                </div>
            </div>
            
            <!-- Number input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="telefone">RG ou CPF</label>  
                <div class="col-md-6">
                    <input id="rg_paciente" name="rg_paciente" type="number" placeholder="RG ou CPF" class="form-control input-md" required="">
                </div>
            </div>
            <input type="submit" class="btn btn-primary" value="Cadastrar o paciente e avançar">
        </fieldset>
    </form>
</div>
