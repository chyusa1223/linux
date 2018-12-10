
This is for Linux Mint
=========================

## 1. Github  사용법

### 1.1 Github 명령어들 

### 1.2 Github 위키 및 문서 작성법

* 마크다운 기초 사용법 

   > [마크다운 기초](<https://gist.github.com/ihoneymon/652be052a0727ad59601>)

* 마크다운 인용, 취소선, url 드러나지 않게 링크하는 방법, 기울임체 등 

   > [마크다운_인용 및 취소선 ](https://github.com/sejong-interface/Interface_Manual/wiki/Git-%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0%233-README.md-%ED%8C%8C%EC%9D%BC-%EC%9E%91%EC%84%B1%ED%95%98%EA%B8%B0!)

* 마크다운 깃허브 도움말

   > [깃허브 공식 도움말](https://help.github.com/articles/basic-writing-and-formatting-syntax/)


## 2. Tmux 사용법 


## 3. 리눅스 명령어 및 쉘 

### 3.1 쉘이란?

쉘이란 키보드가 입력한 명령어를 운영체제에 전달하여 이 명령어를 실행하게 하는 프로그램이다. 
쉘이라는 이름 말그대로 커널의 반댓말로서 껍데기라는 의미를 가지고 있으며, UNIX/LINUX의 bash, zsh | window의 cmd 등이 이에 해당된다.
대부분의 리눅스 배포판은 bash라고 하는 GNU 프로젝트의 쉘 프로그램을 제공하며 bash라는 이름은 Bourne Again Shell에서 비롯되었다.
이는 스티브 본(Steve Bourne)이 개발한 최초 유닉스 쉘 프로그램인 sh의 확장판이라는 의미를 내포하고 있다.

> 참고 사항


## 4. 리눅스 명령어

* 리눅스 버전 확인 
```
cat /etc/issue 
cat /etc/redhat-release 
```
* 리눅스 커널 아키텍쳐 확인하기
```
uname -m 
```
## 4. 각종 에러들

* vim ymcd 서버 에러 대처 - Youcompleteme plugin의 문제
  > [해결방법](https://stackoverflow.com/questions/31421327/cmake-cxx-compiler-broken-while-compiling-with-cmake)
  ```
  sudo apt-get update
  sudo apt-get install -y build-essential
  ```
