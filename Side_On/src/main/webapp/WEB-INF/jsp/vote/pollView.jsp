<%@page import="java.util.Random"%>
<%@page import="com.side_on.poll.PollItemBean"%>
<%@page import="java.util.Vector"%>
<%@page import="com.side_on.poll.PollListBean"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="com.side_on.poll.PollMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		int listNum=Integer.parseInt(request.getParameter("num"));
		PollListBean plBean = mgr.getPoll(listNum);
		Vector<PollItemBean> vlist = mgr.getView(listNum);
		int sumCnt= mgr.sumCount(listNum);
		int maxCnt = mgr.getMaxCount(listNum);
%>
<html>
<head>
<title>JSP Poll</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<jsp:include page="../inc/header.jsp"/><br><br><br><br>
	
	<header class="bg-warning py-5">
            <div class="container px-1 px-lg-1 my-1">
                <div class="text-center text-white">
                <!-- ���...���... -->
                <div style="padding-top: 1%;">
                    <h1 class="display-5 fw-bolder">��ǥ���</h1>
                    <p class="lead fw-normal text-white-80 mb-0">��ǥ����� Ȯ���غ�����.</p>
            </div>
            </div>
         </div>
        </header><br><br>
<div align="center"><br/>
<table border="1" width="400">
	<tr>
		<td colspan="4"><b>Q : <%=plBean.getQuestion()%></b></td>
	</tr>
	<tr>
		<td colspan="3"><b>�� ��ǥ�� :  <%=sumCnt%> ��</b></td>
		<td width="40"><b>count(%)</b></td>
	</tr>
	<%
		Random r =new Random();
		for(int i =0; i<vlist.size();i++){
			PollItemBean piBean = vlist.get(i);
			String item[]=piBean.getItem();
			int count = piBean.getCount();
			int ratio = (int)(Math.round((double)count/sumCnt*100));
			String rgb="#"+Integer.toHexString(r.nextInt(255*255*255));
	%>		
	<tr>
		<td width="20" align="center"><%=i+1%></td>
		<td width="120">
			<%=item[0]%>
		</td>
		<td>
			<table width="<%=ratio%>"height="15">
			<tr><td bgcolor="<%=rgb%>"></td></tr>
			</table>
		</td>
		<td width="40"><%=count%>(<%=ratio %>)</td>
	</tr>
	<%}//--for%>
</table><br>
<a href="javascript:window.close()" style="color:black;">�ݱ�</a>
</div>
</body>
</html>