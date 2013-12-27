package com.swt.cml.func

import com.swt.cml.admin.Company;

class Stock {

    static constraints = {
    }
	Integer id
	Company company
	String exchange
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
