

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
        <display:column title="Editar" href="CarregaAluno" paramId="email" paramProperty="email"><img src="con.png" title="Atualizar"/></display:column>
        <display:column title="Deletar" href="DeletaAluno" paramId="email" paramProperty="email"><img src="for.png" title="Apagar"/></display:column>
    </display:table>
<br/>
    </body>
</html>
