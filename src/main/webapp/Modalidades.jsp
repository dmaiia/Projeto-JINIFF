<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@page import="org.displaytag.*" %>
<%@page import="java.util.*" %>
<%@page import="Entidade.*"%>
<!DOCTYPE html>



<html>
<head>

    <title>Modalidades</title>
	
    <link rel="stylesheet" href="Modalidades.css" type="text/css" /> 
                                    <link rel="shortcut icon" href="Imagens/j.png" >

	
</head>
<body>

	<image src = "Imagens/logoiff.gif" id ="logoIFF" />
	<image src = "Imagens/jogos_internos.png" id = "logoJogos"/>



	

		

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
        <li><a href=""><strong>COORDENADORES</strong></a></li>
        <li><a href=""><strong>CONTATO</strong></a></li> 
        <li><a href=""><strong>CADASTROS</strong></a>
        
                <ul>
                    <li><a href="cadastro.jsp"><strong>CADASTRO USUÁRIOS</strong></a>
                    <li><a href="cadastromodalidade.jsp"><strong>CADASTRO MODALIDADES</strong></a></li>                    
                </ul>
            </li>
        
  </ul>
</nav>
        <div id="Modalidades">
            <h1> Molidades </h1>
            
        </div>
    <display:table name="${sessionScope.modalidades}" class="dataTable">
        <display:column property="nome" />
        <display:column property="categoria" />
        <display:column property="classificacao" />
        <display:column property="hora" />
        <display:column property="data" />
        <display:column property="local" />
        <display:column title="Editar" href="CarregaAluno" paramId="nome" paramProperty="nome"><img src="edit.png"  title="Atualizar"/></display:column>
        <display:column title="Deletar" href="DeletaAluno" paramId="nome" paramProperty="nome"><img src="delete.png" title="Apagar"/></display:column>
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
</body>
</html>


