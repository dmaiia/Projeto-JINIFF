
package Entidade;

import java.io.Serializable;
import javax.persistence.*;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.Entity;

@Entity
@Table(name = "participacao")

public class Participacao implements Serializable {
   @Id
   @Column(name = "lc_aluno")
   private String lc_aluno;
   
   @Id
   @Column(name = "lc_modalidade")
   private String lc_modalidade;
  
   @Column(name = "data")
   private String data; 
   

   
   

   public Participacao() {}
   
   public String getAluno() {
      return lc_aluno;
   }
   public void setAluno(String lc_aluno) {
      this.lc_aluno = lc_aluno;
   }
    public String getModalidade() {
      return lc_modalidade;
   }
    public void setModalidade(String lc_modalidade) {
      this.lc_modalidade = lc_modalidade;
   }
 
    public String getData(){
       return data;
    }
    
   public void setData(String data){
      this.data = data;
    }
}
   