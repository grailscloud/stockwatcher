<%@ page import="com.stock.common.Organization" %>



<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'orgName', 'error')} required">
	<label for="orgName">
		<g:message code="organization.orgName.label" default="Org Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="orgName" required="" value="${organizationInstance?.orgName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'orgCode', 'error')} required">
	<label for="orgCode">
		<g:message code="organization.orgCode.label" default="Org Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="orgCode" required="" value="${organizationInstance?.orgCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'sector', 'error')} required">
	<label for="sector">
		<g:message code="organization.sector.label" default="Sector" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sector" required="" value="${organizationInstance?.sector}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'office', 'error')} required">
	<label for="office">
		<g:message code="organization.office.label" default="Office" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="office" required="" value="${organizationInstance?.office}"/>
</div>

