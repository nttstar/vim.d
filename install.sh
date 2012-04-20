#!/bin/sh

# .vimrc for linux, _vimrc for windows
SYSTEM=`uname -s`

if [ $SYSTEM == "Linux" ]; then
	VIMRC=".vimrc"
else
    VIMRC="_vimrc"
fi

# vimrc
cd ..
ln -sf .vim/vimrc $VIMRC

# xmledit
cd .vim/bundle/xmledit/ftplugin/
ln -sf xml.vim html.vim
ln -sf xml.vim xhtml.vim
cd ../../../
