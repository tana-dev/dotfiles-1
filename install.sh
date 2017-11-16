# set files
mkdir -p ~/.vim/plugin
mkdir -p ~/.vim/dict
mkdir -p ~/.vim/colors
cp ./vim/.vimrc.noplugin ~/.vimrc
cp ./tmux/.tmux.conf ~/.tmux.conf

# vim plugin
cd ~/.vim/plugin/
git clone https://github.com/vim-scripts/AutoComplPop.git
cd ~/.vim
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/

# php dictionary
php -r '$f=get_defined_functions();echo join("\n",$f["internal"]);'|sort > ~/.vim/dict/php.dict

