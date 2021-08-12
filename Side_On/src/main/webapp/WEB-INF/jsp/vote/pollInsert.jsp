<%@ page contentType="text/html; charset=EUC-KR" %>
<html>
<head>
<title>JSP Poll</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function send() {
		f = document.frm;
		f.edate.value = f.edateY.value+"-"
		+ f.edateM.value+"-"+f.edateD.value;
		f.submit();
	}
</script>
</head>
<jsp:include page="../inc/header.jsp"/><br><br><br><br>
	
	<header class="bg-warning py-5">
            <div class="container px-1 px-lg-1 my-1">
                <div class="text-center text-white">
                <!-- ���...���... -->
                <div style="padding-top: 1%;">
                    <h1 class="display-5 fw-bolder">��ǥ�����</h1>
                    <p class="lead fw-normal text-white-80 mb-0">��ǥ�� ��������.</p>
            </div>
            </div>
         </div>
        </header>
	<div align="center">
		<br />
		<hr width="600" />
		<b>�����ۼ�</b>
		<hr width="600" />
		<form name="frm" method="post" action="pollInsertProc">
			<table border="1" width="500">
				<tr>
					<td><b>����</b></td>
					<td colspan="2"><input name="question" size="30"></td>
				</tr>
				<tr>
					<td rowspan="10"><b>�׸�</b></td>
					<%
						for (int i = 1; i <= 4; i++) {
							out.println("<td>" + (i * 2 - 1)
									+ ": <input name='item'></td>");
							out.println("<td>" + (i * 2)
									+ ": <input name='item'></td>");
							out.println("</tr>");
							if (i == 9) {
								out.println("");
							} else {
								out.println("<tr>");
							}
						}//for end
					%>
				<tr>
					<td>������</td>
					<td colspan=2><select name="edateY">
							<option value="2020">2020
							<option value="2021">2021
					</select>�� <select name="edateM">
							<%
								for (int i = 1; i <= 12; i++) {
									out.println("<option value='" + i + "'>" + i);
								}
							%>
					</select>�� <select name="edateD">
							<%
								for (int i = 1; i <= 31; i++) {
									out.println("<option value='" + i + "'>" + i);
								}
							%>
					</select>��</td>
				</tr>
				<tr>
					<td>������ǥ</td>
					<td colspan=2>
						<input type="radio" name="type" value="1" checked>yes 
						<input type="radio" name="type" value="0">no
					</td>
				</tr>
				<tr>
					<td colspan=3>
						<input type="button" value="�ۼ��ϱ�" onclick="send()"> 
						<input type="reset" value="�ٽþ���"> 
						<input type="button" value="����Ʈ" onClick="javascript:location.href='pollList'">
					</td>
				</tr>
			</table>
			<input type="hidden" name="sdate">
			<input type="hidden" name="edate">
		</form>
	</div>
</body>
</html>