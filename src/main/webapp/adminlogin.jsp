
<%-- 
    Document   : adminlogin
    Created on : 06/09/2016, 11:06:05
    Author     : aluno
--%>

<html>
<head>

    <title>Login</title>
	
    <link rel="stylesheet" href="adminlogin.css" type="text/css" /> 

	
</head>
    <body>
        <video autoplay loop class="video">
            <source src="Videos/esportes.webm" type="video/webm"> 
            <source src="Videos/videoplayback.mp4" type="video/mp4"> 
        </video> 

	<fieldset>
            <p> LOG IN ADMIN </p>
		<form action="Login" method="post">
		<div class="acomodar">
		<label> 
			<input type="email" value="" name="email" required="required" placeholder= "Email" />
		</label>
		<label>
			<input type="password" value="" name="password" required="required" placeholder="Password" />
		</label>
		<input class="botão" type="submit" value="LOG IN" />
	</div>
</form>
	</fieldset>
    </body>
</html>
    