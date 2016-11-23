package Hibernate;

import Entidade.Comissao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author aluno
 */
public class ComissaoDAO extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     public boolean ADDComissao(Comissao comissao){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      boolean foi = false;
      String comissaoID = null;
     
      try{
         tx = session.beginTransaction();
        
         comissaoID = (String)session.save(comissao);
         tx.commit();
      }catch (HibernateException e) {
         if (comissaoID!=null){ tx.rollback();
         e.printStackTrace();
            } throw e;
        
    
      }finally {
         session.close();
      }
     
       if(comissaoID!= null){
          foi = true;
      }
     
      return foi;
   }
       
 
   public List<Comissao> listaComissao( ){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      List <Comissao> comissao = null;
      try{
         tx = session.beginTransaction();
         comissao = session.createQuery("FROM Comissao").list();
       
         tx.commit();
        
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
          e.printStackTrace();
        
      }finally {
         session.close();
      }
      return comissao;
   }
  
    /* Method to UPDATE salary for an empregado */
  
 
   public void deleteComissao(String nome /*Integer AlunoID */){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      try{
         tx = session.beginTransaction();
         Comissao comissao =
                   (Comissao)session.get(Comissao.class, nome);
         session.delete(comissao);
         tx.commit();
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace();

      }finally {
         session.close();
      }
   }
   
   public void updateComissao(String /* Integer AlunoID */nomeID, String nome, String descricao, String responsabilidade) {
        
        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Comissao Comissao
                    = (Comissao) session.get(Comissao.class, nomeID);
            // daí aqui vc vai chamar TODOS os sets do seu objeto
            Comissao.setNome(nome);
            Comissao.setDescricao(descricao);
            Comissao.setResponsabilidades(responsabilidade);
            
            
            
            // e só depois chamar o update
            session.update(Comissao);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
            throw e;
        } finally {
            session.close();
        }
    }
  
   public Comissao recuperaComissao(String nome) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Comissao comissao = null;
        try {
             comissao = (Comissao) session
                     .createQuery("from Comissao where nome= :nome")
                     .setString("nome", nome).uniqueResult();
                    
           
        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return comissao;
    }

}
 