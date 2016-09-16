<!DOCTYPE html>
<html>
<head>

    <title>Login</title>
	
    <link rel="stylesheet" href="errologin.css" type="text/css" /> 

	
</head>
    <body>
        <video autoplay loop class="video">
            <source src="Videos/esportes.webm" type="video/webm"> 
            <source src="Videos/videoplayback.mp4" type="video/mp4"> 
        </video> 

	<fieldset>
            <p> LOG IN </p>
		<form action="Login" method="post">
		<div class="acomodar">
		<label> 
			<input type="email" value="" name="email" required="required" placeholder= "Email" />
		</label>
		<label>
			<input type="password" value="" name="password" required="required" placeholder="Password" />
		</label>
		<input type="submit" value="LOG IN" />        
	</div>
</form>
            <br>
            <h5> <strong> Erro! Email ou senha incorretos </strong> </h5>
            </br>
	</fieldset>
        <div id = "botao">
                            <a href="index.jsp">
                <p>Home</p>
                                </a>
        </div>
    </body>
</html>
    


		



