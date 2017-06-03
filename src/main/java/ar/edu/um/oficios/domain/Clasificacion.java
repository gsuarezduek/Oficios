package ar.edu.um.oficios.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Clasificacion {

    /**
     */
    private String detalle;

    /**
     */
    private String comentario;
}
