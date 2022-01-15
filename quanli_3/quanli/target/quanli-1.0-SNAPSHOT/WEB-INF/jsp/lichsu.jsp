<%-- 
    Document   : lichsu
    Created on : Sep 28, 2021, 12:29:16 PM
    Author     : AD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<div class="contentright">
     <ul class="list-group">
    <li class="list-group-item">
      <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo">Lịch Sử Đặt Khách Sạn</button>
      <br>
    </li>
    <li class="list-group-item">
      <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo1">Lịch Sử Đặt Tour</button>
    </li>
   
  </ul>
    <div id="demo" class="collapse">
          <h1>Lịch Sử Đặt Hàng Của Bạn</h1>
    <table class="table table-bordered" style="background-color: white">
        <thead>
          <tr>
            <th>id</th>
            <th>Ngày đặt</th>
             <th>Tên khách sạn</th>
             <th>Tên phòng</th>
             <th>Số lượng</th>
            <th>Tổng tiền</th>
          </tr>
        </thead>
    <tbody>
       <c:forEach var="t" items="${donphong}">   
            <tr>
                 <td>${t.donphong.id}</td>
                  <td>${t.donphong.ngaytao}</td>
                  <td>${t.phong.khachsan.tenKS}</td>
                  <td>${t.phong.tenPhong}</td>
                  <td>${t.soluong}</td>
                  <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${t.donphong.tongtien}"/> VND</td>
                  
            </tr>
        </c:forEach>
    </tbody>
  </table>  
    </div>
  
    <div id="demo1" class="collapse">
        <h1>Lịch Sử Đặt Hàng Của Bạn</h1>
    <table class="table table-bordered" style="background-color: white">
        <thead>
          <tr>
            <th>id</th>
            <th>Ngày đặt</th>
             <th>Tên Tour</th>
             <th>Số lượng</th>
            <th>Tổng tiền</th>
          </tr>
        </thead>
    <tbody>
       <c:forEach var="t" items="${dontour}">   
            <tr>
                 <td>${t.dontour.id}</td>
                  <td>${t.dontour.ngaytao}</td>
                  <td>${t.tour.nametour}</td>
                  <td>${t.soluong}</td>
                  <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${t.dontour.tongtien}"/> VND</td>
                  
            </tr>
        </c:forEach>
    </tbody>
  </table>  
    </div>
</div>