package br.edu.unipampa.controller;

import br.edu.unipampa.dao.PacienteDAO;
import br.edu.unipampa.dao.UsuarioDAO;
import br.edu.unipampa.model.Paciente;
import br.edu.unipampa.model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jeanzera
 */
public class PacienteController extends HttpServlet implements Acao {

    private PacienteDAO pacienteDAO;

    public PacienteController() {
        this.pacienteDAO = new PacienteDAO();
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
//        response.setContentType("text/html;charset=UTF-8");

    }

    public void adicionarPaciente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //   response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            //  PrintWriter out = response.getWriter();
            // buscando os parâmetros no request
            //   String prontuario = request.getParameter("prontuario_paciente");
            String nome = request.getParameter("nome_paciente");
            String sexo = request.getParameter("sexo_paciente");
            String endereco = request.getParameter("endereco_paciente");
            String profissao = request.getParameter("profissao_paciente");
            String escolaridade = request.getParameter("escolaridade_paciente");
            String naturalidade = request.getParameter("naturalidade_paciente");
            String pessoaContato = request.getParameter("pessoacontato_paciente");
            String moradia = request.getParameter("moradia_paciente");
            //  String idade = request.getParameter("idade_paciente");
            String nascimento = request.getParameter("data_nasc_paciente");
            String cidade = request.getParameter("cidade_paciente");
            String estadoCivil = request.getParameter("estado_civil_paciente");
            String etnia = request.getParameter("etnia_paciente");
            String servicoReferencia = request.getParameter("servico_referencia_paciente");
            String telefone = request.getParameter("telefone_paciente");
            String rg = request.getParameter("rg_paciente");

            int resultadoInsertPaciente = pacienteDAO.insert(new Paciente(nome, sexo, endereco, profissao, escolaridade, naturalidade, pessoaContato,
                    moradia, nascimento, cidade, estadoCivil, etnia, servicoReferencia, telefone, rg));

            if (resultadoInsertPaciente >= 0) {
                request.setAttribute("idPaciente", resultadoInsertPaciente);
                RequestDispatcher rd = request.getRequestDispatcher("/view/" + "formulario_2_promocao_saude.jsp");
                rd.forward(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
                rd.forward(request, response);
            }
        }
    }
    
    public void listarPacientes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PacienteDAO pacienteDao = new PacienteDAO();

        List<Paciente> listaPacientesGeral = pacienteDao.selectLista();
        
        request.setAttribute("listaPacientesRequest", listaPacientesGeral);
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "pesquisar_paciente.jsp");
        rd.forward(request, response);
    }
    
    public void pesquisarPacientes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PacienteDAO pacienteDao = new PacienteDAO();
        String nomePesquisa = request.getParameter("nome_paciente_pesquisa");
        List<Paciente> listaPesquisa = pacienteDao.selectListaByNome(nomePesquisa);
        request.setAttribute("listaPacientesRequest", listaPesquisa);
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "pesquisar_paciente.jsp");
        rd.forward(request, response);
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
