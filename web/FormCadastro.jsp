<%-- 
    Document   : FormCadastro
    Created on : 15/04/2016, 14:49:19
    Author     : Hemis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="pa.css" />
        <link type="text/html" href="Index.jsp">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TELA DE CADASTRO</title>
    </head>
    <body>
        <form action="FormCadastro" method="POST">
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
                  </td>
               </tr>
               <tr>
                 <td>
                    <label for="login">Login de usuário: </label>
                 </td>
                 <td align="left">
                 <input type="text" name="login">
                 </td>
               </tr>
               <tr>
                 <td>
                    <label for="pass">Senha: </label>
                 </td>
               <td align="left">
                  <input type="password" name="pass">
               </td>
             </tr>
             <tr>
              <td>
                 <label for="passconfirm">Confirme a senha: </label>
              </td>
             <td align="left">
                    <input type="password" name="passconfirm">
             </td>
          </tr>
    </table>
</fieldset>
  <br>
<!-- ENDEREÇO -->
<fieldset>
 <legend>Dados de Endereço</legend>
 <table cellspacing="10">

    <tr>
     <td>
        <label for="rua">Rua:</label>
     </td>
     <td align="left">
        <input type="text" name="rua">
     </td>
     <td>
        <label for="numero">Numero:</label>
     </td>
      <td align="left">
          <input type="text" name="numero" size="4">
      </td>
     </tr>
     <tr>
      <td>
        <label for="bairro">Bairro: </label>
      </td>
       <td align="left">
          <input type="text" name="bairro">
       </td>
     </tr>
     <tr>
      <td>
         <label for="estado">Estado:</label>
      </td>
      <td align="left">
      <select name="estado"> 
            <option value="ac">Acre</option> 
            <option value="al">Alagoas</option> 
            <option value="am">Amazonas</option> 
            <option value="ap">Amapá</option> 
            <option value="ba">Bahia</option> 
            <option value="ce">Ceará</option> 
            <option value="df">Distrito Federal</option> 
            <option value="es">Espírito Santo</option> 
            <option value="go">Goiás</option> 
            <option value="ma">Maranhão</option> 
            <option value="mt">Mato Grosso</option> 
            <option value="ms">Mato Grosso do Sul</option> 
            <option value="mg">Minas Gerais</option> 
            <option value="pa">Pará</option> 
            <option value="pb">Paraíba</option> 
            <option value="pr">Paraná</option> 
            <option value="pe">Pernambuco</option> 
            <option value="pi">Piauí</option> 
            <option value="rj">Rio de Janeiro</option> 
            <option value="rn">Rio Grande do Norte</option> 
            <option value="ro">Rondônia</option> 
            <option value="rs">Rio Grande do Sul</option> 
            <option value="rr">Roraima</option> 
            <option value="sc">Santa Catarina</option> 
            <option value="se">Sergipe</option> 
            <option value="sp">São Paulo</option> 
            <option value="to">Tocantins</option> 
      </select>
    </td>
  </tr>
  <tr>
   <td>
      <label for="cidade">Cidade: </label>
   </td>
   <td align="left">
      <input type="text" name="cidade">
   </td>
  </tr>
  <tr>
   <td>
      <label for="cep">CEP: </label>
   </td>
   <td align="left">
        <input type="text" name="cep" size="5" maxlength="5"> - <input type="text" name="cep2" size="3" maxlength="3">
   </td>
  </tr>
 </table>
</fieldset>
 <br />
 <input type="submit">
 <input type="reset" value="Limpar">
          </table>    
       </form>    
    </body>
</html>
