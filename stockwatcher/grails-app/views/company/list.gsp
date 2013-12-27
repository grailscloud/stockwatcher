
<%@ page import="com.swt.cml.admin.Company" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-company" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-company" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="abbr" title="${message(code: 'company.abbr.label', default: 'Abbr')}" />
					
						<g:sortableColumn property="bookValue" title="${message(code: 'company.bookValue.label', default: 'Book Value')}" />
					
						<g:sortableColumn property="currentPrice" title="${message(code: 'company.currentPrice.label', default: 'Current Price')}" />
					
						<g:sortableColumn property="eps" title="${message(code: 'company.eps.label', default: 'Eps')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'company.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="marketCap" title="${message(code: 'company.marketCap.label', default: 'Market Cap')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${companyInstanceList}" status="i" var="companyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${companyInstance.id}">${fieldValue(bean: companyInstance, field: "abbr")}</g:link></td>
					
						<td>${fieldValue(bean: companyInstance, field: "bookValue")}</td>
					
						<td>${fieldValue(bean: companyInstance, field: "currentPrice")}</td>
					
						<td>${fieldValue(bean: companyInstance, field: "eps")}</td>
					
						<td>${fieldValue(bean: companyInstance, field: "location")}</td>
					
						<td>${fieldValue(bean: companyInstance, field: "marketCap")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${companyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
