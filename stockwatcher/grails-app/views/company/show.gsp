
<%@ page import="com.swt.cml.admin.Company" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-company" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-company" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list company">
			
				<g:if test="${companyInstance?.abbr}">
				<li class="fieldcontain">
					<span id="abbr-label" class="property-label"><g:message code="company.abbr.label" default="Abbr" /></span>
					
						<span class="property-value" aria-labelledby="abbr-label"><g:fieldValue bean="${companyInstance}" field="abbr"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.bookValue}">
				<li class="fieldcontain">
					<span id="bookValue-label" class="property-label"><g:message code="company.bookValue.label" default="Book Value" /></span>
					
						<span class="property-value" aria-labelledby="bookValue-label"><g:fieldValue bean="${companyInstance}" field="bookValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.currentPrice}">
				<li class="fieldcontain">
					<span id="currentPrice-label" class="property-label"><g:message code="company.currentPrice.label" default="Current Price" /></span>
					
						<span class="property-value" aria-labelledby="currentPrice-label"><g:fieldValue bean="${companyInstance}" field="currentPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.eps}">
				<li class="fieldcontain">
					<span id="eps-label" class="property-label"><g:message code="company.eps.label" default="Eps" /></span>
					
						<span class="property-value" aria-labelledby="eps-label"><g:fieldValue bean="${companyInstance}" field="eps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="company.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${companyInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.marketCap}">
				<li class="fieldcontain">
					<span id="marketCap-label" class="property-label"><g:message code="company.marketCap.label" default="Market Cap" /></span>
					
						<span class="property-value" aria-labelledby="marketCap-label"><g:fieldValue bean="${companyInstance}" field="marketCap"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="company.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${companyInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="company.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${companyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.pbv}">
				<li class="fieldcontain">
					<span id="pbv-label" class="property-label"><g:message code="company.pbv.label" default="Pbv" /></span>
					
						<span class="property-value" aria-labelledby="pbv-label"><g:fieldValue bean="${companyInstance}" field="pbv"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.pe}">
				<li class="fieldcontain">
					<span id="pe-label" class="property-label"><g:message code="company.pe.label" default="Pe" /></span>
					
						<span class="property-value" aria-labelledby="pe-label"><g:fieldValue bean="${companyInstance}" field="pe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.sector}">
				<li class="fieldcontain">
					<span id="sector-label" class="property-label"><g:message code="company.sector.label" default="Sector" /></span>
					
						<span class="property-value" aria-labelledby="sector-label"><g:link controller="sector" action="show" id="${companyInstance?.sector?.id}">${companyInstance?.sector?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${companyInstance?.id}" />
					<g:link class="edit" action="edit" id="${companyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
