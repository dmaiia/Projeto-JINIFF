
package Entidade;

import java.io.Serializable;
import javax.persistence.*;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.Entity;

@Entity
@Table(name = "modalidade")

public class Modalidade implements Serializable {
   @Id
   @Column(name = "nome")
   private String nome;
   
   @Column(name = "especificacao")
   private String especificacao; 
   
   @Column(name = "categoria")
   private String categoria; 
   
   @Column(name = "classificacao")
   private String classificacao; 
   
   @Column(name = "hora")
   private String hora;
   
   @Column(name = "data")
   private String data; 
   
   @Column(name = "local")
   private String local; 
   
   

   public Modalidade() {}
   
   public String getNome() {
      return nome;
   }
   public void setNome(String nome) {
      this.nome = nome;
   }
    public String getEspecificacao() {
      return especificacao;
   }
    public void setEspecificacao(String especificacao) {
      this.especificacao = especificacao;
   }
 
    public String getCategoria(){
       return categoria;
    }
    
   public void setCategoria(String categoria){
      this.categoria = categoria;
    }
   
   public String getClassificacao() {
      return classificacao;
   }
   public void setClassificacao(String classificacao) {
      this.classificacao = classificacao;
   }
   
   public String getHora() {
      return hora;
   }
   public void setHora(String hora) {
      this.hora = hora;
   }
 
   public String getData() {
      return data;
   }
   public void setData(String data) {
      this.data = data;
   }
 
   public String getLocal() {
      return local;
   }
   public void setLocal(String local) {
      this.local = local;
   }
 
}
