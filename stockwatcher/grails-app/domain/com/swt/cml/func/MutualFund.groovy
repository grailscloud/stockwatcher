package com.swt.cml.func

import java.util.Date;

import com.swt.cml.admin.Company;
import com.swt.cml.admin.Fund;

class MutualFund {

    static constraints = {
    }
	
	Integer id
	Fund fund
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
