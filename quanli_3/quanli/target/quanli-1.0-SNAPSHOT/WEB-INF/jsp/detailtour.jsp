<%-- 
    Document   : detailtour
    Created on : Sep 27, 2021, 10:01:06 PM
    Author     : AD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="row">
<div class="col-md-3">
   
    <div>
          <div class="card bg-info text-white">
            <div class="card-body"><i class="fa fa-shopping-cart" style="font-size:25px;color: white;"></i> Số lượng phòng (<c:out value="${sessionScope.slItems}"/>)
                <c:if test="${sessionScope.slItems != null}">
                    <a class="btn btn-outline-info" href="<c:url value="/carttour"/>"> Xem chi tiết</a>
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
          <a class="dropdown-item" href="<c:url value="/tour/?name=${tp.tentp}"/>"> ${tp.tentp}</a>
      </c:forEach>
    </div>
</div>
 <div class="dropdown">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
      Loại Phòng
    </button>

</div>
</div>
<div class="col-md-8" >
     <div>
        <div class="mid-title">
            <h1 class="title-main" id="tp">${tour.nametour}</h1>
        </div>
        <div class="box" style="width: 100%; height: 650px;background-color: white ;" >
            <div style="width: 59%; height: 100%;background-color: white;float: left">
                 <img class="card-img-top" src="${tour.image}" alt="Card image">
                  
            </div>
            <div style="width: 40%; height: 100%;background-color: white; float: left">
                <div class="box-detail-tour">
                        <table class="table table-bordered">
                        <tbody>
                          <tr>
                              <td><strong>Mã Tour: </strong></td>
                            <td>${tour.idtour}</td>
                          </tr>
                          <tr>
                            <td><strong>Điểm Đến: </strong></td>
                            <td>${tour.place}</td>
                          </tr>
                          <tr>
                            <td><strong>Ngày Khởi Hành: </strong></td>
                            <td>${tour.start}</td>
                          </tr>
                          <tr>
                            <td><strong>Ngày Kết Thúc: </strong></td>
                            <td>${tour.finish}</td>
                          </tr>
                          <tr>
                            <td><strong>Phương Tiện: </strong></td>
                            <td>${tour.phuongtien}</td>
                          </tr>
                         
                        </tbody>
                      </table>
                    </div>
                <div class="box-gia-tour">
                    <table class="table table-bordered">
                        <tbody>
                          <tr>
                              <td><strong>Giá Tour/Khách từ:</strong> <strong class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="${tour.price}"/> VND</strong></td>
                            
                          </tr>
                          <tr>
                            <td><a class="book-tour"href="<c:url value="/cart/add/tour/${tour.idtour}"/>" class="btn btn-success">Đặt Tour</a></td>
                          </tr>
                         
                        </tbody>
                      </table>
                </div>
            </div>
                         
            
        </div>
        <div class="mota"style="width: 100%; height: 100%;background-color: white;">
            <h5 class="mota1">Mô tả:<small>${tour.description} </small></h5>
            <ul>
                <b>CHÍNH SÁCH TRẺ EM:</b>   
                <li> <b> Trẻ em từ 1-4 tuổi:</b> miễn phí (bố mẹ tự lo mọi chi phí cho trẻ, không chiếm chỗ trên xe)</li>
                <li><b>Trẻ em từ 5-9 tuổi:</b> tính 75% giá tour (ăn suất riêng, chỗ ngồi trên xe riêng nhưng phải ngủ chung giường với bố mẹ). Chúng tôi không chịu trách nhiệm nếu như gia đình có mang theo nhiều trẻ em và yêu cầu thêm giường vì cảm thấy chật chội.  
</li>
                <li><b>Trẻ em từ 10 tuổi trở lên:</b> tính như người lớn.
</li>
               
            </ul>
            <ul><b>CÁC QUY ĐỊNH ÁP DỤNG CHO CHƯƠNG TRÌNH:</b>
            <li>Dưới đây là mức phạt hủy tour theo quy định của công ty. Chúng tôi sẽ linh động giải quyết từng trường hợp cụ thể trong khả năng cho phép.</li>
            <li>
