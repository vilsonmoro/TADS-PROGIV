/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

/**
 *
 * @author vilso
 */
public class Produto {
    private int id;
    private String descricao;
    private float preco;
    private float qtdeEstoque;
    private String observacao;

    public Produto() {
    }

    public Produto(int id, String descricao, float preco, float qtdeEstoque, String observacao) {
        this.id = id;
        this.descricao = descricao;
        this.preco = preco;
        this.qtdeEstoque = qtdeEstoque;
        this.observacao = observacao;
    }

   

    public float getQtdeEstoque() {
        return qtdeEstoque;
    }

    public void setQtdeEstoque(float qtdeEstoque) {
        this.qtdeEstoque = qtdeEstoque;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }  

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }
    
    
}
