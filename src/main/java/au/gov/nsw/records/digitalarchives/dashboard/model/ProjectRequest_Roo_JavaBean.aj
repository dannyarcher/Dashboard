// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nsw.records.digitalarchives.dashboard.model;

import au.gov.nsw.records.digitalarchives.dashboard.model.DateQualifier;
import au.gov.nsw.records.digitalarchives.dashboard.model.Person;
import au.gov.nsw.records.digitalarchives.dashboard.model.ProjectRequest;
import java.util.Date;

privileged aspect ProjectRequest_Roo_JavaBean {
    
    public Person ProjectRequest.getRequestPerson() {
        return this.requestPerson;
    }
    
    public void ProjectRequest.setRequestPerson(Person requestPerson) {
        this.requestPerson = requestPerson;
    }
    
    public String ProjectRequest.getReason() {
        return this.reason;
    }
    
    public void ProjectRequest.setReason(String reason) {
        this.reason = reason;
    }
    
    public String ProjectRequest.getOverview() {
        return this.overview;
    }
    
    public void ProjectRequest.setOverview(String overview) {
        this.overview = overview;
    }
    
    public boolean ProjectRequest.isDisposalAuthorisationRegistered() {
        return this.disposalAuthorisationRegistered;
    }
    
    public void ProjectRequest.setDisposalAuthorisationRegistered(boolean disposalAuthorisationRegistered) {
        this.disposalAuthorisationRegistered = disposalAuthorisationRegistered;
    }
    
    public String ProjectRequest.getDisposalAuthorisationNumber() {
        return this.disposalAuthorisationNumber;
    }
    
    public void ProjectRequest.setDisposalAuthorisationNumber(String disposalAuthorisationNumber) {
        this.disposalAuthorisationNumber = disposalAuthorisationNumber;
    }
    
    public boolean ProjectRequest.isAccessDirectionRegistered() {
        return this.accessDirectionRegistered;
    }
    
    public void ProjectRequest.setAccessDirectionRegistered(boolean accessDirectionRegistered) {
        this.accessDirectionRegistered = accessDirectionRegistered;
    }
    
    public String ProjectRequest.getAccessDirectionNumber() {
        return this.accessDirectionNumber;
    }
    
    public void ProjectRequest.setAccessDirectionNumber(String accessDirectionNumber) {
        this.accessDirectionNumber = accessDirectionNumber;
    }
    
    public boolean ProjectRequest.isRecordsBeingUsed() {
        return this.recordsBeingUsed;
    }
    
    public void ProjectRequest.setRecordsBeingUsed(boolean recordsBeingUsed) {
        this.recordsBeingUsed = recordsBeingUsed;
    }
    
    public String ProjectRequest.getRelatedPhysicalRecords() {
        return this.relatedPhysicalRecords;
    }
    
    public void ProjectRequest.setRelatedPhysicalRecords(String relatedPhysicalRecords) {
        this.relatedPhysicalRecords = relatedPhysicalRecords;
    }
    
    public Date ProjectRequest.getDateStart() {
        return this.dateStart;
    }
    
    public void ProjectRequest.setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }
    
    public DateQualifier ProjectRequest.getDateStartQualifier() {
        return this.dateStartQualifier;
    }
    
    public void ProjectRequest.setDateStartQualifier(DateQualifier dateStartQualifier) {
        this.dateStartQualifier = dateStartQualifier;
    }
    
    public Date ProjectRequest.getDateEnd() {
        return this.dateEnd;
    }
    
    public void ProjectRequest.setDateEnd(Date dateEnd) {
        this.dateEnd = dateEnd;
    }
    
    public DateQualifier ProjectRequest.getDateEndQualifier() {
        return this.dateEndQualifier;
    }
    
    public void ProjectRequest.setDateEndQualifier(DateQualifier dateEndQualifier) {
        this.dateEndQualifier = dateEndQualifier;
    }
    
}
