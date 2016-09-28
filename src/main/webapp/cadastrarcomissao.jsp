

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Cadastro Comissão</title>
       
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
            <li><a href="index.jsp"><strong>HOME</strong></a></li>
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
            <li><a href="ListaAdmin"><strong>LISTA DE USUÁRIOS</strong></a></li>
            <li><a href=""><strong>CADASTROS</strong></a>
        
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


        <form action="CadastroComissao" method="post">
            <div class="acomodar">


                <label>
                    <input type="text" value="" name="nome" required="required" placeholder= "Digite o nome da comissão..." />
                </label>
                <label>	
                    <input type="text" value="" name="descricao" required="required" placeholder= "Digite a descrição da comissão..." />
                </label>
                <label>
                    <input type="text" value="" name="responsabilidades" required="required" placeholder= "Digite as responsabilidades..." />
                </label>
               
               


                <input type="submit" value="Cadastrar comissão" />
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