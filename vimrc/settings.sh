if [ -e ~/.vimrc ]
then
DIFF=$(diff -U 3 .vimrc ~/.vimrc)
if [ "$DIFF" != "" ]
then
	echo "updating"
	cp .vimrc ~/
	cp -r .vim_* ~/
	echo "updated"
else
	echo "up-to-date"
fi
else
	echo "file not here"
	echo "updating"
	cp .vimrc ~/
	cp -r .vim_* ~/
	echo "updated"
fi

