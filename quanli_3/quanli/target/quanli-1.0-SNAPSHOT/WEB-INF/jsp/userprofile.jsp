<%-- 
    Document   : userProfile
    Created on : Aug 27, 2021, 7:36:11 PM
    Author     : AD
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="container">
    <h4>Thông tin người dùng</h4>
    <div class="card" style="width:500px">
    <img class="card-img-top" src="${user.hinhanh}" alt="Card image">
    <div class="card-body">
        <h5>ID: <small>${user.id}</small></h5>
        <h5>Username: <small>${user.username}</small></h5>
        <h5>Họ và tên:<small>${user.hoten}</small></h5>
        <h5>Ngày sinh:<small>${user.ngaysinh}</small></h5>
        <h5>Số điện thoại:<small>${user.sdt}</small></h5>
        <h5>Email: <small>${user.email}</small></h2>
    </div>
    </div>
        <button type="button" class="btn btn-secondary"><a href="<c:url value="/admin/user"/>">Quay lại</a></button>   
</div>
       