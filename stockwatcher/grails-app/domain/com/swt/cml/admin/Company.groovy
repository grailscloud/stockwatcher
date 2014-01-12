package com.swt.cml.admin

import java.util.Date;

class Company{

	static constraints = {
		id unique:true,blank:false
		name size: 5..20, blank: false
		abbr size: 5..20, blank: false
		mobile min: 1, max: 10000
		location size: 5..20, blank: false
		marketCap min: 0.0 as Double, max: 99999999.0 as Double
		pe min: 0.0 as Double, max: 300 as Double
		eps min: 0.0 as Double, max: 9999999.0 as Double
		pbv min: 0.0 as Double, max: 1000.0 as Double
		bookValue min: 0.0 as Double, max: 99999999.0 as Double
		currentPrice min: 0.0 as Double, max: 99999999.0 as Double
		sectorId blank: false
		createdTime max: new Date(), blank: true, nullable: true
		createdBy blank: true, nullable: true
		updatedTime max: new Date(), blank: true, nullable: true
		updatedBy blank: true, nullable: true
	}
	
	Integer id
	String name
	String abbr
	Integer mobile
	String location
	Double marketCap
	Double pe
	Double eps
	Double pbv
	Double bookValue
	Double currentPrice
	Integer sectorId
	
	// Used to store create user id
	String createdBy

	// Used to store created time
	Date createdTime

	// Used to store update user id
	String updatedBy

	// Used to store updated time
	Date updatedTime
	
	
	static mapping = {
		table name:'COMPANY'
		id column: 'ID'//, generator:'sequence'//,params:[sequence:'bank_seq_id']
		name column: 'COMP_N'
		abbr column: 'ABBR'
		mobile column: 'MOBILE'
		location column: 'LOCATION'
		marketCap column: 'MRKT_CAP', defaultValue: '0.0'
		pe column: 'PE', defaultValue: '0.0'
		eps column: 'EPS', defaultValue: '0.0'
		pbv column: 'PBV', defaultValue: '0.0'
		bookValue column: 'BOOK_VAL', defaultValue: '0.0'
		currentPrice column: 'CURR_MRKT_PRC', defaultValue: '0.0'
		sectorId column: 'SECTOR_ID'
		createdBy column: 'CRTE_USER_I'
		createdTime column: 'CRTE_TS'
		updatedBy column: 'UPDT_USER_I'
		updatedTime column: 'UPDT_TS'
	}
}
