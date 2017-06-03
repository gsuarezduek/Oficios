// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.oficios.web;

import ar.edu.um.oficios.domain.Clasificacion;
import ar.edu.um.oficios.domain.Cliente;
import ar.edu.um.oficios.domain.Domicilio;
import ar.edu.um.oficios.domain.HistorialDeServicio;
import ar.edu.um.oficios.domain.Oficio;
import ar.edu.um.oficios.domain.Prestador;
import ar.edu.um.oficios.domain.ServiciosDisponibles;
import ar.edu.um.oficios.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Clasificacion, String> ApplicationConversionServiceFactoryBean.getClasificacionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.edu.um.oficios.domain.Clasificacion, java.lang.String>() {
            public String convert(Clasificacion clasificacion) {
                return new StringBuilder().append(clasificacion.getDetalle()).append(' ').append(clasificacion.getComentario()).toString();
            }
        };
    }
    
    public Converter<Long, Clasificacion> ApplicationConversionServiceFactoryBean.getIdToClasificacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.edu.um.oficios.domain.Clasificacion>() {
            public ar.edu.um.oficios.domain.Clasificacion convert(java.lang.Long id) {
                return Clasificacion.findClasificacion(id);
            }
        };
    }
    
    public Converter<String, Clasificacion> ApplicationConversionServiceFactoryBean.getStringToClasificacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.edu.um.oficios.domain.Clasificacion>() {
            public ar.edu.um.oficios.domain.Clasificacion convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Clasificacion.class);
            }
        };
    }
    
    public Converter<Cliente, String> ApplicationConversionServiceFactoryBean.getClienteToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.edu.um.oficios.domain.Cliente, java.lang.String>() {
            public String convert(Cliente cliente) {
                return new StringBuilder().append(cliente.getEmail()).append(' ').append(cliente.getTelefono()).append(' ').append(cliente.getDomicilio()).toString();
            }
        };
    }
    
    public Converter<Long, Cliente> ApplicationConversionServiceFactoryBean.getIdToClienteConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.edu.um.oficios.domain.Cliente>() {
            public ar.edu.um.oficios.domain.Cliente convert(java.lang.Long id) {
                return Cliente.findCliente(id);
            }
        };
    }
    
    public Converter<String, Cliente> ApplicationConversionServiceFactoryBean.getStringToClienteConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.edu.um.oficios.domain.Cliente>() {
            public ar.edu.um.oficios.domain.Cliente convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Cliente.class);
            }
        };
    }
    
    public Converter<Domicilio, String> ApplicationConversionServiceFactoryBean.getDomicilioToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.edu.um.oficios.domain.Domicilio, java.lang.String>() {
            public String convert(Domicilio domicilio) {
                return new StringBuilder().append(domicilio.getCalle()).append(' ').append(domicilio.getNumero()).append(' ').append(domicilio.getCiudad()).toString();
            }
        };
    }
    
    public Converter<Long, Domicilio> ApplicationConversionServiceFactoryBean.getIdToDomicilioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.edu.um.oficios.domain.Domicilio>() {
            public ar.edu.um.oficios.domain.Domicilio convert(java.lang.Long id) {
                return Domicilio.findDomicilio(id);
            }
        };
    }
    
    public Converter<String, Domicilio> ApplicationConversionServiceFactoryBean.getStringToDomicilioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.edu.um.oficios.domain.Domicilio>() {
            public ar.edu.um.oficios.domain.Domicilio convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Domicilio.class);
            }
        };
    }
    
    public Converter<HistorialDeServicio, String> ApplicationConversionServiceFactoryBean.getHistorialDeServicioToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.edu.um.oficios.domain.HistorialDeServicio, java.lang.String>() {
            public String convert(HistorialDeServicio historialDeServicio) {
                return new StringBuilder().append(historialDeServicio.getFecha()).toString();
            }
        };
    }
    
    public Converter<Long, HistorialDeServicio> ApplicationConversionServiceFactoryBean.getIdToHistorialDeServicioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.edu.um.oficios.domain.HistorialDeServicio>() {
            public ar.edu.um.oficios.domain.HistorialDeServicio convert(java.lang.Long id) {
                return HistorialDeServicio.findHistorialDeServicio(id);
            }
        };
    }
    
    public Converter<String, HistorialDeServicio> ApplicationConversionServiceFactoryBean.getStringToHistorialDeServicioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.edu.um.oficios.domain.HistorialDeServicio>() {
            public ar.edu.um.oficios.domain.HistorialDeServicio convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), HistorialDeServicio.class);
            }
        };
    }
    
    public Converter<Oficio, String> ApplicationConversionServiceFactoryBean.getOficioToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.edu.um.oficios.domain.Oficio, java.lang.String>() {
            public String convert(Oficio oficio) {
                return new StringBuilder().append(oficio.getNombre()).toString();
            }
        };
    }
    
    public Converter<Long, Oficio> ApplicationConversionServiceFactoryBean.getIdToOficioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.edu.um.oficios.domain.Oficio>() {
            public ar.edu.um.oficios.domain.Oficio convert(java.lang.Long id) {
                return Oficio.findOficio(id);
            }
        };
    }
    
    public Converter<String, Oficio> ApplicationConversionServiceFactoryBean.getStringToOficioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.edu.um.oficios.domain.Oficio>() {
            public ar.edu.um.oficios.domain.Oficio convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Oficio.class);
            }
        };
    }
    
    public Converter<Prestador, String> ApplicationConversionServiceFactoryBean.getPrestadorToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.edu.um.oficios.domain.Prestador, java.lang.String>() {
            public String convert(Prestador prestador) {
                return new StringBuilder().append(prestador.getTelefono()).append(' ').append(prestador.getEmail()).append(' ').append(prestador.getZona_de_cobertura()).toString();
            }
        };
    }
    
    public Converter<Long, Prestador> ApplicationConversionServiceFactoryBean.getIdToPrestadorConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.edu.um.oficios.domain.Prestador>() {
            public ar.edu.um.oficios.domain.Prestador convert(java.lang.Long id) {
                return Prestador.findPrestador(id);
            }
        };
    }
    
    public Converter<String, Prestador> ApplicationConversionServiceFactoryBean.getStringToPrestadorConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.edu.um.oficios.domain.Prestador>() {
            public ar.edu.um.oficios.domain.Prestador convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Prestador.class);
            }
        };
    }
    
    public Converter<ServiciosDisponibles, String> ApplicationConversionServiceFactoryBean.getServiciosDisponiblesToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.edu.um.oficios.domain.ServiciosDisponibles, java.lang.String>() {
            public String convert(ServiciosDisponibles serviciosDisponibles) {
                return new StringBuilder().append(serviciosDisponibles.getDescripcion()).append(' ').append(serviciosDisponibles.getPrecio_de_referencia()).append(' ').append(serviciosDisponibles.getFranja_horaria_disp()).toString();
            }
        };
    }
    
    public Converter<Long, ServiciosDisponibles> ApplicationConversionServiceFactoryBean.getIdToServiciosDisponiblesConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.edu.um.oficios.domain.ServiciosDisponibles>() {
            public ar.edu.um.oficios.domain.ServiciosDisponibles convert(java.lang.Long id) {
                return ServiciosDisponibles.findServiciosDisponibles(id);
            }
        };
    }
    
    public Converter<String, ServiciosDisponibles> ApplicationConversionServiceFactoryBean.getStringToServiciosDisponiblesConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.edu.um.oficios.domain.ServiciosDisponibles>() {
            public ar.edu.um.oficios.domain.ServiciosDisponibles convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), ServiciosDisponibles.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getClasificacionToStringConverter());
        registry.addConverter(getIdToClasificacionConverter());
        registry.addConverter(getStringToClasificacionConverter());
        registry.addConverter(getClienteToStringConverter());
        registry.addConverter(getIdToClienteConverter());
        registry.addConverter(getStringToClienteConverter());
        registry.addConverter(getDomicilioToStringConverter());
        registry.addConverter(getIdToDomicilioConverter());
        registry.addConverter(getStringToDomicilioConverter());
        registry.addConverter(getHistorialDeServicioToStringConverter());
        registry.addConverter(getIdToHistorialDeServicioConverter());
        registry.addConverter(getStringToHistorialDeServicioConverter());
        registry.addConverter(getOficioToStringConverter());
        registry.addConverter(getIdToOficioConverter());
        registry.addConverter(getStringToOficioConverter());
        registry.addConverter(getPrestadorToStringConverter());
        registry.addConverter(getIdToPrestadorConverter());
        registry.addConverter(getStringToPrestadorConverter());
        registry.addConverter(getServiciosDisponiblesToStringConverter());
        registry.addConverter(getIdToServiciosDisponiblesConverter());
        registry.addConverter(getStringToServiciosDisponiblesConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
