package com.swt.cml.admin

class Base {

    static constraints = {
    }
	
	static mapping = {
		tablePerHierarchy false
	}
	
	// Used to store create user id
	String createdBy

	// Used to store created time
	Date createdTime

	// Used to store update user id
	String updatedBy

	// Used to store updated time
	Date updatedTime
}
