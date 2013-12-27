<%@ page import="com.swt.cml.admin.Bank" %>



<div class="fieldcontain ${hasErrors(bean: bankInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="bank.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="20" required="" value="${bankInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bankInstance, field: 'revenue', 'error')} required">
	<label for="revenue">
		<g:message code="bank.revenue.label" default="Revenue" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="revenue" value="${fieldValue(bean: bankInstance, field: 'revenue')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bankInstance, field: 'branches', 'error')} required">
	<label for="branches">
		<g:message code="bank.branches.label" default="Branches" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="branches" type="number" min="1" max="10000" value="${bankInstance.branches}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bankInstance, field: 'createdTime', 'error')} ">
	<label for="createdTime">
		<g:message code="bank.createdTime.label" default="Created Time" />
		
	</label>
	<g:datePicker name="createdTime" precision="day"  value="${bankInstance?.createdTime}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: bankInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="bank.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" value="${bankInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bankInstance, field: 'updatedTime', 'error')} ">
	<label for="updatedTime">
		<g:message code="bank.updatedTime.label" default="Updated Time" />
		
	</label>
	<g:datePicker name="updatedTime" precision="day"  value="${bankInstance?.updatedTime}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: bankInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="bank.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" value="${bankInstance?.updatedBy}"/>
</div>

