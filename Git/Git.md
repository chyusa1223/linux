
## 1. Github 개념 및 기초 사용법

### 1.1 Github 명령어들 

* Git Init
   Git으로 관리하려는 폴더로 이동 후 실행
```
git init
```

* 저장소 복제
   폴더로 이동 후 실행
```
git clone <url>
```

* 원격 저장소 추가
```
git remote add <원격 저장소> <url>
```

* 저장소 별 사용자명/email 구성
   Git으로 관리하려는 폴더로 이동 후 실행
```
git config user.name "Name"
git config user.email "email"
```

* 스테이징 
   폴더로 이동 후 실행
```
git add <file>
git add --all . (변경사항 전체를 스테이징 할려는 경우)
git add -i (대화 모드를 사용해서 파일 추가)
```

* 커밋
   폴더로 이동 후 실행
```
git commit -m "commit message"
```

* 푸시
   폴더로 이동 후 실행
   Working tree에 있던 파일들의 수정 내역들을 인덱스에 staging한 이후, commit을 진행하고 이를
   원격 저장소에 저장하는 작업.
```
git push origin master 
```

    - origin의 의미
      Git에서 git clone 실행 시 자동으로 만들어주는 remote 이름이다. git clone -o <name>으로 지정할 경우,
      <name>/master처럼 사용자가 지정한대로 리모트 이름을 생성한다. 

    - master의 의미
      Git에서 master또한 다른 사용자가 생성하는 것과 동일한 브랜치이나 git init 명령으로 초기화 할 때 자동으로
      만들어지며, 대부분 이를 애써 이를 다른 이름으로 변경하지 않기 때문이다.

    - origin/master
      리모트 트래킹 브랜치는 <remote>/<branch> 형식으로 나타낸다. 따라서 origin/master또한 리모트 트래킹
      브랜치이며, origin저장소에 있는 master 브랜치가 가리키는 커밋을 그대로 가리키는 브랜치이다. 리모트
      저장소의 브랜치를 Fetch해 오면 이 브랜치가 업데이트된다. 

     >[Remote Branch](https://git-scm.com/book/ko/v2/Git-%EB%B8%8C%EB%9E%9C%EC%B9%98-%EB%A6%AC%EB%AA%A8%ED%8A%B8-%EB%B8%8C%EB%9E%9C%EC%B9%98)

* 브랜치 생성 

```
git branch <branch_name>
git branch -b <branch_name> ( 만약 checkout까지 하기 원한다면 )
```

* 위의 명령어는 Git자체를 사용하기 위한 최소한의 명령어 이며, 문제 상황에 대처하거나 git내부적인 내용은
  >[Git 심화]()

### 1.2 Github 위키 및 문서 작성법

* 마크다운 기초 사용법 

   > [마크다운 기초](<https://gist.github.com/ihoneymon/652be052a0727ad59601>)

* 마크다운 인용, 취소선, url 드러나지 않게 링크하는 방법, 기울임체 등 

   > [마크다운_인용 및 취소선 ](https://github.com/sejong-interface/Interface_Manual/wiki/Git-%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0%233-README.md-%ED%8C%8C%EC%9D%BC-%EC%9E%91%EC%84%B1%ED%95%98%EA%B8%B0!)

* 마크다운 깃허브 도움말

   > [깃허브 공식 도움말](https://help.github.com/articles/basic-writing-and-formatting-syntax/)


