set background=dark
set sm " ShowMatch: mostra o par do parenteses/chaves recem fechado
set tabstop=4 " TabStop: numero de caracteres de avanco do TAB
set expandtab " tab sao convertidos em espaços
set shiftwidth=4 "Quando o autoindent faz um tab, ele é do tamanho de 4 espaços.
set softtabstop=4 "Tecla Backspace volta 4 espaços quando estiver numa identação.
set autoindent
set number "Exibe coluna com os números de linha
set title
set vb
set ignorecase
set incsearch "Procura texto enquanto é digitado
set smarttab "tabulacao esperta!
set hlsearch
set listchars=tab:▸\ ,eol:¬
set invlist
set mouse=a
set nowrap
set wildignore+=.git
set wildignore+=*.pyc
set wildignore+=*~,*.swp,*.tmp
set wildmode=longest,list
set ruler

"destacar caracteres TAB para poder vê-los
syntax match Special "\t"

highlight Special ctermfg=DarkBlue ctermbg=White
syntax on "Liga o uso de cores

"Habilita/Desabilitar auto identacao ao colar.
nnoremap <F2> :set paste!<CR> 

" Toggle line numbers and fold column for easy copying:
nnoremap <F3> :set nonumber!<CR>:set foldcolumn=0<CR>
nmap <F4> :set invlist<CR>
imap <F4><esc>:set invlist<CR>

inoremap <Tab> <C-R>=AutoCompletar("avancar")<CR>
inoremap <S-Tab> <C-R>=AutoCompletar("voltar")<CR>
function AutoCompletar(direcao)
   let posicao = col(".") - 1
   if ! posicao || getline(".")[posicao - 1] !~ '\k'
      return "\<Tab>"
   elseif a:direcao == "avancar" 
      return "\<C-n>"
   else
      return "\<C-p>"
   endif
endfunction"inoremap <Tab> <C-R>=AutoCompletar("avancar")<CR>

inoremap <F5> import ipdb; ipdb.set_trace()
nnoremap <F5> oimport ipdb; ipdb.set_trace()
