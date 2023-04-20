## 이름 : 장우찬 
## 학번 : 602377119 
## 결과 : 정상동작


* * *


### USArrests 데이터 셋 불러오기
 > <pre><code>data(USArrests)</code></pre> 

### 작업 디렉토리 설정
 > <pre><code>setwd('C:/midterm')</code></pre> 

### 현재 작업폴더 확인
 > <pre><code>getwd()</code></pre>

### USArrest 데이터 셋의 행 이름 추출하여 foo 변수에 저장
 > <pre><code>foo <- as.data.frame(USArrests)</code></pre>
 > <pre><code>foo <- row.names(foo)</code></pre>

### USArrests의 Assault 열을 추출하여 bar 변수에 저장
 > <pre><code>bar <- USArrests$Assault</code></pre>

### foo와 bar를 결합하여 foobar 라는 이름의 데이터 프레임 생성
 > <pre><code>foobar <- data.frame(foo, bar)</code></pre>

### wordcloud 이름의 패키지를 설치 및 사용 설정
 > <pre><code>install.packages("wordcloud")</code></pre>
 > <pre><code>library(wordcloud)</code></pre>

### wordcloud() 함수와 foobar 데이터 프레임을 이용하여 워드 클라우드 출력
 > <pre><code>wordcloud(words = foobar$foo, freq = foobar$bar)</code></pre>

### foobar 데이터 프레임을 csv 파일 포맷으로 저장. 파일명은 foobar
 > <pre><code>write.csv(foobar, file = "foobar.csv", row.names = FALSE)</code></pre>

### 사용한 변수와 데이터 프레임을 Rstudio에서 모두 삭제
 > <pre><code>rm(foo, bar, foobar, USArrests)</code></pre>
 > <pre><code>gc()</code></pre>
