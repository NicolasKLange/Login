<%-- 
    Document   : autenticarUsuario
    Created on : 13 de set. de 2024, 12:05:22
    Author     : Nicolas
--%>

<!--FUNCÃO PARA AUTENTICAR USUÁRIO AO SISTEMA-->
<%@page import="ControleFuncionario.Usuario"%>
<%
    String vEmail = request.getParameter("email");
    String vSenha = request.getParameter("senha");

    Usuario usu = new Usuario();
    usu.setEmail(vEmail);
    usu.setSenha(vSenha);

    usu = usu.autenticarUsuario();

    //VERIFICA SE USUÁRIO POSSUI CONTA
    if (usu != null) {
        session.setAttribute("usuario", vEmail);
        response.sendRedirect("menu.jsp");
    } else {
        response.sendRedirect("usuarioNaoCadastrado.html");
    }
%>