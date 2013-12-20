
<%@ page import="com.stock.common.Organization" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'organization.label', default: 'Organization')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-organization" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-organization" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list organization">
			
				<g:if test="${organizationInstance?.orgName}">
				<li class="fieldcontain">
					<span id="orgName-label" class="property-label"><g:message code="organization.orgName.label" default="Org Name" /></span>
					
						<span class="property-value" aria-labelledby="orgName-label"><g:fieldValue bean="${organizationInstance}" field="orgName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.orgCode}">
				<li class="fieldcontain">
					<span id="orgCode-label" class="property-label"><g:message code="organization.orgCode.label" default="Org Code" /></span>
					
						<span class="property-value" aria-labelledby="orgCode-label"><g:fieldValue bean="${organizationInstance}" field="orgCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.sector}">
				<li class="fieldcontain">
					<span id="sector-label" class="property-label"><g:message code="organization.sector.label" default="Sector" /></span>
					
						<span class="property-value" aria-labelledby="sector-label"><g:fieldValue bean="${organizationInstance}" field="sector"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.office}">
				<li class="fieldcontain">
					<span id="office-label" class="property-label"><g:message code="organization.office.label" default="Office" /></span>
					
						<span class="property-value" aria-labelledby="office-label"><g:fieldValue bean="${organizationInstance}" field="office"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${organizationInstance?.id}" />
					<g:link class="edit" action="edit" id="${organizationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
