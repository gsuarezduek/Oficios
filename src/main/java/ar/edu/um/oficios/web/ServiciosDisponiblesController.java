package ar.edu.um.oficios.web;
import ar.edu.um.oficios.domain.ServiciosDisponibles;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/serviciosdisponibleses")
@Controller
@RooWebScaffold(path = "serviciosdisponibleses", formBackingObject = ServiciosDisponibles.class)
public class ServiciosDisponiblesController {
}
