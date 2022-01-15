<%-- 
    Document   : detailKS
    Created on : Sep 4, 2021, 2:05:57 PM
    Author     : AD
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="row">
<div class="col-md-3">
   
    <div>
          <div class="card bg-info text-white">
            <div class="card-body"><i class="fa fa-shopping-cart" style="font-size:25px;color: white;"></i> Số lượng phòng (<c:out value="${sessionScope.slItems}"/>)
                <c:if test="${sessionScope.slItems != null}">
                    <a class="btn btn-outline-info" href="<c:url value="/cart"/>"> Xem chi tiết</a>
                </c:if>
                
            </div>
          </div>
      
       
    </div>
    <h3 >Tìm kiếm theo</h3> 
  <div class="dropdown">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
      Thành Phố
    </button>
    <div class="dropdown-menu">
      <c:forEach var="tp" items="${thanhpho}">
          <a class="dropdown-item" href="<c:url value="/khachsanparam/?name=${tp.tentp}"/>"> ${tp.tentp}</a>
      </c:forEach>
    </div>
</div>
 <div class="dropdown">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
      Loại Phòng
    </button>
    <div class="dropdown-menu">
        <c:forEach items="${loaiphong}" var="lp">
             <a class="dropdown-item" href="<c:url value="/khachsanparamlp/?name=${lp.tenLoaiPhong}"/>">${lp.tenLoaiPhong}</a>
        </c:forEach>
    </div>
</div>
</div>
<div class="col-md-8" >
     <div>
        <div class="mid-title">
            <h1 class="title-main">${khachsan.tenKS}</h1>
        </div>
        <div class="box" style="width: 100%; height: 550px;background-color: white ;" >
            <div style="width: 59%; height: 100%;background-color: white;float: left">
                 <img class="card-img-top" src="${khachsan.hinhanh}" alt="Card image">
                  
            </div>
            <div style="width: 40%; height: 100%;background-color: white; float: left">
                <div class="box-detail-tour">
                        <table class="table table-bordered">
                        <tbody>
                          <tr>
                              <td><strong>Mã Khách Sạn </strong></td>
                            <td>${khachsan.idkhachsan}</td>
                          </tr>
                          <tr>
                            <td><strong>Thành Phố: </strong></td>
                            <td>${khachsan.thanhPho}</td>
                          </tr>
                          <tr>
                            <td><strong>Địa Chỉ: </strong></td>
                            <td>${khachsan.diachi}</td>
                          </tr>
                         
                        </tbody>
                      </table>
                    </div>
                <div class="box-gia-tour">
                    <table class="table table-bordered">
                        <tbody>
                          <tr>
                              <td><strong>Đánh giá:</strong><i class='fas fa-star' style="color: #e6e600"></i><i class='fas fa-star' style="color: #e6e600"></i><i class='fas fa-star' style="color: #e6e600"></i><i class='far fa-star'></i><i class='far fa-star'></i> </td>
                            
                          </tr>
                          
                         
                        </tbody>
                      </table>
                </div>
            </div>
   
      
        
    </div>
   
    <div style="float: left;margin: 10px;" >
        <h1>Danh Sách Phòng</h1>
        <div class="row">
        <c:forEach items="${phong}" var="p">
            <div class="card col-md-3" style="width:400px;margin: 10px;">
                <img class="card-img-top" src="${p.loaiphong.hinhanh}" alt="Card image" style="width:100%">
                <div class="card-body">
                  <h4 class="card-title">${p.tenPhong}</h4>
                  <p class="card-text"> 
                      <p class="fa fa-bed" style="font-size:20px"> Loại Phòng: ${p.loaiphong.tenLoaiPhong}</p>
                      <p class="fa fa-dollar text-danger" style="font-size:20px;"> Giá phòng:  <fmt:formatNumber type="number" maxFractionDigits="3" value="${p.giaPhong}"/> VND</p><br>
                       <c:if test="${p.tinhTrang == true}">
                        <i class="fa fa-toggle-on" style="font-size:20px;color:green"> Tình trạng: còn trống</i>
                        <br>
                        <a href="<c:url value="/cart/add/${p.idPhong}"/>" class="btn btn-success"> Đặt Phòng</a>
                    </c:if>
                    <c:if test="${p.tinhTrang != true}">
                        <i class="fa fa-toggle-off" style="font-size:20px;color:green"> Tình trạng: Phòng đã thuê</i>
                    </c:if>
                  </p>
               
                </div>
            </div>
        </c:forEach>
         </div>
    </div>
    <div id="dsks" style="float: left">
        <h1>Danh Sách Khách Sạn Đề Xuất</h1>
        <br>
            <div class="col-md-10">
        <div class="row" style="margin: 10px;">
            <c:forEach var="ks" items="${khachsan1}">
            <div class="card col-md-3" style="width:400px;">
                    <img class="card-img-top rounded" src="${ks.hinhanh}"/>
                  <div class="card-body">
                    <h4 class="card-title">${ks.tenKS}</h4>
                    <p class="card-text"><b>Địa chỉ: </b>${ks.diachi}</p>
                    <p class="card-text"><b>Thành Phố: </b>${ks.thanhPho}</p>
                    <a href="<c:url value="/khachsan/detail/${ks.idkhachsan}/?name=${ks.thanhPho}"/>" class="btn btn-primary stretched-link">Xem Chi Tiết</a>
                  </div>
            </div>
           </c:forEach>  
        </div>
        </div>
    </div>
</div>
</div>
