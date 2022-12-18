set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.local/bin $PATH
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

# pnpm
set -gx PNPM_HOME "/Users/mikkomurto/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end