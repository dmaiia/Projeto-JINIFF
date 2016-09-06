
package Hibernate;

import Entidade.Admin;
import Entidade.Aluno;
import java.util.List;  
import org.hibernate.HibernateException; 
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;

public class AdminDAO {
   
     private static SessionFactory factory; 
   /* Method to CREATE an employee in the database */
   /**
    * Este metodo adiciona um aluno ao Banco de Dados
    * @param aluno um objeto ja preenchido da classe aluno
    * @return retorna o código gerado
    */
  
   
    public Admin login(String email, String senha) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Admin Admin = null;
        try {
            Admin = (Admin) session
                    .createQuery("from Admin where email= :email and senha= :senha")
                    .setString("email", email).setString("senha", senha).uniqueResult();
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return Admin;
    }

   public List<Aluno> listaAluno( ){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      List <Aluno> alunos = null;
      try{
         tx = session.beginTransaction();
         alunos = session.createQuery("FROM Aluno").list(); 
        
         tx.commit();
         
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
          e.printStackTrace();
         
      }finally {
         session.close(); 
      }
      return alunos;
   }
   
    /* Method to UPDATE salary for an empregado */
   
 
   public void deleteAluno(String email /*Integer AlunoID */){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      try{
         tx = session.beginTransaction();
         Aluno aluno = 
                   (Aluno)session.get(Aluno.class, email); 
         session.delete(aluno); 
         tx.commit();
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 

      }finally {
         session.close(); 
      }
   }
   
   public Aluno recuperaAluno(String email) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Aluno alunos = null;
        try {
             alunos = (Aluno) session
                     .createQuery("from Aluno where email= :email")
                     .setString("email", email).uniqueResult();
                     
            
        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return alunos;
    } 
}