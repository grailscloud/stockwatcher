<%@ page import="com.swt.cml.admin.Sector" %>



<div class="fieldcontain ${hasErrors(bean: sectorInstance, field: 'category', 'error')} ">
	<label for="category">
		<g:message code="sector.category.label" default="Category" />
		
	</label>
	<g:textField name="category" value="${sectorInstance?.category}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectorInstance, field: 'industryPe', 'error')} required">
	<label for="industryPe">
		<g:message code="sector.industryPe.label" default="Industry Pe" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="industryPe" value="${fieldValue(bean: sectorInstance, field: 'industryPe')}" required=""/>
</div>

