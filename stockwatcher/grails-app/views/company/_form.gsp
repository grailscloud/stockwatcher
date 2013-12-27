<%@ page import="com.swt.cml.admin.Company" %>



<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'abbr', 'error')} ">
	<label for="abbr">
		<g:message code="company.abbr.label" default="Abbr" />
		
	</label>
	<g:textField name="abbr" value="${companyInstance?.abbr}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'bookValue', 'error')} required">
	<label for="bookValue">
		<g:message code="company.bookValue.label" default="Book Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="bookValue" value="${fieldValue(bean: companyInstance, field: 'bookValue')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'currentPrice', 'error')} required">
	<label for="currentPrice">
		<g:message code="company.currentPrice.label" default="Current Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="currentPrice" value="${fieldValue(bean: companyInstance, field: 'currentPrice')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'eps', 'error')} required">
	<label for="eps">
		<g:message code="company.eps.label" default="Eps" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eps" value="${fieldValue(bean: companyInstance, field: 'eps')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="company.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${companyInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'marketCap', 'error')} required">
	<label for="marketCap">
		<g:message code="company.marketCap.label" default="Market Cap" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="marketCap" value="${fieldValue(bean: companyInstance, field: 'marketCap')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'mobile', 'error')} required">
	<label for="mobile">
		<g:message code="company.mobile.label" default="Mobile" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="mobile" type="number" value="${companyInstance.mobile}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="company.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${companyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'pbv', 'error')} required">
	<label for="pbv">
		<g:message code="company.pbv.label" default="Pbv" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pbv" value="${fieldValue(bean: companyInstance, field: 'pbv')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'pe', 'error')} required">
	<label for="pe">
		<g:message code="company.pe.label" default="Pe" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pe" value="${fieldValue(bean: companyInstance, field: 'pe')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'sector', 'error')} required">
	<label for="sector">
		<g:message code="company.sector.label" default="Sector" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sector" name="sector.id" from="${com.swt.cml.admin.Sector.list()}" optionKey="id" required="" value="${companyInstance?.sector?.id}" class="many-to-one"/>
</div>

