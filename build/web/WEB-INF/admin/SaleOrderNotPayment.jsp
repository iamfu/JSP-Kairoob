<%-- 
    Document   : SaleOrderNotPayment
    Created on : Apr 20, 2015, 11:23:38 PM
    Author     : nattha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Assets/css/reset.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.css"/>
        <link rel="stylesheet" href="Assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="Assets/css/stylish-portfolio.css"/>
        <link rel="stylesheet" href="Assets/css/kairoob.css"/>
        <link rel="stylesheet" href="Assets/css/custom.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.css"/>
        <link rel="stylesheet" href="Assets/font-awesome/css/font-awesome.min.css"/>
        <script type="text/javascript" src="Assets/js/jquery.js"></script>
        <script type="text/javascript" src="Assets/js/bootstrap.js"></script>
        <script type="text/javascript" src="Assets/js/custom.js"></script>
        <script type="text/javascript" src="Assets/js/jquery.metisMenu.js"></script>
        <title>SaleOrderNotPayment</title>
    </head>
    <body>
        <div id="wrapper">
            <jsp:include page="WEB-INF/include/header_admin.jsp"/>
            <!--/. NAV TOP-->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li class="text-center">
                            <img src="Assets/bg/find_user.png" class="user-image img-responsive"/>
                        </li>
                        <li>
                            <a href="MemberAllAdmin.jsp"><i class="fa fa-users fa-3x"></i>Members All</a>
                        </li>

                        <li>
                            <a href="PhotoListAdmin.jsp"><i class="fa fa-picture-o fa-3x"></i>Photos All</a>
                        </li>
                        <li>
                            <a href="PhotoEditAdmin.jsp"><i class="fa fa-picture-o fa-3x"></i><i class="fa fa-pencil-square-o fa-2x"></i>Photo edit details</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart fa-3x"></i>Sale DashBoard <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="SaleOrderAllDashBoard.jsp">สรุปยอดสั่งซื้อทั้งหมด</a>
                                </li>
                                <li>
                                    <a class="active-menu" href="SaleOrderNotPayment.jsp">สรุปยอดการสั่งซื้อที่ยังไม่ชำระเงิน</a>
                                </li>
                                <li>
                                    <a href="#">สรุปยอดการสั่งซื้อที่ชำระเงินแล้ว<span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="SaleOrderPaymentVisa.jsp">สรุปยอดการสั่งซื้อที่ชำระเงินผ่าน visa</a>
                                        </li>
                                        <li>
                                            <a href="SaleOrderPaymentPayPal.jsp">สรุปยอดการสั่งซื้อที่ชำระเงินผ่าน paypal</a>
                                        </li>
                                        <li>
                                            <a href="SaleOrderTransferMoney.jsp">สรุปยอดการสั่งซื้อที่ชำระเงินด้วยการโอนเงิน</a>
                                        </li>

                                    </ul>

                                </li>
                            </ul>
                        </li>  
                        <li>
                            <a href="#"><i class="fa fa-sign-out fa-3x"></i>Log out</a>
                        </li>	
                    </ul>
                </div>
            </nav>  
            <!-- /. NAV SIDE  -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="row"> 
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                สรุปยอดการสั่งซื้อที่ยังไม่ชำระเงิน 
                            </h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-12">
                            <div class="panel panel-red">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-money fa-5x"></i>
                                        </div>
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">120,000</div>
                                            <div>New Orders!</div>
                                        </div>
                                    </div>
                                </div>
                                <a href="SaleOrderNotPayment.jsp">
                                    <div class="panel-footer">
                                        <span class="pull-left">สรุปยอดการสั่งซื้อที่ยังไม่ชำระเงิน</span>
                                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row"> 
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                 ตารางสรุปยอดการสั่งซื้อที่ยังไม่ชำระเงิน
                            </h1>
                            <div class="table-responsive ">
                                <table class="table table-bordered">
                                    <tr>
                                        <td class="text-center" >No.</td>
                                        <td class="text-center">Id Card</td>
                                        <td class="text-center">First Name</td>
                                        <td class="text-center">Last Name</td>
                                        <td class="text-center">Tel.</td>
                                        <td class="text-center" >Photo Product</td>
                                        <td class="text-center">Payment Method</td>
                                    </tr>
                                    <tr> 
                                        <!--Coding-->
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!--./ Page-wrapper สมาชิกทั้งหมด -->
    </div>
    <!-- Page wrapper ทั้งหมด --->
</body>
</html>
