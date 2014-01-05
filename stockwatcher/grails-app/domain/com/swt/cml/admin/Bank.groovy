package com.swt.cml.admin

import java.util.Date;

class Bank {

    static constraints = {
		id unique:true,blank:false
		name size: 5..20, blank: false
        revenue min: 0.0 as Double, max: 9999999999.0 as Double
        branches min: 1, max: 10000
        createdTime max: new Date(), blank: true, nullable: true
		createdBy blank: true, nullable: true
		updatedTime max: new Date(), blank: true, nullable: true
		updatedBy blank: true, nullable: true
    }
	
	Integer id
	String name
	Double revenue
	Integer branches	
	// Used to store create user id
	String createdBy

	// Used to store created time
	Date createdTime

	// Used to store update user id
	String updatedBy

	// Used to store updated time
	Date updatedTime
	
	/*def beforeInsert = {
		createdTime = new Date()
		createdBy="admin"
	}
	def beforeUpdate ={
		updatedTime = new Date()
		updatedBy="admin"
	}*/


	static mapping = {
		table name:'BANK'
		id column: 'ID'//, generator:'sequence'//,params:[sequence:'bank_seq_id']
		name column: 'BANK_N'
		revenue column: 'REVENUE'
		branches column: 'BRNCH_CNT'
		createdBy column: 'CRTE_USER_I'
		createdTime column: 'CRTE_TS'
		updatedBy column: 'UPDT_USER_I'
		updatedTime column: 'UPDT_TS'
	}
}
