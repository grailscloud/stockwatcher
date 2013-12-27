package com.swt.cml.admin

import java.util.Date;

class Sector{

    static constraints = {
    }
	
	Integer id
	String category
	Float industryPe
	
	// Used to store create user id
	String createdBy

	// Used to store created time
	Date createdTime

	// Used to store update user id
	String updatedBy

	// Used to store updated time
	Date updatedTime
}
