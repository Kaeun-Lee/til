# 1. R 기초

# 05. R 그래픽 기능 ----

# 1) 산점도 그래프 ----
# x변수와 y변수의 값을 한눈에 살펴볼 수 있도록 평면에 점을 찍어 표현
# plot(x,y) : 산점도 패키지
math <- c(95,65,80,92,60,75,88,100,75,68)
scie <- c(90,70,80,95,65,70,85,95,70,60)
plot(math, scie)


# 2) 산점도 행렬 ----
# 여러 가지 변수들에 대해서 각각의 산점도를 살펴볼 수 있음
# pairs 명령어 : 범주(그룹)를 색깔로 구분하여 산점도 행렬을 그림
# 'main='      : 최상단에 제목 표기
# 'pch='       : 점의 모양
# 'bg='        : species에 따른 다른 색상 부여
pairs(iris[1:4], main = "Anderson's Iris Data -- 3 species",
      pch=21, bg=c("red", "green3", "blue")[unclass(iris$species)])


# 3) 히스토그램과 상자그림 ----
# hist(grade$grade, breaks=3)                                          # 계급구간의 수 설정
# hist(grade$grade, probability=T)                                     # 상대도수 히스토그램으로 출력
# hist(grade$grade, probability=T, main="학생성적", ylim=c(0, 0.04))   # 그래프 제목, Y축 설정
height <- c(182,160,165,170,163,160,181,166,159,145,175)
hist(height)
boxplot(height)
