/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.javaweb.dao;



import java.util.List;
import br.javaweb.web.Produto;
import br.javaweb.Util.JavaWebException;

public interface ProdutosDAO {

    public void save(Produto p) throws JavaWebException;

    public List<Produto> getCatalogoProdutos() throws JavaWebException;

    public Produto getProdutoById(int id) throws JavaWebException;

    public void createTable() throws JavaWebException;
}