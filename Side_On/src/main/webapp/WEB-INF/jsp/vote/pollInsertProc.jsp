<!-- pollInsertProc.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="com.side_on.poll.PollMgr"/>
<jsp:useBean id="plBean" class="com.side_on.poll.PollListBean"/>
<jsp:setProperty property="*" name="plBean"/>
<jsp:useBean id="piBean" class="com.side_on.poll.PollItemBean"/>
<jsp:setProperty property="*" name="piBean"/>
<%
		boolean result = mgr.insertPoll(plBean, piBean);
		String msg = "���� �߰��� ���� �Ͽ����ϴ�.";
		String url = "pollInsert";
		if(result){
			msg = "���� �߰��� ���� �Ͽ����ϴ�.";
			url = "pollList";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>