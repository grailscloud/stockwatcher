
<%@ page import="com.swt.cml.admin.Fund" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fund.label', default: 'Fund')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-fund" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-fund" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list fund">
			
				<g:if test="${fundInstance?.fundEntity}">
				<li class="fieldcontain">
					<span id="fundEntity-label" class="property-label"><g:message code="fund.fundEntity.label" default="Fund Entity" /></span>
					
						<span class="property-value" aria-labelledby="fundEntity-label"><g:fieldValue bean="${fundInstance}" field="fundEntity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fundInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="fund.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${fundInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fundInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="fund.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${fundInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fundInstance?.unitValue}">
				<li class="fieldcontain">
					<span id="unitValue-label" class="property-label"><g:message code="fund.unitValue.label" default="Unit Value" /></span>
					
						<span class="property-value" aria-labelledby="unitValue-label"><g:fieldValue bean="${fundInstance}" field="unitValue"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${fundInstance?.id}" />
					<g:link class="edit" action="edit" id="${fundInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
