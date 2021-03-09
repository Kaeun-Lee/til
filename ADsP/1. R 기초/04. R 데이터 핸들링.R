# 1. R 기초

# 04. R 데이터 핸들링 ----

# 벡터형 변수 ----
b <- c("a","b","c")
b
b[2]             # b벡터 내의 n번째 원소값
b[-3]            # n번째 원소에 해당하는 값을 제외한 b벡터
b[c(1,2)]        # b벡터의 1,2번째 위치 값


# 1) 반복구문과 조건문 ----
# (1) for 반복 구문
a <- c()         # 아무 값도 포함되지 않는 a벡터
for(i in 1:9)    # for문 전체 블록 후 실행
{a[i]=i*i
}
a

# (2) while 반복 구문
x=1
while(x<5) {
  x=x+1
  print(x)
}

# (3) if~else 조건문
# Ifelse(조건문, 조건을 만족할 때 반환하는 값, 조건을 만족하지 않을 때 반환하는 값)
gender <- c("m","f","m","f","m")
gender <- ifelse(gender=="f",0,1)
gender


# 2) 사용자 정의 함수 ----
# Function 명령어 : 사용자가 직접 함수를 구성하고 사용
foruse <- function(a) {
  isum <- 0
  for(i in 1:a) {
    isum=isum+i
  }
  print(isum)
}
foruse(3)


# 3) 기타 유용한 기능들 ----
# (1) paste 명령어 : 입력 받은 문자열들을 하나로 붙임
# 'sep=' 옵션      : 붙이고자 하는 문자열들 사이에 삽입 
number <- 1:5
alphabet <- c("a","b","c")
paste(number,alphabet)
paste(number,alphabet, sep=" to the ")

# (2) substr
country <- c("Korea","Japan")
substr(country,1,2)   # country 국가명의 1번 글자부터 2개의 글자만을 추출

# (3) 자료형 데이터 구조 변환
# as.data.frame(x) : 데이터 프레임 형식으로 변환
# as.list(x)       : 리스트 형식으로 변환
# as.matrix(x)     : 행렬 형식으로 변환
# as.vector(x)     : 벡터 형식으로 변환
# as.factor(x)     : factor 형식으로 변환
as.integer(3.14)     # 실수형 벡터를 정수형 벡터로 변환
as.numeric("foo")    # 수치형 벡터로 변환, 'foo'는 숫자형 자료가 아니므로 결측치인 'NA'가 출력
as.numeric(FALSE)    # 논리값을 수치형으로 변환
as.logical(0.45)

# (4) 문자열을 날짜로 변환
# as.Date        : 기본적으로 문자열이 yyyy-mm-dd일 것으로 가정
# 'format=' 옵션 : 입력되는 날짜의 형식을 지정
as.Date("2018-01-13")
as.Date("01/13/2018", format="%m/%d/%Y")

# (5) 날짜 변환
format(Sys.Date())                      # 현재 날짜
format(Sys.Date(), format="%m/%d/%Y")   # mm/dd/yyyy 형식으로 문자열이 출력
format(Sys.Date(), '%a')                # 현재 요일
format(Sys.Date(), '%b')                # 현재 월
format(Sys.Date(), '%y')                # 현재 연도를 두 자리 숫자로 출력
format(Sys.Date(), '%Y')                # 현재 연도를 네 자리 숫자로 출력
