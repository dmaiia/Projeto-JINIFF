<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@page import="org.displaytag.*" %>
<%@page import="java.util.*" %>
<%@page import="Entidade.*"%>
<!DOCTYPE html>



<html>
<head>

    <title>Comissões</title>
	
    <link rel="stylesheet" href="comi2.css" type="text/css" /> 
                                    <link rel="shortcut icon" href="Imagens/j.png" >

	
</head>
<fieldset>

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
        <li><a href="index.jsp"><strong>HOME</strong></a></li>
        <li><a href="#"><strong>SOBRE</strong></a></li>
            <li><a href="#"><strong>MENU</strong></a>
                <ul>
                      <li><a href="ListaModalidade2"><strong>MODALIDADES</strong></a></li>
                      <li><a href="ListaComissao2"><strong>COMISSOES</strong></a></li>
                      <li><a href="#"><strong>TABELAS</strong></a></li>
                      
                </ul>
            </li>
        <li><a href=""><strong>COORDENADORES</strong></a></li>
        <li><a href=""><strong>CONTATO</strong></a></li> 
        <li><a href=""><strong>CADASTROS</strong></a>
        
                <ul>
                    <li><a href="cadastro.jsp"><strong>CADASTRO USUÁRIOS</strong></a>
                      
                </ul>
            </li>
        
  </ul>
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
        </fieldset>
</html>



