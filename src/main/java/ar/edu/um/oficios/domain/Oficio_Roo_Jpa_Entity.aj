// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.oficios.domain;

import ar.edu.um.oficios.domain.Oficio;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Oficio_Roo_Jpa_Entity {
    
    declare @type: Oficio: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Oficio.id;
    
    @Version
    @Column(name = "version")
    private Integer Oficio.version;
    
    public Long Oficio.getId() {
        return this.id;
    }
    
    public void Oficio.setId(Long id) {
        this.id = id;
    }
    
    public Integer Oficio.getVersion() {
        return this.version;
    }
    
    public void Oficio.setVersion(Integer version) {
        this.version = version;
    }
    
}
