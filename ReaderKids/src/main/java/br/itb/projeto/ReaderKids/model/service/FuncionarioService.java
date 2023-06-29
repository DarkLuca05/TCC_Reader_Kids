package main.java.br.itb.projeto.ReaderKids.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import br.itb.projeto.LuxMultimarcas.model.entity.Funcionario;
import br.itb.projeto.LuxMultimarcas.model.repository.FuncionarioRepository;

@Service
public class FuncionarioService {
	
	public FuncionarioService(FuncionarioRepository funcionarioRepository) {
		super();
		this.funcionarioRepository = funcionarioRepository;
	}

	private FuncionarioRepository funcionarioRepository;
	
	public List<Usuario> findAll(){
		return funcionarioRepository.findAll();
	}

}
