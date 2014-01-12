package com.swt.srvc.admin

import org.springframework.dao.DataIntegrityViolationException;

import com.swt.cml.admin.Sector;

class SectorService {

     def listSectors(maxVal,params) {        
		 return Sector.list(params)       
    }   

    def save(Sector sectorInstance) {        		
        if (!sectorInstance.save(flush: true)) {            
            return sectorInstance
        }
		return sectorInstance
    }
	
    def getSector(Long id) {		
        def sectorInstance = Sector.get(id)
       return sectorInstance
    }

    

    def delete(Long id) {        
         try {
			 def sectorInstance = Sector.get(id)
            sectorInstance.delete(flush: true)            
        }
        catch (DataIntegrityViolationException e) {
            throw e
        }
    }

}
