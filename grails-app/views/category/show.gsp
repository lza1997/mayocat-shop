<%@ page import="org.mayocat.shop.grails.Category" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="span16">
      <div id="show-category" class="content scaffold-show" role="main">
        <h2><g:message code="default.show.label" args="[entityName]" /></h2>
        <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if>
        <ol class="property-list category">
        
          <g:if test="${categoryInstance?.byname}">
          <li class="fieldcontain">
            <span id="byname-label" class="property-label"><g:message code="category.byname.label" default="Byname" /></span>
            
              <span class="property-value" aria-labelledby="byname-label"><g:fieldValue bean="${categoryInstance}" field="byname"/></span>
            
          </li>
          </g:if>
        
          <g:if test="${categoryInstance?.products}">
          <li class="fieldcontain">
            <span id="products-label" class="property-label"><g:message code="category.products.label" default="Products" /></span>
            
              <g:each in="${categoryInstance.products}" var="p">
              <span class="property-value" aria-labelledby="products-label"><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
              </g:each>
            
          </li>
          </g:if>
        
          <g:if test="${categoryInstance?.title}">
          <li class="fieldcontain">
            <span id="title-label" class="property-label"><g:message code="category.title.label" default="Title" /></span>
            
              <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${categoryInstance}" field="title"/></span>
            
          </li>
          </g:if>
        
        </ol>
        <g:form>
          <fieldset class="buttons actions">
            <g:hiddenField name="id" value="${categoryInstance?.id}" />
            <g:link class="list btn" action="list"><g:message code="default.back" /></g:link></li>
            <g:link class="edit btn primary" action="edit" id="${categoryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <g:actionSubmit class="delete btn danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
          </fieldset>
        </g:form>
      </div>
    </div>
	</body>
</html>
