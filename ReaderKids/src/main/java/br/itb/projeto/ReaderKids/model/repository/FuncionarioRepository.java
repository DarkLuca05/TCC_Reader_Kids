package main.java.br.itb.projeto.ReaderKids.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.itb.projeto.LuxMultimarcas.model.entity.Funcionario;

@Repository
public interface FuncionarioRepository 
                 extends JpaRepository<Usuario, Long>{
	
	Usuario findByEmail(String email);

}
