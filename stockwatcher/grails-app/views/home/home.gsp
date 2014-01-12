<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>Home</title>
</head>
<body>
<div id="wrapper">
 
    <!-- header picture -->
<div id="header">
      <img src="${resource(dir:'images',file:'header.jpg')}" alt="header" /></div>
<!-- END #header -->
 
    <!-- username | logout link -->
    <g:if test="${session?.user}">
<div id="login">
        ${session?.user?.firstName} ${session?.user?.lastName} |
        <g:link controller="user" action="logout">Logout</g:link></div>
<!-- END #login -->
    </g:if>
    
    <g:if test="${session?.user}">
</g:if>
<g:else>
  <g:form class="simpleform" style="width:50%;" url="[controller:'user',action:'login']">
    <fieldset>
      <legend>Login</legend>
      <p class="info">
        Please login with your username and password. <br />
        Don't have an account?
        <g:link controller="user" action="show">Sign up now!</g:link>
      </p>
      <g:if test="${flash.message}">
          <div class="message">${flash.message}</div>
      </g:if>
      <p>
        <label for="username">Username</label>
        <g:textField name="username" />
      </p>
      <p>
        <label for="password">Password</label>
        <g:passwordField name="password" />
      </p>
      <p class="button">
        <label>&nbsp;</label>
        <g:submitButton class="button" name="submitButton" value="Login" />
      </p>
    </fieldset>
  </g:form>
</g:else>
<h1>POP</h1>
<div id="nav"></div>
<!-- END #nav -->
<div id="content">
</div>
<!-- END #content -->
<div id="footer">
</div>
<!-- END #footer --></div>
<!-- END #wrapper -->
</body>
</html>