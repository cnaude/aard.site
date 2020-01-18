all: html install

html:
	hugo -D

install:
	rsync --delete -avz public/* arroyoro@aard.site:public_html/

clean:
	rm -rf public/*
