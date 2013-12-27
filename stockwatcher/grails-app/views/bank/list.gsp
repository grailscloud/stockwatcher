
<%@ page import="com.swt.cml.admin.Bank" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bank.label', default: 'Bank')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>
	<body>
        <div id="actionTable" class="body collapse in">
           <table class="table table-bordered responsive">
               <thead>
                   <tr>
                       <th>#</th>
                       <th>First Name</th>
                       <th>Last Name</th>
                       <th>Username</th>
                       <th>Action</th>
                   </tr>
               </thead>
               <tbody>
                   <tr>
                       <td>1</td>
                       <td>Mark</td>
                       <td>Otto</td>
                       <td>@mdo</td>
                       <td>
                           <button class="btn edit"><i class="icon-edit"></i></button>
                           <button class="btn btn-danger remove" data-toggle="confirmation"><i class="icon-remove"></i></button>
                       </td>
                   </tr>
                   <tr>
                       <td>2</td>
                       <td>Jacob</td>
                       <td>Thornton</td>
                       <td>@fat</td>
                       <td>
                           <button class="btn edit"><i class="icon-edit"></i></button>
                           <button class="btn btn-danger remove" data-toggle="confirmation"><i class="icon-remove"></i></button>
                       </td>
                   </tr>
                   <tr>
                       <td>3</td>
                       <td>Larry</td>
                       <td>the Bird</td>
                       <td>@twitter</td>
                       <td>
                           <button class="btn edit"><i class="icon-edit"></i></button>
                           <button class="btn btn-danger remove" data-toggle="confirmation"><i class="icon-remove"></i></button>
                       </td>
                   </tr>
               </tbody>
           </table>
       </div>
	
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
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'bank.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="revenue" title="${message(code: 'bank.revenue.label', default: 'Revenue')}" />
					
						<g:sortableColumn property="branches" title="${message(code: 'bank.branches.label', default: 'Branches')}" />
					
						<g:sortableColumn property="createdTime" title="${message(code: 'bank.createdTime.label', default: 'Created Time')}" />
					
						<g:sortableColumn property="createdBy" title="${message(code: 'bank.createdBy.label', default: 'Created By')}" />
					
						<g:sortableColumn property="updatedTime" title="${message(code: 'bank.updatedTime.label', default: 'Updated Time')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bankInstanceList}" status="i" var="bankInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bankInstance.id}">${fieldValue(bean: bankInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: bankInstance, field: "revenue")}</td>
					
						<td>${fieldValue(bean: bankInstance, field: "branches")}</td>
					
						<td><g:formatDate date="${bankInstance.createdTime}" /></td>
					
						<td>${fieldValue(bean: bankInstance, field: "createdBy")}</td>
					
						<td><g:formatDate date="${bankInstance.updatedTime}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bankInstanceTotal}" />
			</div>
		</div>
		        <!-- #editModal -->
        <div id="editModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã—</button>
                <h3 id="editModalLabel"><i class="icon-edit"></i> Edit Table</h3>
            </div>
            <div class="modal-body">
                <div class="control-group">
                    <label for="fName" class="control-label">First Name</label>
                    <div class="controls">
                        <input type="text" id="fName" name="fName">
                    </div>
                </div>
                <div class="control-group">
                    <label for="lName" class="control-label">Last Name</label>
                    <div class="controls">
                        <input type="text" id="lName" name="lName">
                    </div>
                </div>
                <div class="control-group">
                    <label for="uName" class="control-label">Username</label>
                    <div class="controls">
                        <input type="text" id="uName" name="uName">
                    </div>
                </div>
                <div class="form-actions">
                    <button id="sbmtBtn" type="submit" class="btn btn-primary" data-dismiss="modal">Submit</button>
                </div>
            </div>
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
