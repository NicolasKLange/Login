<%-- 
    Document   : autenticarUsuario
    Created on : 13 de set. de 2024, 12:05:22
    Author     : Nicolas
--%>

<!--FUNCÃO PARA AUTENTICAR USUÁRIO AO SISTEMA-->
<%@page import="ControleFuncionario.Usuario"%>
<%
    // TENTATIVAS
    Integer tentativas = (Integer) session.getAttribute("tentativas");

    if (tentativas == null) {
        tentativas = 0;
    }

    //  COLETA OS PARÂMETROS TELA LOGIN
    String vEmail = request.getParameter("email");
    String vSenha = request.getParameter("senha");

    Usuario usu = new Usuario();
    usu.setEmail(vEmail);
    usu.setSenha(vSenha);

    usu = usu.autenticarUsuario();

    // VERIFICA SE O USUÁRIO TEM CONTA NO SISTEMA
    if (usu != null) {
        session.setAttribute("usuario", vEmail);
        session.setAttribute("tentativas", 0); // SE FEZ LOGIN RESETA AS TENTATIVAS
        response.sendRedirect("menu.jsp");
    } else {
        // CONTADOR PARA TENTATIVAS DE LOGIN
        tentativas++;
        session.setAttribute("tentativas", tentativas);

        // VERIFICA SE AINDA TEM TENTATIVAS
        if (tentativas >= 3) {
            session.setAttribute("tentativas", 0); // DEPOIS DE SER REDIRECIONADO PARA A TELA SEM CONTA, RESETA TENTATIVAS
            response.sendRedirect("usuarioNaoCadastrado.html");
        } else {
%>
<script>
                alert("Usuário não cadastrado. Você tem mais <%= 3 - tentativas%> tentativas."); //ALERT MOSTRANDO O N° DE TENTATIVAS DE LOGIN QUE AINDA O USUÁRIO AINDA TEM
                window.history.back(); // VOLTA PARA A PÁGINA ANTERIOR(LOGIN)
</script>
<%
        }
    }
%>

