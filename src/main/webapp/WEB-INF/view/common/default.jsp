<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="ctxPath" value="${pageContext.request.contextPath}" ></c:set>
<c:set var="staticPath" value="${ctxPath}/static" ></c:set>
<c:set var="bannerPath" value="${ctxPath}/images/banner/" ></c:set>
<c:set var="version" value="20160919" ></c:set>
<c:set var="pageSize" value="10" ></c:set><!-- 列表页一页显示的条数 -->
<script type="text/javascript">
var project = {
		ctxPath:"${ctxPath}",
		staticPath:"${staticPath}",
		pageSize:10//列表页一页显示的条数
}
</script> 

