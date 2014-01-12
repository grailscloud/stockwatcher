
<%@ page import="com.swt.cml.admin.Company" %>
<%@ page import="com.swt.cml.admin.Sector" %>
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
	   <div id="actionTable" class="body collapse in">
           <table class="table table-bordered responsive">
               <thead>
                   <tr>
                       <th>${message(code: 'company.name.label', default: 'Name')}</th>
                       <th>${message(code: 'company.abbr.label', default: 'Abbreviation')}</th>
                       <th>${message(code: 'company.mobile.label', default: 'Mobile')}</th>
                       <th>${message(code: 'company.location.label', default: 'Location')}</th>
                       <th>${message(code: 'company.marketCap.label', default: 'Market Capitalization')}</th>
                       <th>${message(code: 'company.pe.label', default: 'PE')}</th>
                       <th>${message(code: 'company.eps.label', default: 'EPS')}</th>
                       <th>${message(code: 'company.pbv.label', default: 'PBV')}</th>
                       <th>${message(code: 'company.bookValue.label', default: 'Book Value')}</th>
                       <th>${message(code: 'company.currentPrice.label', default: 'Current Price')}</th>
                       <th>${message(code: 'company.sectorId.label', default: 'Sector')}</th>
                   </tr>
               </thead>
               <tbody>
		       <g:each in="${companyInstanceList}" status="i" var="companyInstance">
			   <tr>
			       <td>
			       <input type="hidden" id="companyId" name="companyId" value="${fieldValue(bean: companyInstance, field: "id")}">
			       <g:link action="show" id="${companyInstance.id}">${fieldValue(bean: companyInstance, field: "name")}</g:link>
			       </td>			       					
			       <td>${fieldValue(bean: companyInstance, field: "abbr")}</td>			       					
			       <td>${fieldValue(bean: companyInstance, field: "mobile")}</td>
			       <td>${fieldValue(bean: companyInstance, field: "location")}</td>
			       <td>${fieldValue(bean: companyInstance, field: "marketCap")}</td>
			       <td>${fieldValue(bean: companyInstance, field: "pe")}</td>
			       <td>${fieldValue(bean: companyInstance, field: "eps")}</td>
			       <td>${fieldValue(bean: companyInstance, field: "pbv")}</td>
			       <td>${fieldValue(bean: companyInstance, field: "bookValue")}</td>
			       <td>${fieldValue(bean: companyInstance, field: "currentPrice")}</td>
			       <td><%--${fieldValue(bean: companyInstance, field: "sectorId")}
			       --%><g:select optionKey="id" value="${companyInstance.sectorId}" name="sectorId" from="${Sector.list()}" /></td>			       
			       <td>
					   <button class="btn edit"><i class="icon-edit"></i></button>
					   <%--<button class="btn btn-danger remove" data-toggle="confirmation"><i class="icon-remove"></i></button>--%>
					   <g:link class="btn btn-danger remove" action="delete" controller="company" id="${companyInstance.id}"><i class="icon-remove"></i></g:link>
			       </td>
			   </tr>  
		       </g:each>
               </tbody>
           </table>
           <button id="addEntity">Create</button>
       </div>
	
			<div class="pagination">
				<g:paginate total="${companyInstanceTotal}" />
			</div>
		</div>
		        <!-- #editModal -->
        <div id="editModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã—</button>
                <h3 id="editModalLabel"><i class="icon-edit"></i> Add/Edit Company</h3>
            </div>
            <g:form class="companyform" url="[controller:'company',action:'save']">
            <div class="modal-body">
                <div class="control-group">
                    <label for="name" class="control-label">${message(code: 'company.name.label', default: 'Name')}</label>
                    <div class="controls">
                        <input type="text" id="name" name="name">
                    </div>
                </div>
                <input type="hidden" id="editedCompanyId" name="editedCompanyId">
                <div class="control-group">
                    <label for="abbr" class="control-label">${message(code: 'company.abbr.label', default: 'Abbreviation')}</label>
                    <div class="controls">
                        <input type="text" id="abbr" name="abbr">
                    </div>
                </div>
                <div class="control-group">
                    <label for="mobile" class="control-label">${message(code: 'company.mobile.label', default: 'Mobile')}</label>
                    <div class="controls">
                        <input type="text" id="mobile" name="mobile">
                    </div>
                </div>
                 <div class="control-group">
                    <label for="location" class="control-label">${message(code: 'company.location.label', default: 'Location')}</label>
                    <div class="controls">
                        <input type="text" id="location" name="location">
                    </div>
                </div>
                 <div class="control-group">
                    <label for="marketCap" class="control-label">${message(code: 'company.marketCap.label', default: 'Market Capitalization')}</label>
                    <div class="controls">
                        <input type="text" id="marketCap" name="marketCap">
                    </div>
                </div>
                 <div class="control-group">
                    <label for="pe" class="control-label">${message(code: 'company.pe.label', default: 'PE')}</label>
                    <div class="controls">
                        <input type="text" id="pe" name="pe">
                    </div>
                </div>
                 <div class="control-group">
                    <label for="eps" class="control-label">${message(code: 'company.eps.label', default: 'EPS')}</label>
                    <div class="controls">
                        <input type="text" id="eps" name="eps">
                    </div>
                </div>
                 <div class="control-group">
                    <label for="pbv" class="control-label">${message(code: 'company.pbv.label', default: 'PBV')}</label>
                    <div class="controls">
                        <input type="text" id="pbv" name="pbv">
                    </div>
                </div>
                 <div class="control-group">
                    <label for="bookValue" class="control-label">${message(code: 'company.bookValue.label', default: 'Book Value')}</label>
                    <div class="controls">
                        <input type="text" id="bookValue" name="bookValue">
                    </div>
                </div>
                 <div class="control-group">
                    <label for="currentPrice" class="control-label">${message(code: 'company.currentPrice.label', default: 'Current Price')}</label>
                    <div class="controls">
                        <input type="text" id="currentPrice" name="currentPrice">
                    </div>
                </div>
                <div class="control-group">
                    <label for="sectorId" class="control-label">${message(code: 'company.sectorId.label', default: 'Sector')}</label>
                    <div class="controls">
                        <%--<input type="text" id="sectorId" name="sectorId">
                        --%><g:select optionKey="id" value="-1" name="sectorId" from="${Sector.list()}" />
                    </div>
                </div>
                
                <div class="form-actions">
                    <g:submitButton class="btn btn-primary" name="submitButton" value="Save" />
                </div>
            </div>
            </g:form>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        </div>
        <!-- /#editModal -->        
        <g:javascript src="swt/jquery.dataTables.min.js" />
        <g:javascript src="swt/DT_bootstrap.js" />
        <g:javascript src="swt/responsive-tables.js" />
        <g:javascript src="swt/company.js" />  

	</body>
</html>
