
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
sudo apt-get install zsh
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

* zsh theme 설치 ( powerlevel10k )
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```  

     after install write ZSH_THEME="powerlevel10k/powerlevel10k"
     재부팅 진행
     
* zshrc 파일
    >[.zshrc](https://github.com/chyusa1223/linux/blob/master/Settings/Init/.zshrc)

### 2.4 Emacs 설정

* init파일 생성 및 작성 
  
  * Emacs 사용에 대하여 기초부터 상세히 설명 아주 유용함. 
    >[Emacs 설정 및 사용법](https://www.youtube.com/watch?v=49kBWM3RQQ8&list=PL9KxKa8NpFxIcNQa9js7dQQIHc81b0-Xg)
  
  * 위 링크를 기본으로 하여 한글, vim키 사용, cmake-ide등 일부 추가 
    >[myinit.org](https://github.com/chyusa1223/linux/blob/master/Settings/Init/myinit.org)

  * init.el 참조
    >[init.el](https://github.com/chyusa1223/linux/blob/master/Settings/Init/init.el)


### 2.5 Vim 설정

* Vundle 설치
    vim Plugin 관리를 위한 Vundle을 설치한다. 
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
    
* vimrc 파일

    >[.vimrc](https://github.com/chyusa1223/linux/blob/master/Settings/Init/.vimrc)

* vim Setting

    위 두 과정이 끝났다면 Vim 실행 후 :PluginInstall 실행하면 추가한 Plugin들이 설치된다. 

### 2.6 Bluetooth 설정

* 업데이트 진행
    무선키보드 사용시 매번 컴퓨터에 로그인 후 연결이 정상적으로 수행되지 않아서 다시 재부팅해야하는 현상이 있었음. 
```
dpkg --status bluez | grep '^Version:'
sudo add-apt-repository ppa:bluetooth/bluez
sudo apt-get update
sudo apt upgrade
```
    
