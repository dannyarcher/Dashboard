// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nsw.records.digitalarchives.dashboard.model;

import au.gov.nsw.records.digitalarchives.dashboard.model.Person;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Person_Roo_Finder {
    
    public static TypedQuery<Person> Person.findPeopleByEmailEquals(String email) {
        if (email == null || email.length() == 0) throw new IllegalArgumentException("The email argument is required");
        EntityManager em = Person.entityManager();
        TypedQuery<Person> q = em.createQuery("SELECT o FROM Person AS o WHERE o.email = :email", Person.class);
        q.setParameter("email", email);
        return q;
    }
    
}
