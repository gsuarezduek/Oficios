// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.oficios.domain;

import ar.edu.um.oficios.domain.ServiciosDisponibles;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ServiciosDisponibles_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ServiciosDisponibles.entityManager;
    
    public static final List<String> ServiciosDisponibles.fieldNames4OrderClauseFilter = java.util.Arrays.asList("descripcion", "precio_de_referencia", "franja_horaria_disp");
    
    public static final EntityManager ServiciosDisponibles.entityManager() {
        EntityManager em = new ServiciosDisponibles().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ServiciosDisponibles.countServiciosDisponibleses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ServiciosDisponibles o", Long.class).getSingleResult();
    }
    
    public static List<ServiciosDisponibles> ServiciosDisponibles.findAllServiciosDisponibleses() {
        return entityManager().createQuery("SELECT o FROM ServiciosDisponibles o", ServiciosDisponibles.class).getResultList();
    }
    
    public static List<ServiciosDisponibles> ServiciosDisponibles.findAllServiciosDisponibleses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ServiciosDisponibles o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ServiciosDisponibles.class).getResultList();
    }
    
    public static ServiciosDisponibles ServiciosDisponibles.findServiciosDisponibles(Long id) {
        if (id == null) return null;
        return entityManager().find(ServiciosDisponibles.class, id);
    }
    
    public static List<ServiciosDisponibles> ServiciosDisponibles.findServiciosDisponiblesEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ServiciosDisponibles o", ServiciosDisponibles.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<ServiciosDisponibles> ServiciosDisponibles.findServiciosDisponiblesEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ServiciosDisponibles o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ServiciosDisponibles.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ServiciosDisponibles.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ServiciosDisponibles.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ServiciosDisponibles attached = ServiciosDisponibles.findServiciosDisponibles(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ServiciosDisponibles.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ServiciosDisponibles.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ServiciosDisponibles ServiciosDisponibles.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ServiciosDisponibles merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
