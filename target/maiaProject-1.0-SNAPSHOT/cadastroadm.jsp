<!DOCTYPE html>
<html>
    <head>

        <title>Cadastro</title>

        <link rel="stylesheet" href="cadastroadm.css" type="text/css" /> 
                                        <link rel="shortcut icon" href="Imagens/jogos_internos.png" >


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
                    <li><a href="#"><strong>MODALIDADES</strong></a></li>
                    <li><a href="#"><strong>COMISSOES</strong></a></li>
                    <li><a href="#"><strong>TABELAS</strong></a></li>                   
                </ul>
            </li>
            <li><a href="#"><strong>CORDENADORES</strong></a></li>
            <li><a href="#"><strong>CONTATO</strong></a></li>
            <li><a href=""><strong>CADASTRO</strong></a></li>
        </ul>
    </nav>


    <fieldset>

       

        <img src="Imagens/usuario.jpg"/>	
        <img src="Imagens/telefone.jpg"/>
        <img src="Imagens/email2.jpg"/>	
        <img src="Imagens/senha2.jpg"/>	


        <form action="CadastroAdm" method="post">
            <div class="acomodar">


                
                <label>
                    <input type="email" value="" name="email" required="required" placeholder= "Digite seu e-mail..." />
                </label>
                <label>
                    <input type="password" value="" name="password" required="required" placeholder="Digite sua senha..." />
                </label>


                <input type="submit" value="Realizar cadastro" />
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
