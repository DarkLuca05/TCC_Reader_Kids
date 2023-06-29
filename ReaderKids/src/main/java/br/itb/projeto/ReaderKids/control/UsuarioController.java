package main.java.br.itb.projeto.ReaderKids.control;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.itb.projeto.LuxMultimarcas.model.entity.Funcionario;
import br.itb.projeto.LuxMultimarcas.model.service.FuncionarioService;

@Controller
@RequestMapping("/api/usuario")
public class UsuarioController {
	
	private UsuarioService usuarioService;

	public UsuarioController(UsuarioService usuarioService) {
		super();
		this.UsuarioService = usuarioService;
	}
	
	@GetMapping("/todos")
	public String getAll(Model model) {
		
		List<Usuario> funcionarios = usuarioService.findAll();
		
		model.addAttribute("usuarios", usuario);
		
		return "usuario";
	}

	

}
