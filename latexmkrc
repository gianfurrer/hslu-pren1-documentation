# use -shell-escape for syntax highlight
$lualatex = 'lualatex -interaction=nonstopmode -synctex=1 -shell-escape';

# build the glossaries
add_cus_dep('glo', 'gls', 0, 'makeglo2gls'); sub makeglo2gls {
    system("makeindex -s '$_[0]'.ist -t '$_[0]'.glg -o '$_[0]'.gls '$_[0]'.glo"); }

# build the acronyms
add_cus_dep('acn', 'acr', 0, 'makeacn2acr'); sub makeacn2acr {
    system("makeindex -s \"$_[0].ist\" -t \"$_[0].alg\" -o \"$_[0].acr\" \"$_[0].acn\""); }