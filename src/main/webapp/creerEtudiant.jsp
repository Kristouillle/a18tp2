
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous">
</script>
<div class="text-center">
    <br>
    <h1>Ajouter un étudiant</h1>
</div>

<div class="container">
    <div class="row">
        <div class="col"></div>
        <div class="col">
            <form action="Etudiant" method="post">
                <table class="text-center" style="width: 100%">
                    <tr>
                        <td><label for="nom" class="form-label">Nom:</label></td>
                        <td><input type="text" name="nom" id="nom" placeholder="nom" class="form-control-auto-width"></td>
                    </tr>
                    <tr>
                        <td><label for="prenom" class="form-label">Prenom:</label></td>
                        <td><input type="text" name="prenom" id="prenom" placeholder="prenom" class="form-control-auto-width"></td>
                    </tr>
                    <tr>
                        <td><label for="specialiter" class="form-label">Spécialité:</label></td>
                        <td><input type="text" name="specialiter" id="specialiter" placeholder="Spécialité" class="form-control-auto-width"></td>
                    </tr>
                </table>
                <br>
                <input type="submit" name="submitForm" id="submitForm" value="Send" class="btn btn-primary text-center" style="width: 90%">
            </form>
        </div>
        <div class="col"></div>
    </div>
    <div class="row">
        <div class="col"></div>
        <div class="col">
            <a href="index.jsp" class="btn btn-success text-center" style="width: 90%">Home</a>
        </div>
        <div class="col"></div>
    </div>
</div>
</body>
</html>
