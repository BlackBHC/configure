set number "设置行号
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o "取消自动注释
set cursorline "高亮当前行
set nocompatible "兼容vi
syntax on "语法高亮
set showcmd "不懂
set encoding=utf-8
set autoindent "自动缩进
set cindent
set mouse=a "允许使用鼠标
set selection=exclusive
set selectmode=mouse,key
set nowrap "不自动换行
set smartindent "智能对齐
set tabstop=4 "一个tab对应四个空格
set softtabstop=4 "不懂
set shiftwidth=4
set noexpandtab
set smarttab
set autoread "当文件外部改动时自动载入
set ruler "不懂
set autowrite "自动保存
set confirm
filetype on
filetype plugin on "载入文件插件
filetype indent on "依据文件类型缩进
set iskeyword+=_,$,@,%,#,- "对应字符不因换行而被分割
set report=0 "cmd显示处理行
set showmatch "显示匹配的括号
set foldcolumn=0 "设置左侧折叠信息提示符宽度
set foldmethod=syntax "自动折叠
set matchtime=1
set backspace=2 "兼用backspace 按键
