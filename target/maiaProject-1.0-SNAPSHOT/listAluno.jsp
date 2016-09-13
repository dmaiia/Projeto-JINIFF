

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@page import="org.displaytag.*" %>
<%@page import="java.util.*" %>
<%@page import="Entidade.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="dysplaytagexemplo.css">
        <title>Lista</title>
    </head>
    <body>
        <image src = "Imagens/logoiff.gif" id ="logoIFF" />
	<image src = "Imagens/jogos_internos.png" id = "logoJogos"/>



	<div id = "login">
            <a href="login.jsp">
                <p><strong> Login </strong></p>
            </a>
        </div>
        
        <div id = "logi">
            <a href="adminlogin.jsp">
                <p><strong> Login Admin</strong></p>
            </a>
        </div>


		

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
        
  </ul>
</nav>
		
<display:table name="${sessionScope.alunos}" class="dataTable">
        <display:column property="email" />
        <display:column property="nome" />
        <display:column property="sobrenome" />
        <display:column property="dataNascimento" />
        <display:column property="sexo" />
        <display:column property="curso" />
        <display:column property="ano" />
        <display:column property="numero" />
        <display:column property="senha" />
        <display:column title="Editar" href="CarregaAluno" paramId="email" paramProperty="email"><img src="lixei.png"  title="Atualizar"/></display:column>
        <display:column title="Deletar" href="DeletaAluno" paramId="email" paramProperty="email"><img src="atuali.png" title="Apagar"/></display:column>
    </display:table>

		
	
	<div id = "inferior">
	
	<image src = "Imagens/facebook.png" id ="facebook" />
	<br>
	<image src = "Imagens/twitter.png" id ="twitter" />
	</br>
	<image src = "Imagens/instagram.png" id ="instagram" />
	<br>
	

    
<br/>
    </body>
</html>
