<%-- 
    Document   : redefinirSenha
    Created on : 19 de set. de 2024, 08:15:27
    Author     : nicolas_lange
--%>

<%@page import="ControleLogin.Usuario"%>
<%
    String vEmail = request.getParameter("email");
    String vSenha = request.getParameter("senha");
    String vConfirmaSenha = request.getParameter("confirmaSenha");

    // VERIFICA��O SE AS SENHAS S�O IGUAIS
    if (vSenha != null && vSenha.equals(vConfirmaSenha)) {
        Usuario usu = new Usuario();
        usu.setEmail(vEmail);
        usu.setSenha(vSenha);
        
        // FUN��O PARA ATUALIZAR SENHA
        boolean sucesso = usu.redefinirSenha(); 

        if (sucesso) {
            out.println("<script>alert('Senha redefinida com sucesso!');</script>");
            response.sendRedirect("index.html");
        } else {
            out.println("<script>alert('Erro ao redefinir a senha. Verifique o nome de usu�rio.'); history.back();</script>");
        }
    } else {
        // SE N�O S�O IGUAIS
        out.println("<script>alert('As senhas n�o coincidem, coloque as senhas iguais.'); history.back();</script>");
    }
%>




