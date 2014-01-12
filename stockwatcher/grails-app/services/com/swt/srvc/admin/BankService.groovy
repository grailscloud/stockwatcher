package com.swt.srvc.admin

import org.springframework.dao.DataIntegrityViolationException;

import com.swt.cml.admin.Bank;

class BankService {

	
	
     def listBanks(maxVal,params) {        
		 return Bank.list(params)       
    }   

    def save(Bank bankInstance) {        		
        if (!bankInstance.save(flush: true)) {            
            return bankInstance
        }
		return bankInstance
    }
	
    def getBank(Long id) {		
        def bankInstance = Bank.get(id)
       return bankInstance
    }

    

    def delete(Long id) {        
         try {
			 def bankInstance = Bank.get(id)
            bankInstance.delete(flush: true)            
        }
        catch (DataIntegrityViolationException e) {
            throw e
        }
    }
}
