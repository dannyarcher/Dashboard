// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nsw.records.digitalarchives.dashboard.model;

import au.gov.nsw.records.digitalarchives.dashboard.model.RelationshipWithOtherRecords;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect RelationshipWithOtherRecords_Roo_Jpa_Entity {
    
    declare @type: RelationshipWithOtherRecords: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long RelationshipWithOtherRecords.id;
    
    @Version
    @Column(name = "version")
    private Integer RelationshipWithOtherRecords.version;
    
    public Long RelationshipWithOtherRecords.getId() {
        return this.id;
    }
    
    public void RelationshipWithOtherRecords.setId(Long id) {
        this.id = id;
    }
    
    public Integer RelationshipWithOtherRecords.getVersion() {
        return this.version;
    }
    
    public void RelationshipWithOtherRecords.setVersion(Integer version) {
        this.version = version;
    }
    
}
