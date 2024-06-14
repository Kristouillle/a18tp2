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

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.jsp">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="btn nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="btn nav-link" href="Etudiant">Liste d'étudiants</a>
                </li>
                <li class="nav-item">
                    <a class="btn nav-link" href="creerEtudiant.jsp">Ajouter étudiant</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <h2>Liste des étudiants</h2>
            <div class="col">
                <table class="table">
                    <tr>
                        <th>#</th>
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Spécilité</th>
                    </tr>
                    <c:forEach items="${mes_etudiants}" var="etudiants">
                        <tr>
                            <td>${etudiants.id}</td>
                            <td>${etudiants.nom} </td>
                            <td>${etudiants.prenom}</td>
                            <td>${etudiants.specialite}</td>
                        </tr>
                    </c:forEach>
                </table>
        </div>
    </div>
</body>
</html>
