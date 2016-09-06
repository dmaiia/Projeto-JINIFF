
package Hibernate;

import Entidade.Aluno;
import java.util.List;  
import org.hibernate.HibernateException; 
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;

public class AlunoDAO {
   
     private static SessionFactory factory; 
   /* Method to CREATE an employee in the database */
   /**
    * Este metodo adiciona um aluno ao Banco de Dados
    * @param aluno um objeto ja preenchido da classe aluno
    * @return retorna o código gerado
    */
   public boolean addAluno(Aluno aluno){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      boolean foi = false;
      String alunoID = null;
      
      try{
         tx = session.beginTransaction();
         
         alunoID = (String)session.save(aluno); 
         tx.commit();
      }catch (HibernateException e) {
         if (alunoID!=null){ tx.rollback();
         e.printStackTrace(); 
            } throw e;
         
     
      }finally {
         session.close(); 
      }
      
       if(alunoID!= null){
          foi = true;
      }
      
      return foi;
   }
   
    public Aluno login(String email, String senha) {
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
    public void updateAluno(String /* Integer AlunoID */emailID, String nome, String sobrenome, String data_nascimento, String sexo, String curso, String ano, String numero, String email, String senha) {
        
        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Aluno aluno
                    = (Aluno) session.get(Aluno.class, emailID);
            // daí aqui vc vai chamar TODOS os sets do seu objeto
            aluno.setNome(nome);
            aluno.setSobrenome(sobrenome);
            aluno.setDataNascimento(data_nascimento);
            aluno.setSexo(sexo);
            aluno.setCurso(curso);
            aluno.setAno(ano);
            aluno.setNumero(numero);
            aluno.setEmail(email);
            aluno.setSenha(senha);
            
            
            // e só depois chamar o update
            session.update(aluno);
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