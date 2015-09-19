package br.edu.unipampa.controller;

import br.edu.unipampa.dao.UsuarioDAO;
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
public class UsuarioController extends HttpServlet implements Acao {

    private UsuarioDAO usuarioDAO;

    public UsuarioController() {
        this.usuarioDAO = new UsuarioDAO();
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
    
    public void adicionarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if (request.getParameter("id_usuario").isEmpty()) {
                //  PrintWriter out = response.getWriter();
                // buscando os parâmetros no request
                String nome = request.getParameter("nome_enfermeiro");
                String email = request.getParameter("email_enfermeiro");
                String usuario = request.getParameter("usuario_enfermeiro");
                String senha = request.getParameter("senha_enfermeiro");
                Boolean usuarioAdmin = false;

                switch (request.getParameter("tipo_usuario")) {
                    case "enfermeiro":
                        usuarioAdmin = false;
                        break;
                    case "administrador":
                        usuarioAdmin = true;
                        break;
                }

                if (usuarioDAO.insert(new Usuario(nome, email, usuario, senha, usuarioAdmin))) {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_sucesso.jsp");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
                    rd.forward(request, response);
                }

            } else if (Integer.parseInt(request.getParameter("id_usuario")) > 0) {
                atualizarUsuario(request, response);
            }

        }
    }

    public void atualizarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            //  PrintWriter out = response.getWriter();
            // buscando os parâmetros no request
            int idUsuario = Integer.parseInt(request.getParameter("id_usuario"));
            String nome = request.getParameter("nome_enfermeiro");
            String email = request.getParameter("email_enfermeiro");
            String usuario = request.getParameter("usuario_enfermeiro");
            String senha = request.getParameter("senha_enfermeiro");
            Boolean usuarioAdmin = false;

            switch (request.getParameter("tipo_usuario")) {
                case "enfermeiro":
                    usuarioAdmin = false;
                    break;
                case "administrador":
                    usuarioAdmin = true;
                    break;
            }

            if (usuarioDAO.update(new Usuario(idUsuario, nome, email, usuario, senha, usuarioAdmin))) {
                RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_sucesso.jsp");
                rd.forward(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_falha.jsp");
                rd.forward(request, response);
            }
        }
    }

    public void listarUsuarios(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UsuarioDAO usuarioDao = new UsuarioDAO();

        List<Usuario> listaGeral = usuarioDao.selectLista();
        request.setAttribute("listaUsuariosRequest", listaGeral);
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "pesquisar_usuario.jsp");
        rd.forward(request, response);
    }

    public void pesquisarUsuarios(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UsuarioDAO usuarioDao = new UsuarioDAO();
        String nomePesquisa = request.getParameter("nome_user_pesquisa");
        List<Usuario> listaPesquisa = usuarioDao.selectListaByNome(nomePesquisa);
        request.setAttribute("listaUsuariosRequest", listaPesquisa);
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "pesquisar_usuario.jsp");
        rd.forward(request, response);
    }

    public void excluirUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id_remocao"));
        // Long id = Long.parseLong(request.getParameter("id_remocao"));
        Usuario usuarioRemocao = new Usuario().getById(id);
        boolean result = usuarioRemocao.remove(usuarioRemocao);

        String mensagemRetorno;
        if (result) {
            mensagemRetorno = "O contato " + usuarioRemocao.getNomeUsuario() + " foi excluído com sucesso.";
        } else {
            mensagemRetorno = "Não foi possível excluir o contato.";
        }

        request.setAttribute("listaUsuariosRequest", mensagemRetorno);
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_sucesso.jsp");
        rd.forward(request, response);
    }
    
    public void alterarPermissaoUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id_permissao"));
        System.out.println(id);
        boolean ativoUsuario = Boolean.parseBoolean((request.getParameter("ativo_usuario")));
        Usuario usuarioPermissao = new Usuario().getById(id);
        System.out.println("o nome do selecionado é: " + usuarioPermissao.getNomeUsuario());
        if (ativoUsuario == true){
            usuarioPermissao.setAtivoUsuario(false);
        } else if (ativoUsuario == false){
            usuarioPermissao.setAtivoUsuario(true);
        }
        boolean result = usuarioPermissao.alteraPermissao(usuarioPermissao);

        String mensagemRetorno;
        if (result) {
            mensagemRetorno = "O contato " + usuarioPermissao.getNomeUsuario() + " foi alterado com sucesso.";
        } else {
            mensagemRetorno = "Não foi possível alterar o contato.";
        }

        request.setAttribute("listaUsuariosRequest", mensagemRetorno);
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "operacao_sucesso.jsp");
        rd.forward(request, response);
    }

    public void editarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id_edicao"));
        System.out.println(id);
        Usuario usuarioEdicao = new Usuario().getById(id);
        request.setAttribute("usuario", usuarioEdicao);
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "cadastrar_usuario.jsp");
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
