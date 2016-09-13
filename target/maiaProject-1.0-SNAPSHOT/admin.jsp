<%-- 
    Document   : admin
    Created on : 06/09/2016, 11:46:00
    Author     : aluno
--%>

<%@page import="Entidade.Admin"%>
<!DOCTYPE html>

<%
response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
    response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
    response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
    response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
    Admin admin = (Admin) session.getAttribute("currentSessionUser");
    if (null == admin) {
        request.setAttribute("Error", "Sessao finalizada. Por favor, faça seu login.");
        RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
        rd.forward(request, response);
    }
%>
<html>
<head>

    <title>Bem vindo!</title>
	
    <link rel="stylesheet" href="admin.css" type="text/css" /> 

	
</head>

	<image src = "Imagens/logoiff.gif" id ="logoIFF" />
	<image src = "Imagens/jogos_internos.png" id = "logoJogos"/>

	<form action="LogOutAdmin" method="post">
            <input type="submit" class="botão" value="Sair"/>
        </form>

	<nav>
  <ul class="menu">
        <li><a href="home.jsp"><strong>HOME</strong></a></li>
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
                <li><a href="ListaAluno"><strong>Lista de Usuários</strong></a></li>

  </ul>
</nav>
		
        <h1> Bem vindo Administrador! </h1>
        <h3> Aproveite os recursos do site. </h3>
        
	
	
	<div id = "inferior">
	
            <a href="https://www.facebook.com/"> <image src = "Imagens/facebook.png" id ="facebook"  /> </a>
	<br>
        <a href="https://twitter.com/"><image src = "Imagens/twitter.png" id ="twitter" /> </a>
	</br>
        <a href="https://instagram.com/"><image src = "Imagens/instagram.png" id ="instagram" /> </a>
	<br>
	

        <footer> </footer>

	</div>
</html>