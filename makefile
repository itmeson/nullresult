REPO=_site
TARG=web:markbetnel.com/
#CM=Daily Commit

all: 	build sync

build:
	jekyll

sync:	
	rsync -avz $(REPO)/* $(TARG)

#version: 
#	bzr commit -m "$(CM)"
