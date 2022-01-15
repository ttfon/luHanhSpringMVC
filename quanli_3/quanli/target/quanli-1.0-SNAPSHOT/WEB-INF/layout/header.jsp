<%-- 
    Document   : header
    Created on : Aug 25, 2021, 12:44:50 PM
    Author     : AD
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="width: 100%;height:10%">
    <div class="container-fluid">
        <a class="nav-link" href="<c:url value="/"/>" style="color: white;"> UwU Travel</a>
         <a class="nav-link" href="<c:url value="/khachsan"/>" style="color: white;">Khách Sạn</a>
          <a class="nav-link" href="<c:url value="/tour"/>" style="color: white;">Tour</a>
         
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarReponsive">
	  	<span class="navbar-toggler-icon"></span>
	  </button>
         <div class="collapse navbar-collapse" id="navbarReponsive">
            <ul class="navbar-nav ml-auto">
                <c:if test="${pageContext.request.userPrincipal.name==null}">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/login"/>">Đăng Nhập</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/register"/>">Đăng Ký</a>
                    </li>
                </c:if>
                 <c:if test="${pageContext.request.userPrincipal.name!=null}">
                 <li class="nav-item dropdown dropleft">
                     <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">${pageContext.request.userPrincipal.name}</a>

                    <div class="dropdown-menu">
                     <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <a class="dropdown-item" href=" <c:url value="/admin/thongke"/>">Quản lí</a>     
                     </sec:authorize>
                        <sec:authorize access="hasRole('ROLE_NV')">
                        <a class="dropdown-item" href=" <c:url value="/nhanvien/thungan"/>">Thu Ngân</a>     
                     </sec:authorize>
                        <a class="dropdown-item" href=" <c:url value="/profile/${pageContext.request.userPrincipal.name}"/>">Thông tin</a>    
                        <a class="dropdown-item" href="<c:url value="/logout"/>">Logout</a>
                  </div>
                </li>

                </c:if>
            </ul>
         </div>
    </div>
</nav>
