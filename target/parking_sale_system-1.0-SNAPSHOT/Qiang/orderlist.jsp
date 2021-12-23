<%--
  Created by IntelliJ IDEA.
  User: 95243
  Date: 2021/11/23
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title></title>
    <!-- Bootstrap Styles-->
    <link href="<%=path%>/assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="<%=path%>/assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="<%=path%>/assets/css/custom-styles.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
</head>
<body>
<%
    String mess=(String)session.getAttribute("message");
    if("".equals(mess)  || mess==null){

    }
    else{%>
<script type="text/javascript">
    alert("<%=mess%>");
</script>
<% session.setAttribute("message", "");}%>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<%=path%>/Qiang/index.jsp"><i class="fa fa-comments"></i>
                <strong>开发商管理后台</strong></a>
        </div>
        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Doe</strong>
                                <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Smith</strong>
                                <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Smith</strong>
                                <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>Read All Messages</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-messages -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 1</strong>
                                    <span class="pull-right text-muted">60% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete (success)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 2</strong>
                                    <span class="pull-right text-muted">28% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                                        <span class="sr-only">28% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 3</strong>
                                    <span class="pull-right text-muted">60% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete (warning)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 4</strong>
                                    <span class="pull-right text-muted">85% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                        <span class="sr-only">85% Complete (danger)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Tasks</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-tasks -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> New Comment
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                <span class="pull-right text-muted small">12 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-envelope fa-fw"></i> Message Sent
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-tasks fa-fw"></i> New Task
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-alerts -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="<%=path%>/developer/select_developerInfo"><i class="fa fa-user fa-fw"></i>公司信息</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li>
                    <a href="<%=path%>/Qiang/index.jsp"><i class="fa fa-dashboard"></i>首页</a>
                </li>
                <li class="">
                    <a href="#"><i class="fa fa-desktop"></i>车位出售<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<%=path%>/Qiang/parklist.jsp">销售车位管理</a>
                        </li>
                        <li>
                            <a href="<%=path%>/Qiang/addparklist.jsp">添加销售车位</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a  href="<%=path%>/Qiang/activitylist.jsp"><i class="fa fa-bar-chart-o"></i>活动管理</a>
                </li>
                <li>
                    <a class="active-menu" href="<%=path%>/Qiang/orderlist.jsp"><i class="fa fa-desktop"></i>订单管理</a>
                </li>
                <li>
                    <a href="<%=path%>/Qiang/residential.jsp"><i class="fa fa-desktop"></i>小区管理</a>
                </li>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        订单管理界面
                    </h1>
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <!--    Context Classes  -->
                                <div class="panel panel-default">
                                    <div class="alert alert-success">
                                        <strong>订单详情</strong>
                                    </div>
                                    <div class="col-xs-12">
                                        <form action="${pageContext.request.contextPath}/developer/now_orderlist" method="post" name="page">
                                            <div class="form-group input-group col-xs-12 col-sm-8" style="float: left">
                                                <input type="hidden" id="pageNum" name="pageNum" value="${pageNum}">
                                                <input type="text" class="form-control" name="search">
                                                <span class="input-group-btn">
                                                    <button class="btn btn-default" type="submit"><i class="fa fa-search"></i>
                                                    </button>
                                                </span>
                                            </div>
                                            <div class="form-group col-xs-12 col-sm-2">
                                                <select name="pageSize" class="form-control">
                                                    <option value="${pageSize}" selected hidden>每页${pageSize}条</option>
                                                    <option value ="5">每页5条</option>
                                                    <option value ="10">每页10条</option>
                                                    <option value="20">每页20条</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-xs-12 col-sm-1">
                                                <button class="btn btn-success" name="before" onclick="var p = document.getElementById('pageNum'); p.value=Number(p.value)-1;">上一页</button>
                                            </div>
                                            <div class="form-group col-xs-12 col-sm-1">
                                                <button class="btn btn-success" name="after" onclick="var p = document.getElementById('pageNum'); p.value=Number(p.value)+1;">下一页</button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-xs-12">
                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                    <tr>
                                                        <th>订单编号</th>
                                                        <th>车位编号</th>
                                                        <th>订单创建时间</th>
                                                        <th>已交定金</th>
                                                        <th>订单状态</th>
                                                        <th>尾款时间</th>
                                                        <th>详情操作</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${orderlist}" var="order" varStatus="status">
                                                        <tr>
                                                            <th>${order.orderId }</th>
                                                            <th>${order.parkingSpaceId}</th>
                                                            <th><fmt:formatDate value="${order.orderTime}" pattern="yyyy/MM/dd HH:mm:ss"/></th>
                                                            <th>${order.deposit}</th>
                                                            <th><c:if test="${order.state==1}">待处理</c:if>
                                                                <c:if test="${order.state==2}">等待用户确认</c:if>
                                                                <c:if test="${order.state==3}">尾款阶段</c:if>
                                                                <c:if test="${order.state==4}">交易完成</c:if>
                                                                <c:if test="${order.state==5}">订单取消</c:if>
                                                                <c:if test="${order.state==6}">订单超时</c:if>
                                                            </th>
                                                            <th><fmt:formatDate value="${order.finalPaymentTime}" pattern="yyyy/MM/dd"/></th>

                                                            <th><a style="color: #0b6cbc" data-toggle="modal" data-target="#${status.count}">详情处理</a></th>
                                                        </tr>
                                                    <div class="modal fade" id="${status.count}" tabindex="-1" role="dialog"
                                                         aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button type="button" class="close" data-dismiss="modal"
                                                                            aria-hidden="true">&times;
                                                                    </button>
                                                                    <h4 class="modal-title">订单信息</h4>
                                                                </div>
                                                                <br>
                                                                <form action="${pageContext.request.contextPath}/developer/modify_orderlist" method="post" enctype="multipart/form-data">
                                                                    <div class="form-group">
                                                                        <label class="col-sm-3 control-label no-padding-right">订单编号:</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" value="${order.orderId}" readonly="readonly"
                                                                                   class="col-xs-10 col-sm-5" name="orderId"/>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="form-group">
                                                                        <label class="col-sm-3 control-label no-padding-right">车位编号:</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" name="parkingSpaceId"
                                                                                   value="${order.parkingSpaceId}" readonly="readonly"
                                                                                   class="col-xs-10 col-sm-5"/>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="form-group">
                                                                        <label class="col-sm-3 control-label no-padding-right">合同甲方:</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" name="contractSignatory"
                                                                                   value="${order.contractSignatory}" readonly="readonly"
                                                                                   class="col-xs-10 col-sm-5"/>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="form-group">
                                                                        <label class="col-sm-3 control-label no-padding-right">合同乙方:</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" name="contractInitiator"
                                                                                   value="${order.contractInitiator}"
                                                                                   class="col-xs-10 col-sm-5"/>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="form-group">
                                                                        <label class="col-sm-3 control-label no-padding-right">合同内容:</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="file" name="contractContent"
                                                                                   class="col-xs-10 col-sm-5"/>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="form-group">
                                                                        <label class="col-sm-3 control-label no-padding-right">订单时间:</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" name="orderTime" class="col-xs-10 col-sm-5"
                                                                                   value="<fmt:formatDate value="${order.orderTime}" pattern="yyyy/MM/dd HH:mm:ss"/>" readonly="readonly"/>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="form-group">
                                                                        <label class="col-sm-3 control-label no-padding-right">最终价格:</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" name="finalPrice" class="col-xs-10 col-sm-5" value="${order.finalPrice}"/>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="form-group">
                                                                        <label class="col-sm-3 control-label no-padding-right">已付定金:</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" name="deposit" class="col-xs-10 col-sm-5" value="${order.deposit}" readonly="readonly"/>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="form-group">
                                                                        <label class="col-sm-3 control-label no-padding-right">订单状态:</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="text" name="state" class="col-xs-10 col-sm-5" value="${order.state}" readonly="readonly"/>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <div class="form-group">
                                                                        <label class="col-sm-3 control-label no-padding-right">尾款时间:</label>
                                                                        <div class="col-sm-9">
                                                                            <input type="date" name="finalPaymentTime" class="col-xs-10 col-sm-5" value="<fmt:formatDate value="${order.finalPaymentTime}" pattern="yyyy/MM/dd HH:mm:ss"/>"/>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                    <br>
                                                                    <div class="row">
                                                                        <div style="text-align: center">
                                                                            <img src="<%=path%>/contract/${order.orderId}.jpg" alt="合同图片" class="img-thumbnail"  style="width:40%;height: 80%;">
                                                                            <img src="<%=path%>/sign/${order.orderId}.png" alt="签名图片" class="img-thumbnail"  style="width:40%;height: 80%;">
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button class="btn btn-info" type="submit">
                                                                            <i class="icon-ok bigger-110"></i>
                                                                            提交
                                                                        </button>
                                                                        <button type="button" class="btn btn-default"
                                                                                data-dismiss="modal">关闭
                                                                        </button>
                                                                    </div>
                                                                </form>
                                                            </div><!-- /.modal-content -->
                                                        </div><!-- /.modal -->
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                                <div class="center-block">当前第${pageNum}页</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--  end  Context Classes  -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /. ROW  -->
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="<%=path%>/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="<%=path%>/assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="<%=path%>/assets/js/jquery.metisMenu.js"></script>
<!-- Custom Js -->
<script src="<%=path%>/assets/js/custom-scripts.js"></script>

</body>
</html>
