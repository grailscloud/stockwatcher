<%@ page import="com.swt.cml.admin.Fund" %>



<div class="fieldcontain ${hasErrors(bean: fundInstance, field: 'fundEntity', 'error')} ">
	<label for="fundEntity">
		<g:message code="fund.fundEntity.label" default="Fund Entity" />
		
	</label>
	<g:textField name="fundEntity" value="${fundInstance?.fundEntity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fundInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="fund.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fundInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fundInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="fund.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${fundInstance?.type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fundInstance, field: 'unitValue', 'error')} required">
	<label for="unitValue">
		<g:message code="fund.unitValue.label" default="Unit Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unitValue" type="number" value="${fundInstance.unitValue}" required=""/>
</div>

