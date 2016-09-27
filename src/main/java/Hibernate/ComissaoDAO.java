
package Hibernate;

import Entidade.Comissao;
import java.util.List;  
import org.hibernate.HibernateException; 
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;

public class ComissaoDAO {
   
     private static SessionFactory factory; 
   /* Method to CREATE an employee in the database */
   /**
    * Este metodo adiciona um aluno ao Banco de Dados
    * @param comissao
    * @param nome
    * @param descricao
    * @param responsabilidades classe comissao
    * @return retorna o código gerado
    */
   public boolean addComissao(Comissao comissao){
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
   
   /* public Comissao login(String email, String senha) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Aluno Aluno = null;
        try {
            Aluno = (Aluno) session
                    .createQuery("from Aluno where email= :email and senha= :senha")
                    .setString("email", email).setString("senha", senha).uniqueResult();
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return Aluno;
    }
   */
   public List<Comissao> listaComissao( ){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      List <Comissao> comissoes = null;
      try{
         tx = session.beginTransaction();
         comissoes = session.createQuery("FROM Comissao").list(); 
        
         tx.commit();
         
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
          e.printStackTrace();
         
      }finally {
         session.close(); 
      }
      return comissoes;
   }
   
    /* Method to UPDATE salary for an empregado */
    public void updateComissao(String /* Integer AlunoID */nomeID, String nome, String descricao, String responsabilidades) {
        
        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Comissao comissao
                    = (Comissao) session.get(Comissao.class, nomeID);
            // daí aqui vc vai chamar TODOS os sets do seu objeto
            comissao.setNome(nome);
            comissao.setDescricao(descricao);
            comissao.setResponsabilidades(responsabilidades);
            
            // e só depois chamar o update
            session.update(comissao);
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
   
   public Comissao recuperaComissao(String nome) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Comissao comissoes = null;
        try {
             comissoes = (Comissao) session
                     .createQuery("from Comissao where nome= :nome")
                     .setString("nome", nome).uniqueResult();
                     
            
        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return comissoes;
    } 
}