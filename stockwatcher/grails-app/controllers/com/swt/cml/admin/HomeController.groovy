package com.swt.cml.admin

class HomeController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	def authenticationService
	
    def index() {
		log.info("Inside HomeController")
        redirect(action: "show")
    }
	
	def show() {
		log.info("HomeController: show ENTRY   ")
		if (!authenticationService.isLoggedIn(request)) {
			def map = [userInstance: new User(params)]
			def user = request.session.getAttribute('authenticatedUser')
			log.info(user)
			log.info("not authenticated")
			// Redirect or return Forbidden
			//redirect(controller: "userController", action: "show")
			render(view: "home", model: map)
	  } else {
	  		log.info("authenticated")
	  		redirect(controller: "bankController",action: "show")
	  }
	}
}
