
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
	   <div id="actionTable" class="body collapse in">
           <table class="table table-bordered responsive">
               <thead>
                   <tr>
                       <th>${message(code: 'sector.category.label', default: 'Category')}</th>
                       <th>${message(code: 'sector.industryPe.label', default: 'Industry PE')}</th>
                   </tr>
               </thead>
               <tbody>
		       <g:each in="${sectorInstanceList}" status="i" var="sectorInstance">
			   <tr>
			       <td>
			       <input type="hidden" id="sectorId" name="sectorId" value="${fieldValue(bean: sectorInstance, field: "id")}">
			       <g:link action="show" id="${sectorInstance.id}">${fieldValue(bean: sectorInstance, field: "category")}</g:link>
			       </td>			       					
			       <td>${fieldValue(bean: sectorInstance, field: "industryPe")}</td>		       
			       <td>
					   <button class="btn edit"><i class="icon-edit"></i></button>
					   <%--<button class="btn btn-danger remove" data-toggle="confirmation"><i class="icon-remove"></i></button>--%>
					   <g:link class="btn btn-danger remove" action="delete" controller="sector" id="${sectorInstance.id}"><i class="icon-remove"></i></g:link>
			       </td>
			   </tr>  
		       </g:each>
               </tbody>
           </table>           
           <button id="addEntity">Create</button>
       </div>
	
			
		</div>
		        <!-- #editModal -->
        <div id="editModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã—</button>
                <h3 id="editModalLabel"><i class="icon-edit"></i> Add/Edit Sector</h3>
            </div>
            <g:form class="sectorform" url="[controller:'sector',action:'save']">
            <div class="modal-body">
                <div class="control-group">
                    <label for="category" class="control-label">${message(code: 'sector.category.label', default: 'Category')}</label>
                    <div class="controls">
                        <input type="text" id="category" name="category">
                    </div>
                </div>
                <input type="hidden" id="editedSectorId" name="editedSectorId">
                <div class="control-group">
                    <label for="industryPe" class="control-label">${message(code: 'sector.industryPe.label', default: 'Industry PE')}</label>
                    <div class="controls">
                        <input type="text" id="industryPe" name="industryPe">
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
        <g:javascript src="swt/sector.js" />  

	</body>
</html>
