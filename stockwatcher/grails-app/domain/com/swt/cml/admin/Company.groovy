package com.swt.cml.admin

import java.util.Date;

class Company{

    static constraints = {
    }
	
	Integer id
	String name
	String abbr
	Integer mobile
	String location
	Float marketCap
	Float pe
	Float eps
	Float pbv
	Float bookValue
	Float currentPrice
	Sector sector
	
	// Used to store create user id
	String createdBy

	// Used to store created time
	Date createdTime

	// Used to store update user id
	String updatedBy

	// Used to store updated time
	Date updatedTime
}
