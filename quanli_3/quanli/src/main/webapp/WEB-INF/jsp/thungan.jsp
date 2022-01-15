<%-- 
    Document   : thungan
    Created on : Oct 7, 2021, 7:54:45 PM
    Author     : AD
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<div class="container" >
    <br>
     <form class="form-inline" action="">
    <input class="form-control mr-sm-2" type="text" name="name" placeholder="Tìm kiếm theo ngày ">
    <button class="btn btn-success" type="submit">Tìm</button>
    </form><br>
       <ul class="list-group">
    <li class="list-group-item">
      <button class="btn btn-primary" data-toggle="collapse" data-target="#demo">Hóa đơn Khách Sạn</button>
      <br>
    </li>
    <li class="list-group-item">
    <button class="btn btn-primary" data-toggle="collapse" data-target="#demo1">Hóa đơn Tour</button>
    </li>
  
  </ul>
  
    <div id="demo" class="collapse">
    <h1>Quản lí Hóa Đơn Khách Sạn</h1>
    <table class="table table-bordered" style="background-color: white" >
        <thead>
          <tr>
            <th>id</th>
            <th>Tên người đặt</th>
             <th>Email</th>
             <th>SĐT</th>
             <th>Ngày đặt</th>
             <th>Tổng Tiền</th>
              <th>Phương Thức</th>
              <th>Tình trạng</th>
             <th>Hành động</th>
            
          </tr>
        </thead>
    <tbody>
       <c:forEach var="t" items="${hoadon}">   
            <tr>
                 <td>${t.id}</td>
                  <td>${t.hoten}</td>
                  <td>${t.email}</td>
                  <td>${t.sdt}</td>
                  <td>${t.ngaytao}</td>
                  <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${t.tongtien}"/></td>
                  <td>${t.phuongthuc}</td>
                  <td>${t.tinhtrang}</td>
                  <td>
                    <a class="btn btn-info"href="<c:url value="/nhanvien/hoadon/detail/${t.id}"/>">Thông tin</a>
                      <a class="btn btn-primary" href="<c:url value="/nhanvien/hoadon/update/${t.id}"/>">Chỉnh sửa</a>
                     <a class="btn btn-danger" href="<c:url value="/nhanvien/hoadon/xoa/${t.id}"/>">Xóa</a>
                  </td>
            </tr>
        </c:forEach>
     </tbody>
     </table>  
    </div>
 <div id="demo1" class="collapse">
    <h1>Quản lí Hóa Đơn Tour</h1>
    <table class="table table-bordered" style="background-color: white">
        <thead>
          <tr>
            <th>id</th>
            <th>Tên người đặt</th>
             <th>Email</th>
             <th>SĐT</th>
             <th>Ngày đặt</th>
             <th>Tổng Tiền</th>
              <th>Phương Thức</th>
              <th>Tình trạng</th>
             <th>Hành động</th>
            
          </tr>
        </thead>
    <tbody>
       <c:forEach var="t" items="${dontour}">   
            <tr>
                 <td>${t.id}</td>
                  <td>${t.hoten}</td>
                  <td>${t.email}</td>
                  <td>${t.sdt}</td>
                  <td>${t.ngaytao}</td>
                  <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${t.tongtien}"/></td>
                  <td>${t.phuongthuc}</td>
                  <td>${t.tinhtrang}</td>
                  <td>
                    <a class="btn btn-info"href="<c:url value="/nhanvien/hoadon/tour/detail/${t.id}"/>">Thông tin</a>
                      <a class="btn btn-primary" href="<c:url value="/nhanvien/hoadon/tour/update/${t.id}"/>">Chỉnh sửa</a>
                     <a class="btn btn-danger" href="<c:url value="/nhanvien/hoadon/tour/xoa/${t.id}"/>">Xóa</a>
                  </td>
            </tr>
        </c:forEach>
     </tbody>
     </table>  
    </div>
    <br>
    <h4>Hướng dẫn sử dụng:</h4>
    <p>Trước khi xóa hóa đơn phải vô thông tin hóa đơn xóa các item trong hóa đơn trước</p>
</div>
