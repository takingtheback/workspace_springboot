<!-- pollFormProc.jsp -->
<%@ page  contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="com.side_on.poll.PollMgr"/>
<%
	int listNum=Integer.parseInt(request.getParameter("num"));
	String itemNum[] = request.getParameterValues("itemnum");
	boolean result = mgr.updatePoll(listNum, itemNum);
	String msg="��ǥ�� ���� �Ͽ����ϴ�.";
	if(result) msg="��ǥ�� �Ͽ����ϴ�.";
	String url = "pollList";
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>