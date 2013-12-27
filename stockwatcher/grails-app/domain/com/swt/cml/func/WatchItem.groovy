package com.swt.cml.func

import java.util.Date;

import com.swt.cml.admin.Company;

class WatchItem {

    static constraints = {
    }
	
	Integer id
	Company company
	Date watchDate
	Float watchPrice
	Float changeValue
	Float changePercentage
	Integer totalDuration
}
