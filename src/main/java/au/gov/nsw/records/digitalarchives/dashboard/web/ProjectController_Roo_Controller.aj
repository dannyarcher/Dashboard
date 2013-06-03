// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package au.gov.nsw.records.digitalarchives.dashboard.web;

import au.gov.nsw.records.digitalarchives.dashboard.model.AccessRequirement;
import au.gov.nsw.records.digitalarchives.dashboard.model.DatabaseStorage;
import au.gov.nsw.records.digitalarchives.dashboard.model.Documentation;
import au.gov.nsw.records.digitalarchives.dashboard.model.EventHistory;
import au.gov.nsw.records.digitalarchives.dashboard.model.FileStorage;
import au.gov.nsw.records.digitalarchives.dashboard.model.MigrationStrategyAssessment;
import au.gov.nsw.records.digitalarchives.dashboard.model.Page;
import au.gov.nsw.records.digitalarchives.dashboard.model.Project;
import au.gov.nsw.records.digitalarchives.dashboard.model.ProjectType;
import au.gov.nsw.records.digitalarchives.dashboard.model.Record;
import au.gov.nsw.records.digitalarchives.dashboard.model.RelationshipWithOtherRecords;
import au.gov.nsw.records.digitalarchives.dashboard.model.Requirement;
import au.gov.nsw.records.digitalarchives.dashboard.model.Stakeholder;
import au.gov.nsw.records.digitalarchives.dashboard.model.Status;
import au.gov.nsw.records.digitalarchives.dashboard.model.SystemAnalysis;
import au.gov.nsw.records.digitalarchives.dashboard.model.Task;
import au.gov.nsw.records.digitalarchives.dashboard.model.Upload;
import au.gov.nsw.records.digitalarchives.dashboard.web.ProjectController;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ProjectController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ProjectController.create(@Valid Project project, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, project);
            return "projects/create";
        }
        uiModel.asMap().clear();
        project.persist();
        return "redirect:/projects/" + encodeUrlPathSegment(project.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ProjectController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Project());
        return "projects/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ProjectController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("project", Project.findProject(id));
        uiModel.addAttribute("itemId", id);
        return "projects/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ProjectController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("projects", Project.findProjectEntries(firstResult, sizeNo));
            float nrOfPages = (float) Project.countProjects() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("projects", Project.findAllProjects());
        }
        addDateTimeFormatPatterns(uiModel);
        return "projects/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ProjectController.update(@Valid Project project, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, project);
            return "projects/update";
        }
        uiModel.asMap().clear();
        project.merge();
        return "redirect:/projects/" + encodeUrlPathSegment(project.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ProjectController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Project project = Project.findProject(id);
        project.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/projects";
    }
    
    void ProjectController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("project_creationdate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("project_lastupdatedate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("project_closedate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void ProjectController.populateEditForm(Model uiModel, Project project) {
        uiModel.addAttribute("project", project);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("accessrequirements", AccessRequirement.findAllAccessRequirements());
        uiModel.addAttribute("databasestorages", DatabaseStorage.findAllDatabaseStorages());
        uiModel.addAttribute("documentations", Documentation.findAllDocumentations());
        uiModel.addAttribute("eventhistorys", EventHistory.findAllEventHistorys());
        uiModel.addAttribute("filestorages", FileStorage.findAllFileStorages());
        uiModel.addAttribute("migrationstrategyassessments", MigrationStrategyAssessment.findAllMigrationStrategyAssessments());
        uiModel.addAttribute("pages", Page.findAllPages());
        uiModel.addAttribute("projecttypes", Arrays.asList(ProjectType.values()));
        uiModel.addAttribute("records", Record.findAllRecords());
        uiModel.addAttribute("relationshipwithotherrecordses", RelationshipWithOtherRecords.findAllRelationshipWithOtherRecordses());
        uiModel.addAttribute("requirements", Requirement.findAllRequirements());
        uiModel.addAttribute("stakeholders", Stakeholder.findAllStakeholders());
        uiModel.addAttribute("statuses", Status.findAllStatuses());
        uiModel.addAttribute("systemanalyses", SystemAnalysis.findAllSystemAnalyses());
        uiModel.addAttribute("tasks", Task.findAllTasks());
        uiModel.addAttribute("uploads", Upload.findAllUploads());
    }
    
    String ProjectController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
