<%@ page import="org.mayocat.shop.grails.ImageSet" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imageSet.label', default: 'ImageSet')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="span16">
      <div id="edit-imageSet" class="content scaffold-edit" role="main">
        <h2><g:message code="default.edit.label" args="[entityName]" /></h2>
        <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${imageSetInstance}">
        <ul class="errors" role="alert">
          <g:eachError bean="${imageSetInstance}" var="error">
          <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
          </g:eachError>
        </ul>
        </g:hasErrors>
        <g:form method="post" >
          <g:hiddenField name="id" value="${imageSetInstance?.id}" />
          <g:hiddenField name="version" value="${imageSetInstance?.version}" />
          <fieldset class="form">
            <g:render template="form"/>
          </fieldset>
          <fieldset class="buttons actions">
            <g:link class="btn list" action="list"><g:message code="default.cancel" /></g:link>
            <g:actionSubmit class="save btn primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            <g:actionSubmit class="delete btn danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
          </fieldset>
        </g:form>
      </div>
    </div>
	</body>
</html>
