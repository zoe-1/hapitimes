
tutorial:
	gfm -g -s tutorial/markdowns -d ./tutorial/html
	gfm -g -s tutorial/markdowns/assignments -d ./tutorial/html/assignments
	http-server tutorial/html/


.PHONY: tutorial tutorials
