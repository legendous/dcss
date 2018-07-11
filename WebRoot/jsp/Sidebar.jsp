<%@ page language="java" session="false"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

            <!-- Sidebar -->
            <ul class="nav navbar-nav side-nav" id="sidebar">
              
              <li class="collapsed-content"> 
                <ul>
                  <li class="search"><!-- Collapsed search pasting here at 768px --></li>
                </ul>
              </li>

              <li class="navigation" id="navigation">
                <a href="#" class="sidebar-toggle" data-toggle="#navigation">Navigation <i class="fa fa-angle-up"></i></a>
                
                <ul class="menu" id="menu">
                
				  <li class="dropdown open active"  id="flowMenu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-tachometer"></i> 流程任务 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="#" onclick="changeFlow('1')">
                          <i class="fa fa-caret-right"></i> 网银迁移
                        </a>
                      </li>
                      <li>
                        <a href="#" onclick="changeFlow('2')">
                          <i class="fa fa-caret-right"></i> 核心迁移
                        </a>
                      </li>
                    </ul>
                  </li>
				  
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-th-large"></i> 前台展示 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="#" onclick="changeAction('${flow_id}','flowCards')">
                          <i class="fa fa-list"></i> 卡式流程图
                        </a>
                      </li>
                      <li>
                        <a href="#" onclick="changeAction('${flow_id}','flowTable')">
                          <i class="fa fa-list"></i> 流程任务表
                        </a>
                      </li>
                      <li>
                        <a href="#" onclick="changeAction('${flow_id}','organization')">
                          <i class="fa fa-sitemap"></i> 人员组织架构
                        </a>
                      </li>
                      <li>
                        <a href="#" onclick="changeAction('${flow_id}','charts')">
                          <i class="fa fa-area-chart "></i> 仪表盘
                        </a>
                      </li>
                      <li>
                        <a href="#" onclick="changeAction('${flow_id}','progress')">
                          <i class="fa fa-bar-chart-o"></i> 进度
                        </a>
                      </li>
                    </ul>
                  </li>

                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-desktop"></i> 后台操作 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="#">
                          <i class="fa fa-pencil"></i> 任务状态
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-phone"></i> 进度确认
                        </a>
                      </li>
                    </ul>
                  </li>
                  
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-cog"></i> 设置管理 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="#" onclick="changeAction('','initFlow')">
                          <i class="fa fa-list"></i> 任务设置
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-user"></i> 人员管理
                        </a>
                      </li>
                    </ul>
                  </li>

                  <li>
                    <a href="#">
                      <i class="fa fa-cogs"></i> VCS配置
                    </a>
                  </li>


                </ul>

              
              
            </ul>
            <!-- Sidebar end -->
