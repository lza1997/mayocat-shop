<%@ page import="org.mayocat.shop.grails.ImageSet" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imageSet.label', default: 'ImageSet')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="span16">
      <div id="create-imageSet" class="content scaffold-create" role="main">
        <h2><g:message code="default.create.label" args="[entityName]" /></h2>
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
        <g:uploadForm action="save" params="[productid: params.productid]">
          <fieldset class="form">
            <div class="clearfix">
              <label for="file">
                <g:message code="imageSet.file.label" default="Image file" />
                <span class="required-indicator">*</span>
              </label>
              <div class="input">
                <input type="file" name="file" />
              </div>
            </div>
            <g:render template="form"/>
            <g:hiddenField name="product.id" value="${params.productid}" />
          </fieldset>
          <fieldset class="buttons actions">
            <g:link class="back btn" action="show" controller="product" params="[id:params.productid]"><g:message code="default.cancel" /></g:link>
            <g:submitButton name="create" class="save btn primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
          </fieldset>
        </g:uploadForm>
      </div>
    </div>
	</body>
</html>
