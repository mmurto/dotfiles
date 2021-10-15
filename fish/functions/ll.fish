function ll
    if type -q exa
	exa -l --icons $argv
    else
	command ls -l $argv
    end
end
