set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.local/bin $PATH
set PATH /Users/mikko/Library/Python/2.7/bin $PATH
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
if type -q rvm:
	rvm default
end

if status is-interactive && ! functions --query fisher
	curl -sL https://git.io/fisher | source && fisher update
end

set -gx EDITOR nvim

starship init fish | source

zoxide init fish | source
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/mikko/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

