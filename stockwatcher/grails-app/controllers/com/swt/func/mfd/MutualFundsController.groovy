package com.swt.func.mfd

import com.domain.stock.func.MutualFunds

class MutualFundsController {

   def index() {
		redirect(action: "show", params: params)
	}

	def show(Long id) {
		log.info("DashboardController: Entry")
		def mutualFundsInstance = new MutualFunds(params)
		render(view: "show", model: [ mutualFundsInstance: mutualFundsInstance ])
	}	
}
