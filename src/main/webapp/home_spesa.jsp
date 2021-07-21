<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="it">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<meta charset="ISO-8859-1">
<title>home_spesa </title>
<meta name="description" content="progetto java, spring boot e maven per tenere traccia delle proprie spese" />
<meta name="keywords" content="java, spring, maven, diario, spesa, bilancio" />
<meta name="author" content="nome dell'autore" />
<meta name="copyright" content="nome di chi ha la proprietà intellettuale sulla pagina" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="./style.css" media="screen" />
</head>

<body><br>

<nav>
<h1> Menù principale </h1>
<ul>
<li><a href="./home_spesa.jsp" title="homepage" tabindex="1"> Home </a></li>
<li><a href="./form.jsp" title="aggiungi una nuova spesa" tabindex="2"> Aggiungi una nuova spesa... </a></li>
<li><a href="./stats.jsp" title="statistiche" tabindex="3"> Statistiche </a></li>
</ul>
</nav><br/>

<h2> Lista spesa </h2><br/>

<table>
	<tr>
<th scope="col"> Nome </th>
<th scope="col"> Categoria </th>
<th scope="col"> Note </th>
<th scope="col"> Prezzo </th>
</tr>

<c:forEach items="${datiSpesa}" var="spesa">

<tr>
<th scope="row"> <c:out value="${spesa.nome}"> </c:out> </th>
<td> <c:out value="${spesa.categoria}"></c:out> </td>
<td> <c:out value="${spesa.note}"></c:out> </td>
<td> <c:out value="${spesa.prezzo}"></c:out> </td>
</tr>
</c:forEach>
</table><br>

</body>
</html>