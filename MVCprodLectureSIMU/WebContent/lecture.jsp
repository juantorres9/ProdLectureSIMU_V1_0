<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/lecture.css"/>
<title>PRESENTATION</title>
</head> 
<body> 
<h1 class="titre0" >SIMU-ERP(LECTURE)</h1>
<form method="post" action="dispatch" id="idForm0">
	<p class="center1"><button type="submit"><input type="image" src="images/supervisionbutton.jpg" ></button></p>
	<p class="center1">Machine
		<select class="dropdown0" name="idpage" form="idForm0" required>
 			<option value="">Choisir</option>
  			<option value="machine1">Bobineuse1</option>
		</select>
	</p>	
</form>

</body>
</html>