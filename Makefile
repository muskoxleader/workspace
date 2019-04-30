# vim: nu: tabstop=8: softtabstop=8: shiftwidth=8

brew::
	@brew bundle

install_bash_profile::
	@./install_snippet.sh dotfiles/bash_profile $$HOME/.bash_profile

install_bashrc::
	@./install_snippet.sh dotfiles/bashrc $$HOME/.bashrc

workspace:: install_bash_profile install_bashrc
	@cp dotfiles/.[a-z]* ~/
	@cp -r home/* ~/
	@echo Congrats! Your workspace has been set up.
