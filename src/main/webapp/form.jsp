<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="it">

<head>
<meta charset="ISO-8859-1">
<title> Form </title>
<meta name="description" content="progetto java, spring boot e maven per tenere traccia delle proprie spese" />
<meta name="keywords" content="java, spring, maven, diario, spesa, bilancio" />
<meta name="author" content="nome dell'autore" />
<meta name="copyright" content="nome di chi ha la proprietà intellettuale sulla pagina" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="./style.css" media="screen" />
</head>

<body><br/>

<nav>
<h1> Menù principale </h1>
<ul>
<li><a href="./home_spesa.jsp" title="homepage" tabindex="1"> Home </a></li>
<li><a href="./form.jsp" title="aggiungi una nuova spesa" tabindex="2"> Aggiungi una nuova spesa... </a></li>
<li><a href="./stats.jsp" title="statistiche" tabindex="3"> Statistiche </a></li>
</ul>
</nav><br/>
 
<form action="salvaSpesa" method="post">
<fieldset>
<legend> Compila i campi con i relativi dettagli. </legend><br/><br/>

<label for="nome"> Nome: </label>
<input type="text" id="nome" name="nome" autofocus required /><br><br>

<label for="categoria"> Categoria: </label>
<select id="categoria" name="categoria">
<option value="S"> Scegli una categoria... </option>
<option value="Alimentari"> Alimentari </option>
<option value="Viaggi"> Viaggi </option>
<option value="Ristorante"> Ristorante </option>
<option value="Shopping"> Shopping </option>
</select><br><br>

<label for="prezzo"> Prezzo: </label>
<input type="text" id="prezzo" name="prezzo" required placeholder="Separare la parte intera da quella decimale con il punto." /><br><br>

<label for="note"> Note: </label>
<input type="text" id="note" name="note" /><br/><br/>

<input type="submit" value="invia"><br/>

</fieldset>
</form>

</body>
</html>