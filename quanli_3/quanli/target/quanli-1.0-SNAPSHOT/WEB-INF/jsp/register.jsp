<%-- 
    Document   : register
    Created on : Aug 25, 2021, 8:40:07 PM
    Author     : AD
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<form:errors path="*" cssClass="alert alert-danger" element="div"></form:errors>
    <div class="container">
    
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
   
  <c:url value="/register" var="action" />
     <form action="${action}" method="post" class="was-validated">
        <div class="form-group">
            <label for="username">Tên đăng nhập</label>
            <input type="text" id="username" name="username" class="form-control" required/>
            <c:if test="${error!=null}">
                <div > <p Class="alert alert-danger">${error}</p></div>
            </c:if>
            
        </div>
        <div class="form-group">
            <label for="password">password</label>
            <input type="password" id="password" name="password" class="form-control" required/>
        </div>
        <div class="form-group">
            <label for="hoten">Họ và tên</label>
            <input type="text" id="hoten" name="hoten" class="form-control" required/>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email"  class="form-control" required/>
        </div>
        <div class="form-group">
            <label for="sdt">Số điện thoại</label>
            <input type="tel" pattern="[0]{1}[1-9]{9}" id="sdt" name="sdt" class="form-control" required/>
        </div>
        <div class="form-group">
            <label for="ngaysinh">Ngày Sinh</label>
            <input type="date" id="ngaysinh"  name="ngaysinh"  class="form-control" required/>
        </div>
        
         <div class="clearfix">
             <button  type="button" class="cancelbtn"><a href="<c:url value="/"/>">Cancel</a></button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
    </form>
  </div>
