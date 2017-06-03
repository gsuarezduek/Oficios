package ar.edu.um.oficios.web;
import ar.edu.um.oficios.domain.HistorialDeServicio;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/historialdeservicios")
@Controller
@RooWebScaffold(path = "historialdeservicios", formBackingObject = HistorialDeServicio.class)
public class HistorialDeServicioController {
}
