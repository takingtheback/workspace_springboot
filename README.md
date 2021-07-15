# workspace_springboot
 Learn springboot

문제 발생 및 해결방법
1. Action: Consider defining a bean of type 'com.work.service.MemberService' in your configuration.

@Service  <- Annotaion 이 빠져 있는 상황

2. MemberDao.xml Wrong namespace. Expected 'com.work.dao.MemberDao' but found 'org.mybatis.example.BlogMapper'.
<mapper namespace="com.work.dao.MemberDao"> 로 변경
