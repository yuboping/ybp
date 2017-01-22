<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>常见问题</title>
<%@include file="../../common/head.jsp"%>
</head>
<body onload="loaded();">
  <div id="">
      <!-- <div data-role="header" data-position="fixed" class="zll_header" data-tap-toggle="false">
          <a data-ajax="false" href="javascript:history.go(-1);"  class="ui-btn ui-corner-all ui-btn-icon-notext ui-icon-back">返回</a>
          <h2>理赔求助</h2>
      </div> -->
      <header>
          <div class="header-left" onclick="history.go(-1);">
            <div class="header-btn-area">
                <!-- <i class="iconfont icon-fanhuijiantou"></i> --> 
                <%-- <img src="${staticPath }/img/icon/left.png" width="15px" alt="" height="15px"/> --%>
                <!-- <span class="left-btn"></span> -->
                <span class="icon_img back"></span>
            </div>
          </div>
          <div class="header-tit"><h2>常见问题</h2></div>
          <div class="header-right">
            
          </div>
      </header>
      <!--内容页-->
      <div id="wrapper" >
          <div id="scroller">
       <main class="bgcffffff ui-content">
         <br>   
         <div class="service_desc">
            <p class="fwb">1.保钱袋</p>
            <p class=" textindet10">Q1：如何进行投保？</p>
            <p class=" textindet10">A1：进入保钱袋页面>选择想购买的保险>进入保险的详细介绍页面>点击立即投保按钮>填写购买保险需要的相关资料>最后核实资料并成功付款即可成功购买保险</p>
            <br> 
            <p class=" textindet10">Q2：保险只可以给自己买保险么？可以给别人购买么？</p>
            <p class=" textindet10">A2：是可以给别人买的。只要被投保人信息填写你要帮忙购买的人就行了。如果默认投保人和被投保人是一个人的话，可以在‘投保人信息-与被保人关系’处修改您与被投保人的关系，从而修改被投保人</p>
            <br>
            <p class=" textindet10">Q3：购买保险时使用什么方式支付？</p>
            <p class=" textindet10">A3：购买中国人民保险的保险时，可以使用支付宝支付和银联快捷支付购买太平洋保险的保险时，可以使用银联在线支付</p>
            <br>
            <p class=" textindet10">Q4：如何进行保单查询？</p>
            <p class=" textindet10">A4：1.太平洋保险</p>
            <p class=" textindet30">1）请登录太平洋保险官网</p>
            <p class=" textindet30">http://www.cpic.com.cn/</p>
            <p class=" textindet30">2）点击太平洋保险官网的保单查询后，输入个人信息即可查询到个人相关保单</p>
            <p class=" textindet20">2.中国人民保险官网</p>
            <p class=" textindet30">1）请登录中国人民保险官网 </p>
            <p class=" textindet30">http://www.epicc.com.cn/</p>
            <p class=" textindet30">2）点击中国人民保险官网的保单查询后，输入保单号和个人信息即可查询到个人相保单 </p>
            <br>
            <p class=" textindet10">Q5：购买了保险如何理赔？</p>
            <p class=" textindet10">A5：1.太平洋保险？</p>
            <p class=" textindet30">1）太平洋保险理赔热线：95500-3-2</p>
            <p class=" textindet30">2）太平洋保险理赔进度查询：</p>
            <p class=" textindet40">a. 请登录太平洋保险官网</p>
            <p class=" textindet40"> http://www.cpic.com.cn/</p>
            <p class=" textindet40">b. 点击太平洋保险官网的理赔查询后，输入个人信息即可查询到保单理赔进度</p>
            <p class=" textindet20">2.中国人民保险官网</p>
            <p class=" textindet30">1）中国人民保险理赔热线：95518</p>
            <p class=" textindet30">2）中国人民保险理赔进度查询：</p>
            <p class=" textindet40">a. 请登录中国人民保险官网</p>
            <p class=" textindet40"> http://www.epicc.com.cn/</p>
            <p class=" textindet40">b. 点击中国人民保险官网的理赔进度查询后，输入保单号和个人信息即可查询到保单理赔进度</p>
            <br>
            <p class=" textindet10">Q6：我的保险能否中途退保？有没有退保手续费？如何退保？</p>
            <p class=" textindet10">A6：可以联系相应的保险公司咨询，现不支持线上退保</p>
            <br>
            <p class=" textindet10">Q7：什么是保险期限？</p>
            <p class=" textindet10">A7：保险期限：指您持有的xx险保险合同的有限期限，在此期限内您将按保险合同的约定获得相应的投资收益与保障。若您中途操作退保，保险合同将解除，退保金将按相应规则退回，具体详情请咨询对应的保险公司</p>
            <br>
            <p class=" textindet10">Q8自己在网上投保和通过电话或4S店购买有什么区别吗？</p>
            <p class=" textindet10">A8：只是选择的投保方式不同，但后续享受的理赔服务均相同，绝不打折。</p>
            <p class=" textindet10">目前选择网上投保方式较其它投保方式优势在于：</p>
            <p class=" textindet10">1）您可以自主选择要投保的险种和保障额度，保费明细清晰。 </p>
            <p class=" textindet10">2）您的投保的车辆信息、投保人信息等均可自主填写，避免因信息错误导致后续理赔问题。  </p>
            <p class=" textindet10">3）支持7*24小时随时投保，使用网银支付，足不出户就可以拿到保单。</p>
            <br>
            <p class=" textindet10">Q9：保险的身故收益人是什么？</p>
            <p class=" textindet10">A9：由于网络投保的特殊性，被保险人身故后按照法定顺序继承（即父母、子女、配偶平均分配）</p>
            <br>
            <p class=" textindet10">Q10：如何查询我的保险是否投保成功？</p>
            <p class=" textindet10">A10：当您购买成功后，会有相应的保险公司给您发送购买成功的短信（包含保单号）</p>
         </div>
         <br>   
         <div class="service_desc">
            <p class="fwb">2.中国人民保险</p>
            <p class=" textindet10">Q1：购买人保的个人账户资金安全险时，投保人信息‘您的所在的城市’为什么在天津？</p>
            <p class=" textindet10">A1：默认城市为天津，对您的理赔和退保没有任何影响</p>
            <br>
            <p class=" textindet10">Q2：人保的个人账户资金安全险里面被保险人名下的所有账户指的是什么？</p>
            <p class=" textindet10">A2：被保险人名下的账户包括：</p>
            <p class=" textindet20">1）被保险人名下的存折； </p>
            <p class=" textindet20">2）银行卡，包括：①被保险人名下的借记卡； ②被保险人名下的信用卡主卡及与其关联的附属卡；③以被保险人为持卡人的信用卡附属卡；</p>
            <p class=" textindet20">3）被保险人名下的网银账户； </p>
            <p class=" textindet20">4）被保险人名下的第三方支付账户（包括但不限于支付宝、财付通、钱袋宝、微信钱包）；</p>
            <p class=" textindet20">5）其他经保险人同意的被保险人的个人账户也可以成为本保险合同的保险标的。</p>
            <br>
            <p class=" textindet10">Q3：购买人保的个人账户资金安全险起保时间是当天吗？</p>
            <p class=" textindet10">A3：起保时间是投保成功后的次日零时。</p>
            <br>
            <p class=" textindet10">Q4：什么情况下人保的账户资金损失可以赔付？</p>
            <p class=" textindet10">A4：1）被保险人的个人账户因他人盗刷、盗用、复制而导致的资金损失。 </p>
            <p class=" textindet20">2）被保险人的个人账户被他人在银行柜面及ATM机器上盗取或转账导致的资金损失。 </p>
            <p class=" textindet20">3）被保险人在被歹徒胁迫的状态下，将其个人账户交给他人使用，或将个人账户的账号及密码透露给他人导致的资金损失。 </p>
            <p class=" textindet20">4）被保险人名下的信用卡主卡所关联的附属卡的持卡人在被歹徒胁迫的状态下，将附属卡交给他人使用，或透露该附属卡账号及密码给他人导致的资金损失。</p>
            <br>
            <p class=" textindet10">Q5：人保理赔材料都需要什么？</p>
            <p class=" textindet10">A5：1）保单或保险单号； </p>
            <p class=" textindet20">2）被保险人的身份证明；</p>
            <p class=" textindet20">3）银行卡及网银账户被盗刷、盗用、盗取、转账等相关的交易记录；</p>
            <p class=" textindet20">4）有关损失资金的流向记录，比如涉及转账，需提供收款方姓名及账号等信息；</p>
            <p class=" textindet20">5）挂失或冻结时间证明；公安机关证明</p>
            <br>
            <p class=" textindet10">Q6：如果保单号忘记了怎么办？</p>
            <p class=" textindet10">A6：中国人民保险可以拨打4001234567转2号键。 </p>
            <br>
            <p class=" textindet10">Q7：为什么在网上查询不到我的保单信息？</p>
            <p class=" textindet10">A7：请您先核实保单号和被保险人证件号是否正确。证件号码是身份证号码，请输入被保险人的身份证号码。如信息正确却查询不到信息，可能是数据库暂时异常，建议您可以直接拨打95518转2号键进行查询。</p>
            <br>
            <p class=" textindet10">Q8：如何进行退保？</p>
            <p class=" textindet10">A8：目前暂不支持网上自助退保功能，建议您需要携带相关证件前去投保当地营业厅办理退保。</p>
            <p class=" textindet10">1）根据国家规定，交强险一旦投保是不允许随意退保；</p>
            <p class=" textindet10">2）商业险（如出险需结案后办理）退保需要车主或车主开具的委托协议书前往当地营业厅并提供开户银行的相关信息，待营业厅审核处理完毕后，将退保费用打至银行卡内。</p>
            <p class=" textindet10">3）支付成功后，如需退保，请您于保单生效日期前前往保单载明的营业厅办理。备注：详情请咨询95518或者营业厅。</p>
         </div>
         <br>
         <div class="service_desc">
            <p class="fwb">3.太平洋保险</p>
            <p class=" textindet10">Q1：太平洋保险的投保流程？</p>
            <p class=" textindet10">A1：选择保险方案>填写投保信息>确认信息及金额>在线支付</p>
            <br>
            <p class=" textindet10">Q2：证件类型、证件号码的填写要注意什么？</p>
            <p class=" textindet10">A2：填写的证件类型、证件号码必须与投保时提供的证件类型、证件号码保持一致。</p>
            <br>
            <p class=" textindet10">Q3：购买儿童预防接种险的要求是什么？需要提供什么？</p>
            <p class=" textindet10">A3：出生满30天以上身体健康的儿童，拥有有效身份证明（身份证、户口本、出生证明），身体健康，能正常生活和学校的儿童，青少年。需提供被保儿童的身份证号和姓名</p>
            <br>
            <p class=" textindet10">Q4：如果没有得病少儿疫苗保险保费会返还么？</p>
            <p class=" textindet10">A4：此类保险属于消费型保险，不返还</p>
            <br>
            <p class=" textindet10">Q5：太平洋理赔流程？</p>
            <p class=" textindet10">A5：发生事故，被保险人或者投保人向保险人报案>被保险人或者投保人对事故进行施救，对事故现场进行保护>被保险人或者投保人配合进行事故查验>如由第三者造成事故，被保险人或者投保人需想第三者进行索赔>被保险人或者投保人提交索赔材料>保险人进行案件处理>保险人将处理结果通知被保险人或者投保人>保险双方办理案件完结手续，案件处理完结</p>
            <br>
            <p class=" textindet10">Q6：报案必须提供的信息大致有哪些？</p>
            <p class=" textindet10">A6：被保险人姓名、证件类型、证件号码、性别、出险地区、出险日期、出险经过以及报案人姓名、性别、联系电话等。若您购买的是高端健康险产品，请您务必关注保险合同、服务手册关于"预授权"的约定，并按照相关约定及时申请预授权。</p>
            <br>
            <p class=" textindet10">Q7:如何获得理赔申请相关表格？</p>
            <p class=" textindet10">A7：您可通向您的保单服务人员索取、前来太保安联的服务柜台免费领取、从太保安联的网站（网址为：www.cpic.com.cn/health）下载打印。若您购买的是高端健康险产品，您还可以咨询我们的直付医院，从直付医院获取相关单证。 </p>
            <br>
            <p class=" textindet10">Q8：理赔申请中的相关疑问如何咨询？</p>
            <p class=" textindet10">A8:您可以咨询您的保单服务人员，或拨打全国统一服务热线（95500）以咨询详细的信息。 </p>
            <br>
            <p class=" textindet10">Q9：太平洋退保有什么要求？</p>
            <p class=" textindet10">A9：在保险合同成立后，您可以书面形式通知保险公司解除合同并前往太平洋保险营业柜台办理（保险公司已根据本保险合同约定给付保险金的除外），不支持网上退保。</p>
            <p class=" textindet10">您解除保险合同时，应提供下列证明文件和资料：</p>
            <p class=" textindet10">1）保险合同解除申请书</p>
            <p class=" textindet10">2）保险单原件</p>
            <p class=" textindet10">3）保险费交付凭证</p>
            <p class=" textindet10">4）投保人身份证明或投保单位证明</p>
            <p class=" textindet10">您要求解除保险合同，自保险公司接到保险合同解除申请书之时起，保险合同的效力终止。保险公司收到上述证明文件和资料之日起30日内退还保险单的未满期净保险费。</p>
            <p class=" textindet10">备注：详情请咨询95500或太平洋保险官网</p>
            
            
            
            
         <br>  
       </main>
       </div>
       </div>
       <!-- <script type="text/javascript">
          $("main").css("height",  window.screen.height - 54 + "px");
       </script>  --> 
       
    </div>
</body>
</html>