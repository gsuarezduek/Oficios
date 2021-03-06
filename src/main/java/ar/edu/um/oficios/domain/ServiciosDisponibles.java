package ar.edu.um.oficios.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class ServiciosDisponibles {

    /**
     */
    private String descripcion;

    /**
     */
    private float precio_de_referencia;

    /**
     */
    private String franja_horaria_disp;
}
