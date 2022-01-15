<%-- 
    Document   : contentright
    Created on : Aug 27, 2021, 2:23:18 PM
    Author     : AD
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <div class="contentleft" style="width: 20%;height:860px; float: left;">
   
  <nav class="nav flex-column bg-dark navbar-dark" >
     
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <a class="navbar-brand" href="#"> Chức Năng</a>
    <span class="navbar-toggler-icon"></span>
  </button>
     <div class="collapse navbar-collapse" id="collapsibleNavbar">
  
   
   <ul class="navbar-nav">

       <li class="nav-item" style="color:white"> </li> 
    <sec:authorize access="hasRole('ROLE_ADMIN')">  
         <li class="nav-item"><a class="nav-link" href="<c:url  value="/admin/user"/>">Quản lí người dùng</a></li>
         <li class="nav-item"><a class="nav-link" href="<c:url value="/admin/khachsan"/>">Quản lí khách sạn</a></li>
         <li class="nav-item"><a class="nav-link" href="<c:url value="/admin/tour"/>">Quản lí tour</a></li>
         <li class="nav-item"><a class="nav-link" href="<c:url value="/admin/thongke"/>">Thống kê báo cáo</a></li>
         <li class="nav-item"><a class="nav-link" href="<c:url value="/admin/hoadon"/>">Quản lí Hóa Đơn</a></li>
     </sec:authorize>
     
     <li class="nav-item"><a class="nav-link" href="<c:url value="/profile/update/${pageContext.request.userPrincipal.name}"/>">Chỉnh Sửa Thông Tin</a></li>
     <c:forEach var="user" items="${user}">
     <li class="nav-item"><a class="nav-link" href="<c:url value="/lichsu/?id=${user.sdt}"/>">Lịch Sử </a></li>
      </c:forEach>
      
   </ul>
    </div>
   
</nav>
    </div>


