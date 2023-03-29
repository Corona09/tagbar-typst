let s:save_cpo = &cpo
set cpo&vim

function! s:doInsertAgenda(status, response)
	echo a:response
endfunction

let s:bin_path = expand('<sfile>:p:h:h').'/bin/typst_ctags'

if !exists('g:tagbar_type_typst')
	let g:tagbar_type_typst = {
				\ 'ctagsbin'  : s:bin_path,
				\ 'ctagsargs' : '',
				\ 'kinds'     : [
				\     'a:h1:0:0',
				\     'b:h2:0:0',
				\     'c:h3:0:0',
				\     'd:h4:0:0',
				\     'e:h5:0:0',
				\     'f:h6:0:0',
				\ ],
				\ 'sro'        : '::',
				\ 'kind2scope' : {
				\     'a' : 'h1',
				\     'b' : 'h2',
				\     'c' : 'h3',
				\     'd' : 'h4',
				\     'e' : 'h5',
				\     'f' : 'h6',
				\ },
				\ 'scope2kind' : {
				\     'h1' : 'a',
				\     'h2' : 'b',
				\     'h3' : 'c',
				\     'h4' : 'd',
				\     'h5' : 'e',
				\     'h6' : 'f',
				\}
				\}
endif

let g:tagbar_type_ghtypst = g:tagbar_type_typst
let g:tagbar_type_rtyp = g:tagbar_type_typst

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: foldmethod=marker:noexpandtab:ts=2:sts=2:sw=2
