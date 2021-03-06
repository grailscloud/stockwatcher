
<%@ page import="com.swt.cml.admin.Bank" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bank.label', default: 'Bank')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>
	<body>
    
		<a href="#list-bank" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-bank" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
	   <div id="actionTable" class="body collapse in">
           <table class="table table-bordered responsive">
               <thead>
                   <tr>
                       <th>${message(code: 'bank.name.label', default: 'Name')}</th>
                       <th>${message(code: 'bank.revenue.label', default: 'Revenue')}</th>
                       <th>${message(code: 'bank.branches.label', default: 'Branches')}</th>
                   </tr>
               </thead>
               <tbody>
		       <g:each in="${bankInstanceList}" status="i" var="bankInstance">
			   <tr>
			       <td>
			       <input type="hidden" id="bankId" name="bankId" value="${fieldValue(bean: bankInstance, field: "id")}">
			       <g:link action="show" id="${bankInstance.id}">${fieldValue(bean: bankInstance, field: "name")}</g:link>
			       </td>			       					
			       <td>${fieldValue(bean: bankInstance, field: "revenue")}</td>			       					
			       <td>${fieldValue(bean: bankInstance, field: "branches")}</td>			       
			       <td>
					   <button class="btn edit"><i class="icon-edit"></i></button>
					   <%--<button class="btn btn-danger remove" data-toggle="confirmation"><i class="icon-remove"></i></button>--%>
					   <g:link class="btn btn-danger remove" action="delete" controller="bank" id="${bankInstance.id}"><i class="icon-remove"></i></g:link>
			       </td>
			   </tr>  
		       </g:each>
               </tbody>
           </table>
           <button id="addEntity">Create</button>
       </div>
	
			<div class="pagination">
				<g:paginate total="${bankInstanceTotal}" />
			</div>
		</div>
		        <!-- #editModal -->
        <div id="editModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã—</button>
                <h3 id="editModalLabel"><i class="icon-edit"></i> Add/Edit Bank</h3>
            </div>
            <g:form class="bankform" url="[controller:'bank',action:'save']">
            <div class="modal-body">
                <div class="control-group">
                    <label for="name" class="control-label">${message(code: 'bank.name.label', default: 'Name')}</label>
                    <div class="controls">
                        <input type="text" id="name" name="name">
                    </div>
                </div>
                <input type="hidden" id="editedBankId" name="editedBankId">
                <div class="control-group">
                    <label for="revenue" class="control-label">${message(code: 'bank.revenue.label', default: 'Revenue')}</label>
                    <div class="controls">
                        <input type="text" id="revenue" name="revenue">
                    </div>
                </div>
                <div class="control-group">
                    <label for="branches" class="control-label">${message(code: 'bank.branches.label', default: 'Branches')}</label>
                    <div class="controls">
                        <input type="text" id="branches" name="branches">
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
        <g:javascript src="swt/bank.js" />  

	</body>
</html>
