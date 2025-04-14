package com.br.luc.ci.cd.teste_cicd.repository;

import com.br.luc.ci.cd.teste_cicd.model.Produto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProdutoRepository extends JpaRepository<Produto, Long> {
}