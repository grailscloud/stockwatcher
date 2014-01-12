package com.swt.cml.admin

import org.springframework.dao.DataIntegrityViolationException

class CompanyController {

    //static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def authenticationService
	
	def companyService
	
    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
		log.info("companyController list : Entry "+session.user)
		
		if (!authenticationService.isLoggedIn(request)) {
        params.max = Math.min(max ?: 10, 100)
		log.info("user authenticated ---")
        [companyInstanceList: companyService.listCompanies(params.max,params), companyInstanceTotal: Company.count()]		
		}
		else
		{
			log.info("user not authenticated ---")
			[companyInstanceList: companyService.listCompanies(params.max,params), companyInstanceTotal: Company.count()]
		}
    }

    def create() {
		log.info("companyController:create   "+params)
        [companyInstance: new Company(params)]
    }

    def save() {
		log.info("companyController:save   :Entry "+params)
        def companyInstance = null;//new company(params)	
		log.info(params)
		if(params.editedCompanyId != "-1")
		{
			log.info("Inside update block")
			long companyId = Integer.parseInt(params.editedCompanyId);
			companyInstance = companyService.getcompany(companyId);			
			companyInstance.properties = params;
			companyInstance.id= Integer.parseInt(params.editedCompanyId)
		}
		else
		{
			log.info("Inside create block")
			companyInstance = new Company(params);			
			log.info("companyInstance.bookValue ->"+companyInstance.bookValue+"<-")
		}
			
		companyInstance = companyService.save(companyInstance);
        if (companyInstance.hasErrors()) {			
            render(view: "create", model: [companyInstance: companyInstance])
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'company.label', default: 'company'), companyInstance.id])
		log.info("companyController:save   :Exit "+params)
		redirect(action: "list")
		
    }

    def show(Long id) {
		log.info("companyController:show   "+id)
        def companyInstance = companyService.getcompany(id)
        if (!companyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'company.label', default: 'company'), id])
            redirect(action: "list")
            return
        }
        [companyInstance: companyInstance]
    }

     /*def edit(Long id) {
        def companyInstance = companyService.getcompany(id)
        if (!companyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'company.label', default: 'company'), id])
            redirect(action: "list")
            return
        }

        [companyInstance: companyInstance]
    }

   def update(Long id, Long version) {
        def companyInstance = (company)companyService.getcompany(id)
        if (!companyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'company.label', default: 'company'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (companyInstance.version > version) {
                companyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'company.label', default: 'company')] as Object[],
                          "Another user has updated this company while you were editing")
                render(view: "edit", model: [companyInstance: companyInstance])
                return
            }
        }

        companyInstance.properties = params
		companyInstance = companyService.save(companyInstance)
        if (!companyInstance.hasErrors()) {
            render(view: "edit", model: [companyInstance: companyInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'company.label', default: 'company'), companyInstance.id])
        redirect(action: "show", id: companyInstance.id)
    }*/

    def delete(Long id) {        
        try {
			log.info(params);
            companyService.delete(id)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'company.label', default: 'company'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'company.label', default: 'company'), id])
            redirect(action: "list")
        }
    }
}
