package br.edu.unipampa.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 121151384
 */
@WebServlet(urlPatterns = {"/sistema"})

public class FrontController extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String classeDesejada = request.getParameter("classe");
        String metodoDesejado = request.getParameter("metodo");
        try {
            Class classe = Class.forName("br.edu.unipampa.controller." + classeDesejada);
            Acao acaoComando = (Acao) classe.newInstance();
            Class<?> clazz = acaoComando.getClass();
            Method metodoGenerico = clazz.getMethod(metodoDesejado, HttpServletRequest.class, HttpServletResponse.class);
            metodoGenerico.invoke(acaoComando, request, response);

        } catch (Exception e) {
            throw new ServletException("A lógica de negócios causou uma exceção: ", e);
        }
    }
}
