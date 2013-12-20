package com.stock.common

class Organization {
	
	String orgName
	
	String orgCode
	
	String sector
	
	String office

    static constraints = {
		orgName blank : false, nullable :false
		orgCode blank : false, nullable :false
		sector blank : false, nullable :false
		office blank : false, nullable :false
    }
	
	static mapping = {
		table name: "Organization"
		orgName column: 'ORG_N'
		orgCode column: 'ORG_C'
		sector column: 'SECTOR'
		office column: 'OFC_LOC'
	}
}
