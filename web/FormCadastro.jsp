<%-- 
    Document   : FormCadastro
    Created on : 15/04/2016, 14:49:19
    Author     : Hemis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/html" href="Index.jsp">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
    </head>
    <body>
        <form action="FormCadastro" method="GET">
        <fieldset>
            <legend>Dados de Cadastro</legend>
          <table cellspacing="10">
              <tr>
                 <td>
                     <label for="nome">Nome:</label> 
                 </td>    
              </tr>
              <tr>
                <td align="left">
                   <input type="text" name="nome"/> 
                </td>    
              </tr>
              <tr>
                <td>
                   <label for="sobrenome">Sobrenome:</label> 
                </td>
               </tr>
                <td>
                   <input type="text" name="sobrenome">    
                </td>
               <tr>
                <td>
                    <label for="email" required>E-mail:</labe> 
                </td>
               <tr>
                <td>
                   <input type="text" name="E-mail"> 
                </td>    
               <tr>
                <td>
                    <label for="imagem">Selecionar Perfil:</label> 
                </td>
                <td>
                    <input type="file" name="imagem">
                </td> 
                
          </table>    
       </form>    
    </body>
</html>
