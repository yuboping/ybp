<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>保单查询</title>
<%@include file="../../common/head.jsp"%>
<script type="text/javascript" src="${staticPath }/js/server/warranty_inquery.js?version=${version}"></script>
</head>
<body>
  <div id="service_content">
  	  <header>
        <div class="header-left" onclick="history.go(-1);">
          <div class="header-btn-area"> 
              <!-- <span class="left-btn"></span>   -->
              <span class="icon_img back"></span>
          </div> 
        </div>
        <div class="header-tit"><h2>保单查询</h2></div>
        <div class="header-right">
        </div>
      </header>
  	  <div id="wrapper" >
           <div id="scroller">
                <div class="bgcffffff">
                  <div class="form_div">
                      <%-- <div class="one_line">
                          <label for="warranty_number">保单号</label>
                          <input id="warranty_number" type="text" name="" placeholder="请输入查询的保单号" oninput="inquery_chk(this);">
                          <img alt="" class="hide" src="${staticPath }/img/icon/close-2.png" onclick="clear_input(this);"> 
                      </div>
                      <div class="one_line">
                          <label for="warranty_number">被保人</label>
                          <input id="recognizee" type="text" name="" placeholder="请输入被保人姓名" oninput="inquery_chk(this);">
                          <img alt="" class="hide" src="${staticPath }/img/icon/close-2.png" onclick="clear_input(this);"> 
                      </div> --%>
                      <div class="one_line">
                        <div class="left_area font14em">保单号</div>
                        <div class="right_area">
                          <input id="warranty_number" type="text" name="" placeholder="请输入查询的保单号" oninput="inquery_chk(this);">
                          <span class="btn_close_2" onclick="clear_input(this);"></span>
                          <%-- <img alt="" class="hide" src="${staticPath }/img/icon/close-2.png" onclick="clear_input(this);">  --%>
                          <span></span>
                        </div>
                      </div>
                      <div class="one_line">
                        <div class="left_area font14em">被保人</div>
                        <div class="right_area">
                            <!-- <input id="recognizee" type="text" name="" placeholder="请输入被保人姓名"> -->
                          <input id="recognizee" type="text" name="" placeholder="请输入被保人姓名" oninput="inquery_chk(this);">
                          <span class="btn_close_2" onclick="clear_input(this);"></span>
                          <%-- <img alt="" class="hide"  src="${staticPath }/img/icon/close-2.png" onclick="clear_input(this);">  --%>
                        </div>
                      </div> 
                  </div>
                </div>
                <div class="ui-content">
                    <button class="warranty_inquery_btn_disabled" id="inquery_submit_btn" disabled="true">
                                                                              查询
                    </button>
                </div>
                <!-- 找不到保单提示信息 -->
                <div class="warranty_none font808080 font11em" align="center">
                    <span class="lineE4E4E4" style="text-decoration:line-through;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;*找不到保单？&nbsp;<span class="lineE4E4E4" style="text-decoration:line-through;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </div>
                <div class="font808080 font11em" align="center">
                    购买保险成功的两天后才会显示哦
                </div>
                
                <!-- 加载中loading弹出框 -->
                <div class="upboxmax hide" id="loading_dialog">
                    <div class="outer">
                        <img alt="" src="${staticPath }/img/icon/wait.gif">
                    </div>
                </div>
                
                <!-- 无保单号弹框提示信息 -->
                <div id="none_number_fail" class="upboxmax hide">
                  <div class="bgcffffff none_number_fail">
                      <div id="" class="top_area" style=" ">
                          <img alt="" src="${staticPath}/img/icon/none_number_face.png" class="none_number_face">
                          <div align="center" class="info font14em fontffffff">
                              <span id="failInfo">未查到此保单号</span>
                          </div> 
                          <div class="inquery_ok_btn" align="center" onclick="$('#none_number_fail').addClass('hide');">
                            <img alt="" src="${staticPath}/img/icon/inquery_ok_btn.png">
                          </div>
                              <!-- <button class="btn_confirm" style="width:50%;margin-top:10px;" onclick="$('#none_number_fail').hide();">确定</button> -->
                      </div> 
                      
                      
                  </div>
                </div>
  	       </div>
       </div>
    </div>
</body>
</html>