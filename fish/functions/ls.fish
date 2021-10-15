function ls
    if type -q exa
	exa --icons $argv
    else
	command ls $argv
    end
end
