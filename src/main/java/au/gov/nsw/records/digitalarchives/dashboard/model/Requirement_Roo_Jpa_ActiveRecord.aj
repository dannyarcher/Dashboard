// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nsw.records.digitalarchives.dashboard.model;

import au.gov.nsw.records.digitalarchives.dashboard.model.Requirement;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Requirement_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Requirement.entityManager;
    
    public static final EntityManager Requirement.entityManager() {
        EntityManager em = new Requirement().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Requirement.countRequirements() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Requirement o", Long.class).getSingleResult();
    }
    
    public static List<Requirement> Requirement.findAllRequirements() {
        return entityManager().createQuery("SELECT o FROM Requirement o", Requirement.class).getResultList();
    }
    
    public static Requirement Requirement.findRequirement(Long id) {
        if (id == null) return null;
        return entityManager().find(Requirement.class, id);
    }
    
    public static List<Requirement> Requirement.findRequirementEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Requirement o", Requirement.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Requirement.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Requirement.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Requirement attached = Requirement.findRequirement(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Requirement.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Requirement.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Requirement Requirement.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Requirement merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
