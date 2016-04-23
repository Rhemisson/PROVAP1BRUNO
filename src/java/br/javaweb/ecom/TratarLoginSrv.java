/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.javaweb.ecom;

import TratamentoLogin.TLoginN;
import TratamentoLogin.Usuario;
import br.javaweb.Util.JavaWebException;
import br.javaweb.dao.ProdutosDAOP;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 *
 * @author escm
 */
public class TratarLoginSrv extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * /*/
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            String usuario = request.getParameter("Nome");
            String senha = request.getParameter("Senha");

            Usuario objUsuario = new Usuario();

            objUsuario.setUsuario(usuario);
            objUsuario.setSenha(senha);

            Usuario trataLogin = new ProdutosDAOP().getUsuarioSenha(usuario,senha);

            if (trataLogin !=null) {

                HttpSession sessao = request.getSession();

                sessao.setAttribute("usuarioSessao", objUsuario);

                /* TODO output your page here. You may use following sample code. */
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet TratarLoginServlet</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1> Usuario ok " + objUsuario.getUsuario() + "</h1>");
                response.sendRedirect("/Site-Instrumentos/FormCadastro.jsp");
                out.println("</body>");
                out.println("</html>");
            } else {

                /* TODO output your page here. You may use following sample code. */
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet TratarLoginServlet</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1> Usuario ou senha incorreta </h1>");
                out.println("</body>");
                out.println("</html>");
            }

        } catch (JavaWebException ex) {
            Logger.getLogger(TratarLoginSrv.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
        }
    }
}
