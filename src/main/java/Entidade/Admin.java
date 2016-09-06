
package Entidade;

import java.io.Serializable;
import javax.persistence.*;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.Entity;

@Entity
@Table(name = "adm")

public class Admin implements Serializable {
   @Id
   @Column(name = "email")
   private String email;
   
   @Column(name = "senha")
   private String senha; 
   

   public Admin() {}
   
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
   }
 
    public String getSenha(){
       return senha;
    }
   
   public void setSenha(String senha){
      this.senha = senha;
    }
}
