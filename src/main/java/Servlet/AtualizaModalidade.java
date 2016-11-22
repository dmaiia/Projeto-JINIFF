package Servlet;

import Entidade.Aluno;
import Entidade.Modalidade;
import Hibernate.AlunoDAO;
import Hibernate.ModalidadeDAO;
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
public class AtualizaModalidade extends HttpServlet {

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
    Modalidade modalidade = (Modalidade) request.getSession(true).getAttribute("modalidadeAtual");
        ModalidadeDAO moddao = new ModalidadeDAO();

            
            String nome = request.getParameter("nome");
            String especificacao = request.getParameter("especificacao");
 
            String categoria = request.getParameter("categoria");
            String classificacao = request.getParameter("classificacao");
            String hora = request.getParameter("hora");
            String data = request.getParameter("data");
            String local = request.getParameter("local");
            
            

            
//     ESSE METODO VCS VAO PRECISAR MUDAR PARA QUE TENHA
//      TODOS OS PARAMETROS DA SUA ENTIDADE!
            moddao.updateModalidade(modalidade.getNome(), nome, especificacao,  categoria, classificacao, hora, data, local);


            // aí, depois de atualizar, vc recarrega a list na sessão http:
            List<Modalidade> modalidades = moddao.listaModalidade();
            request.getSession(true).setAttribute("modalidades", modalidades);
            // e volta para a página da listagem
            // TODO: Se nessa volta tiver uma mensagem falando que deu certo, ganha uma moral extra
            response.sendRedirect("Modalidades.jsp");
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