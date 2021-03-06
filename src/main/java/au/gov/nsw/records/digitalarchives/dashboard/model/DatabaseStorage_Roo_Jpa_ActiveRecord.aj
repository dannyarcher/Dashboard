// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nsw.records.digitalarchives.dashboard.model;

import au.gov.nsw.records.digitalarchives.dashboard.model.DatabaseStorage;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DatabaseStorage_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DatabaseStorage.entityManager;
    
    public static final EntityManager DatabaseStorage.entityManager() {
        EntityManager em = new DatabaseStorage().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DatabaseStorage.countDatabaseStorages() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DatabaseStorage o", Long.class).getSingleResult();
    }
    
    public static List<DatabaseStorage> DatabaseStorage.findAllDatabaseStorages() {
        return entityManager().createQuery("SELECT o FROM DatabaseStorage o", DatabaseStorage.class).getResultList();
    }
    
    public static DatabaseStorage DatabaseStorage.findDatabaseStorage(Long id) {
        if (id == null) return null;
        return entityManager().find(DatabaseStorage.class, id);
    }
    
    public static List<DatabaseStorage> DatabaseStorage.findDatabaseStorageEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DatabaseStorage o", DatabaseStorage.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DatabaseStorage.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DatabaseStorage.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DatabaseStorage attached = DatabaseStorage.findDatabaseStorage(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DatabaseStorage.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DatabaseStorage.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DatabaseStorage DatabaseStorage.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DatabaseStorage merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
