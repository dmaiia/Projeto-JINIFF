<%-- 
    Document   : Atualiza
    Created on : 25/05/2016, 09:54:12
    Author     : aluno
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>HEY HO! LET´S GO!!!</h1>
       
        <form action="AtualizaAluno" method="post">
     
            <input type="text" value="${sessionScope.alunoAtual.nome}" name="firstname" required="required" placeholder="Digite seu nome..." /> <br/> <br/>
            <input type="text" value="${sessionScope.alunoAtual.sobrenome}" name="lastname" required="required" placeholder="Digite seu sobrenome..." /> <br/> <br/>
            <input type="radio" value="${sessionScope.alunoAtual.sexo}" name="gender" required="required" /> <p> Masculino </p> <br/> <br/>
            <input type="radio" value="${sessionScope.alunoAtual.sexo}" name="gender" required="required" /> <p> Feminino</p> <br/> <br/>
            <input type="date" value="${sessionScope.alunoAtual.dataNascimento}" name="bday" required="required" placeholder="Data de Nascimento..." /> <br/> <br/>
            <input type="text" value="${sessionScope.alunoAtual.curso}" name="course" required="required" placeholder="Digite seu Curso..." /> <br/> <br/>
            <input type="number" value="${sessionScope.alunoAtual.ano}" name="ano" required="required" placeholder="Digite sua série..." /> <br/> <br/>
            <input type="number" value="${sessionScope.alunoAtual.numero}" name="numero" required="required" placeholder="Digite seu WhatsApp..." /> <br/> <br/>
            <input type="email" value="${sessionScope.alunoAtual.email}" name="email" required="required" placeholder="Digite seu Email..." /> <br/> <br/>
            <input type="password" value="${sessionScope.alunoAtual.senha}" name="password" required="required" placeholder="Digite sua Senha..."/> <br/> <br/>
              
            <input type="submit" class="botao" value="Atualizar" onClick="window.open('ListaAluno')">
            
        </form>
           
    </body>
</html>