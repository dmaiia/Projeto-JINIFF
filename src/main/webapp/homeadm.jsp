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

    <title>Jogos Internos</title>
	
    <link rel="stylesheet" href="homeadm.css" type="text/css" /> 
                                    <link rel="shortcut icon" href="Imagens/j.png" >

	
</head>
        <form action="LogOut" method="post">

	<image src = "Imagens/logoiff.gif" id ="logoIFF" />
	<image src = "Imagens/jogos_internos.png" id = "logoJogos"/>
		 <input type="submit" class="botao" value="Sair">


	<nav>
  <ul class="menu">
        <li><a href="homeadm.jsp"><strong>HOME</strong></a></li>
        <li><a href="#"><strong>SOBRE</strong></a></li>
            <li><a href="#"><strong>MENU</strong></a>
                <ul>
                      <li><a href="#"><strong>MODALIDADES</strong></a></li>
                      <li><a href="#"><strong>COMISSOES</strong></a></li>
                      <li><a href="#"><strong>TABELAS</strong></a></li>                   
                </ul>
            </li>
        <li><a href="#"><strong>COORDENADORES</strong></a></li>
        <li><a href="#"><strong>CONTATO</strong></a></li> 
                       <li><a href="ListaAdmin"><strong>LISTA DE USUÁRIOS</strong></a></li>

        
  </ul>
</nav>
		


	<image src = "Imagens/central2.jpg" id = "logoCentral" />
		
	
	<div id = "inferior">
	
	<image src = "Imagens/facebook.png" id ="facebook" />
	<br>
	<image src = "Imagens/twitter.png" id ="twitter" />
	</br>
	<image src = "Imagens/instagram.png" id ="instagram" />
	<br>
	

        <footer> </footer>
        </form>

	</div>
</html>


