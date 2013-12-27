package com.swt.cml.admin

import java.util.Date;

class Fund{

    static constraints = {
    }
	
	Integer id
	String name
	String type
	Integer unitValue
	String fundEntity
	
	// Used to store create user id
	String createdBy

	// Used to store created time
	Date createdTime

	// Used to store update user id
	String updatedBy

	// Used to store updated time
	Date updatedTime
}
