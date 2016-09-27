

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@page import="org.displaytag.*" %>
<%@page import="java.util.*" %>
<%@page import="Entidade.*" %>


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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="dysplaytagexemplo.css">
                                        <link rel="shortcut icon" href="Imagens/j.png" >

        <title>Lista</title>
    </head>
    <body>
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
                      <li><a href="#"><strong>MODALIDADES</strong></a></li>
                      <li><a href="#"><strong>COMISSOES</strong></a></li>
                      <li><a href="#"><strong>TABELAS</strong></a></li>                   
                </ul>
            </li>
        <li><a href="#"><strong>CORDENADORES</strong></a></li>
        <li><a href="#"><strong>CONTATO</strong></a></li> 
        <li><a href="ListaAluno"><strong>DADOS PESSOAIS</strong></a></li>
        
        
  </ul>
</nav>
		
<display:table name="${sessionScope.currentSessionUser}" class="dataTable">
        <display:column property="nome" />
        <display:column property="sobrenome" />
        <display:column property="email" />
        <display:column property="dataNascimento" />
        <display:column property="sexo" />
        <display:column property="curso" />
        <display:column property="ano" />
        <display:column property="numero" />
        <display:column property="senha" />
        <display:column title="Editar" href="CarregaAluno" paramId="email" paramProperty="email"><img src="edit.png"  title="Atualizar"/></display:column>
        <display:column title="Deletar" href="DeletaAluno" paramId="email" paramProperty="email"><img src="delete.png" title="Apagar"/></display:column>
    </display:table>

		
	
	<div id = "inferior">
	
	<image src = "Imagens/facebook.png" id ="facebook" />
	<br>
	<image src = "Imagens/twitter.png" id ="twitter" />
	</br>
	<image src = "Imagens/instagram.png" id ="instagram" />
	<br>
        </div>

    
<br/>
        </form>
    </body>
</html>
