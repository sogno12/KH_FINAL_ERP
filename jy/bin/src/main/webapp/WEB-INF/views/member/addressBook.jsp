<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div id="main-wrapper">
		<jsp:include page="../common/navigator.jsp"/>
		
		
		<!-- Page wrapper  -->
	    <!-- ============================================================== -->
	    <div class="page-wrapper">
	        <!-- ============================================================== -->
	        <!-- Bread crumb and right sidebar toggle -->
	        <!-- ============================================================== -->
	         <div class="page-breadcrumb">
	            <div class="row">
	                <div class="col-12 d-flex no-block align-items-center">
	                    <nav aria-label="breadcrumb">
	                        <ol class="breadcrumb">
	                            <li class="breadcrumb-item"><a href="#">Home</a></li>
	                            <li class="breadcrumb-item active" aria-current="page">List</li>
	                        </ol>
	                    </nav>
	                </div>
	            </div>
	        </div>
	        <!-- ============================================================== -->
	        <!-- End Bread crumb and right sidebar toggle -->
	        <!-- ============================================================== -->
	        <!-- ============================================================== -->
	        <!-- Container fluid  -->
	        <!-- ============================================================== -->
	        <div class="container-fluid">
	          <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body" style="padding-bottom: 0px;">
                                <h5 class="card-title m-b-0" > 주소록</h5>
                     <label style="margin-left: 80%;margin-top: -5%;">검색:<input type="text" id="keyword" class="form-control form-control-sm" placeholder="이름" aria-controls="zero_config"></label></form>
                            </div>
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home" role="tab"><span class="hidden-sm-up"></span> <span class="hidden-xs-down">부서별</span></a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile" role="tab"><span class="hidden-sm-up"></span> <span class="hidden-xs-down">직급별</span></a> </li>
                                
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content tabcontent-border">
                                <div class="tab-pane active" id="home" role="tabpanel">
                                    <div class="p-20">
                                        <p>
                                            <table class="table" id="user-table">

                                            <tbody>
                                                <tr>
                                                <strong>
                                                    <th>부서</th>
                                                    <th>이름</th>
                                                    <th>직급</th>
                                                    <th>내선번호</th>
                                                    <th>휴대폰</th>
                                                    <th>이메일</th>
                                                    <th>주소</th>
                                                </strong>
                                                </tr>
                                               <c:forEach items="${ listDept }" var="d">
                                                <tr>
                                                    <td> ${d.departmentName }</td>
                                                    <td>${d.memberName }</td>
                                                    <td>${d.positionName }</td>
                                                    <td>${d.extension }</td>
                                                    <td>${d.phone }</td>
                                                    <td>${d.email }</td>
                                                    <td>${d.address }</td>    
                                                </tr>    
                                                </c:forEach>   
                                            </tbody>
                                        </table>
                                        </p>
                                        <ul style="margin-left: 35%;" class="pagination">
                                            <li class="paginate_button page-item previous disabled" id="zero_config_previous"><a href="#" aria-controls="zero_config" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                            <li class="paginate_button page-item active"><a href="#" aria-controls="zero_config" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                            <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                            <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                            <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
                                            <li class="paginate_button page-item next" id="zero_config_next"><a href="#" aria-controls="zero_config" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                        </ul>
                                        
                                    </div>
                                </div>
                                <div class="tab-pane  p-20" id="profile" role="tabpanel">
                                    <div class="p-20" style="padding-top: 0px;padding-left: 0px;padding-bottom: 0px;padding-right: 0px;">
                 
                                        <p>
                                        <table class="table" id="user-table2">

                                        <tbody>
                                            <tr>
                                            <strong>
                                                <th>부서</th>
                                                <th>이름</th>
                                                <th>직급</th>
                                                <th>내선번호</th>
                                                <th>휴대폰</th>
                                                <th>이메일</th>
                                                <th>주소</th>
                                            </strong>
                                            </tr>
                                           
                                            <c:forEach items="${ listPos }" var="p">
                                                <tr>
                                                    <td> ${p.departmentName }</td>
                                                    <td>${p.memberName }</td>
                                                    <td>${p.positionName }</td>
                                                    <td>${p.extension }</td>
                                                    <td>${p.phone }</td>
                                                    <td>${p.email }</td>
                                                    <td>${p.address }</td>    
                                                </tr>    
                                                </c:forEach>   
                
                                        </tbody>
                                    </table>
                            
                           <ul style="margin-left: 35%;" class="pagination">
                                <li class="paginate_button page-item previous disabled" id="zero_config_previous"><a href="#" aria-controls="zero_config" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                <li class="paginate_button page-item active"><a href="#" aria-controls="zero_config" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="zero_config" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
                                <li class="paginate_button page-item next" id="zero_config_next"><a href="#" aria-controls="zero_config" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                            </ul>
                        </div>
                        </div>
                        </div>
                        </div>
                
                <!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->

               
	        </div>
	        <!-- ============================================================== -->
	        <!-- End Container fluid  -->
	        <!-- ============================================================== -->
	    
		
		</div>
		</div>
		<jsp:include page="../common/footer.jsp"/>
		</div>
	</div>
	
	<script>
                $(document).ready(function() {
                   $("#keyword").keyup(function() {
                       var k = $(this).val();
                       $("#user-table > tbody > tr").hide();
                       var temp = $("#user-table > tbody > tr > td:nth-child(5n+2):contains('" + k + "')");

                       $("#user-table2 > tbody > tr").hide();
                       var temp2 = $("#user-table2 > tbody > tr > td:nth-child(5n+2):contains('" + k + "')");

                       $(temp).parent().show();
                       $(temp2).parent().show();
                   })
               })
           </script>
</body>
</html>