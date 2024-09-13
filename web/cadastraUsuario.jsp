<%-- 
    Document   : cadastraUsuario
    Created on : 13 de set. de 2024, 12:04:23
    Author     : nicolas_lange
--%>

<!--FUNÇÃO PARA CADASTRAR USUARIO-->
<%@page import="ControleFuncionario.Usuario"%>
<%
    String vEmail = request.getParameter("email");
    String vSenha = request.getParameter("senha");

    Usuario usu = new Usuario();
    usu.setEmail(vEmail);
    usu.setSenha(vSenha);

    //SE CADASTARAR REDIRECIONA PARA A TELA DE LOGIN
    if (usu.incluirUsuario()) {
        response.sendRedirect("index.html");
    } 
%>
