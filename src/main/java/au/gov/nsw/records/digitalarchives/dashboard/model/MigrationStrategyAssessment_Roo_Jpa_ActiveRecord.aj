// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nsw.records.digitalarchives.dashboard.model;

import au.gov.nsw.records.digitalarchives.dashboard.model.MigrationStrategyAssessment;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MigrationStrategyAssessment_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MigrationStrategyAssessment.entityManager;
    
    public static final EntityManager MigrationStrategyAssessment.entityManager() {
        EntityManager em = new MigrationStrategyAssessment().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MigrationStrategyAssessment.countMigrationStrategyAssessments() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MigrationStrategyAssessment o", Long.class).getSingleResult();
    }
    
    public static List<MigrationStrategyAssessment> MigrationStrategyAssessment.findAllMigrationStrategyAssessments() {
        return entityManager().createQuery("SELECT o FROM MigrationStrategyAssessment o", MigrationStrategyAssessment.class).getResultList();
    }
    
    public static MigrationStrategyAssessment MigrationStrategyAssessment.findMigrationStrategyAssessment(Long id) {
        if (id == null) return null;
        return entityManager().find(MigrationStrategyAssessment.class, id);
    }
    
    public static List<MigrationStrategyAssessment> MigrationStrategyAssessment.findMigrationStrategyAssessmentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MigrationStrategyAssessment o", MigrationStrategyAssessment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MigrationStrategyAssessment.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MigrationStrategyAssessment.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MigrationStrategyAssessment attached = MigrationStrategyAssessment.findMigrationStrategyAssessment(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MigrationStrategyAssessment.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MigrationStrategyAssessment.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MigrationStrategyAssessment MigrationStrategyAssessment.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MigrationStrategyAssessment merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
