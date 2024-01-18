<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">
		<li class="nav-item"><a class="nav-link collapsed"
			href="indexadmin"> <i class="bi bi-house-fill"></i> <span>Trang
					Chủ</span>
		</a></li>

		<li class="nav-item"><a class="nav-link collapsed"
			href="list-category"> <i class="bi bi-card-list"></i> <span>Danh
					Mục</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#forms-nav" data-bs-toggle="collapse" href="list-product"> <i
				class="bi bi-menu-button-wide"></i><span>Sản Phẩm</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="forms-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<c:forEach items="${sessionScope.listcategories}" var="listcate">
					<li><a href="list-product?id=${listcate.getId()}&category=${listcate.getName()}"> <span
							class="bi bi-calendar2-check"></span> &ensp; <span>${listcate.getName()}</span>
					</a></li>
				</c:forEach>
			</ul></li>
		<!-- End Components Nav -->
		<li class="nav-item"><a class="nav-link collapsed"
			href="list-order"> <i class="bi bi-layout-text-window-reverse"></i> <span>Hóa
					Đơn</span>
		</a></li>

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#"> <i
				class="bi bi-people-fill"></i><span>Người Dùng</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="icons-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="list-user?role_id=1"> <span
						class="bi bi-person-bounding-box"></span> &ensp; <span>Người
							quản lý</span>
				</a></li>
				<li><a href="list-user?role_id=2"> <span
						class="bi bi-person-check-fill"></span> &ensp; <span>Khách
							hàng</span>
				</a></li>
			</ul></li>

		<!-- End Icons Nav -->
		<li class="nav-item"><a class="nav-link collapsed"
			 href="#"> <i class="bi bi-chat-square-text-fill"></i><span>Phản Hồi</span>
			</a>
		</li>

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
				<i class="bi bi-bar-chart"></i><span>Thống Kê</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a> <!-- <ul id="charts-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="charts-chartjs.html"> <i class="bi bi-circle"></i><span>Chart.js</span>
				</a></li>
				<li><a href="charts-apexcharts.html"> <i
						class="bi bi-circle"></i><span>ApexCharts</span>
				</a></li>
				<li><a href="charts-echarts.html"> <i class="bi bi-circle"></i><span>ECharts</span>
				</a></li>
			</ul>--></li>
		<!-- End Charts Nav -->

		<li class="nav-heading">Pages</li>

		<li class="nav-item"><a class="nav-link collapsed"
			href="users-profile.html"> <i class="bi bi-person"></i> <span>Thông
					Tin Cá Nhân</span>
		</a></li>
		<!-- End Profile Page Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			href="pages-faq.html"> <i class="bi bi-question-circle"></i> <span>F.A.Q</span>
		</a></li>
		<!-- End F.A.Q Page Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			href="pages-contact.html"> <i class="bi bi-envelope"></i> <span>Liên
					Hệ</span>
		</a></li>
		<!-- End Contact Page Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			href="pages-register.html"> <i class="bi bi-person-check-fill"></i>
				<span>Đăng Ký</span>
		</a></li>
		<!-- End Register Page Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			href="pages-login.html"> <i class="bi bi-box-arrow-in-right"></i>
				<span>Login</span>
		</a></li>
		<!-- End Login Page Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			href="pages-error-404.html"> <i class="bi bi-bug-fill"></i> <span>Error
					404</span>
		</a></li>
		<!-- End Error 404 Page Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			href="pages-blank.html"> <i class="bi bi-file-earmark"></i> <span>Khác</span>
		</a></li>
		<!-- End Blank Page Nav -->

	</ul>

</aside>
<!-- End Sidebar-->