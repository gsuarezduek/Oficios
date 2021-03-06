package ar.edu.um.oficios.web;
import ar.edu.um.oficios.domain.Prestador;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/prestadors")
@Controller
@RooWebScaffold(path = "prestadors", formBackingObject = Prestador.class)
public class PrestadorController {
}
