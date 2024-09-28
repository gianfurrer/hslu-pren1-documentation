# use -shell-escape for syntax highlight
$lualatex = 'lualatex -interaction=nonstopmode -synctex=1 -shell-escape -output-directory=. -aux-directory=.';
#$xelatex = 'xelatex -interaction=nonstopmode -shell-escape -synctex=1 -output-directory=. -aux-directory=.';
#$pdflatex = 'pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=. -aux-directory=.'

# build the glossaries
#add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
#sub makeglo2gls {
#    system("makeindex -s '$_[0]'.ist -t '$_[0]'.glg -o '$_[0]'.gls '$_[0]'.glo");
#}