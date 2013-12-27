package com.swt.cml.admin

import org.springframework.dao.DataIntegrityViolationException

class SectorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [sectorInstanceList: Sector.list(params), sectorInstanceTotal: Sector.count()]
    }

    def create() {
        [sectorInstance: new Sector(params)]
    }

    def save() {
        def sectorInstance = new Sector(params)
        if (!sectorInstance.save(flush: true)) {
            render(view: "create", model: [sectorInstance: sectorInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'sector.label', default: 'Sector'), sectorInstance.id])
        redirect(action: "show", id: sectorInstance.id)
    }

    def show(Long id) {
        def sectorInstance = Sector.get(id)
        if (!sectorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sector.label', default: 'Sector'), id])
            redirect(action: "list")
            return
        }

        [sectorInstance: sectorInstance]
    }

    def edit(Long id) {
        def sectorInstance = Sector.get(id)
        if (!sectorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sector.label', default: 'Sector'), id])
            redirect(action: "list")
            return
        }

        [sectorInstance: sectorInstance]
    }

    def update(Long id, Long version) {
        def sectorInstance = Sector.get(id)
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

        if (!sectorInstance.save(flush: true)) {
            render(view: "edit", model: [sectorInstance: sectorInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'sector.label', default: 'Sector'), sectorInstance.id])
        redirect(action: "show", id: sectorInstance.id)
    }

    def delete(Long id) {
        def sectorInstance = Sector.get(id)
        if (!sectorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sector.label', default: 'Sector'), id])
            redirect(action: "list")
            return
        }

        try {
            sectorInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'sector.label', default: 'Sector'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sector.label', default: 'Sector'), id])
            redirect(action: "show", id: id)
        }
    }
}
