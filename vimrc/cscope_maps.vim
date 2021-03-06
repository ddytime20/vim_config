""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE settings for vim           
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" This file contains some boilerplate settings for vim's cscope interface,
" plus some keyboard mappings that I've found useful.
"
" USAGE: 
" -- vim 6:     Stick this file in your ~/.vim/plugin directory (or in a
"               'plugin' directory in some other directory that is in your
"               'runtimepath'.
"
" -- vim 5:     Stick this file somewhere and 'source cscope.vim' it from
"               your ~/.vimrc file (or cut and paste it into your .vimrc).
"
" NOTE: 
" These key maps use multiple keystrokes (2 or 3 keys).  If you find that vim
" keeps timing you out before you can complete them, try changing your timeout
" settings, as explained below.
"
" Happy cscoping,
"
" Jason Duell       jduell@alumni.princeton.edu     2002/3/7
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 根据光标所在位置，提取文件路径中的文件名
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function Get_FileName()
    let path=expand("<cfile>")
    echo path
    let pat='\([^<>?*|"/\\]\+\.\w$\)'
    let filename = matchstr(path, pat)
    if(strlen(filename) == 0)
        echo "can not find file name"
        return
    endif
    return filename
endf

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope 生成tag，并加载cscope.out
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function Do_CsTag()
    if(executable('cscope') && has("cscope") )
        if(has('win32'))
            silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        else
            silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
        endif
        silent! execute "!cscope -Rb -i cscope.files"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
endf

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags 生成tag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function Do_CTag()
    if(executable('ctags'))
        silent! execute "!ctags -R"
    endif
endf

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用ctags和cscope生成tag方便查看代码和跳转
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function Do_Tag()
    Do_CTag()
    Do_CsTag()
endf

" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim... 
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    set csprg=cscope

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose  


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor(查找符号，即函数名、宏、枚举出现的地方)
    "   'g'   global: find global definition(s) of the token under cursor(查找函数、宏、枚举等定义的位置,类似ctags)
    "   'c'   calls:  find all calls to the function name under cursor(查找调用本函数的函数)
    "   't'   text:   find all instances of the text under cursor(查找指定的字符串)
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor(查找并打开文件)
    "   'i'   includes: find files that include the filename under cursor(查找包含本文件的文件)
    "   'd'   called: find functions that function under cursor calls(查找本函数调用的函数)
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " diplays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.  
    "

    "nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    "nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    "nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    "nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    "nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    ""nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    "nmap <C-\>f :cs find f <C-R>=Get_FileName()<CR><CR>
    "nmap <C-\>i :cs find i ^<C-R>=Get_FileName()<CR>$<CR>
    "nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

    nmap \s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap \g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap \c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap \t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap \e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap \f :cs find f <C-R>=Get_FileName()<CR><CR>
    nmap \i :cs find i ^<C-R>=Get_FileName()<CR>$<CR>
    nmap \d :cs find d <C-R>=expand("<cword>")<CR><CR>


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>	

    nmap <C-]>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-]>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-]>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-]>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-]>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-]>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-]>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-]>d :scs find d <C-R>=expand("<cword>")<CR><CR>	


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-]><C-]>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]><C-]>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]><C-]>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]><C-]>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]><C-]>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-]><C-]>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-]><C-]>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-]><C-]>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout 
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    "set timeoutlen=4000
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    "set ttimeout 
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    "set ttimeoutlen=100

endif


