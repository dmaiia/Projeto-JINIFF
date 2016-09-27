/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hibernate;

import Entidade.Comissao;
import java.util.List;
import org.hibernate.HibernateException; 
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
/**
 *
 * @author aluno
 */
public class ComissaoDAO  {
    
         private static SessionFactory factory; 

   
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
