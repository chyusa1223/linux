set nocompatible
set number " line 표시를 해줍니다.
set ai " auto indent
set si " smart indent
set cindent " c style indent
set shiftwidth=2 " shift를 2칸으로 ( >, >>, <, << 등의 명령어)
set tabstop=2 " tab을 2칸으로
set ignorecase " 검색시 대소문자 구별하지않음
set hlsearch " 검색시 하이라이트(색상 강조)
set expandtab " tab 대신 띄어쓰기로
set nocompatible " 방향키로 이동가능
set fileencodings=utf-8,euc-kr " 파일인코딩 형식 지정
set bs=indent,eol,start " backspace 키 사용 가능
set history=1000 " 명령어에 대한 히스토리를 1000개까지
set ruler " 상태표시줄에 커서의 위치 표시
set nobackup " 백업파일을 만들지 않음
set title " 제목을 표시
set showmatch " 매칭되는 괄호를 보여줌
set nowrap " 자동 줄바꿈 하지 않음
set wmnu " tab 자동완성시 가능한 목록을 보여줌

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'morhetz/gruvbox'

let g:colors_name = 'gruvbox'
let g:gruvbox_contrast_dark='soft'
let g:airline_theme='gruvbox'


call vundle#end()

