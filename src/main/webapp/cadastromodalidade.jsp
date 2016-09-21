<!DOCTYPE html>
<html>
    <head>

        <title>Cadastro Modalidade</title>
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
        <link rel="stylesheet" href="cadastromodalidade.css" type="text/css" /> 
                                        <link rel="shortcut icon" href="Imagens/j.png" >


    </head>


    <body>
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
                    <li><a href="#"><strong>COMISSOES</strong></a></li>
                    <li><a href="#"><strong>TABELAS</strong></a></li>                   
                </ul>
            </li>
            <li><a href="#"><strong>CORDENADORES</strong></a></li>
            <li><a href="#"><strong>CONTATO</strong></a></li>
            <li><a href="#"><strong>CADASTRO</strong></a>
                <ul>
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


        <form action="CadastroModalidade" method="post">
            <div class="acomodar">


                <label>
                    <input type="text" value="" name="nome" required="required" placeholder= "Digite o nome da modalidade..." />
                </label>
                <label>	
                    <input type="text" value="" name="categoria" required="required" placeholder= "Digite a categoria da modalidade..." />
                </label>
                <label>
                    <input type="text" value="" name="classificacao" required="required" placeholder= "Digite a classificacao da molidade..." />
                </label>
                <label>
                    <input type="text" value="" name="hora" required="required" placeholder= "Digite a hora da modalidade ..." />
                </label>
                <label>
                    <input type="text" id="data" value="" name="data" OnKeyUp="mascaraData(this);" maxlength="10" required="required" placeholder= "dia / mes / ano" />
                </label>
               
                <label>
                    <input type="text" value="" name="local" required="required" placeholder= "Digite o local da modalidade..." />
                </label>
               


                <input type="submit" value="Cadastrar Modalidade" />
            </div>
        </form>
    </fieldset>



    <div id = "inferior">

        <image src = "Imagens/facebook.png" id ="facebook" />
        <br>
        <image src = "Imagens/twitter.png" id ="twitter" />
        </br>
        <image src = "Imagens/instagram.png" id ="instagram" />
        <br>



        <footer> </footer>

    </div>
</body>
</html>