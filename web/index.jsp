
package TratamentoLogin;
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instruemntos Musicais</title>
        <link rel="stylesheet" type="text/css" href="pa.css" />
    </head>
    <body>
        <form id="size" action="acesso" method="POST" >
               <b>Login:</b>
               </br>
               
               <input type="text" name="Nome" placeholder="Informe seu Nome">
               <br>
               <b>Senha:</b>
               <br>
               
               <input type="password" name="Senha" placeholder="Infrome a Senha">
               <input type="hidden" name="acao" Value="Autenticar">
               
         <div id="size1">
             <label class="checkbox"><input type="checkbox"/>Lembrar a Senha</input></label>
             <br>
             <button class="btn" type="submit">Entrar</button>
             <input type="button" value="Cadastrar" onclick="window.open('')">
         </div>
               
        </form>    
    </body>
</html>
