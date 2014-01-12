package com.swt.srvc.admin

import org.springframework.dao.DataIntegrityViolationException;

import com.swt.cml.admin.Company;

class CompanyService {

     def listCompanies(maxVal,params) {        
		 return Company.list(params)       
    }   

    def save(Company companyInstance) {        		
        if (!companyInstance.save(flush: true)) {            
            return companyInstance
        }
		return companyInstance
    }
	
    def getCompany(Long id) {		
        def companyInstance = Company.get(id)
       return companyInstance
    }

    

    def delete(Long id) {        
         try {
			 def companyInstance = Company.get(id)
            companyInstance.delete(flush: true)            
        }
        catch (DataIntegrityViolationException e) {
            throw e
        }
    }

}
