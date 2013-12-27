package com.swt.cml.func

import java.util.Date;

import com.swt.cml.admin.Fund;

class Bullion {

    static constraints = {
    }
	
	Integer id
	String metal
	Date transactionDate
	Integer quantity
	Float purchaseValue
	Float brokerage
	Float totalInvestedValue
	Float profit
	Float profitPercentage
	Float percentToTotal
	Integer totalDuration
}
