package Servlet;

import Entidade.Aluno;
import Entidade.Comissao;
import Hibernate.AlunoDAO;
import Hibernate.ComissaoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author luizc
 */
public class AtualizaComissao extends HttpServlet {

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
        //esse servlet vai ser bem parecido com o do cadastro.
        // vc pega todas as propriedades que vem do form
        // só que aí vc joga essas informações no método de update do DAO.
//
    Comissao comissao = (Comissao) request.getSession(true).getAttribute("comissaoAtual");
        ComissaoDAO comissaodao = new ComissaoDAO();

            String nome = request.getParameter("nome");
            String descricao = request.getParameter("descricao");
            String responsabilidade = request.getParameter("responsabilidades");
            
            
//     ESSE METODO VCS VAO PRECISAR MUDAR PARA QUE TENHA
//      TODOS OS PARAMETROS DA SUA ENTIDADE!
            comissaodao.updateComissao(comissao.getNome(), nome, descricao, responsabilidade);


            // aí, depois de atualizar, vc recarrega a list na sessão http:
            List<Comissao> comissoes = comissaodao.listaComissao();
            request.getSession(true).setAttribute("comissoes", comissoes);
            // e volta para a página da listagem
            // TODO: Se nessa volta tiver uma mensagem falando que deu certo, ganha uma moral extra
            response.sendRedirect("comissao.jsp");
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