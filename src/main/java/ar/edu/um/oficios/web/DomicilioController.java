package ar.edu.um.oficios.web;
import ar.edu.um.oficios.domain.Domicilio;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/domicilios")
@Controller
@RooWebScaffold(path = "domicilios", formBackingObject = Domicilio.class)
public class DomicilioController {
}
