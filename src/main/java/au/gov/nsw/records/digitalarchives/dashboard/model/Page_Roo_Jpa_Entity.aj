// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nsw.records.digitalarchives.dashboard.model;

import au.gov.nsw.records.digitalarchives.dashboard.model.Page;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Page_Roo_Jpa_Entity {
    
    declare @type: Page: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Page.id;
    
    @Version
    @Column(name = "version")
    private Integer Page.version;
    
    public Long Page.getId() {
        return this.id;
    }
    
    public void Page.setId(Long id) {
        this.id = id;
    }
    
    public Integer Page.getVersion() {
        return this.version;
    }
    
    public void Page.setVersion(Integer version) {
        this.version = version;
    }
    
}
