
package Hibernate;

import Entidade.Participacao;
import java.util.List;  
import org.hibernate.HibernateException; 
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;

public class ParticipacaoDAO {
   
     private static SessionFactory factory; 
   /* Method to CREATE an employee in the database */
   /**
    * Este metodo adiciona a participacao ao Banco de Dados
    * @param participacao um objeto ja preenchido da classe modalidade
    * @return retorna o código gerado
    */
  
    /**
     * Este metodo adiciona a participacao ao Banco de Dados
     * @param participacao
     * @return retorna o código gerado
     * 
     */
     public boolean addParticipacao(Participacao participacao){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      boolean foi = false;
      String participacaoID = null;
      
      try{
         tx = session.beginTransaction();
         
         participacaoID = (String)session.save(participacao); 
         tx.commit();
      }catch (HibernateException e) {
         if (participacaoID!=null){ tx.rollback();
         e.printStackTrace(); 
            } throw e;
         
     
      }finally {
         session.close(); 
      }
      
       if(participacaoID!= null){
          foi = true;
      }
      
      return foi;
   }
   
  
   public List<Participacao> listaParticipacao( ){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      List <Participacao> participacoes = null;
      try{
         tx = session.beginTransaction();
         participacoes = session.createQuery("FROM Participacao").list(); 
        
         tx.commit();
         
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
          e.printStackTrace();
         
      }finally {
         session.close(); 
      }
      return participacoes;
   }
   
    /* Method to UPDATE salary for an empregado */
   
 
   public void deleteParticipacao(String lc_aluno, String lc_modalidade /*Integer ParticipacaoID */){
      Session session = HibernateUtil.abrirSessaoComBD();
      Transaction tx = null;
      try{
         tx = session.beginTransaction();
         Participacao participacao = 
                   (Participacao)session.get(Participacao.class, lc_aluno); 
         session.delete(participacao); 
         tx.commit();
      }catch (HibernateException e) {
         if (tx!=null) tx.rollback();
         e.printStackTrace(); 

      }finally {
         session.close(); 
      }
   }
   
   public Participacao recuperaParticipacao(String lc_aluno, String lc_modalidade) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Participacao participacoes = null;
        try {
             participacoes = (Participacao) session
                     .createQuery("from Participacao where lc_aluno= :lc_aluno")
                     .setString("lc_aluno", lc_aluno).uniqueResult();
                     
            
        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return participacoes;
    } 
   
   /* Method to UPDATE salary for an empregado */
    public void updateParticipacao(String /* Integer ParticipacaoID */lc_alunoID, String data) {
        
        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Participacao participacao
                    = (Participacao) session.get(Participacao.class, lc_alunoID);
            // daí aqui vc vai chamar TODOS os sets do seu objeto
            participacao.setAluno(lc_aluno);
            participacao.setModalidade(lc_modalidade);
            participacao.setData(data);
            
            
            // e só depois chamar o update
            session.update(participacao);
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
}