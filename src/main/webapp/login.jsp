<!DOCTYPE html>
<html>
<head>

    <title>Login</title>
	
    <link rel="stylesheet" href="login.css" type="text/css" /> 

	
</head>
    <body>
        <fieldset>
        <video autoplay loop class="video">
            <source src="Videos/esportes.webm" type="video/webm"> 
            <source src="Videos/videoplayback.mp4" type="video/mp4"> 
        </video> 

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
                            <input class="botao" type="submit" value="Home" onClick="window.open('index.jsp')" />

	</fieldset>
    </body>
</html>
    


		



