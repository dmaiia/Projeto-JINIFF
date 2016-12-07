<%@page import="Entidade.Aluno"%>
<!DOCTYPE html>
<%
response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
    response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
    response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
    response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
    Aluno aluno = (Aluno) session.getAttribute("currentSessionUser");
    if (null == aluno) {
        request.setAttribute("Error", "Sessao finalizada. Por favor, faça seu login.");
        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        rd.forward(request, response);
    }
%>
<html>
<head>

    <title>Contato</title>
   
    <link rel="stylesheet" href="contact.css" type="text/css" />
                                        <link rel="shortcut icon" href="Imagens/j.png" >

   
</head>
<body>
    <form action="LogOut" method="post">
<fieldset>

    <image src = "Imagens/logoiff.gif" id ="logoIFF" />
    <image src = "Imagens/jogos_internos.png" id = "logoJogos"/>


   		 <input type="submit" class="botao" value="Sair">


       

    <nav>
  <ul class="menu">
        <li><a href="home.jsp"><strong>HOME</strong></a></li>
        <li><a href="#"><strong>SOBRE</strong></a></li>
            <li><a href="#"><strong>MENU</strong></a>
                <ul>
                      <li><a href="ListaModalidade3"><strong>MODALIDADES</strong></a></li>
                      <li><a href="ListaComissao3"><strong>COMISSOES</strong></a></li>
                      <li><a href="#"><strong>TABELAS</strong></a></li>                                    
                </ul>
            </li>
        <li><a href="#"><strong>COORDENADORES</strong></a></li>

        <li><a href="contact.jsp"><strong>CONTATO</strong></a></li>
               <li><a href="ListaAluno"><strong>DADOS PESSOAIS</strong></a></li>

</nav>
       
            <image src = "Imagens/Adrielly.png" id ="Adrielly" />
            <image src = "Imagens/Ramon.png" id ="Ramon" />
            <image src = "Imagens/WANDIN.png" id ="Wandinho" />
            <image src = "Imagens/Diego.png" id ="Diego" />

      <div id="menu2">
	  <ul>
		<li><a href="https://www.facebook.com/wandinho.souza.9?ref=bookmarks">Wanderson S. Tinoco</a></li>
		<li><a href="https://www.facebook.com/wandinho.souza.9?ref=bookmarks">18 anos</a></li>
		<li><a href="https://www.facebook.com/wandinho.souza.9?ref=bookmarks">Diretor de Web Designer/Programador </a></li>
		
	  </ul>
	</div>
      
      <div id="menu3">
	  <ul>
		<li><a href="https://www.facebook.com/ramon.leandrofernandes">Ramon L. Fernandes</a></li>
		<li><a href="https://www.facebook.com/ramon.leandrofernandes">18 anos</a></li>
		<li><a href="https://www.facebook.com/ramon.leandrofernandes">Diretor de Programação/Web Designer</a></li>
		
	  </ul>
	</div>
      <div id="menu4">
	  <ul>
		<li><a href="https://www.facebook.com/D.MaiaBr?ref=bookmarks">Diego C. Maia</a></li>
		<li><a href="https://www.facebook.com/D.MaiaBr?ref=bookmarks">18 anos</a></li>
		<li><a href="https://www.facebook.com/D.MaiaBr?ref=bookmarks">Product Owner</a></li>
		
	  </ul>
	</div>
      <div id="menu5">
	  <ul>
		<li><a href="https://www.facebook.com/adrielly.maia.14?fref=ts">Adrielly C. Maia</a></li>
		<li><a href="https://www.facebook.com/adrielly.maia.14?fref=ts">17 anos</a></li>
		<li><a href="https://www.facebook.com/adrielly.maia.14?fref=ts">Diretora de Aplicação</a></li>
		
	  </ul>
	</div>
   
    <div id = "inferior">
   
    <image src = "Imagens/facebook.png" id ="facebook" />
    <br>
    <image src = "Imagens/twitter.png" id ="twitter" />
    </br>
    <image src = "Imagens/instagram.png" id ="instagram" />
    <br>
   

        <footer> </footer>

    </div>
</fieldset>
                </form>
</body>
</html>
