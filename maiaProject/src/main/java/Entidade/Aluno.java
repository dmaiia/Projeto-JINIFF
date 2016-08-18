
package Entidade;

import java.io.Serializable;
import javax.persistence.*;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.Entity;

@Entity
@Table(name = "aluno")

public class Aluno implements Serializable {
   @Id
   @Column(name = "email")
   private String email;

   @Column(name = "nome")
   private String nome;

   @Column(name = "sobrenome")
   private String sobrenome;
   
   @Column(name = "data_nascimento")
   private String data_nascimento;

   @Column(name = "sexo")
   private String sexo;  
   
   @Column(name = "curso")
   private String curso;
   
   @Column(name = "ano")
   private String ano; 
   
   @Column(name = "numero")
   private String numero; 
   
   @Column(name = "senha")
   private String senha; 
   

   public Aluno() {}
   
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
   }
   public String getNome() {
      return nome;
   }
   public void setNome(String nome) {
      this.nome = nome;
   }
   public String getSobrenome() {
      return sobrenome;
   }
   public void setSobrenome(String sobrenome) {
      this.sobrenome = sobrenome;
   }
   public String getDataNascimento() {
      return data_nascimento;
   }
   public void setDataNascimento(String data_nascimento) {
      this.data_nascimento = data_nascimento;
   }
   public String getSexo() {
      return sexo;
   }
   public void setSexo(String sexo) {
      this.sexo = sexo;
   }
   
   public String getCurso() {
      return curso;
   }
   public void setCurso(String curso) {
      this.curso = curso;
   }
   
   public String getAno() {
      return ano;
   }
   public void setAno(String ano) {
      this.ano = ano;
   }
  
    public String getNumero() {
      return numero;
   }
   public void setNumero(String numero) {
      this.ano = numero;
   }
    public String getSenha(){
       return senha;
    }
   
   public void setSenha(String senha){
      this.senha = senha;
    }
}
