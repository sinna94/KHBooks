# KHBooks
kh academy에서의 세미프로젝트

### 프로젝트 개요
동네 소규모 서점을 위한 서점 반응형 웹사이트 이다.

동네 소규모 서점은 웹사이트가 없기 때문에 도서에 대한 정보를 확인하려면
고객들이 방문해야만 하는 불편함이 있다. 
이런 불편함을 해결하기 위한 소규모 서점 사이트 이다.

고객은 서점의 책을 검색하고 구매할 수 있고
관리자는 책과 회원들을 관리할 수 있다.

궁극적으로 동네서점도 대기업(교보문고)과 같은 서비스를 그대로 이용이 
가능하도록 하는 주안점을 두었다.

### 개발 기간
19.01.04 ~ 19.01.28

### 개발 인원
6명
방지훈, 주홍범, 이충현, 황장운, 이향원, 최재웅

### 개발 환경
- Java 8
- Apache Tomcat 8.5
- Eclipse
- AWS - RDS (Oracle)

### 사용한 기술
- AJAX
- Kakao API (간편 로그인, [책 검색](https://sinna94.tistory.com/6))
- [SMTP](https://smujihoon.tistory.com/96) 
- Bootstrap 3 (반응형 웹)
- Naver map API
- Daum 우편번호 서비스 API
- [IAMPORT API (결제 시스템)](https://smujihoon.tistory.com/103)

### 기능
#### 회원 시스템 (방지훈, 주홍범)
- 로그인, 로그아웃 ([아이디 저장](https://smujihoon.tistory.com/93))
- 계정 찾기 (SMTP로 패스워드 찾기)
- 회원가입 ([패스워드 암호화](https://smujihoon.tistory.com/84), [아이디 중복체크 AJAX로 구현](https://smujihoon.tistory.com/95))
- 마이 페이지
- 찜 목록, 장바구니, 리뷰관리
- 정보 수정, 회원탈퇴
- 결제 시스템(IAMPORT API)

#### 도서 시스템 (이충현, 황장운)
- 도서 검색
- 카테고리
- 최근 본 목록
- 리뷰
#### 게시판, 관리자 시스템 (최재웅, 이향원)
- 공지사항
- 1:1 문의
- 부재 도서 신청
- 회원 정보 관리
- 도서 정보 관리
- 게시판 

