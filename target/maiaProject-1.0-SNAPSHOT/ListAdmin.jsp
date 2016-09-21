

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@page import="org.displaytag.*" %>
<%@page import="java.util.*" %>
<%@page import="Entidade.*" %>


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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="dysplaytagexemplo.css">
                                        <link rel="shortcut icon" href="Imagens/j.png" >

        <title>Lista</title>
    </head>
    <body>
        <form action="LogOutAdmin" method="post">

        <image src = "Imagens/logoiff.gif" id ="logoIFF" />
	<image src = "Imagens/jogos_internos.png" id = "logoJogos"/>

 <input type="submit" class="botao" value="Sair">

	

		

	<nav>
  <ul class="menu">
        <li><a href="homeadm.jsp"><strong>HOME</strong></a></li>
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
        <li><a href="#"><strong>CADASTRO</strong></a>
               
                <ul>
                    <li><a href="cadastro.jsp"><strong>CADASTRO USUÁRIOS</strong></a>
                    <li><a href="#"><strong>CADASTRO MODALIDADES</strong></a></li>                    
                </ul>
            </li>
        
  </ul>
</nav>
		
<display:table name="${sessionScope.alunos}" class="dataTable">
        <display:column property="nome" />
        <display:column property="sobrenome" />
        <display:column property="email" />
        <display:column property="dataNascimento" />
        <display:column property="sexo" />
        <display:column property="curso" />
        <display:column property="ano" />
        <display:column property="numero" />
        <display:column property="senha" />
        <display:column title="Editar" href="CarregaAdmin" paramId="email" paramProperty="email"><img src="edit.png"  title="Atualizar"/></display:column>
        <display:column title="Deletar" href="DeletaAdmin" paramId="email" paramProperty="email"><img src="delete.png" title="Apagar"/></display:column>
    </display:table>

		
	
	<div id = "inferior">
	
	<image src = "Imagens/facebook.png" id ="facebook" />
	<br>
	<image src = "Imagens/twitter.png" id ="twitter" />
	</br>
	<image src = "Imagens/instagram.png" id ="instagram" />
	<br>
	

    
<br/>
        </form>
    </body>
</html>
