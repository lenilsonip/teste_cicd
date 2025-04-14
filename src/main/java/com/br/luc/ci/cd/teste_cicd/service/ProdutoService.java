package com.br.luc.ci.cd.teste_cicd.service;

import com.br.luc.ci.cd.teste_cicd.model.Produto;
import com.br.luc.ci.cd.teste_cicd.repository.ProdutoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProdutoService {

    @Autowired
    private ProdutoRepository produtoRepository;

    public List<Produto> listarProdutos() {
        return produtoRepository.findAll();
    }

    public Optional<Produto> buscarProdutoPorId(Long id) {
        return produtoRepository.findById(id);
    }

    public Produto criarProduto(Produto produto) {
        return produtoRepository.save(produto);
    }

    public Produto atualizarProduto(Long id, Produto produtoAtualizado) {
        Optional<Produto> produtoExistente = produtoRepository.findById(id);
        if (produtoExistente.isPresent()) {
            produtoAtualizado.setId(id);
            return produtoRepository.save(produtoAtualizado);
        }
        return null; // ou lançar uma exceção
    }

    public void deletarProduto(Long id) {
        produtoRepository.deleteById(id);
    }
}