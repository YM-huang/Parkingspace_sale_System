<%--
  Created by IntelliJ IDEA.
  User: 95243
  Date: 2021/11/23
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  <script src="<%=path%>/assets/js/echarts.js" charset="utf-8"></script>
</head>
<body>
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
          <a class="active-menu" href="${pageContext.request.contextPath}/developer/statistic"><i class="fa fa-dashboard"></i>首页</a>
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
          <a href="<%=path%>/Qiang/orderlist.jsp"><i class="fa fa-desktop"></i>订单管理</a>
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
            欢迎您，${uid}
          </h1>
          <!--    Context Classes  -->
          <div class="row">
            <div class="col-md-4 col-sm-12 col-xs-12">
              <div class="panel panel-primary text-center no-boder bg-color-green green">
                <div class="panel-left pull-left green">
                  <i class="fa fa-bar-chart-o fa-5x"></i>

                </div>
                <div class="panel-right pull-right">
                  <h3>${parking_space}</h3>
                  <strong>上架数量</strong>
                </div>
              </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
              <div class="panel panel-primary text-center no-boder bg-color-blue blue">
                <div class="panel-left pull-left blue">
                  <i class="fa fa-shopping-cart fa-5x"></i>
                </div>

                <div class="panel-right pull-right">
                  <h3> ${order_wait}</h3>
                  <strong>待处理订单</strong>

                </div>
              </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
              <div class="panel panel-primary text-center no-boder bg-color-blue blue">
                <div class="panel-left pull-left blue">
                  <i class="fa fa-shopping-cart fa-5x"></i>

                </div>
                <div class="panel-right pull-right">
                  <h3>${order_ing} </h3>
                  <strong>待收款订单</strong>

                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 col-sm-12 col-xs-12">
              <div class="panel panel-primary text-center no-boder bg-color-brown brown">
                <div class="panel-left pull-left brown">
                  <i class="fa fa fa-money fa-5x"></i>

                </div>
                <div class="panel-right pull-right">
                  <h3>${money}</h3>
                  <strong>账户金额</strong>
                </div>
              </div>
            </div>

            <div class="col-md-4 col-sm-12 col-xs-12">
              <div class="panel panel-primary text-center no-boder bg-color-blue blue">
                <div class="panel-left pull-left blue">
                  <i class="fa fa-shopping-cart fa-5x"></i>

                </div>
                <div class="panel-right pull-right">
                  <h3>${order_finish}</h3>
                  <strong>已完成订单</strong>
                </div>
              </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
              <div class="panel panel-primary text-center no-boder bg-color-blue blue">
                <div class="panel-left pull-left blue">
                  <i class="fa fa-shopping-cart fa-5x"></i>
                </div>

                <div class="panel-right pull-right">
                  <h3>${order_stop} </h3>
                  <strong>被中止订单</strong>

                </div>
              </div>
            </div>

          </div>
          <div id = "theEcharts" style="width: 900px;height:500px;"></div>
                <!--  end  Context Classes  -->
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

<script type="text/javascript" charset="utf-8">

  var chartDom = document.getElementById('theEcharts');
  var myChart = echarts.init(chartDom);
  var option;
  option = {
    title: {
      text: '过去一星期订单情况'
    },
    tooltip: {
      trigger: 'axis'
    },
    legend: {
      data: ['待处理订单', '进行中订单', '交易成功', '交易失败','交易取消']
    },
    grid: {
      left: '3%',
      right: '4%',
      bottom: '3%',
      containLabel: true
    },
    toolbox: {
      feature: {
        saveAsImage: {}
      }
    },
    xAxis: {
      type: 'category',
      boundaryGap: false,
      data: [ <c:forEach var="data" items="${data1}" varStatus="status">
        "${data.date}",
        </c:forEach>]
    },
    yAxis: {
      type: 'value'
    },
    series: [
      {
        name: '待处理订单',
        type: 'line',
        stack: 'Total',
        data: [ <c:forEach var="data" items="${data1}" varStatus="status">
          ${data.count},
          </c:forEach>]
      },
      {
        name: '进行中订单',
        type: 'line',
        stack: 'Total',
        data: [ <c:forEach var="data" items="${data2}" varStatus="status">
          ${data.count},
          </c:forEach>]
      },
      {
        name: '交易成功',
        type: 'line',
        stack: 'Total',
        data: [ <c:forEach var="data" items="${data3}" varStatus="status">
          ${data.count},
          </c:forEach>]
      },
      {
        name: '交易失败',
        type: 'line',
        stack: 'Total',
        data: [<c:forEach var="data" items="${data4}" varStatus="status">
          ${data.count},
          </c:forEach>]
      },
      {
        name: '交易取消',
        type: 'line',
        stack: 'Total',
        data: [<c:forEach var="data" items="${data5}" varStatus="status">
          ${data.count},
          </c:forEach>]
      }
    ]
  };
  option && myChart.setOption(option);
</script>

</body>
</html>
