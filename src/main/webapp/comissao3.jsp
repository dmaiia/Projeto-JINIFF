<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@page import="org.displaytag.*" %>
<%@page import="java.util.*" %>
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

    <title>Comissões</title>
	
    <link rel="stylesheet" href="comissao3.css" type="text/css" /> 
                                    <link rel="shortcut icon" href="Imagens/j.png" >

	
</head>
    <form action="LogOut" method="post">

	<image src = "Imagens/logoiff.gif" id ="logoIFF" />
	<image src = "Imagens/jogos_internos.png" id = "logoJogos"/>
            <input type="submit" class="botao" value="Sair">


	

		

	<nav>
  <ul class="menu">
        <li><a href="home.jsp"><strong>HOME</strong></a></li>
        <li><a href="#"><strong>SOBRE</strong></a></li>
            <li><a href="#"><strong>MENU</strong></a>
                <ul>
                      <li><a href="ListaModalidade"><strong>MODALIDADES</strong></a></li>
                      <li><a href="ListaComissao"><strong>COMISSOES</strong></a></li>
                      <li><a href="#"><strong>TABELAS</strong></a></li>
                      
                </ul>
            </li>
        <li><a href=""><strong>COORDENADORES</strong></a></li>
        <li><a href="Contato.jsp"><strong>CONTATO</strong></a></li> 
        
</nav>
        <div id="Modalidades">
            <h1> Comissões </h1>
            
        </div>
    <display:table name="${sessionScope.comissoes}" class="dataTable">
        <display:column property="nome" />
        <display:column property="descricao" />
        <display:column property="responsabilidades" />
    </display:table>

	
		
	
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



