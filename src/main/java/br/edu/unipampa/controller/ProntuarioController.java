package br.edu.unipampa.controller;

import br.edu.unipampa.dao.ProntuarioDAO;
import br.edu.unipampa.model.Prontuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 121151384
 */
public class ProntuarioController extends HttpServlet implements Acao {

    private ProntuarioDAO prontuarioDAO;

    public ProntuarioController() {
        this.prontuarioDAO = new ProntuarioDAO();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    public ArrayList gerarItensFormulario(int codTabela){

        ArrayList<String> itens = prontuarioDAO.gerarItensFormularioDao(codTabela);
        return itens;
    }

    public void adicionarPromocaoSaude(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String stringIdPaciente = request.getParameter("id_paciente");
        int idPaciente = 0;

        if (!("null".equals(stringIdPaciente))) {
            // Se caiu aqui, o usuário foi preenchido e não é null.
            idPaciente = Integer.parseInt(stringIdPaciente);
        } //else if ("null".equals(stringIdPaciente)) {
        // Não recebeu nenhum usuario como parâmetro. Erro.
        // RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
        // rd.forward(request, response);
        // }
        try (PrintWriter out = response.getWriter()) {
            if (idPaciente > 0) {
                //  PrintWriter out = response.getWriter();
                // buscando os parâmetros no request
                int pacienteProntuario = idPaciente;
                int prontuario = Integer.parseInt(request.getParameter("prontuario_paciente"));
                int boletim = Integer.parseInt(request.getParameter("boletim_atendimento_paciente"));
                String motivoAtendimento = request.getParameter("motivo_atendimento");
                String estadoSaude = request.getParameter("estado_saude_previa_atual");
                String outrasHistorias = request.getParameter("historia_outras");
                Boolean hospitalPrevia = false;
                switch (request.getParameter("hospitalizacao_previa")) {
                    case "n":
                        hospitalPrevia = false;
                        break;
                    case "s":
                        hospitalPrevia = true;
                        break;
                }
                Boolean realCirurgias = false;
                switch (request.getParameter("realizou_cirurgias")) {
                    case "n":
                        realCirurgias = false;
                        break;
                    case "s":
                        realCirurgias = true;
                        break;
                }
                String quaisCirurgias = request.getParameter("quais_cirurgias");
                Boolean utilizaMedicCasa = false;
                switch (request.getParameter("utilizacao_medicamentos_casa")) {
                    case "n":
                        utilizaMedicCasa = false;
                        break;
                    case "s":
                        utilizaMedicCasa = true;
                        break;
                }
                Boolean utilizaMedicAdeq = false;
                switch (request.getParameter("uso_adequado")) {
                    case "n":
                        utilizaMedicAdeq = false;
                        break;
                    case "s":
                        utilizaMedicAdeq = true;
                        break;
                }
                String medicPreescritos = request.getParameter("prescritos_casa");
                String medicNaoPreescritos = request.getParameter("nao_prescritos_casa");
                Boolean alergicoMedic = false;
                switch (request.getParameter("alergico")) {
                    case "n":
                        alergicoMedic = false;
                        break;
                    case "s":
                        alergicoMedic = true;
                        break;
                }
                String quaisAlergico = request.getParameter("medicamentos_alergico");

                Boolean de1 = false;
                de1 = "1".equals(request.getParameter("de1"));

                Boolean de2 = false;
                de2 = "1".equals(request.getParameter("de2"));

                String observacoes = request.getParameter("observacoes");

                Prontuario pront = new Prontuario(prontuario, pacienteProntuario, boletim, motivoAtendimento, estadoSaude, outrasHistorias, hospitalPrevia, realCirurgias, quaisCirurgias, utilizaMedicCasa, utilizaMedicAdeq, medicPreescritos, medicNaoPreescritos, alergicoMedic, quaisAlergico, de1, de2, observacoes);

                if (prontuarioDAO.insertProntuarioAPromocaoSaude(pront)) {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_sucesso.jsp");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
                    rd.forward(request, response);
                }

            }

        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
            rd.forward(request, response);
            throw new ServletException("A lógica de negócios causou uma exceção: ", e);
        }
    }

    public void adicionarNutricao(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String stringIdProntuario = request.getParameter("id_prontuario");
        stringIdProntuario = "1222";
        int idProntuario = 0;

        if (!("null".equals(stringIdProntuario))) {
            // Se caiu aqui, o usuário foi preenchido e não é null.
            idProntuario = Integer.parseInt(stringIdProntuario);
        } //else if ("null".equals(stringIdPaciente)) {
        // Não recebeu nenhum usuario como parâmetro. Erro.
        // RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
        // rd.forward(request, response);
        // }
        try (PrintWriter out = response.getWriter()) {
            if (idProntuario > 0) {
                //  PrintWriter out = response.getWriter();
                // buscando os parâmetros no request

                Boolean alterNutricao = false;
                switch (request.getParameter("alteracao_nutricao")) {
                    case "n":
                        alterNutricao = false;
                        break;
                    case "s":
                        alterNutricao = true;
                        break;
                }

                Boolean de1 = false;
                de1 = "1".equals(request.getParameter("de1"));

                String observacoesNutriInges = request.getParameter("observacoesNutriInges");

                Boolean glicemia = false;
                switch (request.getParameter("glicemia")) {
                    case "n":
                        glicemia = false;
                        break;
                    case "s":
                        glicemia = true;
                        break;
                }

                int valorGlicemia = Integer.parseInt(request.getParameter("valorGlicemia"));

                Boolean de2 = false;
                de2 = "1".equals(request.getParameter("de2_conforto"));

                String observacoesMetabolismo = request.getParameter("observacoesMetabolismo");

                Prontuario pront = new Prontuario(alterNutricao, de1, observacoesNutriInges, glicemia, valorGlicemia, de2, observacoesMetabolismo, idProntuario);

                if (prontuarioDAO.insertProntuarioBNutricao(pront)) {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_sucesso.jsp");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
                    rd.forward(request, response);
                }

            }

        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
            rd.forward(request, response);
            throw new ServletException("A lógica de negócios causou uma exceção: ", e);
        }
    }

    public void adicionarEliminacaoTroca(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String stringIdProntuario = request.getParameter("id_prontuario");
        stringIdProntuario = "1222";
        int idProntuario = 0;

        if (!("null".equals(stringIdProntuario))) {
            // Se caiu aqui, o usuário foi preenchido e não é null.
            idProntuario = Integer.parseInt(stringIdProntuario);
        } //else if ("null".equals(stringIdPaciente)) {
        // Não recebeu nenhum usuario como parâmetro. Erro.
        // RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
        // rd.forward(request, response);
        // }
        try (PrintWriter out = response.getWriter()) {
            if (idProntuario > 0) {
                //  PrintWriter out = response.getWriter();
                // buscando os parâmetros no request

                Boolean alterAbdome = false;
                switch (request.getParameter("abdome")) {
                    case "n":
                        alterAbdome = false;
                        break;
                    case "s":
                        alterAbdome = true;
                        break;
                }

                Boolean ruidosHidroaereos = false;
                switch (request.getParameter("ruidosHidroaereos")) {
                    case "n":
                        ruidosHidroaereos = false;
                        break;
                    case "s":
                        ruidosHidroaereos = true;
                        break;
                }

                Boolean alterEliminIntestinal = false;
                switch (request.getParameter("alteracao_eliminacao_intestinal")) {
                    case "n":
                        alterEliminIntestinal = false;
                        break;
                    case "s":
                        alterEliminIntestinal = true;
                        break;
                }

                String freqElimIntestinal = request.getParameter("eliminacao_intestinal_freq");
                String quantElimIntestinal = request.getParameter("eliminacao_intestinal_quant");
                String tipoAlterElimIntestinal = request.getParameter("tipo_alteracao_intestinal");

                Boolean de1 = false;
                de1 = "1".equals(request.getParameter("de1"));
                Boolean de2 = false;
                de2 = "1".equals(request.getParameter("de2"));

                String observDom3Classe2 = request.getParameter("observacoes_func_gast");

                Prontuario pront = new Prontuario(alterAbdome, ruidosHidroaereos, alterEliminIntestinal, freqElimIntestinal, quantElimIntestinal, tipoAlterElimIntestinal, de1, de2, observDom3Classe2, idProntuario);

                if (prontuarioDAO.insertProntuarioCEliminacaoTroca(pront)) {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_sucesso.jsp");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
                    rd.forward(request, response);
                }

            }

        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
            rd.forward(request, response);
            throw new ServletException("A lógica de negócios causou uma exceção: ", e);
        }
    }

    public void adicionarAtividadeRepouso(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String stringIdProntuario = request.getParameter("id_prontuario");
        stringIdProntuario = "1222";
        int idProntuario = 0;

        if (!("null".equals(stringIdProntuario))) {
            // Se caiu aqui, o usuário foi preenchido e não é null.
            idProntuario = Integer.parseInt(stringIdProntuario);
        } //else if ("null".equals(stringIdPaciente)) {
        // Não recebeu nenhum usuario como parâmetro. Erro.
        // RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
        // rd.forward(request, response);
        // }
        try (PrintWriter out = response.getWriter()) {
            if (idProntuario > 0) {
                //  PrintWriter out = response.getWriter();
                // buscando os parâmetros no request

                Boolean alterForca = false;
                switch (request.getParameter("forca_muscular")) {
                    case "n":
                        alterForca = false;
                        break;
                    case "s":
                        alterForca = true;
                        break;
                }

                Boolean alterMobilidade = false;
                switch (request.getParameter("mobilidade")) {
                    case "n":
                        alterMobilidade = false;
                        break;
                    case "s":
                        alterMobilidade = true;
                        break;
                }

                Boolean de1 = false;
                de1 = "1".equals(request.getParameter("de1_ativ_exer"));

                String observDom4Classe2 = request.getParameter("observacoes_ativ_exerc");
                float freqCardiaca = Float.parseFloat(request.getParameter("frequencia_cardiaca"));
                float medidaPressao = Float.parseFloat(request.getParameter("medida_pressao_arterial"));

                Boolean de2 = false;
                de2 = "1".equals(request.getParameter("de1_resp_card"));

                String observDom4Classe4 = request.getParameter("observacoes_resp_card");

                Boolean necessitaAuxilioHigiene = false;
                switch (request.getParameter("necessita_auxilio_higiene")) {
                    case "n":
                        necessitaAuxilioHigiene = false;
                        break;
                    case "s":
                        necessitaAuxilioHigiene = true;
                        break;
                }

                String tipoAuxilioHigiene = request.getParameter("tipo_aux_higiene");

                Boolean de3 = false;
                de3 = "1".equals(request.getParameter("de1_autocuidado"));

                String observDom4Classe5 = request.getParameter("observacoes_autocuidado");

                Prontuario pront = new Prontuario(alterForca, alterMobilidade, de1, observDom4Classe2, freqCardiaca, medidaPressao, de2, observDom4Classe4, necessitaAuxilioHigiene, tipoAuxilioHigiene, de3, observDom4Classe5, idProntuario);

                if (prontuarioDAO.insertProntuarioDAtividadeRepouso(pront)) {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_sucesso.jsp");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
                    rd.forward(request, response);
                }

            }

        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
            rd.forward(request, response);
            throw new ServletException("A lógica de negócios causou uma exceção: ", e);
        }
    }

    public void adicionarEnfrentamentoEstresse(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String stringIdProntuario = request.getParameter("id_prontuario");
        stringIdProntuario = "1222";
        int idProntuario = 0;

        if (!("null".equals(stringIdProntuario))) {
            // Se caiu aqui, o usuário foi preenchido e não é null.
            idProntuario = Integer.parseInt(stringIdProntuario);
        } //else if ("null".equals(stringIdPaciente)) {
        // Não recebeu nenhum usuario como parâmetro. Erro.
        // RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
        // rd.forward(request, response);
        // }
        try (PrintWriter out = response.getWriter()) {
            if (idProntuario > 0) {
                //  PrintWriter out = response.getWriter();
                // buscando os parâmetros no request

                Boolean perdaEstresse = false;
                switch (request.getParameter("perdas")) {
                    case "n":
                        perdaEstresse = false;
                        break;
                    case "s":
                        perdaEstresse = true;
                        break;
                }

                Boolean de1 = false;
                de1 = "1".equals(request.getParameter("de1_resp_enfr"));

                String observDom9Classe2 = request.getParameter("observacoes_resp_enfr");

                Prontuario pront = new Prontuario(perdaEstresse, de1, observDom9Classe2, idProntuario);

                if (prontuarioDAO.insertProntuarioEEnfrentamentoEstresse(pront)) {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_sucesso.jsp");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
                    rd.forward(request, response);
                }

            }

        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
            rd.forward(request, response);
            throw new ServletException("A lógica de negócios causou uma exceção: ", e);
        }
    }

    public void adicionarSegurancaProtecao(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String stringIdProntuario = request.getParameter("id_prontuario");
        stringIdProntuario = "1222";
        int idProntuario = 0;

        if (!("null".equals(stringIdProntuario))) {
            // Se caiu aqui, o usuário foi preenchido e não é null.
            idProntuario = Integer.parseInt(stringIdProntuario);
        } //else if ("null".equals(stringIdPaciente)) {
        // Não recebeu nenhum usuario como parâmetro. Erro.
        // RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
        // rd.forward(request, response);
        // }
        try (PrintWriter out = response.getWriter()) {
            if (idProntuario > 0) {
                //  PrintWriter out = response.getWriter();
                // buscando os parâmetros no request

                String outrasVacinas = request.getParameter("outras_vacinas");

                Boolean de1 = false;
                de1 = "1".equals(request.getParameter("de1_infeccao"));

                String observDom11Classe1 = request.getParameter("observacoes_infeccao");

                Boolean alteracoesPele = false;
                switch (request.getParameter("alteracao_pele")) {
                    case "n":
                        alteracoesPele = false;
                        break;
                    case "s":
                        alteracoesPele = true;
                        break;
                }
                
                String outrasAlterPele = request.getParameter("outras_alter_pele");

                Boolean recuperImediata = false;
                switch (request.getParameter("recuper_imediata")) {
                    case "n":
                        recuperImediata = false;
                        break;
                    case "s":
                        recuperImediata = true;
                        break;
                }
                
                String especCirurgia = request.getParameter("espec_cirurgia");
                
                Boolean presencaLesoes = false;
                switch (request.getParameter("presenca_lesoes")) {
                    case "n":
                        presencaLesoes = false;
                        break;
                    case "s":
                        presencaLesoes = true;
                        break;
                }
                
                Boolean de2 = false;
                de2 = "1".equals(request.getParameter("de1_lesa_fisi"));
                
                Boolean de3 = false;
                de3 = "1".equals(request.getParameter("de2_lesa_fisi"));
                
                String observDom11Classe2 = request.getParameter("observacoes_lesa_fisi");
                
                Boolean alterTemperatura = false;
                switch (request.getParameter("alteracao_temperatura")) {
                    case "n":
                        alterTemperatura = false;
                        break;
                    case "s":
                        alterTemperatura = true;
                        break;
                }
                
                Float taxaTemperatura = Float.parseFloat(request.getParameter("tax_temperatura"));
                
                Boolean de4 = false;
                de4 = "1".equals(request.getParameter("de1_termorregulacao"));
                
                Boolean de5 = false;
                de5 = "1".equals(request.getParameter("de2_termorregulacao"));
                
                String observDom11Classe6 = request.getParameter("termorregulacao_observacoes");
                
                Prontuario pront = new Prontuario(outrasVacinas, de1, observDom11Classe1, alteracoesPele, outrasAlterPele, recuperImediata, especCirurgia, presencaLesoes, de2, de3, observDom11Classe2, alterTemperatura, taxaTemperatura, de4, de5, observDom11Classe6);

                if (prontuarioDAO.insertProntuarioFSegurancaProtecao(pront)) {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_sucesso.jsp");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
                    rd.forward(request, response);
                }

            }

        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
            rd.forward(request, response);
            throw new ServletException("A lógica de negócios causou uma exceção: ", e);
        }
    }

    public void adicionarConforto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String stringIdProntuario = request.getParameter("id_prontuario");
        stringIdProntuario = "1222";
        int idProntuario = 0;

        if (!("null".equals(stringIdProntuario))) {
            // Se caiu aqui, o usuário foi preenchido e não é null.
            idProntuario = Integer.parseInt(stringIdProntuario);
        } //else if ("null".equals(stringIdPaciente)) {
        // Não recebeu nenhum usuario como parâmetro. Erro.
        // RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
        // rd.forward(request, response);
        // }
        try (PrintWriter out = response.getWriter()) {
            if (idProntuario > 0) {
                //  PrintWriter out = response.getWriter();
                // buscando os parâmetros no request

                String avaliacaoDor = request.getParameter("avaliacao_dor");
                int escalaDor = Integer.parseInt(request.getParameter("eva"));
                
                Boolean de1 = false;
                de1 = "1".equals(request.getParameter("de1_conforto"));
                
                Boolean de2 = false;
                de2 = "1".equals(request.getParameter("de2_conforto"));
                
                String observDom12Classe1 = request.getParameter("observacoes_conforto");

                Prontuario pront = new Prontuario(avaliacaoDor, escalaDor, de1, de2, observDom12Classe1);

                if (prontuarioDAO.insertProntuarioGConforto(pront)) {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_sucesso.jsp");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
                    rd.forward(request, response);
                }

            }

        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
            rd.forward(request, response);
            throw new ServletException("A lógica de negócios causou uma exceção: ", e);
        }
    }
    
// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