Nếu quý khách hủy tour sau khi đăng ký và trước 30 ngày khởi hành: mất phí cọc tour</li>
            <li>
Nếu quý khách hủy tour từ 20-30 ngày trước ngày khởi hành: phí hủy 50% giá trị tour.</li>
            <li>
Nếu quý khách hủy tour từ 15-20 ngày trước ngày khởi hành: phí hủy 70% giá trị tour.</li>
            <li>
Nếu quý khách hủy tour trong vòng 15 ngày trước ngày khởi hành: phí hủy 100% giá trị tour.</li>
            <li>
Lưu ý : Tùy theo điều kiện nào đến trước chúng tôi sẽ áp dụng điều kiện đó.</li>
            </ul>
            <ul>
                <b>ĐIỀU KIỆN QUY ĐỊNH VÉ MÁY BAY:</b>
                <li>
VietNam Airlines: Không hoàn hủy, đổi tên, đổi hành trình, tách chặng trong bất cứ trường hợp nào </li>
                <li>
Giờ bay có thể thay đổi theo giờ bay của Hãng Hàng Không VietNam Airlines.</li>
                
                <li>
Hành lý bao gồm: 12kg xách tay + 23kg ký gửi.</li>
                <li>
Khi đi máy bay Quý khách nên mang theo một trong các giấy tờ sau: (Chứng minh thư nhân dân còn hạn dưới 15 năm, hoặc hộ chiếu, giấy khai sinh (đối với trẻ em dưới 14 tuổi).</li>
                
                <li>
Với trẻ em 14 tuổi (Yêu cầu phải có CMTND, nếu trường hợp chưa có phải có giấy xác nhận nhân thân theo mẫu và đóng dấu của địa phương nơi cư trú).</li>
                <li>
Với trẻ em không đi cùng bố mẹ phải có giấy xác nhận ủy quyền của bố mẹ có xác nhận của địa phương nơi cư trú cho người đi cùng, để làm thủ tục lên máy bay.</li>
            </ul>
            <ul>
                <b>CÁC QUY ĐỊNH CHUNG: </b>
                <li>
Nếu bên A hủy tour do bị từ chối làm thủ tục tại sân bay do nhân thân / giấy tờ tùy thân Công ty chúng tôi không chịu trách nhiệm cho sự việc trên. Các chi phí cho chương trình sẽ không được chúng tôi hoàn lại trong trường hợp này.
Do tính chất đoàn ghép khách lẻ, nếu đoàn có từ 10 người lớn trở lên, đoàn sẽ khởi hành đúng ngày. Nếu đoàn không đủ 10 khách, bên B sẽ sắp xếp ngày khởi hành mới và thông báo cho bên A biết trước 15 ngày làm việc. Trường hợp bên A không đi theo lịch khởi hành mới được, bên B sẽ hoàn lại tiền cọc cho bên A.
Nếu Bên B không tổ chức cho đoàn đi đúng thời gian dự kiến do các nguyên nhân bất khả kháng như: Thiên tai, bão lụt, chiến tranh…. Bên B sẽ thu xếp ngày khởi hành mới, mọi chi phí phát sinh do hai bên thỏa thuận.</li>
                
            </ul>

        </div>
            <div id="dsks" style="float: left">
        <h1>Danh Sách Tour Đề Xuất</h1>
        <br>
            <div class="col-md-10">
        <div class="row" style="margin: 10px;">
           <c:forEach var="t" items="${tour1}">
        <div class="card col-md-5" style="width:400px;">
                <img class="card-img-top rounded" src="${t.image}"/>
              <div class="card-body">
                <h4 class="card-title">${t.nametour}</h4>
                <p class="card-text"><b>Thành Phố: </b>${t.place}</p>
                <p class="card-text "><b>Giá: </b><p class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="${t.price}"/> VND</p></p>
                <a href="<c:url value="/tour/detail/${t.idtour}/?name=${t.place}"/>" class="btn btn-primary stretched-link">Xem Chi Tiết</a>
                
              </div>
        </div>
       </c:forEach>    
        </div>
        </div>
    </div>  
    </div>
</div>
 
           
            </div>
       


