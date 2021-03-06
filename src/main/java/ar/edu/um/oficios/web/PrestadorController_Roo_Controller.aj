// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.oficios.web;

import ar.edu.um.oficios.domain.Prestador;
import ar.edu.um.oficios.web.PrestadorController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PrestadorController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PrestadorController.create(@Valid Prestador prestador, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, prestador);
            return "prestadors/create";
        }
        uiModel.asMap().clear();
        prestador.persist();
        return "redirect:/prestadors/" + encodeUrlPathSegment(prestador.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PrestadorController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Prestador());
        return "prestadors/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PrestadorController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("prestador", Prestador.findPrestador(id));
        uiModel.addAttribute("itemId", id);
        return "prestadors/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PrestadorController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("prestadors", Prestador.findPrestadorEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Prestador.countPrestadors() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("prestadors", Prestador.findAllPrestadors(sortFieldName, sortOrder));
        }
        return "prestadors/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PrestadorController.update(@Valid Prestador prestador, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, prestador);
            return "prestadors/update";
        }
        uiModel.asMap().clear();
        prestador.merge();
        return "redirect:/prestadors/" + encodeUrlPathSegment(prestador.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PrestadorController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Prestador.findPrestador(id));
        return "prestadors/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PrestadorController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Prestador prestador = Prestador.findPrestador(id);
        prestador.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/prestadors";
    }
    
    void PrestadorController.populateEditForm(Model uiModel, Prestador prestador) {
        uiModel.addAttribute("prestador", prestador);
    }
    
    String PrestadorController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
