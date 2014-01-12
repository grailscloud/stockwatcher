package com.swt.cml.admin

import org.springframework.dao.DataIntegrityViolationException

class SectorController {

        //static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def authenticationService
	
	def sectorService
	
    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
		log.info("SectorController list : Entry "+session.user)
		
		if (!authenticationService.isLoggedIn(request)) {
        params.max = Math.min(max ?: 10, 100)
		log.info("user authenticated ---")
        [sectorInstanceList: sectorService.listSectors(params.max,params), sectorInstanceTotal: Sector.count()]		
		}
		else
		{
			log.info("user not authenticated ---")
			[sectorInstanceList: sectorService.listSectors(params.max,params), sectorInstanceTotal: Sector.count()]
		}
    }

    def create() {
		log.info("SectorController:create   "+params)
        [sectorInstance: new Sector(params)]
    }

    def save() {
		log.info("SectorController:save   :Entry "+params)
        def sectorInstance = null;//new Sector(params)	
		log.info(params)
		if(params.editedSectorId != "-1")
		{
			log.info("Inside update block")
			long sectorId = Integer.parseInt(params.editedSectorId);
			sectorInstance = sectorService.getSector(sectorId);			
			sectorInstance.properties = params;
			sectorInstance.id= Integer.parseInt(params.editedSectorId)
		}
		else
		{
			log.info("Inside create block")
			sectorInstance = new Sector(params);
		}
			
		sectorInstance = sectorService.save(sectorInstance);
        if (sectorInstance.hasErrors()) {			
            render(view: "create", model: [sectorInstance: sectorInstance])
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'sector.label', default: 'Sector'), sectorInstance.id])
		log.info("SectorController:save   :Exit "+params)
		redirect(action: "list")
		
    }

    def show(Long id) {
		log.info("SectorController:show   "+id)
        def sectorInstance = sectorService.getSector(id)
        if (!sectorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sector.label', default: 'Sector'), id])
            redirect(action: "list")
            return
        }
        [sectorInstance: sectorInstance]
    }

     /*def edit(Long id) {
        def sectorInstance = sectorService.getSector(id)
        if (!sectorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sector.label', default: 'Sector'), id])
            redirect(action: "list")
            return
        }

        [sectorInstance: sectorInstance]
    }

   def update(Long id, Long version) {
        def sectorInstance = (Sector)sectorService.getSector(id)
        if (!sectorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sector.label', default: 'Sector'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (sectorInstance.version > version) {
                sectorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'sector.label', default: 'Sector')] as Object[],
                          "Another user has updated this Sector while you were editing")
                render(view: "edit", model: [sectorInstance: sectorInstance])
                return
            }
        }

        sectorInstance.properties = params
		sectorInstance = sectorService.save(sectorInstance)
        if (!sectorInstance.hasErrors()) {
            render(view: "edit", model: [sectorInstance: sectorInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'sector.label', default: 'Sector'), sectorInstance.id])
        redirect(action: "show", id: sectorInstance.id)
    }*/

    def delete(Long id) {        
        try {
			log.info(params);
            sectorService.delete(id)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'sector.label', default: 'Sector'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sector.label', default: 'Sector'), id])
            redirect(action: "list")
        }
    }
}
