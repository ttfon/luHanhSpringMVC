<%-- 
    Document   : qltour
    Created on : Sep 26, 2021, 2:02:20 PM
    Author     : AD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<div class="contentright">
    
    <h1>Quản lí Tour</h1>
    <form class="form-inline" action="">
    <input class="form-control mr-sm-2" type="text" name="name" placeholder="Tìm kiếm">
    <button class="btn btn-success" type="submit">Tìm</button>
    </form><br>
    <a class="btn btn-primary" href="<c:url value="/admin/add/tour"/>">Thêm Tour</a>
    <table class="table table-bordered"style="background-color: white" >
        <thead>
          <tr>
            <th>id</th>
            <th>Tên Tour</th>
             <th>Điểm đến</th>
             <th>Phương tiện</th>
             <th>Hành Động</th>
            
          </tr>
        </thead>
    <tbody>
       <c:forEach var="t" items="${tour}">   
            <tr>
                 <td>${t.idtour}</td>
                  <td>${t.nametour}</td>
                  <td>${t.place}</td>
                  <td>${t.phuongtien}</td>
                  <td>
                      <a class="btn btn-info"href="<c:url value="/tour/detail/${t.idtour}"/>">Thông tin</a>
                      <a class="btn btn-primary" href="<c:url value="/admin/tour/update/${t.idtour}"/>">Chỉnh sửa</a>
                     <a class="btn btn-danger" onclick="return confirm('Bạn có muốn xóa? ')" href="<c:url value="/admin/tour/delete/${t.idtour}"/>">Xóa</a>
                  </td>
            </tr>
        </c:forEach>
    </tbody>
  </table>  
    
</div>
