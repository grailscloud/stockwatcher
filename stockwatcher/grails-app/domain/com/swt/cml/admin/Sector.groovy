package com.swt.cml.admin

import java.util.Date;

class Sector{

	static constraints = {
		id unique:true,blank:false
		category size: 5..20, blank: false
        industryPe min: 0.0 as Double, max: 500.0 as Double
        createdTime max: new Date(), blank: true, nullable: true
		createdBy blank: true, nullable: true
		updatedTime max: new Date(), blank: true, nullable: true
		updatedBy blank: true, nullable: true
    }
	
	Integer id
	String category
	Double industryPe
	
	// Used to store create user id
	String createdBy

	// Used to store created time
	Date createdTime

	// Used to store update user id
	String updatedBy

	// Used to store updated time
	Date updatedTime

	static mapping = {
		table name:'SECTOR'
		id column: 'ID'//, generator:'sequence'//,params:[sequence:'bank_seq_id']
		category column: 'CATEGORY'
		industryPe column: 'INDUSTRY_PE'
		createdBy column: 'CRTE_USER_I'
		createdTime column: 'CRTE_TS'
		updatedBy column: 'UPDT_USER_I'
		updatedTime column: 'UPDT_TS'
	}
}
