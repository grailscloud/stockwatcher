package com.swt.func.stock

import com.domain.stock.func.Stocks


class StocksController {

  def index() {
		redirect(action: "show", params: params)
	}

	def show(Long id) {
		log.info("DashboardController: Entry")
		params["investments"]="true"
		log.info("params: "+params)
		def stocksInstance = new Stocks(params)
		render(view: "show", model: [ stocksInstance: stocksInstance, activeSection: "investments" ])
	}	
}
