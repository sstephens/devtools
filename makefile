
# If the first argument is "run"...
ifeq (install,$(firstword $(MAKECMDGOALS)))
  # use the rest as arguments for "run"
  RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  # ...and turn them into do-nothing targets
  $(eval $(RUN_ARGS):;@:)
endif

prog:
	./vim/install.sh $(RUN_ARGS)

.PHONY: install iterm force bundle flow

install: prog
	@echo prog

clean:
	rm -rf ~/.vim/plugged ~/.vim/autoload/plug.vim ~/.vim/bundle
	rm -rf ~/.local/share/nvim/site/plugged ~/.local/share/nvim/site/autoload/plug.vim ~/.local/share/nvim/site/bundle
