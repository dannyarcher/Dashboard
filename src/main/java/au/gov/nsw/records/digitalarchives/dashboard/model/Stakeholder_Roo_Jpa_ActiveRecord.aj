// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nsw.records.digitalarchives.dashboard.model;

import au.gov.nsw.records.digitalarchives.dashboard.model.Stakeholder;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Stakeholder_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Stakeholder.entityManager;
    
    public static final EntityManager Stakeholder.entityManager() {
        EntityManager em = new Stakeholder().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Stakeholder.countStakeholders() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Stakeholder o", Long.class).getSingleResult();
    }
    
    public static List<Stakeholder> Stakeholder.findAllStakeholders() {
        return entityManager().createQuery("SELECT o FROM Stakeholder o", Stakeholder.class).getResultList();
    }
    
    public static Stakeholder Stakeholder.findStakeholder(Long id) {
        if (id == null) return null;
        return entityManager().find(Stakeholder.class, id);
    }
    
    public static List<Stakeholder> Stakeholder.findStakeholderEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Stakeholder o", Stakeholder.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Stakeholder.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Stakeholder.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Stakeholder attached = Stakeholder.findStakeholder(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Stakeholder.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Stakeholder.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Stakeholder Stakeholder.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Stakeholder merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
