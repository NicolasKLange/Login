<!DOCTYPE html>
<html lang="en" >
    <head>
        <!--TITULO DA PÁGINA-->
        <meta charset="UTF-8">
        <title>Login efetuado</title>
        <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'>
        <link rel="stylesheet" href="style/style.css">
    </head>
    <body>
        <header>
            <!--VERIFICA SE USUÁRIO ESTÁ LOGADO-->
            <%
                String email = (String) session.getAttribute("usuario");
                if (email == null) {
                    response.sendRedirect("usuarioNaoLogado.html");
                }
            %>
            Login Efetuado
        </header>
    </body>
</html>
