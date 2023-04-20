# USArrests 데이터 셋 불러오기
data(USArrests)

# 작업 디렉토리 설정
setwd('C:/midterm')

#현재 작업폴더 확인
getwd()

# USArrest 데이터 셋의 행 이름 추출하여 foo 변수에 저장
foo <- as.data.frame(USArrests)
foo <- row.names(foo)
foo

# USArrests의 Assault 열을 추출하여 bar 변수에 저장
bar <- USArrests$Assault
bar

# foo와 bar를 결합하여 foobar 라는 이름의 데이터 프레임 생성
foobar <- data.frame(foo, bar)
foobar

# wordcloud 이름의 패키지를 설치 및 사용 설정
install.packages("wordcloud")
library(wordcloud)

# wordcloud() 함수와 foobar 데이터 프레임을 이용하여 워드 클라우드 출력
wordcloud(words = foobar$foo, freq = foobar$bar)

# foobar 데이터 프레임을 csv 파일 포맷으로 저장. 파일명은 foobar
write.csv(foobar, file = "foobar.csv", row.names = FALSE)

# 사용한 변수와 데이터 프레임을 Rstudio에서 모두 삭제
rm(foo, bar, foobar, USArrests)
gc() # 메모리 정리
