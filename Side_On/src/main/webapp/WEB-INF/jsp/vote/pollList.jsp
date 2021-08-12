<!-- pollList.jsp -->
<%@page import="java.util.Vector"%>
<%@page import="com.side_on.poll.PollListBean"%>
<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="com.side_on.poll.PollMgr"/>
<%request.setCharacterEncoding("EUC-KR");%>
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
                    <h1 class="display-5 fw-bolder">��ǥ�ϱ�</h1>
                    <p class="lead fw-normal text-white-80 mb-0">��ǥ����Ʈ�� Ȯ���ϰ� ��ǥ�� �غ�����.</p>
            </div>
            </div>
         </div>
        </header><br><br>
<div align="center">
<jsp:include page="pollForm.jsp"/>
<b>���� ����Ʈ</b>
<table>
	<tr>
		<td>
		<table  border="1">
			<tr>
				<th width="50">��ȣ</th>
				<th width="250" align="left">����</th>
				<th width="200">������~������</th>
			</tr>
			<%
					Vector<PollListBean> vlist = mgr.getPollList();
					for(int i=0;i<vlist.size();i++){
						PollListBean plBean = vlist.get(i);
						int num = plBean.getNum();
						String question = plBean.getQuestion();
						String sdate = plBean.getSdate();
						String edate = plBean.getEdate();
			%>
			<tr>
				<td align="center"><%=vlist.size()-i%></td>
				<td><a href="pollList?num=<%=num%>" style="color:black;"><%=question%></a></td>
				<td align="center"><%=sdate+"~"+edate%></td>
			</tr>
			<%}//---for%>
		</table>
		</td>
	</tr>
	<tr>
		<td align="center">
			<a href="pollInsert" style="color:black;">�����ۼ��ϱ�</a>
		</td>
	</tr>
</table>
</div>
</body>
</html>