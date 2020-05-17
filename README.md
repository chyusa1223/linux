
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
   ```
   터미널 : 시스템에 접속하여 입출력을 가능하게 하는 단말 장치 (하드웨어 혹은 소프트웨어)
   콘솔 : 콘솔은 터미널의 일종으로 시스템 제어 등을 위한 특수 목적의 터미널 
   
   즉 풀어서 작성하자면 터미널은 말그대로 말단의(terminal)을 의미하며 사용자와 물리적으로 직접 상호 작용하는 장치이다.
   쉘의 입장에서는 직접적으로 하드웨어를 다루기 보다는 논리적인 입출력 장치를 다루는 편이 좋고
   따라서 하드웨어에 대한 추상화가 이루어진다. 이러한 추상화된 입출력 장치또한 터미널이라고 지칭한다. 
   
   콘솔이란 대개 디스플레이 모니터와 키보드(혹은 다른 입력이 가능한 장치)가 조합된 장치를 의미한다. 
   콘솔이라는 용어 자체는 마이크로 컴퓨터나 메인프레임에 부착되어 있어, 
   시스템의 상황을 모니터하는데 사용되는 터미널을 의미해왔다.   
   
   실제로 리눅스를 실습하면서 gui환경에서 호출하는 것은 터미널 에뮬레이터로 가상의 터미널의 역할을 하며 
   사용자의 입력을 받아서 쉘에 전달해주고 쉘로 부터 결과를 받는다.  
   현재 실습 중인 리눅스 민트에서는 gnome-terminal-server를 사용하고 있으며, ssh, tmux등도 이에 해당한다.
   ```

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
  

This is for Linux Ubuntu 18.04 Init-Settings
=========================

## 1. 기초 작업 

### 1.1 소프트웨어 다운로드 서버 변경 

* 우분투 서버가 잘 멈추는 관계로 변경

    window+S로 검색, software & updates 진입.  
    Ubuntu Software탭에서 Download from ... Other 선택.  
    다운로드 서버를 Korea, Republic of - Kakao Mirro 선택.   

출처: https://conservative-vector.tistory.com/entry/Ubuntu-Install [에움길]

### 1.2 build-essential 설치

* make, gcc, g++ 설치

```
sudo apt-get update
sudo apt-get install build-essential
```
### 1.3 한/영 설치

* 한글 언어팩 및 한/영 키 동작
   
   language Support 들어가기.  
   install/remove Languages.. 들어가서 한글 언어팩 선택 후 설치하기.  
   이후 재부팅 진행.  
   
   Settings -> Region & Language 진입 후 + 클릭.  
   이후 Korean (Hangul) 추가.  
   
   터미널에서 ibus-setup 실행. 
   iBus Preferences -> Input Method -> Add 클릭 후 korea 검색.
   Hangul 선택 후 Add
   우측 Preferences 클릭 후 Add 실행.
   

### 1.4 그래픽 드라이버 설치

```
sudo add-apt-repository ppa:graphics-drivers/ppa
 
sudo apt update # You can change this driver to whatever version suits you best :)
 
sudo apt install nvidia-driver-430
 
sudo reboot

출처: https://conservative-vector.tistory.com/entry/Ubuntu-Install [에움길]

```

### 1.5 글꼴 및 글씨 크기 변경

* 가독성 + 작은 글씨 잘 안 보여서.. 글씨 크기 변경

   https://github.com/naver/d2codingfont - naver D2Coding 폰트 다운로드.  
   폴더에 압축을 풀어준 후 해당 버전의 파일을 /usr/share/fonts로 옮김.  
   gnome-tweak-tool -> fonts 진입 후, 폰트 변경 및 사이즈 13으로 변경.  
   
   터미널 연 후 Edit-> preference 진입 후 custom font 설정.  
   ```
   sudo /path/to/ttf /usr/share/fonts
   ```

## 2. 테마 및 유틸리티 설치  

### 2.1 테마 설정 

* gnome-tweak-tool 설치 

```
sudo apt-get install gnome-tweak-tool
```


* Adapta Theme 설치 

```
sudo add-apt-repository ppa:tista/adapta
sudo apt-get update
sudo apt-get install adapta-gtk-theme
```

* gnome-tweak-tool 진입 후 테마 선택 

* Gnome 쉘에 테마 적용

```
sudo apt-get install chrome-gnome-shell
```

   아래 링크를 파이어폭스로 접속
   >[Gnome 쉘 확장](https://extensions.gnome.org/extension/19/user-themes)

   여기서 Click here to install browser extension을 클릭 후 재접속  
   우측 스위치를 on으로 변경  

* gnome-tweak-tool 진입 후 쉘 테마 변경 

* 아이콘 테마 변경  
```
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt-get update
sudo apt-get install flat-remix
```

   설치가 완료되면 gnome-tweak-tool에서 아이콘 테마를 변경
   
* 상태바 변경

>[상태바 변경](https://extensions.gnome.org/extension/307/dash-to-dock)

   
### 2.2 유틸리티 설정

* Google Chrome 설치 

```
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable
sudo rm -rf /etc/apt/sources.list.d/google.list
```
   위의 명령부터 순서대로 인증키 등록.  
   크롬 웹 브라우저 패키지를 다운로드 받을 PPA를 source.list.d에 추가.  
   추가한 PPA로부터 설치 가능한 크롬 웹 브라우저 패키지 정보를 가져오기 위한 패키지 리스트를 업데이트.  
   크롬 웹 브라우저 설치.  
   google-chrome.list파일이 있을 경우 apt-get update 진행 시 에러가 발생할 수 있으므로 삭제.  
   
* codec등 미디어 라이브러리 설치 
```
sudo apt install ubuntu-restriced-extras
```
   !! 중간에 ok선택하는 화면이 나올경우 tab눌러서 선택할 것. 
   
* 마크다운 편집기 설치 
```
# or use
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update

# install typora
sudo apt-get install typora
```

* pinta 설치

```
sudo apt-get install pinta
```

### 2.3 터미널 바꾸기

* zsh 설치

```
sudo apt-get install gnome-tweak-tool
```

* 기본 shell을 Zsh로 변경
```
chsh -s /usr/bin/zsh
```
재부팅 이후 초기 설정 진행

* oh my zsh 설치 
```
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

```
* zsh theme 설치 
```

```
