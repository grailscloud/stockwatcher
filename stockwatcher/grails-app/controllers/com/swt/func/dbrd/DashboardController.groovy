package com.swt.func.dbrd

import com.domain.stock.func.Dashboard

class DashboardController {
	
	def index() {
		redirect(action: "show", params: params)
	}

	def show(Long id) {
		log.info("DashboardController: Entry")
		def dashboardInstance = new Dashboard(params)
		render(view: "show", model: [ dashboardInstance: dashboardInstance ])
	}	
	
}
