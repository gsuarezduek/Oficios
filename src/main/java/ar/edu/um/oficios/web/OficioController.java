package ar.edu.um.oficios.web;
import ar.edu.um.oficios.domain.Oficio;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/oficios")
@Controller
@RooWebScaffold(path = "oficios", formBackingObject = Oficio.class)
public class OficioController {
}
