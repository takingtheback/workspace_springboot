# workspace_springboot
 Learn springboot

문제 발생 및 해결방법
1. Action: Consider defining a bean of type 'com.work.service.MemberService' in your configuration.

@Service  <- Annotaion 이 빠져 있는 상황

2. MemberDao.xml Wrong namespace. Expected 'com.work.dao.MemberDao' but found 'org.mybatis.example.BlogMapper'.
<mapper namespace="com.work.dao.MemberDao"> 로 변경

3. 미니프로젝트 첫날 발생한 문제
 BoardController 생성 -> BoardService 생성 -> BoardDao 생성 -> BoardDao.xml 생성 후 
 
 @Autowired
	public BoardService boardService; <- 정상 작성문
 
 public BoardService boardService; 만 작성하고 넘어가면  @Autowired 에 대한 오류가 뜨는 것이 아니라 
 서블릿 가동시  No active profile set, falling back to default profiles: default 오류 메세지가 뜨면서 서버 구동이 안될 수 있음
 엉뚱한 곳에서 문제를 찾으려고 시간낭비 심함                                     
                                      
                      
                                      
                              
                                      
                                     

