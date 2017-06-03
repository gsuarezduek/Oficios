package ar.edu.um.oficios.web;
import ar.edu.um.oficios.domain.Clasificacion;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/clasificacions")
@Controller
@RooWebScaffold(path = "clasificacions", formBackingObject = Clasificacion.class)
public class ClasificacionController {
}
