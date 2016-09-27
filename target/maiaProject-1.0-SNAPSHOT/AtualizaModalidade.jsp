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
        <form action="AtualizaModalidade" method="post">
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
        </ul>
    </nav>


    <fieldset>

       

        <img src="Imagens/usuario.jpg"/>	
        <img src="Imagens/telefone.jpg"/>
        <img src="Imagens/email2.jpg"/>	
        <img src="Imagens/senha2.jpg"/>	

       
           
           <label>
            <input type="text" value="${sessionScope.modalidadeAtual.nome}" readonly="true" name="nome" required="required" placeholder="Digite o nome da modalidade..." /> <br/> <br/>
           </label>
           <label>
            <input type="text" value="${sessionScope.modalidadeAtual.categoria}" name="categoria" required="required" placeholder="Digite seu categoria..." /> <br/> <br/>
           </label>
           <label>
            <input type="text" value="${sessionScope.modalidadeAtual.classificacao}" name="classificacao" required="required" placeholder="Digite a classificação..." /> <br/> <br/>
           </label>
           <label>
            <input type="text" value="${sessionScope.modalidadeAtual.hora}" name="hora" required="required" placeholder="Digite a hora..." /> <br/> <br/>
           </label>
           <label>
            <input type="text" value="${sessionScope.modalidadeAtual.data}" name="data" required="required" placeholder="Digite a data..." /> <br/> <br/>
           </label>
           <label>
            <input type="text" value="${sessionScope.modalidadeAtual.local}" name="local" required="required" placeholder="Digite o local..." /> <br/> <br/>
           </label>
           
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