<%-- 
    Document   : Atualiza
    Created on : 25/05/2016, 09:54:12
    Author     : aluno
--%>

<html>
    <head>
            <script language="JavaScript" type="text/javascript">
   function mascaraData(campoData){
              var data = campoData.value;
              if (data.length == 2){
                  data = data + '/';
                  document.forms[0].data.value = data;
      return true;              
              }
              if (data.length == 5){
                  data = data + '/';
                  document.forms[0].data.value = data;
                  return true;
              }
         }
         
         function mascara(t, mask){
                var i = t.value.length;
                var saida = mask.substring(1,0);
                var texto = mask.substring(i)
                if (texto.substring(0,1) != saida){
                t.value += texto.substring(0,1);
            }
        }
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="atuali.css" type="text/css" /> 
                                                <link rel="shortcut icon" href="Imagens/j.png" >

        <title>Atualizar</title>
    </head>
    <body>
        <form action="AtualizaAdmin" method="post">
        <div id="superior" />

        <image src = "Imagens/logoiff.gif" id ="logoIFF" />
        <image src = "Imagens/jogos_internos.png" id = "logoJogos"/>

    </div>



    <nav>
        <ul class="menu">
            <li><a href="homeadm.jsp"><strong>HOME</strong></a></li>
            <li><a href="#"><strong>SOBRE</strong></a></li>
            <li><a href="#"><strong>MENU</strong></a>
                <ul>
                    <li><a href="ListaModalidade"><strong>MODALIDADES</strong></a></li>
                    <li><a href="ListaComissao"><strong>COMISSOES</strong></a></li>
                    <li><a href="#"><strong>TABELAS</strong></a></li>                   
                </ul>
            </li>
            <li><a href="#"><strong>COORDENADORES</strong></a></li>
            <li><a href="#"><strong>CONTATO</strong></a></li>
            <li><a href=""><strong>CADASTROS</strong></a>
        
                <ul>
                    <li><a href="cadastro.jsp"><strong>CADASTRO USUÁRIOS</strong></a>
                    <li><a href="cadastromodalidade.jsp"><strong>CADASTRO MODALIDADES</strong></a></li>                    
                </ul>
            </li>
        
        </ul>
    </nav>


    <fieldset>

       

        <img src="Imagens/usuario.jpg"/>	
        <img src="Imagens/telefone.jpg"/>
        <img src="Imagens/email2.jpg"/>	
        <img src="Imagens/senha2.jpg"/>	

       
           
           <label>
            <input type="text" value="${sessionScope.alunoAtual.nome}" name="firstname" required="required" placeholder="Digite seu nome..." /> <br/> <br/>
           </label>
           <label>
            <input type="text" value="${sessionScope.alunoAtual.sobrenome}" name="lastname" required="required" placeholder="Digite seu sobrenome..." /> <br/> <br/>
           </label>
           <label>
            <input type="radio" value="${sessionScope.alunoAtual.sexo}" name="gender" required="required" /> <p> Masculino </p> <br/> <br/>
           </label>
           <label>
            <input type="radio" value="${sessionScope.alunoAtual.sexo}" name="gender" required="required" /> <p> Feminino</p> <br/> <br/>
           </label>
           <label>
            <input type="date" value="${sessionScope.alunoAtual.dataNascimento}" id="data" OnKeyUp="mascaraData(this);" maxlength="10" name="bday" required="required" placeholder="Data de Nascimento..." /> <br/> <br/>
           </label>
           <label>
            <input type="text" value="${sessionScope.alunoAtual.curso}" name="course" required="required" placeholder="Digite seu Curso..." /> <br/> <br/>
           </label>
           <label>
               <input type="text" maxlength="1" value="${sessionScope.alunoAtual.ano}" name="ano" required="required" placeholder="Digite sua série..." /> <br/> <br/>
           </label>
           <label>
            <input type="text" value="${sessionScope.alunoAtual.numero}" onkeypress="mascara(this, '### #-####-####')" maxlength="15" name="numero" required="required" placeholder="Digite seu WhatsApp..." /> <br/> <br/>
           </label> 
           <label>
            <input type="email" value="${sessionScope.alunoAtual.email}" name="email" required="required" placeholder="Digite seu e-mail..." /> <br/> <br/>
           </label> 
           <label> 
            <input type="password" value="${sessionScope.alunoAtual.senha}" name="password" required="required" placeholder="Digite sua Senha..."/> <br/> <br/>
           </label>
           <label>
            <input type="submit" class="botao" value="Atualizar">
           </label>
           
           </fieldset>



    <div id = "inferior">

        <image src = "Imagens/facebook.png" id ="facebook" />
        <br>
        <image src = "Imagens/twitter.png" id ="twitter" />
        </br>
        <image src = "Imagens/instagram.png" id ="instagram" />
        <br>

    </div>     
           </form>
    </body>
</html>