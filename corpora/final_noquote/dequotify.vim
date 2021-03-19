" Paul Evans (paul.evans@aya.yale.edu)
" 19 March 2021
" 19 February 2021
"
" usage:
" vi <filename>
" :source dequotify.vim
" - or -
" :so dequotify.vim
"
" :g/\"\_.\{-}\"/s///g " not necessary
" quotes guaranteed to be on one line
:g/\".\{-}\"/s///g
:w
