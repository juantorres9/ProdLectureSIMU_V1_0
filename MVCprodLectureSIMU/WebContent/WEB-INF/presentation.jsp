<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PRESENTATION</title>
<link type="text/css" rel="stylesheet" href="css/presentation.css"/>
</head>
<body>
<h2 class="mainTitre">Système de surveillance de bobineuse 1</h2>


<!--***************************************** DEBUT DU FORMULAIRE *****************************************************-->
<form id="idForm1" method="post" action="control" >
<!-- DATE -->
<h3 class="titre">Date:
<input id="date" name="date" value=0  type="date" required>
</h3>

<!-- REFERENCE -->
<p class="titre">Réference:
<select class="dropdown"  name="ref_tc" required>
  <option value="">Choisir</option>
  <option value="reftotale">REFTOTALE</option>
</select>
</p>

<!-- SUBMIT BOUTON -->
<button type="submit" value ="valider" >VALIDER</button>
</form>

<!--**************************************** DEBUT D'AFFICHAGE *********************************************************-->
<p class="titre2"> Résultats:</p>
<table class="tableau1" >
  <tr>
    <th class="th1">Date</th>
    <th class="th1">Réference</th>
    <th class="th1">Do(Disponibilité)</th>
    <th class="th1">Tp(Taux Performance)</th>
	<th class="th1">Tq(Taux Qualité)</th>
	<th class="th1">TRS</th>
  </tr> 
  
  <tr>
  	<td class="td1"><c:out value="${bean.date}" default=""/></td>
  	<td class="td1"><c:out value="${bean.ref}" default=""/></td> 
  	<td class="td1"><c:out value="${bean.dop}" default=""/></td> 
  	<td class="td1"><c:out value="${bean.tp}" default=""/></td> 
  	<td class="td1"><c:out value="${bean.tq}" default=""/></td> 
  	<td class="td1"><c:out value="${bean.trs}" default=""/></td> 
  </tr>
  
  
 </table>

<!--**************************************** DEBUT D'AFFICHAGE *********************************************************-->
<form method="post" action="dispatch" id="idForm2">
	<input name="idpage" type ="hidden" value="presentation" >
	<p><button type="submit"><input type="image" src="images/retourbouton.jpg" ></button></p>
</form>

</body>
</html>