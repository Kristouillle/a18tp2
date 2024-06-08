<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Etudiant</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous">
</script>
<h1 class="text-center">La Liste Des Étudiants</h1>

<div class="container">
    <div class="row">
        <div class="col"></div>
        <div class="col">
            <table class="table">
                <tr>
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Spécilité</th>
                </tr>
                <c:forEach items="${mes_etudiants}" var="etudiants">
                    <tr>
                        <td>${etudiants.nom} </td>
                        <td>${etudiants.prenom}</td>
                        <td>${etudiants.specialite}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="col"></div>
        <br>
    </div>
    <div class="row">
        <div class="col"></div>
        <div class="col">
            <a href="creerEtudiant.jsp" class="btn btn-success text-center" style="width: 100%">Créer un étudiant</a>
            <br>
            <br>
            <a href="index.jsp" class="btn btn-primary text-center" style="width: 100%">Home</a>
        </div>
        <div class="col"></div>
    </div>
</div>
</body>
</html>
