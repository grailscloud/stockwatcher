class BootStrap {

	def grailsApplication
	
    def init = { servletContext ->
		log.info("BootStrap:init - initializing logging ")
		setupServiceLogging()
		//setupControllerLogging()
		log.info("BootStrap:init - logging setup complete")
    }
    def destroy = {
    }
	
	private def setupServiceLogging() {
		grailsApplication.serviceClasses.each { serviceClass ->
				serviceClass.metaClass.invokeMethod = { name, args ->
			delegate.log.info "> Invoke $name in ${delegate.class.name}"
			def metaMethod = delegate.metaClass.getMetaMethod(name, args)
			try {
				def result = metaMethod.invoke(delegate, args)
				delegate.log.info "< Completed $name with result '$result'"
				return result
			} catch (e) {
				delegate.log.error "< Exception occurred in $name"
				delegate.log.error "< Exception message: ${e.message}"
				throw e
				}
			}
		}
	}
	
	private def setupControllerLogging() {
		grailsApplication.controllerClasses.each { controllerClass ->
				controllerClass.metaClass.invokeMethod = { name, args ->
			delegate.log.info "> Invoke $name in ${delegate.class.name}"
			def metaMethod = delegate.metaClass.getMetaMethod(name, args)
			try {
				def result = metaMethod.invoke(delegate, args)
				delegate.log.info "< Completed $name with result '$result'"
				return result
			} catch (e) {
				delegate.log.error "< Exception occurred in $name"
				delegate.log.error "< Exception message: ${e.message}"
				throw e
				}
			}
		}
	}
}
