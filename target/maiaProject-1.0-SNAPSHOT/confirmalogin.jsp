<%@page import="Entidade.Aluno"%>
<!DOCTYPE html>

<%
    Aluno usuario = (Aluno) session.getAttribute("currentSessionUser");
%>

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

    <title>Bem vindo!</title>
	
    <link rel="stylesheet" href="confirmalogin.css" type="text/css" /> 
                                    <link rel="shortcut icon" href="Imagens/j.png" >

	
</head>
<form action="LogOut" method="post">
	<image src = "Imagens/logoiff.gif" id ="logoIFF" />
	<image src = "Imagens/jogos_internos.png" id = "logoJogos"/>

	
            <input type="submit" class="botao" value="Sair">

	<nav>
  <ul class="menu">
        <li><a href="home.jsp"><strong>HOME</strong></a></li>
            <li><a href="#"><strong>MENU</strong></a>
                <ul>
                      <li><a href="ListaModalidade2"><strong>MODALIDADES</strong></a></li>
                      <li><a href="ListaComissao2"><strong>COMISSOES</strong></a></li>
                      <li><a href="#"><strong>TABELAS</strong></a></li>                   
                </ul>
            </li>
        <li><a href="#"><strong>COORDENADORES</strong></a></li>
        <li><a href="#"><strong>CONTATO</strong></a></li>
        <li><a href="ListaAluno"><strong>DADOS PESSOAIS</strong></a></li>
        
  </ul>
</nav>
		
        <h1> Bem vindo <%=usuario.getNome()%>! </h1>
        <h3> Aproveite os recursos do site. </h3>
        
        
	
	
	<div id = "inferior">
	
	<image src = "Imagens/facebook.png" id ="facebook" />
	<br>
	<image src = "Imagens/twitter.png" id ="twitter" />
	</br>
	<image src = "Imagens/instagram.png" id ="instagram" />
	<br>
	

        <footer> </footer>


      </div>
                </form>

</html>