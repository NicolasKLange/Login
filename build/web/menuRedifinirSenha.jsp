<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Redefinir Senha</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="content">
                <div class="second-column">
                    <h2 class="title">Redefinir Senha</h2>
                    <p class="description">Informe seu nome de usuário e redefina sua senha</p>
                    <form action="redefinirSenha.jsp" method="POST">
                        <!--INFORMAR USERNAME-->
                        <div class="form-group">
                            <input type="text" id="email" name="email" class="form-control" placeholder="Digite seu username" required>
                        </div>
                        <!--INFORMAR SENHA-->
                        <div class="form-group">
                            <input type="password" id="senha" name="senha" class="form-control" placeholder="Digite sua nova senha" required>
                        </div>
                        <!--INFORMAR CONFIRMAR SENHA-->
                        <div class="form-group">
                            <input type="password" id="confirmaSenha" name="confirmaSenha" class="form-control" placeholder="Confirme sua nova senha" required>
                        </div>
                        <button type="submit" class="btn">Redefinir Senha</button>
                        <!--VOLTAR PÁGINA DE LOGIN-->
                        <p><a class="redefinir" href="index.html">Voltar</a></p>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body {
        font-family: 'Open Sans', sans-serif;
        background-color: #ecf0f1;
    }
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #ecf0f1;
    }
    .content {
        background-color: #fff;
        border-radius: 15px;
        width: 960px;
        height: 50%;
        justify-content: space-between;
        align-items: center;
        position: relative;
    }
    .second-column {
        width: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 40px;
    }
    .title {
        font-size: 28px;
        font-weight: bold;
        text-transform: capitalize;
        color: #58af9b;
        margin-bottom: 20px;
    }
    .description {
        font-size: 14px;
        font-weight: 300;
        color: #7f8c8d;
        margin-bottom: 20px;
        text-align: center;
    }
    .form-group {
        margin-bottom: 20px;
        width: 100%;
    }
    .form-control {
        height: 45px;
        width: 100%;
        border: none;
        background-color: #ecf0f1;
        padding: 10px;
        border-radius: 5px;
        font-size: 14px;
    }
    .btn {
        border-radius: 15px;
        text-transform: uppercase;
        color: #fff;
        font-size: 14px;
        padding: 10px 50px;
        cursor: pointer;
        font-weight: bold;
        background-color: #58af9b;
        border: none;
        transition: background-color 0.5s;
        margin-bottom: 15px;
    }
    .btn:hover {
        background-color: #fff;
        color: #58af9b;
        border: 1px solid #58af9b;
    }
    a.redefinir {
        border-radius: 15px;
        text-transform: uppercase;
        color: #fff;
        font-size: 14px;
        padding: 10px 50px;
        cursor: pointer;
        font-weight: bold;
        background-color: #58af9b;
        border: none;
        transition: background-color 0.5s;
        text-decoration: none;
        display: inline-block;
        display: flex;
        justify-content: center;    
    }
    a.redefinir:hover {
        background-color: #fff;
        color: #58af9b;
        border: 1px solid #58af9b;
    }
</style>
