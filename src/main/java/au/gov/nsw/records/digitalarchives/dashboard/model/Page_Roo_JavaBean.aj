// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nsw.records.digitalarchives.dashboard.model;

import au.gov.nsw.records.digitalarchives.dashboard.model.Page;
import java.util.Date;

privileged aspect Page_Roo_JavaBean {
    
    public String Page.getTitle() {
        return this.title;
    }
    
    public void Page.setTitle(String title) {
        this.title = title;
    }
    
    public String Page.getContent() {
        return this.content;
    }
    
    public void Page.setContent(String content) {
        this.content = content;
    }
    
    public String Page.getLastUpdateUser() {
        return this.lastUpdateUser;
    }
    
    public void Page.setLastUpdateUser(String lastUpdateUser) {
        this.lastUpdateUser = lastUpdateUser;
    }
    
    public Date Page.getLastUpdate() {
        return this.lastUpdate;
    }
    
    public void Page.setLastUpdate(Date lastUpdate) {
        this.lastUpdate = lastUpdate;
    }
    
}
