<%-- 
    Document   : lister
    Created on : 29 mars 2016, 08:03:25
    Author     : tom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<h1>Nouveau film</h1>
<div>
    <form:form modelAttribute="film" ng-click="">
        <label for="titre">Titre</label>
        <form:input path="titre"/>
        <br>
        <label for="synopsis">Synopsis</label>
        <form:textarea path="synopsis"/>
        <br>
        <label for="anneeProd">Ann�e de prod.</label>
        <form:input path="anneeProd"/>
        <input type="submit"/>
    </form:form>
</div>