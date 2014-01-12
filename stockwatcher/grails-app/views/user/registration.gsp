<html>
<head>
  <title>POP - User Registration</title>
  <meta name="layout" content="main" />
</head>
<body>
<g:form class="simpleform" url="[controller:'user',action:'register']">
  <fieldset>
    <legend>User Registration</legend>
    <p class="info">
      Complete the form below to create an account!
    </p>
    <g:hasErrors bean="${user}">
      <div class="errors">
        <g:renderErrors bean="${user}"/>
      </div>
    </g:hasErrors>
    <p>
      <label for="username">Username</label>
      <g:textField name="username" value="${user?.username}"
        class="${hasErrors(bean:user,field:'username','errors')}"/>
    </p>
    <p>
      <label for="password">Password</label>
      <g:passwordField name="password"
        class="${hasErrors(bean:user,field:'password','errors')}" />
    </p>
    <p>
      <label for="confirm">Confirm Password</label>
      <g:passwordField name="confirm"
        class="${hasErrors(bean:user,field:'password','errors')}" />
    </p>
    <p>
      <label for="firstName">First Name</label>
      <g:textField name="firstName" value="${user?.firstName}"
        class="${hasErrors(bean:user,field:'firstName','errors')}" />
    </p>
    <p>
      <label for="lastName">Last Name</label>
      <g:textField name="lastName" value="${user?.lastName}"
        class="${hasErrors(bean:user,field:'lastName','errors')}" />
    </p>
    <%--<p>
      <label for="email">email</label>
      <g:textField name="email" value="${user?.email}"
        class="${hasErrors(bean:user,field:'email','errors')}" />
    </p>
    <p>
      <label for="mobile">mobile</label>
      <g:textField name="mobile" value="${user?."mobile"}"
        class="${hasErrors(bean:user,field:'mobile','errors')}" />
    </p>
    <p>
      <label for="location">Location</label>
      <g:textField name="location" value="${user?.location}"
        class="${hasErrors(bean:user,field:'location','errors')}" />
    </p>
    --%><p class="button">
      <label>&nbsp;</label>
      <g:submitButton class="button" name="submitButton" value="Create Account" />
    </p>
  </fieldset>
</g:form>
</body>
</html>