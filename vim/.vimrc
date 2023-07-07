syntax on 
set nu
set hlsearch
"set mouse=a

"""" Indentation """"
set autoindent
set smartindent

"""" tab """"
set expandtab
set tabstop=4
set shiftwidth=4
" Don't use noexpandtab for makefile
autocmd FileType make set noexpandtab

"""" copy and paste """"
map <C-c> "+y
map <C-V> "+p

set wildmode=list:longest,full

"""" Do not display hidden directory by default. """"
let g:netrw_list_hide = '^\..*/$'
let g:netrw_hide = 1

"""" ctags """"
set tags=./tags,./TAGS,tags;~,TAGS;~

"""" cscope """"
set cscopetag
set csto=0

if filereadable("cscope.out")
    cs add cscope.out
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif
set cscopeverbose

nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>

"""" Pathogen """"
execute pathogen#infect()

"""" NERDTree """"
nnoremap <F5> :exec 'NERDTreeToggle' <CR>

"""" astyle """"
map <F2> :call BeautifyCode()<CR>
func! BeautifyCode()
    exec "w"
    if &filetype == 'c' || &filetype == 'h'
        exec "!astyle --options=/home/duncan//.astyle/.astylerc %"
    endif

    return
endfunc

