package ar.edu.um.oficios.web;
import ar.edu.um.oficios.domain.Cliente;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/clientes")
@Controller
@RooWebScaffold(path = "clientes", formBackingObject = Cliente.class)
public class ClienteController {
	
	
	
	
	
}
