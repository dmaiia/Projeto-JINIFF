<!DOCTYPE html>
<html>
    <head>

        <title>Cadastro</title>

        <link rel="stylesheet" href="cadastro.css" type="text/css" /> 


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
            <li><a href="#"><strong>CADASTRO</strong></a></li>
        </ul>
    </nav>


    <fieldset>

       

        <img src="Imagens/usuario.jpg"/>	
        <img src="Imagens/telefone.jpg"/>
        <img src="Imagens/email2.jpg"/>	
        <img src="Imagens/senha2.jpg"/>	


        <form action="CadastroAluno" method="post">
            <div class="acomodar">


                <label>
                    <input type="text" value="" name="firstname" required="required" placeholder= "Digite seu nome..." />
                </label>
                <label>	
                    <input type="text" value="" name="lastname" required="required" placeholder= "Digite seu sobrenome..." />
                </label>
                <label>		 
                    <input type="radio" value="male" name="gender"/> <p> Masculino </p> 
                </label>
                <label>    
                    <input type="radio" value="female" name="gender"/> <p> Feminino  </p>
                </label>
                <label>
                    <input type="date" value="" name="bday" required="required" placeholder= "dia / mes / ano" />
                </label>
                <label>
                    <input type="text" value="" name="course" required="required" placeholder= "Digite seu curso..." />
                </label>
                <label>
                    <input type="number" maxlength="2" value="" name="ano" required="required" placeholder= "S&eacute;rie ..." />
                </label>
                <label>
                    <input type="number" value="" name="numero" required="required" placeholder= "Digite seu Whatsapp..." />
                </label>
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