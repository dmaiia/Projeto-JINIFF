
package Hibernate;

import Entidade.Modalidade;
import java.util.List;  
import org.hibernate.HibernateException; 
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;

public class ModalidadeDAO {
   
     private static SessionFactory factory; 
   /* Method to CREATE an employee in the database */
   /**
    * Este metodo adiciona um aluno ao Banco de Dados
    * @param aluno um objeto ja preenchido da classe aluno
    * @return retorna o código gerado
    */
  
    /**
     * Este metodo adiciona um aluno ao Banco de Dados
     * @param modalidade
     * @return retorna o código gerado
     * 
     */
     public boolean addModalidade(Modalidade modalidade){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      boolean foi = false;
      String modalidadeID = null;
      
      try{
         tx = session.beginTransaction();
         
         modalidadeID = (String)session.save(modalidade); 
         tx.commit();
      }catch (HibernateException e) {
         if (modalidadeID!=null){ tx.rollback();
         e.printStackTrace(); 
            } throw e;
         
     
      }finally {
         session.close(); 
      }
      
       if(modalidadeID!= null){
          foi = true;
      }
      
      return foi;
   }
   
  
   public List<Modalidade> listaModalidade( ){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      List <Modalidade> modalidades = null;
      try{
         tx = session.beginTransaction();
         modalidades = session.createQuery("FROM Modalidade").list(); 
        
         tx.commit();
         
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
          e.printStackTrace();
         
      }finally {
         session.close(); 
      }
      return modalidades;
   }
   
    /* Method to UPDATE salary for an empregado */
   
 
   public void deleteModalidade(String nome /*Integer AlunoID */){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      try{
         tx = session.beginTransaction();
         Modalidade modalidade = 
                   (Modalidade)session.get(Modalidade.class, nome); 
         session.delete(modalidade); 
         tx.commit();
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 

      }finally {
         session.close(); 
      }
   }
   
   public Modalidade recuperaModalidade(String nome) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Modalidade modalidades = null;
        try {
             modalidades = (Modalidade) session
                     .createQuery("from Modalidade where nome= :nome")
                     .setString("nome", nome).uniqueResult();
                     
            
        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return modalidades;
    } 
}