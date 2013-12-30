package com.swt.cml.admin

class User {

// time stamps: automatically populated by GORM
    Date dateCreated
    Date lastUpdated
	Integer id
    // properties
    String firstName
    String lastName
    String username
    String password        // plain text, not stored
    String confirm         // plain text, not stored
    String passwordHashed	
	String email
	Integer mobile
	String location
	String createdBy
	String updatedBy
 
 
    // transients
    static transients = ['password', 'confirm']
 
    // constraints
    static constraints = {
		id unique:true,blank:false
        firstName blank:false
        lastName  blank:false
        username  blank:false, size:5..15, matches:/[\S]+/, unique:true
        password  blank:false, size:5..15, matches:/[\S]+/, validator:{ val, obj ->
            if (obj.password != obj.confirm)
                return  false //'user.password.dontmatch'
			else return true
		email  nullable: true
		mobile  nullable: true
		location  nullable: true
		updatedBy  nullable: true
		createdBy  nullable: true
        }
    }
	static mapping = {
		table name:'USER'
		id column: 'ID'//, generator:'sequence'//,params:[sequence:'bank_seq_id']
		firstName column: 'FIRST_N'
		lastName column: 'LAST_N'
		username column: 'USER_N'
		password column: 'PSWD'
		email column: 'EMAIL'
		mobile column: 'MOBILE'
		location column: 'LOC'
		createdBy column: 'CRTE_USER_I'
		dateCreated column: 'CRTE_TS'
		updatedBy column: 'UPDT_USER_I'
		lastUpdated column: 'UPDT_TS'
	}
}
