# Ctrl+Shift+c : 주석 적용

# 1. 연산자(Operator) ----
# 1.1 산술 연산자 ----
# +, -, *, /, **, ^(커밋), %%, %/%
# 새로운 변수(열, Feature) (-열을 찾아내는 것) 만들 때에 사용함
3 + 4     # 나누기
3 - 4     # 빼기
3 * 4     # 곱하기
3 / 4     # 나누기
3 ** 4    # 거듭제곱
3 ^ 4     # 거듭제곱
13 %% 4   # 나머지
13 %/% 4  # 몫


# 1.2 할당 연산자 ----
# <- , ->, =
# 저장하는 기능(데이터 or 그래프)
# <-, -> : 일반적인 저장 기능
# =      : '함수 안에서' argument를 저장하는 기능
# Alt + - : '<-' 생성
x <- rnorm(n = 100, mean = 10, sd = 2)
# 난수 생성 (random normal distribution : 정규분표), 이건 지금 평균이 10이라는 뜻
# 변수를 생성하면 이것이 ram으로 올라간다 (ram: 메모리)
x


# 참고
# rnorm()     : 함수
# n, mean, sd : rnorm() 함수의 argument
10 ->  y
y


# 1.3 비교 연산자 ----
# >, >=, <, <=, ==, !=, !(not)    
# ex) 변수명 > 원하는 조건
# 전체 데이터에서 조건에 맞는 데이터를 추출할 때 사용
3 > 4
3 >= 4
3 < 4
3 <= 4
3 == 4
3 != 4
(3 == 4)
!(3 == 4)


# 1.4 논리 연산자 ----
# &, |(vertical var, pipe)
# 전체 데이터 중에서 조건에 맞는 데이터를 추출할 때 사용
# 조건 : 2개 이상일 때
# & : and
# | : or
# Alt + Shift + ↓     : 복사
# 블록잡고 + Ctrl + D : 삭제
(3 > 4) & (5 > 4)   
(3 > 4) | (5 > 4)   



# 2. 데이터의 유형(Type of Data) ----
# 자료
# a. 질적 자료(범주형 자료) : 문자, 숫자(but 숫자의 의미 X) : categorical
# b. 양적 자료(수치형 자료) : 숫자(숫자의 의미 O)

# 2.1 수치형(Numeric) ----
# (1) 정수(integer)
# (2) 실수(double)
x1 <- 10
x2 <- 10.2


# 2.2 문자형(Character) ----
x3 <- 'I see you.'
x4 <- "Love is not feeling."


# 2.3 논리형(Logical) ----
x5 <- TRUE   # T
x6 <- FALSE  # F

# NA(Not Available) = Missing Value = 결측치, 결측값
# 데이터 유형 확인하는 함수(논리형 결과값 반환)
# : mode(), is.numeric(), is.character(), is.logical(), is.null(), is.na() 등 mode(x1)
mode(x3)
mode(x5)
# 데이터 유형 변경하는 함수
# : as.numeric(), as.character(), as.logical() 등



# 3. Data ----
# 3.1 Vector ----
# 수치형 자료
# 하나의 열로 구성되어 있음
# 1차원 구조
# 하나의 데이터 유형만 가짐
# 집단으로 인식하지 않음
# 데이터 분석의 가장 기본 단위

# (1) Vector의 생성 ----
# c()
v1 <- c(3, 10, 12)
v2 <- c("Kim", "Lee", "Park")
V3 <- c(v1, v2)
v4 <- -3.3:5

# seq()
v1 <- seq(from = 1, to =5, by = 0.5)

# (2) Vector의 속성 ----
# 데이터의 개수 : length(Vector)
length(v1)

# 데이터의 추출 : 슬라이싱(slicing)
weight <- c(57, 81, 65, 49, 72)
weight[1]
weight[2:4]
weight[-c(1,4,5)]


# 3.2 Factor ----
# 범주형 자료
# 하나의 열로 구성되어 있음
# 1차원 구조
# 하나의 데이터 유형만 가짐
# 집단으로 인식함
# 데이터 분석의 가장 기본 단위
# Vector와 "집단으로 인식함"이라는 부분에서만 다름

# (1) Factor의 생성 ----
bt <- c("a", "o", "a", "ab", "o", "b")
bt_factor1 <- factor(bt)
bt_factor2 <- factor(bt, labels = c("A형", "AB형", "B형", "O형"))
bt_factor3 <- factor(bt, levels = c("a", "b", "ab", "o"))
bt_factor4 <- factor(bt,
                     levels = c("a", "b", "ab", "o"),
                     labels = c("A형", "B형", "AB형", "O형"),
                     ordered = TRUE)

# (2) Factor의 속성 ----
# 집단의 개수
nlevels(bt_factor1)

# 집단의 이름과 집단의 순서
levels(bt_factor1)


