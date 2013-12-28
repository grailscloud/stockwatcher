package com.swt.cml.admin

import org.springframework.dao.DataIntegrityViolationException

class BankController {	

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def bankService
	
    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [bankInstanceList: bankService.listBanks(params.max,params), bankInstanceTotal: Bank.count()]
    }

    def create() {
		log.info("BankController:create   "+params)
        [bankInstance: new Bank(params)]
    }

    def save() {
		log.info("BankController:save   :Entry "+params)
        def bankInstance = new Bank(params)	
		bankInstance = bankService.save(bankInstance);
        if (bankInstance.hasErrors()) {			
            render(view: "create", model: [bankInstance: bankInstance])
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'bank.label', default: 'Bank'), bankInstance.id])
		log.info("BankController:save   :Exit "+params)
		redirect(action: "show", id: bankInstance.id)
		
    }

    def show(Long id) {
		log.info("BankController:show   "+id)
        def bankInstance = bankService.getBank(id)
        if (!bankInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bank.label', default: 'Bank'), id])
            redirect(action: "list")
            return
        }
        [bankInstance: bankInstance]
    }

    def edit(Long id) {
        def bankInstance = bankService.getBank(id)
        if (!bankInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bank.label', default: 'Bank'), id])
            redirect(action: "list")
            return
        }

        [bankInstance: bankInstance]
    }

    def update(Long id, Long version) {
        def bankInstance = (Bank)bankService.getBank(id)
        if (!bankInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bank.label', default: 'Bank'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (bankInstance.version > version) {
                bankInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'bank.label', default: 'Bank')] as Object[],
                          "Another user has updated this Bank while you were editing")
                render(view: "edit", model: [bankInstance: bankInstance])
                return
            }
        }

        bankInstance.properties = params
		bankInstance = bankService.save(bankInstance)
        if (!bankInstance.hasErrors()) {
            render(view: "edit", model: [bankInstance: bankInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'bank.label', default: 'Bank'), bankInstance.id])
        redirect(action: "show", id: bankInstance.id)
    }

    def delete(Long id) {        
        try {
            bankService.delete(id)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'bank.label', default: 'Bank'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'bank.label', default: 'Bank'), id])
            redirect(action: "show", id: id)
        }
    }
}
