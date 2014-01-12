package com.swt.cml.admin

import com.grailsrocks.authentication.AuthenticatedUser;

class UserController {

	def authenticationService
	
	def register = {
		log.info("UserController: register ENTRY   ")
		// new user posts his registration details
		if (request.method == 'POST') {
			// create domain object and assign parameters using data binding
			def u = new User(params)			
			u.passwordHashed = params.password.encodeAsPassword()
			u.createdBy = "admin"
			u.updatedBy = "admin"
			u.email = ""
			u.location = ""
			u.mobile = -1
			if (! u.save()) {
				// validation failed, render registration page again
				//return [user:u]
				def map = [user:u]
				render(view: "registration", model: map)
			} else {
				// validate/save ok, store user in session, redirect to homepage
				session.user = u
				//render(view: "bank")
				redirect(controller:'bank', action: 'list')
			}
		} else if (session.user) {
			// don't allow registration while user is logged in
			redirect(controller:'bank', action: 'list')
		}
	}
 
	def login = {
		log.info("UserController: login ENTRY   ")
		if (request.method == 'POST') {
			def passwordHashed = params.password.encodeAsPassword()
			def u = User.findByUsernameAndPasswordHashed(params.username, passwordHashed)
			def result = authenticationService.login(params.username, params.password);
			log.info("result    -----  "+result)
			if(result instanceof AuthenticatedUser && result != null)
			{
				log.info("logged in finally ....")
				session.user = result;
			}
			if (u) {
				// username and password match -> log in
				//session.user = u
				redirect(controller:'bank', action: 'list')
			} else {
				flash.message = "User not found"
				redirect(controller:'home')
			}
		} else if (session.user) {
			// don't allow login while user is logged in
			redirect(controller:'bank', action: 'list')
		}
	}
 
	def logout = {
		log.info("UserController: logout ENTRY   ")
		session.invalidate()
		redirect(controller:'home', action: 'show')
	}
	
	def show() {
		log.info("UserController: show ENTRY")		
		def map = [userInstance: new User(params)]
		render(view: "registration", model: map)
	}
}
