package Servlet;

import Entidade.Aluno;
import Hibernate.AlunoDAO;
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
public class AtualizaAluno extends HttpServlet {

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
    Aluno aluno = (Aluno) request.getSession(true).getAttribute("alunoAtual");
        AlunoDAO alunodao = new AlunoDAO();

            String nome = request.getParameter("firstname");
            String sobrenome = request.getParameter("lastname");
            String sexo = request.getParameter("gender");
            String data_nascimento = request.getParameter("bday");
            String curso = request.getParameter("course");
            String ano = request.getParameter("ano");
            String email = request.getParameter("email");
            String senha = request.getParameter("password");
            String numero = request.getParameter("numero");
            
//     ESSE METODO VCS VAO PRECISAR MUDAR PARA QUE TENHA
//      TODOS OS PARAMETROS DA SUA ENTIDADE!
            alunodao.updateAluno(aluno.getEmail(), nome, sobrenome, data_nascimento, sexo, curso, ano,
            numero,  email, senha);


            // aí, depois de atualizar, vc recarrega a list na sessão http:
            List<Aluno> alunos = alunodao.listaAluno();
            request.getSession(true).setAttribute("alunos", alunos);
            // e volta para a página da listagem
            // TODO: Se nessa volta tiver uma mensagem falando que deu certo, ganha uma moral extra
            response.sendRedirect("listAluno.jsp");
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