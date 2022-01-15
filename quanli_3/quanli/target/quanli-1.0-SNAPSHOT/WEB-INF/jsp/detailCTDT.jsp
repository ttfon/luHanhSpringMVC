<%-- 
    Document   : detailCTDT
    Created on : Oct 1, 2021, 8:02:31 PM
    Author     : AD
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<div class="container">
    <table class="table" style="background-color: white">
    <thead>
      <tr>
          <th>id</th>
        <th>Tên Tour</th>
        <th>giá</th>
        <th>Số lượng</th>
      </tr>
    </thead>
    <tbody>
        <c:forEach items="${hoadon}" var="ct">
      <tr>
       <td>${ct.id}</td>
        <td>${ct.tour.nametour}</td>
        <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${ct.tour.price}"/> VND</td>
        <td>${ct.soluong}</td>
        <td><a href="<c:url value="/cthoadon/tour/delete/${ct.id}"/>"><i class="fa fa-remove" style="font-size:24px;color: red;"></i></a></td>
      </tr>
      
        </c:forEach>
      <tr>
          <th></th>
          <th></th>
        <th>Tên người đặt</th>
        <th>Tổng cộng</th>
      </tr>
       <c:forEach items="${hoadon}" var="ct">
       <tr>
           <td></td>
           <td></td>
        <td>${ct.dontour.hoten}</td>
        <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${ct.dontour.tongtien}"/> VND</td>
       
      </tr>
      </c:forEach>
     
    </tbody>
  </table>
      <sec:authorize access="hasRole('ROLE_ADMIN')">
       <a class="btn btn-secondary" href="<c:url value="/admin/hoadon"/>">Quay lại</a>
        </sec:authorize>
    <sec:authorize access="hasRole('ROLE_NV')">
    <a class="btn btn-secondary" href="<c:url value="/nhanvien/thungan"/>">Quay lại</a>
    </sec:authorize>
      
</div>
