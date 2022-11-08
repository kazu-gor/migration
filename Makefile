all: init setup link vim

setup: 
	bash setup.sh
vim:
	bash setup-vim.sh
init:
	bash init.sh
link:
	bash link.sh
