## 참고 링크

>[1번 링크](https://junwoo45.github.io/2019-10-23-rebase/) 
>[2번 링크](https://suhwan.dev/2018/01/21/Git-Rebase-1/)
>[3번 링크](https://jusths.tistory.com/162?category=786257)


## 1. Git 심화 사용법

### 1.1 branch 개념 및 사용법

    * remote tracking branch

      Remote branch를 추적하는 레퍼런스이며 브랜치이다. 로컬에 존재하지만 임의로 사용자가 움직일 수 없으며,
      git fetch등의 명령어에 의해서만 이동한다. 리모트 저장소에 마지막으로 연결했던 순간에 브랜치가 무슨 커밋을
      기리키고 있었는지 나타낸다. 

    * tracking branch

      리모트 트래킹 브랜치를 로컬 브랜치로 Checkout하면 자동으로 tracking branch가 생성된다. tracking branch
      는 리모트 브랜치와 직접적인 연결고리가 있는 로컬 브랜치이다. 트래킹 브랜치에서 git pull 명령을 내리면
      리모트 저장소로부터 데이터를 내려받아 연결된 리모트 브랜치와 자동으로 merge한다. 

    * upstream bracnh

      tracking branch를 만들었을 경우 트래킹 하는 대상 브랜치를 upstream branch라고 지칭한다. 

    >[Remote branch](https://git-scm.com/book/ko/v2/Git-%EB%B8%8C%EB%9E%9C%EC%B9%98-%EB%A6%AC%EB%AA%A8%ED%8A%B8-%EB%B8%8C%EB%9E%9C%EC%B9%98)

### 1.2 Merge 개념 및 사용법

    * Rebase

    * Fast-Forward

    * Merge

### 1.3 Revert

    * Revert

### 1.4 reset

    * cherry-pick


## 2. Git 내부 동작


### 2.1 HEAD, Index, Woring Directory


### 2.2 reset, checkout 차이점 


## 3. Git Workflow


### 3.1 Examples


### 3.2 For Beginner