# 3.3 Data.Frame ----
# 행과 열로 구성되어 있음
# 2차원 구조
# 다른 열은 다른 데이터 유형을 가질 수 있음
id <- 1:3
bt <- c("a", "b", "o")
age <- c(10, 20, 30)
survey <- data.frame(id, bt, age)


# 3.4 List ----
# 중급 이상의 데이터 분석의 결과는 대부분 List
# 1차원 구조
# 가장 유연한 형태의 데이터(다른 사이즈를 가질 수 있다)
s1 <- 10
v1 <- 1:10
f1 <- factor(c("A", "O", "A", "AB", "O", "B"))
df1 <- data.frame(id = 1:3, age = c(20,30,40))
result <- list(s1, v1, f1, df1)


# 리스트 슬라이싱
# a. 대괄호 하나 쓰는 것
# 최종적인 결과가 리스트
result[2]

# b. 대괄호 두 개 쓰는 것
# 최종적인 결과가 해당 원소의 데이터 형태
result[[2]]



# 4. 외부 데이터 읽어오기 ----
# 4.1 txt ----
# (메모리를 적게 차지하면서 많은 데이터를 저장함, 단점은 보기 어려움)
# data <- read.table(file              = "directory/filename.txt,
#                    header            = TRUE or FALSE,
#                    sep               = " " or "," or "\t",
#                    stringsAsFactors  = TRUE or FALSE)
# header = TRUE이면 data에 있는 column명을 그대로 쓴다는 것
# stringAsFactors = TRUE이면 문자로 되어있는 열을 Factor로 만든다는 것
favor <- read.table(file             = "D:/KCISA/favor.txt",
                    header           = TRUE,
                    sep              = ',',
                    stringsAsFactors = TRUE)
favor

# favor라는 data frame에서 하나의 열만 보고 싶을 때 $사용
mean(favor$culture)  # 문화비로 평균 얼마를 사용하는지 확인


# 4.2 csv ----
# data <- read.csv(file             = "directory/filename.csv",
#                  header           = TRUE or FALSE,
#                  stringsAsFactors = TRUE or FALSE)
hope <- read.csv(file             = 'D:/KCISA/hope.csv',
                 header           = TRUE,
                 stringsAsFactors = TRUE)
hope


# 4.3 xlsx ----
# R의 기본 기능에서 못 읽어옴
# R의 새로운 기능을 설치하고 로딩하기를 해야 함
# 패키지 설치하기 : install.packages("패키지명")
install.packages("readxl")  
# 미국에 있는 R 서버에 가서 받아옴. 그래서 압축 파일을 내 컴퓨터 파일 어딘가에 저장

# 패키지 로딩하기 : library(패키지명)
# install해도 library 사용할 때마다 불러와야 함
library(readxl)


# data <- readxl::read_excel(path      = "directory/filename.xlsx",
#                            sheet     = "sheet_name" or sheet_index,
#                            col_names = TRUE or FALSE)
culture <- readxl::read_excel(path      = "D:/KCISA/culture.xlsx",
                              sheet     = "DM",
                              col_names = TRUE)
View(culture)


# Alt + ↓, ↑ : 코드 내 이동
culture2 <- readxl::read_excel(path     = "D:/KCISA/culture.xlsx",
                              sheet     = 1,
                              col_names = TRUE)
View(culture2)


# 작업공간(Working Directory) ----
# 어느 드라이브의 어떤 폴더에 있는지? R을 분석하는 폴더는 공백없이 영어로!
# (1) 현재 설정된 작업공간 : getwd()
getwd()


# (2) 새로운 작업공간 설정하기 : setwd("directory")
setwd("d:/KCISA/")

culture3 <- readxl::read_excel(path     = "culture.xlsx",
                              sheet     = 1,
                              col_names = TRUE)
View(culture3)



# 5. 외부 데이터로 저장하기 ----
# 5.1 txt ----
# 5.2 csv ----
# 5.3 xlsx ---
# 패키지 : writexl
install.packages("writexl")
library(writexl)

# writexl : write_xlsx(data, 
#                      path = "directory/filename.xlsx")
writexl::write_xlsx(culture,
                    path = "culture_2020_1112_1037.xlsx")


# 6. RData로 저장하고 불러오기 ----
# 6.1 RData로 저장하기 ----
# RAM에 있는 rdata를 HDD(Hard Drive)에 rdata로 저장하기
# save(data, file = 'directory/filename.RData")  작업하다가 자리 비울 때마다 이거 실행해 주기
# .R : 프로그램 코드를 저장한 파일
# .RData : 작업하고 있는 데이터를 저장한 파일
save(culture, file = "culture_2020_1112_1050.RData") 
# 메모리에 있는게 하드로 저장됨


# 6.2 RData로 불러오기
# HDD에 있는 rdata를 RAM에 rdata로 올리는 기능
# load(file = "directory/filename.RData")
load(file = "culture_2020_1112_1050.RData")

