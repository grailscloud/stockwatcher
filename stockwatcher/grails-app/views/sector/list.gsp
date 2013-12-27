
<%@ page import="com.swt.cml.admin.Sector" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sector.label', default: 'Sector')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sector" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sector" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="category" title="${message(code: 'sector.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="industryPe" title="${message(code: 'sector.industryPe.label', default: 'Industry Pe')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sectorInstanceList}" status="i" var="sectorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sectorInstance.id}">${fieldValue(bean: sectorInstance, field: "category")}</g:link></td>
					
						<td>${fieldValue(bean: sectorInstance, field: "industryPe")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sectorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
