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
                    response.sendRedirect("menu.jsp");
                }
            %>
        </header>
        <div class="quadro">
            <h1>Login Efetuado</h1>
            <a href="index.html">Sair</a>
        </div>
    </body>
</html> 
<style>
    body {
        padding: 20px 20px;
        display: flex;
        text-align: center;
        justify-content: center;
        align-items: center;
        background-color: #ecf0f1;
    }
    h1{
        color: #58af9b;
        margin-top: 30px;
        margin-bottom: 30px;
    }
    a{
        display: flex;
        justify-content: center;
        background-color: #58af9b;
        color: #ecf0f1;
        border-radius: 20px;
        padding: 10px 10px;
        text-decoration: none;
        font-weight: bold;
    }
    a:hover{
        display: flex;
        justify-content: center;
        color: #58af9b;
        border-radius: 20px;
        padding: 10px 10px;
        text-decoration: none;
        background-color: #ecf0f1;
        border: 1px solid #58af9b;
        transition: 2s;
    }
    .quadro{
        background-color: white;
        padding: 50px 60px;
        border-radius: 20px;
        border: 2px solid #58af9b;
    }
    h1{
        color: #58af9b;
        margin-top: 30px;
        margin-bottom: 30px;
    }
</style>