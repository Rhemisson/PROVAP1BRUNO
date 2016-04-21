package br.javaweb.ecom;

import br.javaweb.dao.ProdutosDAO;
import br.javaweb.dao.ProdutosDAOP;
import br.javaweb.web.Produto;
import TratamentoLogin.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdicionarProdutoCarrinho extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        HttpSession sessao = request.getSession();
        
        Usuario objSessao = (Usuario) sessao.getAttribute("usuarioSessao");
        
        response.setContentType("text/html");
        // Obtencao do canal de envio de dados para o cliente
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Ecommerce : Academia do Java</title>");
        out.println("<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>");
        out.println("<link href= 'aj.css' rel='stylesheet' type='text/css'></link>");
        out.println("</head>");
        out.println("<body>");
        out.println("<H3>Adicionando produtos no carrinho de compras</H3>");

        // obtendo os parametros de request...
        String strIdProduto = request.getParameter("idProduto");
        Produto prod = null;
        ProdutosDAO dao = new ProdutosDAOP();

        try {
            int id = Integer.parseInt(strIdProduto);
            prod = dao.getProdutoById(id);
        } catch (Exception e) {
            throw new ServletException(e);
        }

        // Impressao dos dados do produto
        if(objSessao != null){
            out.println("<br/> Usuario logado: <strong>" + objSessao.getUsuario() + "</strong>");
        }else{
            out.println("<br/> Usuario logado: <strong> Não existe usuario logado </strong>");
        }
         
          out.println("<br/>");
        out.println("<br/>id: <strong>" + prod.getId() + "</strong>");
        out.println("<br/>c&oacute;digo: <strong>" + prod.getCodigo() + "</strong>");
        out.println("<br/>nome: <strong>" + prod.getNome() + "</strong>");
        out.println("<br/>descri&ccedil;&atilde;o: <strong>" + prod.getDescricao() + "</strong>");
        out.println("<br/>pre&ccedil;o: <strong>" + prod.getPreco() + "</strong>");
        out.println("<br/><img src='imagem/" + prod.getImage() + "' />");
        out.println("</body>");
        out.println("</html>");
        
        List<Produto> carrinho = new ArrayList<Produto>();
        carrinho.add(prod);
        
        for(Produto item : carrinho){
            
            if(item.getId() == 32){
                carrinho.remove(prod);
                
                
            }
        }
        
        sessao.setAttribute("carrinho", carrinho);
        
        
    }
}
