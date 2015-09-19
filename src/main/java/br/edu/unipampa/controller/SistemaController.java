package br.edu.unipampa.controller;

import br.edu.unipampa.dao.UsuarioDAO;
import br.edu.unipampa.model.Usuario;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jeanzera
 */
public class SistemaController extends HttpServlet implements Acao {

    public SistemaController() {

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

    public void menu(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "menu.jsp");
        rd.forward(request, response);
    }

    public void cadastrarPaciente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "formulario_1_identificacao.jsp");
        rd.forward(request, response);
    }

    public void gerarRelatorios(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "relatorio.jsp");
        rd.forward(request, response);
    }

    public void cadastrarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "cadastrar_usuario.jsp");
        rd.forward(request, response);
    }

    public void ajuda(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "ajuda.jsp");
        rd.forward(request, response);
    }

    public void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd = request.getRequestDispatcher("/view/" + "login.jsp");
        rd.forward(request, response);
    }

    // http://blog.hallanmedeiros.com/2009/07/13/login-com-jsp_servlets-postgresql-parte-2/
    public void executarLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(); //obtem a sessao do usuario, caso exista
        
        Usuario user = null;
        String loginForm = request.getParameter("usuario_login"); // Pega o Login vindo do formulario
        String senhaForm = request.getParameter("usuario_senha"); //Pega a senha vinda do formulario

        try {
            UsuarioDAO usuarioDao = new UsuarioDAO(); //cria uma instancia do DAO usuario
            user = usuarioDao.getUsuarioLogin(loginForm, senhaForm);
        } catch (Exception e) {
        }

        //se nao encontrou usuario no banco, redireciona para a pagina de erro!
        if (user == null) {
            session = request.getSession();
            session.invalidate();
            request.getRequestDispatcher("/view/operacao_falha.jsp").forward(request, response);
        } else {
            session = request.getSession();
            //se o dao retornar um usuario, coloca o mesmo na sessao
            session.setAttribute("user", user);
            RequestDispatcher view;
            view = request.getRequestDispatcher("/view/operacao_sucesso.jsp");
            view.forward(request, response);
           // request.getRequestDispatcher("/view/" + "operacao_sucesso.jsp").forward(request, response);
          //  response.sendRedirect("/view/" + "operacao_sucesso.jsp");
        }
    }

    public void executarLogout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       HttpSession session = request.getSession(); //obtem a sessao do usuario, caso exista
     //   session.setAttribute("user", null);
       // session.invalidate();
       // session.removeValue("user");
       // response.sendRedirect("/view/" + "login.jsp");
      //  response.sendRedirect("/view/" + "operacao_sucesso.jsp");
      //  request.getRequestDispatcher("/view/" + "login.jsp").forward(request, response);
        
        try {
            request.getSession().invalidate();
            request.getSession().removeAttribute("user");
        } catch (Exception e) {

        }

        request.getRequestDispatcher("/view/login.jsp").forward(request, response);
        
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
