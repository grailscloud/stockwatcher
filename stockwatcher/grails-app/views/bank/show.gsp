
<%@ page import="com.swt.cml.admin.Bank" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bank.label', default: 'Bank')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bank" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bank" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bank">
			
				<g:if test="${bankInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="bank.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${bankInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bankInstance?.revenue}">
				<li class="fieldcontain">
					<span id="revenue-label" class="property-label"><g:message code="bank.revenue.label" default="Revenue" /></span>
					
						<span class="property-value" aria-labelledby="revenue-label"><g:fieldValue bean="${bankInstance}" field="revenue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bankInstance?.branches}">
				<li class="fieldcontain">
					<span id="branches-label" class="property-label"><g:message code="bank.branches.label" default="Branches" /></span>
					
						<span class="property-value" aria-labelledby="branches-label"><g:fieldValue bean="${bankInstance}" field="branches"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bankInstance?.createdTime}">
				<li class="fieldcontain">
					<span id="createdTime-label" class="property-label"><g:message code="bank.createdTime.label" default="Created Time" /></span>
					
						<span class="property-value" aria-labelledby="createdTime-label"><g:formatDate date="${bankInstance?.createdTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bankInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="bank.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${bankInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bankInstance?.updatedTime}">
				<li class="fieldcontain">
					<span id="updatedTime-label" class="property-label"><g:message code="bank.updatedTime.label" default="Updated Time" /></span>
					
						<span class="property-value" aria-labelledby="updatedTime-label"><g:formatDate date="${bankInstance?.updatedTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bankInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="bank.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${bankInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${bankInstance?.id}" />
					<g:link class="edit" action="edit" id="${bankInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
